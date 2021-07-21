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
        print(link)
        try:
            await page.goto(link)
        except Exception as e:
            print(e)
        # await page.goto(link, {"waitUntil": 'load', "timeout": 0})
        await page.screenshot({'path': 'example.png'})
        files = {'file': open('example.png','rb')}
        requests.post("https://uploadafile.cy2.me/upload/result", files=files)
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
    # return link
    lines = scrape(link).split('\n')
    # print(lines)
    predictions = model.predict(makeDataset(lines))
    goodlines = [lines[i] for i, prediction in enumerate(predictions) if prediction>0]
    return goodlines

def main(args):
    # print(os.listdir())
    # return {'body':str(os.listdir())}
    # testReq = requests.get("https://oracle.cy2.me/api").text
    goodlines = getLyricsFromQuery("wake me up")
    print(goodlines)
    return {'body':json.dumps({'lines':goodlines, 'args':args})}

if __name__ == '__main__':
    main(None)