??
?'?&
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
?
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?N*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	?N*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
dtype0
?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_72553
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_72538

NoOpNoOp^PartitionedCall
?
3None_lookup_table_export_values/LookupTableExportV2LookupTableExportV2StatefulPartitionedCall*
Tkeys0*
Tvalues0	**
_class 
loc:@StatefulPartitionedCall*
_output_shapes

::
?
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer

signatures
#_self_saveable_object_factories
	trainable_variables

regularization_losses
	variables
	keras_api
b
state_variables
_index_lookup_layer
#_self_saveable_object_factories
	keras_api
?

embeddings
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
w
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
?

kernel
bias
#_self_saveable_object_factories
trainable_variables
 regularization_losses
!	variables
"	keras_api
?

#kernel
$bias
#%_self_saveable_object_factories
&trainable_variables
'regularization_losses
(	variables
)	keras_api
 
 
 
#
0
1
2
#3
$4
 
#
1
2
3
#4
$5
?
*non_trainable_variables
	trainable_variables

regularization_losses

+layers
	variables
,metrics
-layer_metrics
.layer_regularization_losses
 
U
/state_variables

0_table
#1_self_saveable_object_factories
2	keras_api
 
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0
 

0
?
3non_trainable_variables
trainable_variables
regularization_losses

4layers
	variables
5metrics
6layer_metrics
7layer_regularization_losses
 
 
 
 
?
8non_trainable_variables
trainable_variables
regularization_losses

9layers
	variables
:metrics
;layer_metrics
<layer_regularization_losses
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
?
=non_trainable_variables
trainable_variables
 regularization_losses

>layers
!	variables
?metrics
@layer_metrics
Alayer_regularization_losses
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

#0
$1
 

#0
$1
?
Bnon_trainable_variables
&trainable_variables
'regularization_losses

