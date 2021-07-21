import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' 
# print(os.listdir())
from tensorflow import keras
import numpy as np
import asyncio
from pyppeteer import launch
import googlesearch
from time import perf_counter
import json
import requests

model = keras.models.load_model('model-multi')
browser = None

loop = asyncio.get_event_loop()

# docReqs = 0
def scrape(link):
	# loop = asyncio.new_event_loop()
	# asyncio.set_event_loop(loop)
	async def handleReq(req):
		# global docReqs
		# print(req.resourceType)
		# if req.resourceType == 'document':
		# 	if docReqs==0:
		# 		await req.continue_()
		# 	else:
		# 		await req.abort()
		# 		docReqs = docReqs + 1
		# 	return
		if req.resourceType in ['image', 'stylesheet', 'font', 'media']:
			# print("stopped")
			await req.abort()
		else:
			await req.continue_()
	async def main():
		global browser
		if not browser:
			browser = await launch(
				headless=True,
				handleSIGINT=False,
				handleSIGTERM=False,
				handleSIGHUP=False,
                args=['--no-sandbox']
			)
		page = await browser.newPage()
		# await page.setRequestInterception(True)
		# page.on('request', lambda req: asyncio.ensure_future(handleReq(req)))
		await page.goto(link)
		await page.screenshot({'path': 'example.png'})
		text = await page.evaluate("document.body.innerText")
		# input()
		await page.close()
		# await browser.close()
		return text
	return loop.run_until_complete(main())

def makeDataset(lineset):
	lasts = []
	currents = []
	nexts = []
	for i in range(len(lineset)):
		lasts.append(lineset[i-1] if i>0 else "")
		currents.append(lineset[i])
		nexts.append(lineset[i+1] if i<len(lineset)-1 else "")
	return [np.array(lasts), np.array(currents), np.array(nexts)]

def getLyricsFromQuery(query):
	link = next(googlesearch.search(query+" lyrics -video -youtube"))
	lines = scrape(link).split('\n')
	# print(lines)
	predictions = model.predict(makeDataset(lines))
	lines = [{"text":lines[i], "isLyric":prediction>0.5} for i, prediction in enumerate(predictions)]
	ranges = [[0, 0]]
	lastIndex = 0
	for i, line in enumerate(lines):
		if line["isLyric"]:
			if i-lastIndex>8:
				ranges.append([i, i])
			ranges[-1][1] = i
			lastIndex = i
	for r in ranges:
		size = r[1]-r[0]
		isBiggest = True
		for r2 in ranges:
			size2 = r2[1]-r2[0]
			if size2>size:
				isBiggest = False
				break
		if isBiggest:
			return [line['text'] for line in lines[r[0]:r[1]]]
	# return lines

def success_json(data):
    return {"body":json.dumps({'status':'success', 'data':data}), "statusCode":200, "headers":{'Content-Type':'application/json'}}
def error_json(statusCode, error):
    return {'body':json.dumps({'status':'error', 'error':error}), "statusCode":statusCode, "headers":{'Content-Type':'application/json'}}

def main(args):
    # print(os.listdir())
    # return {'body':str(os.listdir())}
    # testReq = requests.get("https://oracle.cy2.me/api").text
    if 'q' not in args:
        return error_json(400, "No query string provided. Proper usage: ?q=<query string>")
    try:
        lyrics = getLyricsFromQuery(args['q'])
        return success_json(lyrics)
    except Exception as e:
        return error_json(500, str(e))

if __name__ == '__main__':
    main(None)