Clayers
(	variables
Dmetrics
Elayer_metrics
Flayer_regularization_losses
 
#
0
1
2
3
4

G0
H1
 
 
 
LJ
tableAlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Itotal
	Jcount
K	variables
L	keras_api
D
	Mtotal
	Ncount
O
_fn_kwargs
P	variables
Q	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

I0
J1

K	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

M0
N1

P	variables
?
*serving_default_text_vectorization_3_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCall*serving_default_text_vectorization_3_inputStatefulPartitionedCallConstembedding/embeddingsdense_11/kerneldense_11/biasdense_12/kerneldense_12/bias*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_72161
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp3None_lookup_table_export_values/LookupTableExportV25None_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_72599
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense_11/kerneldense_11/biasdense_12/kerneldense_12/biasStatefulPartitionedCalltotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_72639??
?

?
C__inference_dense_11_layer_call_and_return_conditional_losses_71731

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
G__inference_sequential_7_layer_call_and_return_conditional_losses_71918

inputs^
Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value	"
embedding_71903:	?N 
dense_11_71907:
dense_11_71909: 
dense_12_71912:
dense_12_71914:
identity?? dense_11/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
text_vectorization_3/SqueezeSqueeze0text_vectorization_3/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentityVtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slicez
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub|
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_71883*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_718822
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*'
_output_shapes
:?????????d2$
"text_vectorization_3/cond/Identity?
!embedding/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_3/cond/Identity:output:0embedding_71903*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_717092#
!embedding/StatefulPartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_717182*
(global_average_pooling1d/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_11_71907dense_11_71909*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_717312"
 dense_11/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0dense_12_71912dense_12_71914*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_717472"
 dense_12/StatefulPartitionedCall?
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall"^embedding/StatefulPartitionedCallN^text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
,__inference_sequential_7_layer_call_fn_72378

inputs
unknown
	unknown_0	
	unknown_1:	?N
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_717542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
8
(__inference_restored_function_body_70352
identity?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__initializer_703482
PartitionedCall[
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
*
__inference_<lambda>_72538
identity?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_724902
PartitionedCallS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
$text_vectorization_3_cond_true_72104E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
$text_vectorization_3_cond_true_71882E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
T
8__inference_global_average_pooling1d_layer_call_fn_72435

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_717182
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
.
__inference__initializer_70348
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
G__inference_sequential_7_layer_call_and_return_conditional_losses_72260

inputs^
Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value	3
 embedding_embedding_lookup_72239:	?N9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:9
'dense_12_matmul_readvariableop_resource:6
(dense_12_biasadd_readvariableop_resource:
identity??dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?embedding/embedding_lookup?Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
text_vectorization_3/SqueezeSqueeze0text_vectorization_3/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentityVtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slicez
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub|
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_72219*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_722182
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*'
_output_shapes
:?????????d2$
"text_vectorization_3/cond/Identity?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_72239+text_vectorization_3/cond/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/72239*+
_output_shapes
:?????????d*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/72239*+
_output_shapes
:?????????d2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2'
%embedding/embedding_lookup/Identity_1?
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices?
global_average_pooling1d/MeanMean.embedding/embedding_lookup/Identity_1:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
global_average_pooling1d/Mean?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMul&global_average_pooling1d/Mean:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/BiasAdds
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_11/Relu?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMuldense_11/Relu:activations:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_12/MatMul?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_12/BiasAdd/ReadVariableOp?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_12/BiasAdd?
IdentityIdentitydense_12/BiasAdd:output:0 ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp^embedding/embedding_lookupN^text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
C__inference_dense_12_layer_call_and_return_conditional_losses_71747

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
.
__inference__initializer_72494
identity?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_724902
PartitionedCallP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
%text_vectorization_3_cond_false_71883)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
8
(__inference_restored_function_body_72490
identity?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__initializer_703622
PartitionedCall[
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
(__inference_dense_11_layer_call_fn_72455

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_717312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
,
__inference__destroyer_71088
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_72425

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?1
?
!__inference__traced_restore_72639
file_prefix8
%assignvariableop_embedding_embeddings:	?N4
"assignvariableop_1_dense_11_kernel:.
 assignvariableop_2_dense_11_bias:4
"assignvariableop_3_dense_12_kernel:.
 assignvariableop_4_dense_12_bias:_
Ustring_lookup_3_index_table_table_restore_lookuptableimportv2_statefulpartitionedcall: "
assignvariableop_5_total: "
assignvariableop_6_count: $
assignvariableop_7_total_1: $
assignvariableop_8_count_1: 
identity_10??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?=string_lookup_3_index_table_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_11_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_11_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_12_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_12_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4?
=string_lookup_3_index_table_table_restore/LookupTableImportV2LookupTableImportV2Ustring_lookup_3_index_table_table_restore_lookuptableimportv2_statefulpartitionedcallRestoreV2:tensors:5RestoreV2:tensors:6*	
Tin0*

Tout0	**
_class 
loc:@StatefulPartitionedCall*
_output_shapes
 2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2k

Identity_5IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_totalIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_countIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_total_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7l

Identity_8IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_count_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_9Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^NoOp>^string_lookup_3_index_table_table_restore/LookupTableImportV2"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_9?
Identity_10IdentityIdentity_9:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8>^string_lookup_3_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2
Identity_10"#
identity_10Identity_10:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82~
=string_lookup_3_index_table_table_restore/LookupTableImportV2=string_lookup_3_index_table_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_class 
loc:@StatefulPartitionedCall
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_71718

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
[
(__inference_restored_function_body_70316
identity: ??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference__creator_703122
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
?
.
__inference__initializer_70362
identity?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_703522
PartitionedCallP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
޷
?
 __inference__wrapped_model_71594
text_vectorization_3_inputk
gsequential_7_text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handlel
hsequential_7_text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value	@
-sequential_7_embedding_embedding_lookup_71573:	?NF
4sequential_7_dense_11_matmul_readvariableop_resource:C
5sequential_7_dense_11_biasadd_readvariableop_resource:F
4sequential_7_dense_12_matmul_readvariableop_resource:C
5sequential_7_dense_12_biasadd_readvariableop_resource:
identity??,sequential_7/dense_11/BiasAdd/ReadVariableOp?+sequential_7/dense_11/MatMul/ReadVariableOp?,sequential_7/dense_12/BiasAdd/ReadVariableOp?+sequential_7/dense_12/MatMul/ReadVariableOp?'sequential_7/embedding/embedding_lookup?Zsequential_7/text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
-sequential_7/text_vectorization_3/StringLowerStringLowertext_vectorization_3_input*'
_output_shapes
:?????????2/
-sequential_7/text_vectorization_3/StringLower?
4sequential_7/text_vectorization_3/StaticRegexReplaceStaticRegexReplace6sequential_7/text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 26
4sequential_7/text_vectorization_3/StaticRegexReplace?
)sequential_7/text_vectorization_3/SqueezeSqueeze=sequential_7/text_vectorization_3/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2+
)sequential_7/text_vectorization_3/Squeeze?
3sequential_7/text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 25
3sequential_7/text_vectorization_3/StringSplit/Const?
;sequential_7/text_vectorization_3/StringSplit/StringSplitV2StringSplitV22sequential_7/text_vectorization_3/Squeeze:output:0<sequential_7/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2=
;sequential_7/text_vectorization_3/StringSplit/StringSplitV2?
Asequential_7/text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2C
Asequential_7/text_vectorization_3/StringSplit/strided_slice/stack?
Csequential_7/text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2E
Csequential_7/text_vectorization_3/StringSplit/strided_slice/stack_1?
Csequential_7/text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2E
Csequential_7/text_vectorization_3/StringSplit/strided_slice/stack_2?
;sequential_7/text_vectorization_3/StringSplit/strided_sliceStridedSliceEsequential_7/text_vectorization_3/StringSplit/StringSplitV2:indices:0Jsequential_7/text_vectorization_3/StringSplit/strided_slice/stack:output:0Lsequential_7/text_vectorization_3/StringSplit/strided_slice/stack_1:output:0Lsequential_7/text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2=
;sequential_7/text_vectorization_3/StringSplit/strided_slice?
Csequential_7/text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_7/text_vectorization_3/StringSplit/strided_slice_1/stack?
Esequential_7/text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_7/text_vectorization_3/StringSplit/strided_slice_1/stack_1?
Esequential_7/text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_7/text_vectorization_3/StringSplit/strided_slice_1/stack_2?
=sequential_7/text_vectorization_3/StringSplit/strided_slice_1StridedSliceCsequential_7/text_vectorization_3/StringSplit/StringSplitV2:shape:0Lsequential_7/text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Nsequential_7/text_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Nsequential_7/text_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2?
=sequential_7/text_vectorization_3/StringSplit/strided_slice_1?
dsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastDsequential_7/text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2f
dsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
fsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastFsequential_7/text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2h
fsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
nsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapehsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2p
nsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
nsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2p
nsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
msequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdwsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0wsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2o
msequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
rsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2t
rsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatervsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0{sequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2r
psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
msequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasttsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2o
msequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2r
psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
lsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxhsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ysequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2n
lsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
nsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2p
nsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
lsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2usequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0wsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2n
lsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
lsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulqsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2n
lsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumjsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2r
psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumjsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0tsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2r
psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2r
psequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
qsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounthsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ysequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2s
qsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
ksequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2m
ksequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
fsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumxsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0tsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2h
fsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
osequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2q
osequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
ksequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2m
ksequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
fsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2xsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0lsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0tsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2h
fsequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Zsequential_7/text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2LookupTableFindV2gsequential_7_text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handleDsequential_7/text_vectorization_3/StringSplit/StringSplitV2:values:0hsequential_7_text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2\
Zsequential_7/text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
Csequential_7/text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 2E
Csequential_7/text_vectorization_3/string_lookup_3/assert_equal/NoOp?
:sequential_7/text_vectorization_3/string_lookup_3/IdentityIdentitycsequential_7/text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2<
:sequential_7/text_vectorization_3/string_lookup_3/Identity?
<sequential_7/text_vectorization_3/string_lookup_3/Identity_1Identityosequential_7/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????2>
<sequential_7/text_vectorization_3/string_lookup_3/Identity_1?
>sequential_7/text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 2@
>sequential_7/text_vectorization_3/RaggedToTensor/default_value?
6sequential_7/text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????28
6sequential_7/text_vectorization_3/RaggedToTensor/Const?
Esequential_7/text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor?sequential_7/text_vectorization_3/RaggedToTensor/Const:output:0Csequential_7/text_vectorization_3/string_lookup_3/Identity:output:0Gsequential_7/text_vectorization_3/RaggedToTensor/default_value:output:0Esequential_7/text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2G
Esequential_7/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
'sequential_7/text_vectorization_3/ShapeShapeNsequential_7/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2)
'sequential_7/text_vectorization_3/Shape?
5sequential_7/text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_7/text_vectorization_3/strided_slice/stack?
7sequential_7/text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_7/text_vectorization_3/strided_slice/stack_1?
7sequential_7/text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_7/text_vectorization_3/strided_slice/stack_2?
/sequential_7/text_vectorization_3/strided_sliceStridedSlice0sequential_7/text_vectorization_3/Shape:output:0>sequential_7/text_vectorization_3/strided_slice/stack:output:0@sequential_7/text_vectorization_3/strided_slice/stack_1:output:0@sequential_7/text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_7/text_vectorization_3/strided_slice?
'sequential_7/text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2)
'sequential_7/text_vectorization_3/sub/x?
%sequential_7/text_vectorization_3/subSub0sequential_7/text_vectorization_3/sub/x:output:08sequential_7/text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2'
%sequential_7/text_vectorization_3/sub?
(sequential_7/text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2*
(sequential_7/text_vectorization_3/Less/y?
&sequential_7/text_vectorization_3/LessLess8sequential_7/text_vectorization_3/strided_slice:output:01sequential_7/text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2(
&sequential_7/text_vectorization_3/Less?
&sequential_7/text_vectorization_3/condStatelessIf*sequential_7/text_vectorization_3/Less:z:0)sequential_7/text_vectorization_3/sub:z:0Nsequential_7/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *E
else_branch6R4
2sequential_7_text_vectorization_3_cond_false_71553*/
output_shapes
:??????????????????*D
then_branch5R3
1sequential_7_text_vectorization_3_cond_true_715522(
&sequential_7/text_vectorization_3/cond?
/sequential_7/text_vectorization_3/cond/IdentityIdentity/sequential_7/text_vectorization_3/cond:output:0*
T0	*'
_output_shapes
:?????????d21
/sequential_7/text_vectorization_3/cond/Identity?
'sequential_7/embedding/embedding_lookupResourceGather-sequential_7_embedding_embedding_lookup_715738sequential_7/text_vectorization_3/cond/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*@
_class6
42loc:@sequential_7/embedding/embedding_lookup/71573*+
_output_shapes
:?????????d*
dtype02)
'sequential_7/embedding/embedding_lookup?
0sequential_7/embedding/embedding_lookup/IdentityIdentity0sequential_7/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@sequential_7/embedding/embedding_lookup/71573*+
_output_shapes
:?????????d22
0sequential_7/embedding/embedding_lookup/Identity?
2sequential_7/embedding/embedding_lookup/Identity_1Identity9sequential_7/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d24
2sequential_7/embedding/embedding_lookup/Identity_1?
<sequential_7/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2>
<sequential_7/global_average_pooling1d/Mean/reduction_indices?
*sequential_7/global_average_pooling1d/MeanMean;sequential_7/embedding/embedding_lookup/Identity_1:output:0Esequential_7/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2,
*sequential_7/global_average_pooling1d/Mean?
+sequential_7/dense_11/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_7/dense_11/MatMul/ReadVariableOp?
sequential_7/dense_11/MatMulMatMul3sequential_7/global_average_pooling1d/Mean:output:03sequential_7/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_7/dense_11/MatMul?
,sequential_7/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_7/dense_11/BiasAdd/ReadVariableOp?
sequential_7/dense_11/BiasAddBiasAdd&sequential_7/dense_11/MatMul:product:04sequential_7/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_7/dense_11/BiasAdd?
sequential_7/dense_11/ReluRelu&sequential_7/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential_7/dense_11/Relu?
+sequential_7/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_12_matmul_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_7/dense_12/MatMul/ReadVariableOp?
sequential_7/dense_12/MatMulMatMul(sequential_7/dense_11/Relu:activations:03sequential_7/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_7/dense_12/MatMul?
,sequential_7/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_7/dense_12/BiasAdd/ReadVariableOp?
sequential_7/dense_12/BiasAddBiasAdd&sequential_7/dense_12/MatMul:product:04sequential_7/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_7/dense_12/BiasAdd?
IdentityIdentity&sequential_7/dense_12/BiasAdd:output:0-^sequential_7/dense_11/BiasAdd/ReadVariableOp,^sequential_7/dense_11/MatMul/ReadVariableOp-^sequential_7/dense_12/BiasAdd/ReadVariableOp,^sequential_7/dense_12/MatMul/ReadVariableOp(^sequential_7/embedding/embedding_lookup[^sequential_7/text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2\
,sequential_7/dense_11/BiasAdd/ReadVariableOp,sequential_7/dense_11/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_11/MatMul/ReadVariableOp+sequential_7/dense_11/MatMul/ReadVariableOp2\
,sequential_7/dense_12/BiasAdd/ReadVariableOp,sequential_7/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_12/MatMul/ReadVariableOp+sequential_7/dense_12/MatMul/ReadVariableOp2R
'sequential_7/embedding/embedding_lookup'sequential_7/embedding/embedding_lookup2?
Zsequential_7/text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2Zsequential_7/text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?
?
%text_vectorization_3_cond_false_72012)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?	
?
,__inference_sequential_7_layer_call_fn_71771
text_vectorization_3_input
unknown
	unknown_0	
	unknown_1:	?N
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_717542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
??
?
G__inference_sequential_7_layer_call_and_return_conditional_losses_71754

inputs^
Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value	"
embedding_71710:	?N 
dense_11_71732:
dense_11_71734: 
dense_12_71748:
dense_12_71750:
identity?? dense_11/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
text_vectorization_3/SqueezeSqueeze0text_vectorization_3/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentityVtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slicez
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub|
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_71680*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_716792
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*'
_output_shapes
:?????????d2$
"text_vectorization_3/cond/Identity?
!embedding/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_3/cond/Identity:output:0embedding_71710*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_717092#
!embedding/StatefulPartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_717182*
(global_average_pooling1d/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_11_71732dense_11_71734*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_717312"
 dense_11/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0dense_12_71748dense_12_71750*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_717472"
 dense_12/StatefulPartitionedCall?
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall"^embedding/StatefulPartitionedCallN^text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
M
__inference__creator_72484
identity: ??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_724812
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
??
?
G__inference_sequential_7_layer_call_and_return_conditional_losses_72047
text_vectorization_3_input^
Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value	"
embedding_72032:	?N 
dense_11_72036:
dense_11_72038: 
dense_12_72041:
dense_12_72043:
identity?? dense_11/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowertext_vectorization_3_input*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
text_vectorization_3/SqueezeSqueeze0text_vectorization_3/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentityVtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slicez
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub|
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_72012*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_720112
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*'
_output_shapes
:?????????d2$
"text_vectorization_3/cond/Identity?
!embedding/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_3/cond/Identity:output:0embedding_72032*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_717092#
!embedding/StatefulPartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_717182*
(global_average_pooling1d/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_11_72036dense_11_72038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_717312"
 dense_11/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0dense_12_72041dense_12_72043*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_717472"
 dense_12/StatefulPartitionedCall?
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall"^embedding/StatefulPartitionedCallN^text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?
?
%text_vectorization_3_cond_false_72219)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
$text_vectorization_3_cond_true_72011E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?	
?
D__inference_embedding_layer_call_and_return_conditional_losses_72406

inputs	)
embedding_lookup_72400:	?N
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_72400inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/72400*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/72400*+
_output_shapes
:?????????d2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
,
__inference__destroyer_72505
identity?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_725012
PartitionedCallP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
$text_vectorization_3_cond_true_72317E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
??
?
G__inference_sequential_7_layer_call_and_return_conditional_losses_72140
text_vectorization_3_input^
Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value	"
embedding_72125:	?N 
dense_11_72129:
dense_11_72131: 
dense_12_72134:
dense_12_72136:
identity?? dense_11/StatefulPartitionedCall? dense_12/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowertext_vectorization_3_input*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
text_vectorization_3/SqueezeSqueeze0text_vectorization_3/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentityVtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slicez
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub|
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_72105*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_721042
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*'
_output_shapes
:?????????d2$
"text_vectorization_3/cond/Identity?
!embedding/StatefulPartitionedCallStatefulPartitionedCall+text_vectorization_3/cond/Identity:output:0embedding_72125*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_717092#
!embedding/StatefulPartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_717182*
(global_average_pooling1d/PartitionedCall?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_11_72129dense_11_72131*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_717312"
 dense_11/StatefulPartitionedCall?
 dense_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0dense_12_72134dense_12_72136*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_717472"
 dense_12/StatefulPartitionedCall?
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall"^embedding/StatefulPartitionedCallN^text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?
8
(__inference_restored_function_body_71092
identity?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference__destroyer_710882
PartitionedCall[
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
,
__inference__destroyer_71097
identity?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_710922
PartitionedCallP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
%text_vectorization_3_cond_false_72105)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?

?
C__inference_dense_11_layer_call_and_return_conditional_losses_72446

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
[
(__inference_restored_function_body_72481
identity: ??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference__creator_703202
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
?
?
%text_vectorization_3_cond_false_71680)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?	
?
,__inference_sequential_7_layer_call_fn_71954
text_vectorization_3_input
unknown
	unknown_0	
	unknown_1:	?N
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_719182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?
~
)__inference_embedding_layer_call_fn_72413

inputs	
unknown:	?N
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_717092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
Q
__inference__creator_70312
identity: ??string_lookup_3_index_table?
string_lookup_3_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*3
shared_name$"table_162688_load_66246_load_70287*
value_dtype0	2
string_lookup_3_index_table?
IdentityIdentity*string_lookup_3_index_table:table_handle:0^string_lookup_3_index_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2:
string_lookup_3_index_tablestring_lookup_3_index_table
?
8
(__inference_restored_function_body_72501
identity?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference__destroyer_710972
PartitionedCall[
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
2sequential_7_text_vectorization_3_cond_false_715536
2sequential_7_text_vectorization_3_cond_placeholder~
zsequential_7_text_vectorization_3_cond_strided_slice_sequential_7_text_vectorization_3_raggedtotensor_raggedtensortotensor	3
/sequential_7_text_vectorization_3_cond_identity	?
:sequential_7/text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_7/text_vectorization_3/cond/strided_slice/stack?
<sequential_7/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   2>
<sequential_7/text_vectorization_3/cond/strided_slice/stack_1?
<sequential_7/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_7/text_vectorization_3/cond/strided_slice/stack_2?
4sequential_7/text_vectorization_3/cond/strided_sliceStridedSlicezsequential_7_text_vectorization_3_cond_strided_slice_sequential_7_text_vectorization_3_raggedtotensor_raggedtensortotensorCsequential_7/text_vectorization_3/cond/strided_slice/stack:output:0Esequential_7/text_vectorization_3/cond/strided_slice/stack_1:output:0Esequential_7/text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask26
4sequential_7/text_vectorization_3/cond/strided_slice?
/sequential_7/text_vectorization_3/cond/IdentityIdentity=sequential_7/text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????21
/sequential_7/text_vectorization_3/cond/Identity"k
/sequential_7_text_vectorization_3_cond_identity8sequential_7/text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
?
(__inference_dense_12_layer_call_fn_72474

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_12_layer_call_and_return_conditional_losses_717472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_72419

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
__inference_save_fn_72524
checkpoint_keyD
@none_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	??3None_lookup_table_export_values/LookupTableExportV2?
3None_lookup_table_export_values/LookupTableExportV2LookupTableExportV2@none_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::25
3None_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1?
IdentityIdentityadd:z:04^None_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const?

Identity_1IdentityConst:output:04^None_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity:None_lookup_table_export_values/LookupTableExportV2:keys:04^None_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
:2

Identity_2?

Identity_3Identity	add_1:z:04^None_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1?

Identity_4IdentityConst_1:output:04^None_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_4?

Identity_5Identity<None_lookup_table_export_values/LookupTableExportV2:values:04^None_lookup_table_export_values/LookupTableExportV2*
T0	*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2j
3None_lookup_table_export_values/LookupTableExportV23None_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?	
?
#__inference_signature_wrapper_72161
text_vectorization_3_input
unknown
	unknown_0	
	unknown_1:	?N
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_715942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:?????????
4
_user_specified_nametext_vectorization_3_input:

_output_shapes
: 
?#
?
__inference__traced_save_72599
file_prefix3
/savev2_embedding_embeddings_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop>
:savev2_none_lookup_table_export_values_lookuptableexportv2@
<savev2_none_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const_1

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*+
value"B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop:savev2_none_lookup_table_export_values_lookuptableexportv2<savev2_none_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*R
_input_shapesA
?: :	?N::::::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?N:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
__inference_restore_fn_72532
restored_tensors_0
restored_tensors_1	N
Jstring_lookup_3_index_table_table_restore_lookuptableimportv2_table_handle
identity??=string_lookup_3_index_table_table_restore/LookupTableImportV2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2LookupTableImportV2Jstring_lookup_3_index_table_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 2?
=string_lookup_3_index_table_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Const?
IdentityIdentityConst:output:0>^string_lookup_3_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2~
=string_lookup_3_index_table_table_restore/LookupTableImportV2=string_lookup_3_index_table_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?
?
,__inference_sequential_7_layer_call_fn_72397

inputs
unknown
	unknown_0	
	unknown_1:	?N
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_719182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
M
__inference__creator_70320
identity: ??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_703162
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
?
?
$text_vectorization_3_cond_true_72218E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
T
8__inference_global_average_pooling1d_layer_call_fn_72430

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_716042
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
1sequential_7_text_vectorization_3_cond_true_71552_
[sequential_7_text_vectorization_3_cond_pad_paddings_1_sequential_7_text_vectorization_3_subt
psequential_7_text_vectorization_3_cond_pad_sequential_7_text_vectorization_3_raggedtotensor_raggedtensortotensor	3
/sequential_7_text_vectorization_3_cond_identity	?
7sequential_7/text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_7/text_vectorization_3/cond/Pad/paddings/1/0?
5sequential_7/text_vectorization_3/cond/Pad/paddings/1Pack@sequential_7/text_vectorization_3/cond/Pad/paddings/1/0:output:0[sequential_7_text_vectorization_3_cond_pad_paddings_1_sequential_7_text_vectorization_3_sub*
N*
T0*
_output_shapes
:27
5sequential_7/text_vectorization_3/cond/Pad/paddings/1?
7sequential_7/text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_7/text_vectorization_3/cond/Pad/paddings/0_1?
3sequential_7/text_vectorization_3/cond/Pad/paddingsPack@sequential_7/text_vectorization_3/cond/Pad/paddings/0_1:output:0>sequential_7/text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:25
3sequential_7/text_vectorization_3/cond/Pad/paddings?
*sequential_7/text_vectorization_3/cond/PadPadpsequential_7_text_vectorization_3_cond_pad_sequential_7_text_vectorization_3_raggedtotensor_raggedtensortotensor<sequential_7/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2,
*sequential_7/text_vectorization_3/cond/Pad?
/sequential_7/text_vectorization_3/cond/IdentityIdentity3sequential_7/text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????21
/sequential_7/text_vectorization_3/cond/Identity"k
/sequential_7_text_vectorization_3_cond_identity8sequential_7/text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?	
?
D__inference_embedding_layer_call_and_return_conditional_losses_71709

inputs	)
embedding_lookup_71703:	?N
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_71703inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/71703*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/71703*+
_output_shapes
:?????????d2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
$text_vectorization_3_cond_true_71679E
Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_subZ
Vtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
*text_vectorization_3/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2,
*text_vectorization_3/cond/Pad/paddings/1/0?
(text_vectorization_3/cond/Pad/paddings/1Pack3text_vectorization_3/cond/Pad/paddings/1/0:output:0Atext_vectorization_3_cond_pad_paddings_1_text_vectorization_3_sub*
N*
T0*
_output_shapes
:2*
(text_vectorization_3/cond/Pad/paddings/1?
*text_vectorization_3/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*text_vectorization_3/cond/Pad/paddings/0_1?
&text_vectorization_3/cond/Pad/paddingsPack3text_vectorization_3/cond/Pad/paddings/0_1:output:01text_vectorization_3/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2(
&text_vectorization_3/cond/Pad/paddings?
text_vectorization_3/cond/PadPadVtext_vectorization_3_cond_pad_text_vectorization_3_raggedtotensor_raggedtensortotensor/text_vectorization_3/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:??????????????????2
text_vectorization_3/cond/Pad?
"text_vectorization_3/cond/IdentityIdentity&text_vectorization_3/cond/Pad:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
[
(__inference_restored_function_body_72553
identity: ??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference__creator_703202
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
??
?
G__inference_sequential_7_layer_call_and_return_conditional_losses_72359

inputs^
Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle_
[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value	3
 embedding_embedding_lookup_72338:	?N9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:9
'dense_12_matmul_readvariableop_resource:6
(dense_12_biasadd_readvariableop_resource:
identity??dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?dense_12/BiasAdd/ReadVariableOp?dense_12/MatMul/ReadVariableOp?embedding/embedding_lookup?Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
 text_vectorization_3/StringLowerStringLowerinputs*'
_output_shapes
:?????????2"
 text_vectorization_3/StringLower?
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2)
'text_vectorization_3/StaticRegexReplace?
text_vectorization_3/SqueezeSqueeze0text_vectorization_3/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization_3/Squeeze?
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2(
&text_vectorization_3/StringSplit/Const?
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV2%text_vectorization_3/Squeeze:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:20
.text_vectorization_3/StringSplit/StringSplitV2?
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4text_vectorization_3/StringSplit/strided_slice/stack?
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       28
6text_vectorization_3/StringSplit/strided_slice/stack_1?
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6text_vectorization_3/StringSplit/strided_slice/stack_2?
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask20
.text_vectorization_3/StringSplit/strided_slice?
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6text_vectorization_3/StringSplit/strided_slice_1/stack?
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_1?
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8text_vectorization_3/StringSplit/strided_slice_1/stack_2?
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask22
0text_vectorization_3/StringSplit/strided_slice_1?
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2Y
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2g
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2b
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2c
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2a
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2e
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2f
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2d
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2`
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2[
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Ztext_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0[text_vectorization_3_string_lookup_3_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:?????????2O
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2?
6text_vectorization_3/string_lookup_3/assert_equal/NoOpNoOp*
_output_shapes
 28
6text_vectorization_3/string_lookup_3/assert_equal/NoOp?
-text_vectorization_3/string_lookup_3/IdentityIdentityVtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2/
-text_vectorization_3/string_lookup_3/Identity?
/text_vectorization_3/string_lookup_3/Identity_1Identitybtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:?????????21
/text_vectorization_3/string_lookup_3/Identity_1?
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 23
1text_vectorization_3/RaggedToTensor/default_value?
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2+
)text_vectorization_3/RaggedToTensor/Const?
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:08text_vectorization_3/string_lookup_3/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2:
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensor?
text_vectorization_3/ShapeShapeAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization_3/Shape?
(text_vectorization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization_3/strided_slice/stack?
*text_vectorization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_1?
*text_vectorization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*text_vectorization_3/strided_slice/stack_2?
"text_vectorization_3/strided_sliceStridedSlice#text_vectorization_3/Shape:output:01text_vectorization_3/strided_slice/stack:output:03text_vectorization_3/strided_slice/stack_1:output:03text_vectorization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"text_vectorization_3/strided_slicez
text_vectorization_3/sub/xConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/sub/x?
text_vectorization_3/subSub#text_vectorization_3/sub/x:output:0+text_vectorization_3/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/sub|
text_vectorization_3/Less/yConst*
_output_shapes
: *
dtype0*
value	B :d2
text_vectorization_3/Less/y?
text_vectorization_3/LessLess+text_vectorization_3/strided_slice:output:0$text_vectorization_3/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization_3/Less?
text_vectorization_3/condStatelessIftext_vectorization_3/Less:z:0text_vectorization_3/sub:z:0Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *8
else_branch)R'
%text_vectorization_3_cond_false_72318*/
output_shapes
:??????????????????*7
then_branch(R&
$text_vectorization_3_cond_true_723172
text_vectorization_3/cond?
"text_vectorization_3/cond/IdentityIdentity"text_vectorization_3/cond:output:0*
T0	*'
_output_shapes
:?????????d2$
"text_vectorization_3/cond/Identity?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_72338+text_vectorization_3/cond/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/72338*+
_output_shapes
:?????????d*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/72338*+
_output_shapes
:?????????d2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2'
%embedding/embedding_lookup/Identity_1?
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices?
global_average_pooling1d/MeanMean.embedding/embedding_lookup/Identity_1:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????2
global_average_pooling1d/Mean?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_11/MatMul/ReadVariableOp?
dense_11/MatMulMatMul&global_average_pooling1d/Mean:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/MatMul?
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_11/BiasAdd/ReadVariableOp?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_11/BiasAdds
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_11/Relu?
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_12/MatMul/ReadVariableOp?
dense_12/MatMulMatMuldense_11/Relu:activations:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_12/MatMul?
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_12/BiasAdd/ReadVariableOp?
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_12/BiasAdd?
IdentityIdentitydense_12/BiasAdd:output:0 ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp^embedding/embedding_lookupN^text_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2?
Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2Mtext_vectorization_3/string_lookup_3/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
C__inference_dense_12_layer_call_and_return_conditional_losses_72465

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%text_vectorization_3_cond_false_72318)
%text_vectorization_3_cond_placeholderd
`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor	&
"text_vectorization_3_cond_identity	?
-text_vectorization_3/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2/
-text_vectorization_3/cond/strided_slice/stack?
/text_vectorization_3/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   21
/text_vectorization_3/cond/strided_slice/stack_1?
/text_vectorization_3/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      21
/text_vectorization_3/cond/strided_slice/stack_2?
'text_vectorization_3/cond/strided_sliceStridedSlice`text_vectorization_3_cond_strided_slice_text_vectorization_3_raggedtotensor_raggedtensortotensor6text_vectorization_3/cond/strided_slice/stack:output:08text_vectorization_3/cond/strided_slice/stack_1:output:08text_vectorization_3/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2)
'text_vectorization_3/cond/strided_slice?
"text_vectorization_3/cond/IdentityIdentity0text_vectorization_3/cond/strided_slice:output:0*
T0	*0
_output_shapes
:??????????????????2$
"text_vectorization_3/cond/Identity"Q
"text_vectorization_3_cond_identity+text_vectorization_3/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :??????????????????: 

_output_shapes
: :62
0
_output_shapes
:??????????????????
?
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_71604

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
a
text_vectorization_3_inputC
,serving_default_text_vectorization_3_input:0?????????>
dense_122
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?.
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer

signatures
#_self_saveable_object_factories
	trainable_variables

regularization_losses
	variables
	keras_api
R_default_save_signature
*S&call_and_return_all_conditional_losses
T__call__"?+
_tf_keras_sequential?+{"name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "text_vectorization_3_input"}}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization_3", "trainable": true, "dtype": "string", "max_tokens": 10000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 100, "pad_to_max_tokens": false, "vocabulary_size": 10000}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 10000, "output_dim": 16, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 11, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "string", "text_vectorization_3_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "text_vectorization_3_input"}, "shared_object_id": 0}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization_3", "trainable": true, "dtype": "string", "max_tokens": 10000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 100, "pad_to_max_tokens": false, "vocabulary_size": 10000}, "shared_object_id": 1}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 10000, "output_dim": 16, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 3}, {"class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10}]}}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": true, "label_smoothing": 0}, "shared_object_id": 12}, "metrics": [[{"class_name": "BinaryAccuracy", "config": {"name": "accuracy", "dtype": "float32", "threshold": 0.0}, "shared_object_id": 13}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
state_variables
_index_lookup_layer
#_self_saveable_object_factories
	keras_api"?
_tf_keras_layer?{"name": "text_vectorization_3", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": null, "stateful": true, "must_restore_from_config": true, "class_name": "TextVectorization", "config": {"name": "text_vectorization_3", "trainable": true, "dtype": "string", "max_tokens": 10000, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 100, "pad_to_max_tokens": false, "vocabulary_size": 10000}, "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [17740, 1]}}
?

embeddings
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
*U&call_and_return_all_conditional_losses
V__call__"?
_tf_keras_layer?{"name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 10000, "output_dim": 16, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 3, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
*W&call_and_return_all_conditional_losses
X__call__"?
_tf_keras_layer?{"name": "global_average_pooling1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GlobalAveragePooling1D", "config": {"name": "global_average_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 14}}
?

kernel
bias
#_self_saveable_object_factories
trainable_variables
 regularization_losses
!	variables
"	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"?
_tf_keras_layer?{"name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?

#kernel
$bias
#%_self_saveable_object_factories
&trainable_variables
'regularization_losses
(	variables
)	keras_api
*[&call_and_return_all_conditional_losses
\__call__"?
_tf_keras_layer?{"name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
"
	optimizer
,
]serving_default"
signature_map
 "
trackable_dict_wrapper
C
0
1
2
#3
$4"
trackable_list_wrapper
 "
trackable_list_wrapper
C
1
2
3
#4
$5"
trackable_list_wrapper
?
*non_trainable_variables
	trainable_variables

regularization_losses

+layers
	variables
,metrics
-layer_metrics
.layer_regularization_losses
T__call__
R_default_save_signature
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
?
/state_variables

0_table
#1_self_saveable_object_factories
2	keras_api"?
_tf_keras_layer?{"name": "string_lookup_3", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": null, "stateful": true, "must_restore_from_config": true, "class_name": "StringLookup", "config": {"name": "string_lookup_3", "trainable": true, "dtype": "string", "invert": false, "max_tokens": 10000, "num_oov_indices": 1, "oov_token": "[UNK]", "mask_token": "", "output_mode": "int", "pad_to_max_tokens": false, "vocabulary_size": 10000, "vocabulary": null, "encoding": "utf-8"}, "shared_object_id": 17}
 "
trackable_dict_wrapper
"
_generic_user_object
':%	?N2embedding/embeddings
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
3non_trainable_variables
trainable_variables
regularization_losses

4layers
	variables
5metrics
6layer_metrics
7layer_regularization_losses
V__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
8non_trainable_variables
trainable_variables
regularization_losses

9layers
	variables
:metrics
;layer_metrics
<layer_regularization_losses
X__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
!:2dense_11/kernel
:2dense_11/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
=non_trainable_variables
trainable_variables
 regularization_losses

>layers
!	variables
?metrics
@layer_metrics
Alayer_regularization_losses
Z__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
!:2dense_12/kernel
:2dense_12/bias
 "
trackable_dict_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
?
Bnon_trainable_variables
&trainable_variables
'regularization_losses

Clayers
(	variables
Dmetrics
Elayer_metrics
Flayer_regularization_losses
\__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
O
^_create_resource
__initialize
`_destroy_resourceR Z
tableab
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
	Itotal
	Jcount
K	variables
L	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 18}
?
	Mtotal
	Ncount
O
_fn_kwargs
P	variables
Q	keras_api"?
_tf_keras_metric?{"class_name": "BinaryAccuracy", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "threshold": 0.0}, "shared_object_id": 13}
:  (2total
:  (2count
.
I0
J1"
trackable_list_wrapper
-
K	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
M0
N1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
?2?
 __inference__wrapped_model_71594?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *9?6
4?1
text_vectorization_3_input?????????
?2?
G__inference_sequential_7_layer_call_and_return_conditional_losses_72260
G__inference_sequential_7_layer_call_and_return_conditional_losses_72359
G__inference_sequential_7_layer_call_and_return_conditional_losses_72047
G__inference_sequential_7_layer_call_and_return_conditional_losses_72140?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_sequential_7_layer_call_fn_71771
,__inference_sequential_7_layer_call_fn_72378
,__inference_sequential_7_layer_call_fn_72397
,__inference_sequential_7_layer_call_fn_71954?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_72406?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_embedding_layer_call_fn_72413?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_72419
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_72425?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_global_average_pooling1d_layer_call_fn_72430
8__inference_global_average_pooling1d_layer_call_fn_72435?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_11_layer_call_and_return_conditional_losses_72446?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_11_layer_call_fn_72455?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_12_layer_call_and_return_conditional_losses_72465?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_12_layer_call_fn_72474?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_72161text_vectorization_3_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_72484?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_72494?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_72505?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference_save_fn_72524checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_72532restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const6
__inference__creator_72484?

? 
? "? 8
__inference__destroyer_72505?

? 
? "? :
__inference__initializer_72494?

? 
? "? ?
 __inference__wrapped_model_71594?0c#$C?@
9?6
4?1
text_vectorization_3_input?????????
? "3?0
.
dense_12"?
dense_12??????????
C__inference_dense_11_layer_call_and_return_conditional_losses_72446\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_dense_11_layer_call_fn_72455O/?,
%?"
 ?
inputs?????????
? "???????????
C__inference_dense_12_layer_call_and_return_conditional_losses_72465\#$/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
(__inference_dense_12_layer_call_fn_72474O#$/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_embedding_layer_call_and_return_conditional_losses_72406_/?,
%?"
 ?
inputs?????????d	
? ")?&
?
0?????????d
? 
)__inference_embedding_layer_call_fn_72413R/?,
%?"
 ?
inputs?????????d	
? "??????????d?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_72419{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_72425`7?4
-?*
$?!
inputs?????????d

 
? "%?"
?
0?????????
? ?
8__inference_global_average_pooling1d_layer_call_fn_72430nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
8__inference_global_average_pooling1d_layer_call_fn_72435S7?4
-?*
$?!
inputs?????????d

 
? "??????????y
__inference_restore_fn_72532Y0K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_72524?0&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
G__inference_sequential_7_layer_call_and_return_conditional_losses_72047}0c#$K?H
A?>
4?1
text_vectorization_3_input?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_7_layer_call_and_return_conditional_losses_72140}0c#$K?H
A?>
4?1
text_vectorization_3_input?????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_7_layer_call_and_return_conditional_losses_72260i0c#$7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_7_layer_call_and_return_conditional_losses_72359i0c#$7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
,__inference_sequential_7_layer_call_fn_71771p0c#$K?H
A?>
4?1
text_vectorization_3_input?????????
p 

 
? "???????????
,__inference_sequential_7_layer_call_fn_71954p0c#$K?H
A?>
4?1
text_vectorization_3_input?????????
p

 
? "???????????
,__inference_sequential_7_layer_call_fn_72378\0c#$7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
,__inference_sequential_7_layer_call_fn_72397\0c#$7?4
-?*
 ?
inputs?????????
p

 
? "???????????
#__inference_signature_wrapper_72161?0c#$a?^
? 
W?T
R
text_vectorization_3_input4?1
text_vectorization_3_input?????????"3?0
.
dense_12"?
dense_12?????????