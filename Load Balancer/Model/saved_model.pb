.
Í
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
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
executor_typestring ¨

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ø,
z
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_18/kernel
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:
*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
:*
dtype0
z
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_19/kernel
s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

:*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_6/lstm_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(**
shared_namelstm_6/lstm_cell_6/kernel

-lstm_6/lstm_cell_6/kernel/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_6/kernel*
_output_shapes

:(*
dtype0
¢
#lstm_6/lstm_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*4
shared_name%#lstm_6/lstm_cell_6/recurrent_kernel

7lstm_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_6/lstm_cell_6/recurrent_kernel*
_output_shapes

:
(*
dtype0

lstm_6/lstm_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*(
shared_namelstm_6/lstm_cell_6/bias

+lstm_6/lstm_cell_6/bias/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_6/bias*
_output_shapes
:(*
dtype0
z
lstm_6/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namelstm_6/Variable
s
#lstm_6/Variable/Read/ReadVariableOpReadVariableOplstm_6/Variable*
_output_shapes

:
*
dtype0
~
lstm_6/Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*"
shared_namelstm_6/Variable_1
w
%lstm_6/Variable_1/Read/ReadVariableOpReadVariableOplstm_6/Variable_1*
_output_shapes

:
*
dtype0
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

Adam/dense_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_18/kernel/m

*Adam/dense_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/m
y
(Adam/dense_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/m*
_output_shapes
:*
dtype0

Adam/dense_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_19/kernel/m

*Adam/dense_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/m
y
(Adam/dense_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/m*
_output_shapes
:*
dtype0

Adam/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_20/kernel/m

*Adam/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_20/bias/m
y
(Adam/dense_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_6/lstm_cell_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*1
shared_name" Adam/lstm_6/lstm_cell_6/kernel/m

4Adam/lstm_6/lstm_cell_6/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_6/lstm_cell_6/kernel/m*
_output_shapes

:(*
dtype0
°
*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*;
shared_name,*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m
©
>Adam/lstm_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

Adam/lstm_6/lstm_cell_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*/
shared_name Adam/lstm_6/lstm_cell_6/bias/m

2Adam/lstm_6/lstm_cell_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_6/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_18/kernel/v

*Adam/dense_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_18/bias/v
y
(Adam/dense_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/v*
_output_shapes
:*
dtype0

Adam/dense_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_19/kernel/v

*Adam/dense_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/v
y
(Adam/dense_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/v*
_output_shapes
:*
dtype0

Adam/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_20/kernel/v

*Adam/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_20/bias/v
y
(Adam/dense_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_6/lstm_cell_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*1
shared_name" Adam/lstm_6/lstm_cell_6/kernel/v

4Adam/lstm_6/lstm_cell_6/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_6/lstm_cell_6/kernel/v*
_output_shapes

:(*
dtype0
°
*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*;
shared_name,*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v
©
>Adam/lstm_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

Adam/lstm_6/lstm_cell_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*/
shared_name Adam/lstm_6/lstm_cell_6/bias/v

2Adam/lstm_6/lstm_cell_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_6/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
¦?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*á>
value×>BÔ> BÍ>
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Á
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
¦

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
æ
/iter

0beta_1

1beta_2
	2decay
3learning_ratemfmgmh mi'mj(mk4ml5mm6mnvovpvq vr'vs(vt4vu5vv6vw*
C
40
51
62
3
4
5
 6
'7
(8*
C
40
51
62
3
4
5
 6
'7
(8*
* 
°
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

<serving_default* 
ã
=
state_size

4kernel
5recurrent_kernel
6bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses*
* 

40
51
62*

40
51
62*
* 


Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
_Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_18/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_19/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 

Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_20/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 

Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_6/lstm_cell_6/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_6/lstm_cell_6/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_6/lstm_cell_6/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

Z0*
* 
* 
* 
* 

40
51
62*

40
51
62*
* 

[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
* 

`0
a1*
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	btotal
	ccount
d	variables
e	keras_api*
* 
* 
* 
* 
* 
ke
VARIABLE_VALUElstm_6/VariableBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUElstm_6/Variable_1Blayer_with_weights-0/keras_api/states/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

b0
c1*

d	variables*
|
VARIABLE_VALUEAdam/dense_18/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_18/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_19/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_19/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_20/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_20/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_6/lstm_cell_6/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_6/lstm_cell_6/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_18/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_18/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_19/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_19/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_20/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_20/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_6/lstm_cell_6/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_6/lstm_cell_6/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
u
serving_default_lstm_6_inputPlaceholder*"
_output_shapes
:*
dtype0*
shape:
 
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_6_inputlstm_6/Variablelstm_6/Variable_1lstm_6/lstm_cell_6/kernel#lstm_6/lstm_cell_6/recurrent_kernellstm_6/lstm_cell_6/biasdense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_3088499
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
°
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_6/lstm_cell_6/kernel/Read/ReadVariableOp7lstm_6/lstm_cell_6/recurrent_kernel/Read/ReadVariableOp+lstm_6/lstm_cell_6/bias/Read/ReadVariableOp#lstm_6/Variable/Read/ReadVariableOp%lstm_6/Variable_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_18/kernel/m/Read/ReadVariableOp(Adam/dense_18/bias/m/Read/ReadVariableOp*Adam/dense_19/kernel/m/Read/ReadVariableOp(Adam/dense_19/bias/m/Read/ReadVariableOp*Adam/dense_20/kernel/m/Read/ReadVariableOp(Adam/dense_20/bias/m/Read/ReadVariableOp4Adam/lstm_6/lstm_cell_6/kernel/m/Read/ReadVariableOp>Adam/lstm_6/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_6/lstm_cell_6/bias/m/Read/ReadVariableOp*Adam/dense_18/kernel/v/Read/ReadVariableOp(Adam/dense_18/bias/v/Read/ReadVariableOp*Adam/dense_19/kernel/v/Read/ReadVariableOp(Adam/dense_19/bias/v/Read/ReadVariableOp*Adam/dense_20/kernel/v/Read/ReadVariableOp(Adam/dense_20/bias/v/Read/ReadVariableOp4Adam/lstm_6/lstm_cell_6/kernel/v/Read/ReadVariableOp>Adam/lstm_6/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_6/lstm_cell_6/bias/v/Read/ReadVariableOpConst*1
Tin*
(2&	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_3090421
Û
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_6/lstm_cell_6/kernel#lstm_6/lstm_cell_6/recurrent_kernellstm_6/lstm_cell_6/biaslstm_6/Variablelstm_6/Variable_1totalcountAdam/dense_18/kernel/mAdam/dense_18/bias/mAdam/dense_19/kernel/mAdam/dense_19/bias/mAdam/dense_20/kernel/mAdam/dense_20/bias/m Adam/lstm_6/lstm_cell_6/kernel/m*Adam/lstm_6/lstm_cell_6/recurrent_kernel/mAdam/lstm_6/lstm_cell_6/bias/mAdam/dense_18/kernel/vAdam/dense_18/bias/vAdam/dense_19/kernel/vAdam/dense_19/bias/vAdam/dense_20/kernel/vAdam/dense_20/bias/v Adam/lstm_6/lstm_cell_6/kernel/v*Adam/lstm_6/lstm_cell_6/recurrent_kernel/vAdam/lstm_6/lstm_cell_6/bias/v*0
Tin)
'2%*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_3090539¸Ó+
2
ð
I__inference_sequential_6_layer_call_and_return_conditional_losses_3088470

inputs5
#lstm_6_read_readvariableop_resource:
7
%lstm_6_read_1_readvariableop_resource:
7
%lstm_6_read_2_readvariableop_resource:(7
%lstm_6_read_3_readvariableop_resource:
(3
%lstm_6_read_4_readvariableop_resource:(9
'dense_18_matmul_readvariableop_resource:
6
(dense_18_biasadd_readvariableop_resource:9
'dense_19_matmul_readvariableop_resource:6
(dense_19_biasadd_readvariableop_resource:9
'dense_20_matmul_readvariableop_resource:6
(dense_20_biasadd_readvariableop_resource:
identity¢dense_18/BiasAdd/ReadVariableOp¢dense_18/MatMul/ReadVariableOp¢dense_19/BiasAdd/ReadVariableOp¢dense_19/MatMul/ReadVariableOp¢dense_20/BiasAdd/ReadVariableOp¢dense_20/MatMul/ReadVariableOp¢lstm_6/AssignVariableOp¢lstm_6/AssignVariableOp_1¢lstm_6/Read/ReadVariableOp¢lstm_6/Read_1/ReadVariableOp¢lstm_6/Read_2/ReadVariableOp¢lstm_6/Read_3/ReadVariableOp¢lstm_6/Read_4/ReadVariableOp~
lstm_6/Read/ReadVariableOpReadVariableOp#lstm_6_read_readvariableop_resource*
_output_shapes

:
*
dtype0h
lstm_6/IdentityIdentity"lstm_6/Read/ReadVariableOp:value:0*
T0*
_output_shapes

:

lstm_6/Read_1/ReadVariableOpReadVariableOp%lstm_6_read_1_readvariableop_resource*
_output_shapes

:
*
dtype0l
lstm_6/Identity_1Identity$lstm_6/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes

:

lstm_6/Read_2/ReadVariableOpReadVariableOp%lstm_6_read_2_readvariableop_resource*
_output_shapes

:(*
dtype0l
lstm_6/Identity_2Identity$lstm_6/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(
lstm_6/Read_3/ReadVariableOpReadVariableOp%lstm_6_read_3_readvariableop_resource*
_output_shapes

:
(*
dtype0l
lstm_6/Identity_3Identity$lstm_6/Read_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(~
lstm_6/Read_4/ReadVariableOpReadVariableOp%lstm_6_read_4_readvariableop_resource*
_output_shapes
:(*
dtype0h
lstm_6/Identity_4Identity$lstm_6/Read_4/ReadVariableOp:value:0*
T0*
_output_shapes
:(Á
lstm_6/PartitionedCallPartitionedCallinputslstm_6/Identity:output:0lstm_6/Identity_1:output:0lstm_6/Identity_2:output:0lstm_6/Identity_3:output:0lstm_6/Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.:
:
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3088180±
lstm_6/AssignVariableOpAssignVariableOp#lstm_6_read_readvariableop_resourcelstm_6/PartitionedCall:output:2^lstm_6/Read/ReadVariableOp*
_output_shapes
 *
dtype0·
lstm_6/AssignVariableOp_1AssignVariableOp%lstm_6_read_1_readvariableop_resourcelstm_6/PartitionedCall:output:3^lstm_6/Read_1/ReadVariableOp*
_output_shapes
 *
dtype0
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_18/MatMulMatMullstm_6/PartitionedCall:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_19/MatMulMatMuldense_18/BiasAdd:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_20/MatMulMatMuldense_19/BiasAdd:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:_
IdentityIdentitydense_20/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:Þ
NoOpNoOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp^lstm_6/AssignVariableOp^lstm_6/AssignVariableOp_1^lstm_6/Read/ReadVariableOp^lstm_6/Read_1/ReadVariableOp^lstm_6/Read_2/ReadVariableOp^lstm_6/Read_3/ReadVariableOp^lstm_6/Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp22
lstm_6/AssignVariableOplstm_6/AssignVariableOp26
lstm_6/AssignVariableOp_1lstm_6/AssignVariableOp_128
lstm_6/Read/ReadVariableOplstm_6/Read/ReadVariableOp2<
lstm_6/Read_1/ReadVariableOplstm_6/Read_1/ReadVariableOp2<
lstm_6/Read_2/ReadVariableOplstm_6/Read_2/ReadVariableOp2<
lstm_6/Read_3/ReadVariableOplstm_6/Read_3/ReadVariableOp2<
lstm_6/Read_4/ReadVariableOplstm_6/Read_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ó>

"__inference__wrapped_model_3085507
lstm_6_inputB
0sequential_6_lstm_6_read_readvariableop_resource:
D
2sequential_6_lstm_6_read_1_readvariableop_resource:
D
2sequential_6_lstm_6_read_2_readvariableop_resource:(D
2sequential_6_lstm_6_read_3_readvariableop_resource:
(@
2sequential_6_lstm_6_read_4_readvariableop_resource:(F
4sequential_6_dense_18_matmul_readvariableop_resource:
C
5sequential_6_dense_18_biasadd_readvariableop_resource:F
4sequential_6_dense_19_matmul_readvariableop_resource:C
5sequential_6_dense_19_biasadd_readvariableop_resource:F
4sequential_6_dense_20_matmul_readvariableop_resource:C
5sequential_6_dense_20_biasadd_readvariableop_resource:
identity¢,sequential_6/dense_18/BiasAdd/ReadVariableOp¢+sequential_6/dense_18/MatMul/ReadVariableOp¢,sequential_6/dense_19/BiasAdd/ReadVariableOp¢+sequential_6/dense_19/MatMul/ReadVariableOp¢,sequential_6/dense_20/BiasAdd/ReadVariableOp¢+sequential_6/dense_20/MatMul/ReadVariableOp¢$sequential_6/lstm_6/AssignVariableOp¢&sequential_6/lstm_6/AssignVariableOp_1¢'sequential_6/lstm_6/Read/ReadVariableOp¢)sequential_6/lstm_6/Read_1/ReadVariableOp¢)sequential_6/lstm_6/Read_2/ReadVariableOp¢)sequential_6/lstm_6/Read_3/ReadVariableOp¢)sequential_6/lstm_6/Read_4/ReadVariableOp
'sequential_6/lstm_6/Read/ReadVariableOpReadVariableOp0sequential_6_lstm_6_read_readvariableop_resource*
_output_shapes

:
*
dtype0
sequential_6/lstm_6/IdentityIdentity/sequential_6/lstm_6/Read/ReadVariableOp:value:0*
T0*
_output_shapes

:

)sequential_6/lstm_6/Read_1/ReadVariableOpReadVariableOp2sequential_6_lstm_6_read_1_readvariableop_resource*
_output_shapes

:
*
dtype0
sequential_6/lstm_6/Identity_1Identity1sequential_6/lstm_6/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes

:

)sequential_6/lstm_6/Read_2/ReadVariableOpReadVariableOp2sequential_6_lstm_6_read_2_readvariableop_resource*
_output_shapes

:(*
dtype0
sequential_6/lstm_6/Identity_2Identity1sequential_6/lstm_6/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(
)sequential_6/lstm_6/Read_3/ReadVariableOpReadVariableOp2sequential_6_lstm_6_read_3_readvariableop_resource*
_output_shapes

:
(*
dtype0
sequential_6/lstm_6/Identity_3Identity1sequential_6/lstm_6/Read_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(
)sequential_6/lstm_6/Read_4/ReadVariableOpReadVariableOp2sequential_6_lstm_6_read_4_readvariableop_resource*
_output_shapes
:(*
dtype0
sequential_6/lstm_6/Identity_4Identity1sequential_6/lstm_6/Read_4/ReadVariableOp:value:0*
T0*
_output_shapes
:(
#sequential_6/lstm_6/PartitionedCallPartitionedCalllstm_6_input%sequential_6/lstm_6/Identity:output:0'sequential_6/lstm_6/Identity_1:output:0'sequential_6/lstm_6/Identity_2:output:0'sequential_6/lstm_6/Identity_3:output:0'sequential_6/lstm_6/Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.:
:
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3085217å
$sequential_6/lstm_6/AssignVariableOpAssignVariableOp0sequential_6_lstm_6_read_readvariableop_resource,sequential_6/lstm_6/PartitionedCall:output:2(^sequential_6/lstm_6/Read/ReadVariableOp*
_output_shapes
 *
dtype0ë
&sequential_6/lstm_6/AssignVariableOp_1AssignVariableOp2sequential_6_lstm_6_read_1_readvariableop_resource,sequential_6/lstm_6/PartitionedCall:output:3*^sequential_6/lstm_6/Read_1/ReadVariableOp*
_output_shapes
 *
dtype0 
+sequential_6/dense_18/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_18_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0²
sequential_6/dense_18/MatMulMatMul,sequential_6/lstm_6/PartitionedCall:output:03sequential_6/dense_18/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
,sequential_6/dense_18/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
sequential_6/dense_18/BiasAddBiasAdd&sequential_6/dense_18/MatMul:product:04sequential_6/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 
+sequential_6/dense_19/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¬
sequential_6/dense_19/MatMulMatMul&sequential_6/dense_18/BiasAdd:output:03sequential_6/dense_19/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
,sequential_6/dense_19/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
sequential_6/dense_19/BiasAddBiasAdd&sequential_6/dense_19/MatMul:product:04sequential_6/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

: 
+sequential_6/dense_20/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_20_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¬
sequential_6/dense_20/MatMulMatMul&sequential_6/dense_19/BiasAdd:output:03sequential_6/dense_20/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
,sequential_6/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
sequential_6/dense_20/BiasAddBiasAdd&sequential_6/dense_20/MatMul:product:04sequential_6/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:l
IdentityIdentity&sequential_6/dense_20/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp-^sequential_6/dense_18/BiasAdd/ReadVariableOp,^sequential_6/dense_18/MatMul/ReadVariableOp-^sequential_6/dense_19/BiasAdd/ReadVariableOp,^sequential_6/dense_19/MatMul/ReadVariableOp-^sequential_6/dense_20/BiasAdd/ReadVariableOp,^sequential_6/dense_20/MatMul/ReadVariableOp%^sequential_6/lstm_6/AssignVariableOp'^sequential_6/lstm_6/AssignVariableOp_1(^sequential_6/lstm_6/Read/ReadVariableOp*^sequential_6/lstm_6/Read_1/ReadVariableOp*^sequential_6/lstm_6/Read_2/ReadVariableOp*^sequential_6/lstm_6/Read_3/ReadVariableOp*^sequential_6/lstm_6/Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 2\
,sequential_6/dense_18/BiasAdd/ReadVariableOp,sequential_6/dense_18/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_18/MatMul/ReadVariableOp+sequential_6/dense_18/MatMul/ReadVariableOp2\
,sequential_6/dense_19/BiasAdd/ReadVariableOp,sequential_6/dense_19/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_19/MatMul/ReadVariableOp+sequential_6/dense_19/MatMul/ReadVariableOp2\
,sequential_6/dense_20/BiasAdd/ReadVariableOp,sequential_6/dense_20/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_20/MatMul/ReadVariableOp+sequential_6/dense_20/MatMul/ReadVariableOp2L
$sequential_6/lstm_6/AssignVariableOp$sequential_6/lstm_6/AssignVariableOp2P
&sequential_6/lstm_6/AssignVariableOp_1&sequential_6/lstm_6/AssignVariableOp_12R
'sequential_6/lstm_6/Read/ReadVariableOp'sequential_6/lstm_6/Read/ReadVariableOp2V
)sequential_6/lstm_6/Read_1/ReadVariableOp)sequential_6/lstm_6/Read_1/ReadVariableOp2V
)sequential_6/lstm_6/Read_2/ReadVariableOp)sequential_6/lstm_6/Read_2/ReadVariableOp2V
)sequential_6/lstm_6/Read_3/ReadVariableOp)sequential_6/lstm_6/Read_3/ReadVariableOp2V
)sequential_6/lstm_6/Read_4/ReadVariableOp)sequential_6/lstm_6/Read_4/ReadVariableOp:P L
"
_output_shapes
:
&
_user_specified_namelstm_6_input
Ó
ø
C__inference_lstm_6_layer_call_and_return_conditional_losses_3088977
inputs_0.
read_readvariableop_resource:
0
read_1_readvariableop_resource:
0
read_2_readvariableop_resource:(0
read_3_readvariableop_resource:
(,
read_4_readvariableop_resource:(

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:
*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:
*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:(*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(t
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:
(*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(p
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:(*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:(¢
PartitionedCallPartitionedCallinputs_0Identity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *K
_output_shapes9
7:
:ÿÿÿÿÿÿÿÿÿ
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3088706
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ç7
Á
!__inference_standard_lstm_3088180

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3088095*
condR
while_cond_3088094*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_5d0093af-f409-4c9d-ad3b-4dc4f9a8fb51*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ò
Æ
while_cond_3087657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3087657___redundant_placeholder05
1while_while_cond_3087657___redundant_placeholder15
1while_while_cond_3087657___redundant_placeholder25
1while_while_cond_3087657___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
´J

(__forward_gpu_lstm_with_fallback_3086359

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0¼
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_0d6f691c-09af-4555-9b1c-5d90edf8d721*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3086186_3086360*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
æ
ê
I__inference_sequential_6_layer_call_and_return_conditional_losses_3087536
lstm_6_input 
lstm_6_3087509:
 
lstm_6_3087511:
 
lstm_6_3087513:( 
lstm_6_3087515:
(
lstm_6_3087517:("
dense_18_3087520:

dense_18_3087522:"
dense_19_3087525:
dense_19_3087527:"
dense_20_3087530:
dense_20_3087532:
identity¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall¢ dense_20/StatefulPartitionedCall¢lstm_6/StatefulPartitionedCall
lstm_6/StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputlstm_6_3087509lstm_6_3087511lstm_6_3087513lstm_6_3087515lstm_6_3087517*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_3087352
 dense_18/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0dense_18_3087520dense_18_3087522*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_18_layer_call_and_return_conditional_losses_3086822
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_3087525dense_19_3087527*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_3086838
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_3087530dense_20_3087532*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_3086854o
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:Ð
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:P L
"
_output_shapes
:
&
_user_specified_namelstm_6_input
®


.__inference_sequential_6_layer_call_fn_3087596

inputs
unknown:

	unknown_0:

	unknown_1:(
	unknown_2:
(
	unknown_3:(
	unknown_4:

	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_3087424f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
Ó
ø
C__inference_lstm_6_layer_call_and_return_conditional_losses_3089395
inputs_0.
read_readvariableop_resource:
0
read_1_readvariableop_resource:
0
read_2_readvariableop_resource:(0
read_3_readvariableop_resource:
(,
read_4_readvariableop_resource:(

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:
*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:
*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:(*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(t
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:
(*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(p
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:(*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:(¢
PartitionedCallPartitionedCallinputs_0Identity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *K
_output_shapes9
7:
:ÿÿÿÿÿÿÿÿÿ
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3089124
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ä>
Í
*__inference_gpu_lstm_with_fallback_3087837

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_a30cd431-c61c-4524-96e1-5815c3c08e3e*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ò
Æ
while_cond_3089456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3089456___redundant_placeholder05
1while_while_cond_3089456___redundant_placeholder15
1while_while_cond_3089456___redundant_placeholder25
1while_while_cond_3089456___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?
Í
*__inference_gpu_lstm_with_fallback_3089218

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¸
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_da35dd23-3ac8-4fea-a54b-41e3fafd4028*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
8
Á
!__inference_standard_lstm_3088706

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3088621*
condR
while_cond_3088620*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_0e75f141-db4a-4943-bcc0-ae159f642d9d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ï&
Ð
while_body_3088621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(
ï&
Ð
while_body_3089457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(



%__inference_signature_wrapper_3088499
lstm_6_input
unknown:

	unknown_0:

	unknown_1:(
	unknown_2:
(
	unknown_3:(
	unknown_4:

	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:
identity¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_3085507f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
"
_output_shapes
:
&
_user_specified_namelstm_6_input
Ô
ä
I__inference_sequential_6_layer_call_and_return_conditional_losses_3087424

inputs 
lstm_6_3087397:
 
lstm_6_3087399:
 
lstm_6_3087401:( 
lstm_6_3087403:
(
lstm_6_3087405:("
dense_18_3087408:

dense_18_3087410:"
dense_19_3087413:
dense_19_3087415:"
dense_20_3087418:
dense_20_3087420:
identity¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall¢ dense_20/StatefulPartitionedCall¢lstm_6/StatefulPartitionedCall
lstm_6/StatefulPartitionedCallStatefulPartitionedCallinputslstm_6_3087397lstm_6_3087399lstm_6_3087401lstm_6_3087403lstm_6_3087405*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_3087352
 dense_18/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0dense_18_3087408dense_18_3087410*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_18_layer_call_and_return_conditional_losses_3086822
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_3087413dense_19_3087415*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_3086838
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_3087418dense_20_3087420*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_3086854o
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:Ð
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ò
Æ
while_cond_3086442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3086442___redundant_placeholder05
1while_while_cond_3086442___redundant_placeholder15
1while_while_cond_3086442___redundant_placeholder25
1while_while_cond_3086442___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
òL
é
 __inference__traced_save_3090421
file_prefix.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_6_lstm_cell_6_kernel_read_readvariableopB
>savev2_lstm_6_lstm_cell_6_recurrent_kernel_read_readvariableop6
2savev2_lstm_6_lstm_cell_6_bias_read_readvariableop.
*savev2_lstm_6_variable_read_readvariableop0
,savev2_lstm_6_variable_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_18_kernel_m_read_readvariableop3
/savev2_adam_dense_18_bias_m_read_readvariableop5
1savev2_adam_dense_19_kernel_m_read_readvariableop3
/savev2_adam_dense_19_bias_m_read_readvariableop5
1savev2_adam_dense_20_kernel_m_read_readvariableop3
/savev2_adam_dense_20_bias_m_read_readvariableop?
;savev2_adam_lstm_6_lstm_cell_6_kernel_m_read_readvariableopI
Esavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_6_lstm_cell_6_bias_m_read_readvariableop5
1savev2_adam_dense_18_kernel_v_read_readvariableop3
/savev2_adam_dense_18_bias_v_read_readvariableop5
1savev2_adam_dense_19_kernel_v_read_readvariableop3
/savev2_adam_dense_19_bias_v_read_readvariableop5
1savev2_adam_dense_20_kernel_v_read_readvariableop3
/savev2_adam_dense_20_bias_v_read_readvariableop?
;savev2_adam_lstm_6_lstm_cell_6_kernel_v_read_readvariableopI
Esavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_6_lstm_cell_6_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¡
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Ê
valueÀB½%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH·
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B À
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_6_lstm_cell_6_kernel_read_readvariableop>savev2_lstm_6_lstm_cell_6_recurrent_kernel_read_readvariableop2savev2_lstm_6_lstm_cell_6_bias_read_readvariableop*savev2_lstm_6_variable_read_readvariableop,savev2_lstm_6_variable_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_18_kernel_m_read_readvariableop/savev2_adam_dense_18_bias_m_read_readvariableop1savev2_adam_dense_19_kernel_m_read_readvariableop/savev2_adam_dense_19_bias_m_read_readvariableop1savev2_adam_dense_20_kernel_m_read_readvariableop/savev2_adam_dense_20_bias_m_read_readvariableop;savev2_adam_lstm_6_lstm_cell_6_kernel_m_read_readvariableopEsavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_6_lstm_cell_6_bias_m_read_readvariableop1savev2_adam_dense_18_kernel_v_read_readvariableop/savev2_adam_dense_18_bias_v_read_readvariableop1savev2_adam_dense_19_kernel_v_read_readvariableop/savev2_adam_dense_19_bias_v_read_readvariableop1savev2_adam_dense_20_kernel_v_read_readvariableop/savev2_adam_dense_20_bias_v_read_readvariableop;savev2_adam_lstm_6_lstm_cell_6_kernel_v_read_readvariableopEsavev2_adam_lstm_6_lstm_cell_6_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_6_lstm_cell_6_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: :
:::::: : : : : :(:
(:(:
:
: : :
::::::(:
(:(:
::::::(:
(:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :
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
: :$ 

_output_shapes

:(:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:(:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::$" 

_output_shapes

:(:$# 

_output_shapes

:
(: $

_output_shapes
:(:%

_output_shapes
: 
ï¾
»
=__inference___backward_gpu_lstm_with_fallback_3089637_3089812
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó:
:
:
:
: ::::
:
::
:
:
:: ::::::::: : : : *=
api_implements+)lstm_46c71261-d4f2-4431-9560-aa7c09c37949*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3089811*
go_backwards( *

time_major( :$  

_output_shapes

:
:($
"
_output_shapes
:
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:
:(	$
"
_output_shapes
:
:!


_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
ö
E__inference_dense_19_layer_call_and_return_conditional_losses_3090271

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
	
ö
E__inference_dense_20_layer_call_and_return_conditional_losses_3090290

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
ï¾
»
=__inference___backward_gpu_lstm_with_fallback_3086623_3086798
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó:
:
:
:
: ::::
:
::
:
:
:: ::::::::: : : : *=
api_implements+)lstm_ac95bd5a-073c-4fcf-833a-ac96fd168e50*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3086797*
go_backwards( *

time_major( :$  

_output_shapes

:
:($
"
_output_shapes
:
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:
:(	$
"
_output_shapes
:
:!


_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
8
Á
!__inference_standard_lstm_3086091

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3086006*
condR
while_cond_3086005*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_0d6f691c-09af-4555-9b1c-5d90edf8d721*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ä>
Í
*__inference_gpu_lstm_with_fallback_3088274

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_5d0093af-f409-4c9d-ad3b-4dc4f9a8fb51*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ç7
Á
!__inference_standard_lstm_3089542

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3089457*
condR
while_cond_3089456*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_46c71261-d4f2-4431-9560-aa7c09c37949*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
¾¾
³
=__inference___backward_gpu_lstm_with_fallback_3085753_3085927
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesñ
î:
:ÿÿÿÿÿÿÿÿÿ
:
:
: :ÿÿÿÿÿÿÿÿÿ
:::ÿÿÿÿÿÿÿÿÿ:
:
::
:
:: ::::::::: : : : *=
api_implements+)lstm_2b742ed0-4f5c-4c42-be63-2baed1fca20b*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3085926*
go_backwards( *

time_major( :$  

_output_shapes

:
:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
: 

_output_shapes
::

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:(	$
"
_output_shapes
:
:(
$
"
_output_shapes
:
:!

_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¾
î
(__inference_lstm_6_layer_call_fn_3088529
inputs_0
unknown:

	unknown_0:

	unknown_1:(
	unknown_2:
(
	unknown_3:(
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_3086362f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
´J

(__forward_gpu_lstm_with_fallback_3089392

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0¼
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_da35dd23-3ac8-4fea-a54b-41e3fafd4028*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3089219_3089393*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
¾¾
³
=__inference___backward_gpu_lstm_with_fallback_3086186_3086360
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesñ
î:
:ÿÿÿÿÿÿÿÿÿ
:
:
: :ÿÿÿÿÿÿÿÿÿ
:::ÿÿÿÿÿÿÿÿÿ:
:
::
:
:: ::::::::: : : : *=
api_implements+)lstm_0d6f691c-09af-4555-9b1c-5d90edf8d721*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3086359*
go_backwards( *

time_major( :$  

_output_shapes

:
:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
: 

_output_shapes
::

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:(	$
"
_output_shapes
:
:(
$
"
_output_shapes
:
:!

_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Í
ö
C__inference_lstm_6_layer_call_and_return_conditional_losses_3086362

inputs.
read_readvariableop_resource:
0
read_1_readvariableop_resource:
0
read_2_readvariableop_resource:(0
read_3_readvariableop_resource:
(,
read_4_readvariableop_resource:(

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:
*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:
*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:(*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(t
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:
(*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(p
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:(*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:( 
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *K
_output_shapes9
7:
:ÿÿÿÿÿÿÿÿÿ
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3086091
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï¾
»
=__inference___backward_gpu_lstm_with_fallback_3088275_3088450
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó:
:
:
:
: ::::
:
::
:
:
:: ::::::::: : : : *=
api_implements+)lstm_5d0093af-f409-4c9d-ad3b-4dc4f9a8fb51*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3088449*
go_backwards( *

time_major( :$  

_output_shapes

:
:($
"
_output_shapes
:
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:
:(	$
"
_output_shapes
:
:!


_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
ö
E__inference_dense_19_layer_call_and_return_conditional_losses_3086838

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
ï&
Ð
while_body_3085132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(
8
Á
!__inference_standard_lstm_3089124

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3089039*
condR
while_cond_3089038*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_da35dd23-3ac8-4fea-a54b-41e3fafd4028*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ò
Æ
while_cond_3085572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3085572___redundant_placeholder05
1while_while_cond_3085572___redundant_placeholder15
1while_while_cond_3085572___redundant_placeholder25
1while_while_cond_3085572___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
À


.__inference_sequential_6_layer_call_fn_3086886
lstm_6_input
unknown:

	unknown_0:

	unknown_1:(
	unknown_2:
(
	unknown_3:(
	unknown_4:

	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_3086861f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
"
_output_shapes
:
&
_user_specified_namelstm_6_input
æ
ê
I__inference_sequential_6_layer_call_and_return_conditional_losses_3087506
lstm_6_input 
lstm_6_3087479:
 
lstm_6_3087481:
 
lstm_6_3087483:( 
lstm_6_3087485:
(
lstm_6_3087487:("
dense_18_3087490:

dense_18_3087492:"
dense_19_3087495:
dense_19_3087497:"
dense_20_3087500:
dense_20_3087502:
identity¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall¢ dense_20/StatefulPartitionedCall¢lstm_6/StatefulPartitionedCall
lstm_6/StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputlstm_6_3087479lstm_6_3087481lstm_6_3087483lstm_6_3087485lstm_6_3087487*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_3086800
 dense_18/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0dense_18_3087490dense_18_3087492*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_18_layer_call_and_return_conditional_losses_3086822
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_3087495dense_19_3087497*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_3086838
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_3087500dense_20_3087502*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_3086854o
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:Ð
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:P L
"
_output_shapes
:
&
_user_specified_namelstm_6_input
´J

(__forward_gpu_lstm_with_fallback_3085926

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0¼
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_2b742ed0-4f5c-4c42-be63-2baed1fca20b*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3085753_3085927*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
 

*__inference_dense_20_layer_call_fn_3090280

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_3086854f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs
ç7
Á
!__inference_standard_lstm_3086528

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3086443*
condR
while_cond_3086442*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_ac95bd5a-073c-4fcf-833a-ac96fd168e50*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
J

(__forward_gpu_lstm_with_fallback_3086797

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_ac95bd5a-073c-4fcf-833a-ac96fd168e50*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3086623_3086798*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ò
Æ
while_cond_3086994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3086994___redundant_placeholder05
1while_while_cond_3086994___redundant_placeholder15
1while_while_cond_3086994___redundant_placeholder25
1while_while_cond_3086994___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Í
ö
C__inference_lstm_6_layer_call_and_return_conditional_losses_3085929

inputs.
read_readvariableop_resource:
0
read_1_readvariableop_resource:
0
read_2_readvariableop_resource:(0
read_3_readvariableop_resource:
(,
read_4_readvariableop_resource:(

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:
*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:
*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:(*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(t
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:
(*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(p
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:(*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:( 
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *K
_output_shapes9
7:
:ÿÿÿÿÿÿÿÿÿ
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3085658
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä>
Í
*__inference_gpu_lstm_with_fallback_3086622

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_ac95bd5a-073c-4fcf-833a-ac96fd168e50*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
	
ö
E__inference_dense_18_layer_call_and_return_conditional_losses_3090252

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:

 
_user_specified_nameinputs
Ô
ä
I__inference_sequential_6_layer_call_and_return_conditional_losses_3086861

inputs 
lstm_6_3086801:
 
lstm_6_3086803:
 
lstm_6_3086805:( 
lstm_6_3086807:
(
lstm_6_3086809:("
dense_18_3086823:

dense_18_3086825:"
dense_19_3086839:
dense_19_3086841:"
dense_20_3086855:
dense_20_3086857:
identity¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall¢ dense_20/StatefulPartitionedCall¢lstm_6/StatefulPartitionedCall
lstm_6/StatefulPartitionedCallStatefulPartitionedCallinputslstm_6_3086801lstm_6_3086803lstm_6_3086805lstm_6_3086807lstm_6_3086809*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_3086800
 dense_18/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0dense_18_3086823dense_18_3086825*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_18_layer_call_and_return_conditional_losses_3086822
 dense_19/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0dense_19_3086839dense_19_3086841*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_3086838
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_3086855dense_20_3086857*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_3086854o
IdentityIdentity)dense_20/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:Ð
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
J

(__forward_gpu_lstm_with_fallback_3087349

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_9c5f455c-0a28-4d8f-b3f9-2478b2cd7d60*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3087175_3087350*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ò
Æ
while_cond_3088620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3088620___redundant_placeholder05
1while_while_cond_3088620___redundant_placeholder15
1while_while_cond_3088620___redundant_placeholder25
1while_while_cond_3088620___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
¾
î
(__inference_lstm_6_layer_call_fn_3088514
inputs_0
unknown:

	unknown_0:

	unknown_1:(
	unknown_2:
(
	unknown_3:(
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_3085929f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ï&
Ð
while_body_3089039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(
J

(__forward_gpu_lstm_with_fallback_3090230

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_12da7097-17af-433f-9f35-d3f8aae28387*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3090056_3090231*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
¦
ì
(__inference_lstm_6_layer_call_fn_3088544

inputs
unknown:

	unknown_0:

	unknown_1:(
	unknown_2:
(
	unknown_3:(
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_3086800f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ò
Æ
while_cond_3089038
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3089038___redundant_placeholder05
1while_while_cond_3089038___redundant_placeholder15
1while_while_cond_3089038___redundant_placeholder25
1while_while_cond_3089038___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
®
Ú
#__inference__traced_restore_3090539
file_prefix2
 assignvariableop_dense_18_kernel:
.
 assignvariableop_1_dense_18_bias:4
"assignvariableop_2_dense_19_kernel:.
 assignvariableop_3_dense_19_bias:4
"assignvariableop_4_dense_20_kernel:.
 assignvariableop_5_dense_20_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: ?
-assignvariableop_11_lstm_6_lstm_cell_6_kernel:(I
7assignvariableop_12_lstm_6_lstm_cell_6_recurrent_kernel:
(9
+assignvariableop_13_lstm_6_lstm_cell_6_bias:(5
#assignvariableop_14_lstm_6_variable:
7
%assignvariableop_15_lstm_6_variable_1:
#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_18_kernel_m:
6
(assignvariableop_19_adam_dense_18_bias_m:<
*assignvariableop_20_adam_dense_19_kernel_m:6
(assignvariableop_21_adam_dense_19_bias_m:<
*assignvariableop_22_adam_dense_20_kernel_m:6
(assignvariableop_23_adam_dense_20_bias_m:F
4assignvariableop_24_adam_lstm_6_lstm_cell_6_kernel_m:(P
>assignvariableop_25_adam_lstm_6_lstm_cell_6_recurrent_kernel_m:
(@
2assignvariableop_26_adam_lstm_6_lstm_cell_6_bias_m:(<
*assignvariableop_27_adam_dense_18_kernel_v:
6
(assignvariableop_28_adam_dense_18_bias_v:<
*assignvariableop_29_adam_dense_19_kernel_v:6
(assignvariableop_30_adam_dense_19_bias_v:<
*assignvariableop_31_adam_dense_20_kernel_v:6
(assignvariableop_32_adam_dense_20_bias_v:F
4assignvariableop_33_adam_lstm_6_lstm_cell_6_kernel_v:(P
>assignvariableop_34_adam_lstm_6_lstm_cell_6_recurrent_kernel_v:
(@
2assignvariableop_35_adam_lstm_6_lstm_cell_6_bias_v:(
identity_37¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¤
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*Ê
valueÀB½%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHº
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ú
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ª
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_19_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_19_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_20_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_20_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_6_lstm_cell_6_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_12AssignVariableOp7assignvariableop_12_lstm_6_lstm_cell_6_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp+assignvariableop_13_lstm_6_lstm_cell_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp#assignvariableop_14_lstm_6_variableIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp%assignvariableop_15_lstm_6_variable_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_18_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_18_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_19_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_19_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_20_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_20_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_6_lstm_cell_6_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_6_lstm_cell_6_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_6_lstm_cell_6_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_18_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_18_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_19_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_19_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_20_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_20_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_6_lstm_cell_6_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_34AssignVariableOp>assignvariableop_34_adam_lstm_6_lstm_cell_6_recurrent_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_35AssignVariableOp2assignvariableop_35_adam_lstm_6_lstm_cell_6_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ç
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: Ô
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
Í
*__inference_gpu_lstm_with_fallback_3086185

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¸
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_0d6f691c-09af-4555-9b1c-5d90edf8d721*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
À


.__inference_sequential_6_layer_call_fn_3087476
lstm_6_input
unknown:

	unknown_0:

	unknown_1:(
	unknown_2:
(
	unknown_3:(
	unknown_4:

	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCalllstm_6_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_3087424f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
"
_output_shapes
:
&
_user_specified_namelstm_6_input
²
ö
C__inference_lstm_6_layer_call_and_return_conditional_losses_3086800

inputs.
read_readvariableop_resource:
0
read_1_readvariableop_resource:
0
read_2_readvariableop_resource:(0
read_3_readvariableop_resource:
(,
read_4_readvariableop_resource:(

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:
*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:
*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:(*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(t
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:
(*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(p
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:(*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:(
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.:
:
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3086528
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ä>
Í
*__inference_gpu_lstm_with_fallback_3085311

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_59e7c84d-b37d-47e5-8f93-687da55391fb*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
?
Í
*__inference_gpu_lstm_with_fallback_3085752

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¸
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_2b742ed0-4f5c-4c42-be63-2baed1fca20b*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
²
ö
C__inference_lstm_6_layer_call_and_return_conditional_losses_3089814

inputs.
read_readvariableop_resource:
0
read_1_readvariableop_resource:
0
read_2_readvariableop_resource:(0
read_3_readvariableop_resource:
(,
read_4_readvariableop_resource:(

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:
*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:
*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:(*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(t
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:
(*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(p
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:(*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:(
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.:
:
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3089542
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ï&
Ð
while_body_3087658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(
J

(__forward_gpu_lstm_with_fallback_3085486

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_59e7c84d-b37d-47e5-8f93-687da55391fb*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3085312_3085487*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
J

(__forward_gpu_lstm_with_fallback_3088012

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_a30cd431-c61c-4524-96e1-5815c3c08e3e*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3087838_3088013*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ç7
Á
!__inference_standard_lstm_3089961

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3089876*
condR
while_cond_3089875*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_12da7097-17af-433f-9f35-d3f8aae28387*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
²
ö
C__inference_lstm_6_layer_call_and_return_conditional_losses_3090233

inputs.
read_readvariableop_resource:
0
read_1_readvariableop_resource:
0
read_2_readvariableop_resource:(0
read_3_readvariableop_resource:
(,
read_4_readvariableop_resource:(

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:
*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:
*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:(*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(t
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:
(*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(p
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:(*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:(
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.:
:
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3089961
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ï&
Ð
while_body_3085573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(
®


.__inference_sequential_6_layer_call_fn_3087569

inputs
unknown:

	unknown_0:

	unknown_1:(
	unknown_2:
(
	unknown_3:(
	unknown_4:

	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_3086861f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ç7
Á
!__inference_standard_lstm_3087080

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3086995*
condR
while_cond_3086994*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_9c5f455c-0a28-4d8f-b3f9-2478b2cd7d60*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ï¾
»
=__inference___backward_gpu_lstm_with_fallback_3087175_3087350
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó:
:
:
:
: ::::
:
::
:
:
:: ::::::::: : : : *=
api_implements+)lstm_9c5f455c-0a28-4d8f-b3f9-2478b2cd7d60*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3087349*
go_backwards( *

time_major( :$  

_output_shapes

:
:($
"
_output_shapes
:
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:
:(	$
"
_output_shapes
:
:!


_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¦
ì
(__inference_lstm_6_layer_call_fn_3088559

inputs
unknown:

	unknown_0:

	unknown_1:(
	unknown_2:
(
	unknown_3:(
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_6_layer_call_and_return_conditional_losses_3087352f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
Í
*__inference_gpu_lstm_with_fallback_3088800

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¸
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_0e75f141-db4a-4943-bcc0-ae159f642d9d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
J

(__forward_gpu_lstm_with_fallback_3089811

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_46c71261-d4f2-4431-9560-aa7c09c37949*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3089637_3089812*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
´J

(__forward_gpu_lstm_with_fallback_3088974

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0¼
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_0e75f141-db4a-4943-bcc0-ae159f642d9d*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3088801_3088975*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
8
Á
!__inference_standard_lstm_3085658

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3085573*
condR
while_cond_3085572*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:
:
:(:
(:(*=
api_implements+)lstm_2b742ed0-4f5c-4c42-be63-2baed1fca20b*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ï¾
»
=__inference___backward_gpu_lstm_with_fallback_3090056_3090231
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó:
:
:
:
: ::::
:
::
:
:
:: ::::::::: : : : *=
api_implements+)lstm_12da7097-17af-433f-9f35-d3f8aae28387*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3090230*
go_backwards( *

time_major( :$  

_output_shapes

:
:($
"
_output_shapes
:
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:
:(	$
"
_output_shapes
:
:!


_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
ö
E__inference_dense_18_layer_call_and_return_conditional_losses_3086822

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:

 
_user_specified_nameinputs
 

*__inference_dense_18_layer_call_fn_3090242

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_18_layer_call_and_return_conditional_losses_3086822f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:
: : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:

 
_user_specified_nameinputs
ò
Æ
while_cond_3089875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3089875___redundant_placeholder05
1while_while_cond_3089875___redundant_placeholder15
1while_while_cond_3089875___redundant_placeholder25
1while_while_cond_3089875___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ò
Æ
while_cond_3088094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3088094___redundant_placeholder05
1while_while_cond_3088094___redundant_placeholder15
1while_while_cond_3088094___redundant_placeholder25
1while_while_cond_3088094___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ç7
Á
!__inference_standard_lstm_3087743

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3087658*
condR
while_cond_3087657*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_a30cd431-c61c-4524-96e1-5815c3c08e3e*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
ò
Æ
while_cond_3085131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3085131___redundant_placeholder05
1while_while_cond_3085131___redundant_placeholder15
1while_while_cond_3085131___redundant_placeholder25
1while_while_cond_3085131___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ï¾
»
=__inference___backward_gpu_lstm_with_fallback_3085312_3085487
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó:
:
:
:
: ::::
:
::
:
:
:: ::::::::: : : : *=
api_implements+)lstm_59e7c84d-b37d-47e5-8f93-687da55391fb*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3085486*
go_backwards( *

time_major( :$  

_output_shapes

:
:($
"
_output_shapes
:
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:
:(	$
"
_output_shapes
:
:!


_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ä>
Í
*__inference_gpu_lstm_with_fallback_3087174

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_9c5f455c-0a28-4d8f-b3f9-2478b2cd7d60*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
2
ð
I__inference_sequential_6_layer_call_and_return_conditional_losses_3088033

inputs5
#lstm_6_read_readvariableop_resource:
7
%lstm_6_read_1_readvariableop_resource:
7
%lstm_6_read_2_readvariableop_resource:(7
%lstm_6_read_3_readvariableop_resource:
(3
%lstm_6_read_4_readvariableop_resource:(9
'dense_18_matmul_readvariableop_resource:
6
(dense_18_biasadd_readvariableop_resource:9
'dense_19_matmul_readvariableop_resource:6
(dense_19_biasadd_readvariableop_resource:9
'dense_20_matmul_readvariableop_resource:6
(dense_20_biasadd_readvariableop_resource:
identity¢dense_18/BiasAdd/ReadVariableOp¢dense_18/MatMul/ReadVariableOp¢dense_19/BiasAdd/ReadVariableOp¢dense_19/MatMul/ReadVariableOp¢dense_20/BiasAdd/ReadVariableOp¢dense_20/MatMul/ReadVariableOp¢lstm_6/AssignVariableOp¢lstm_6/AssignVariableOp_1¢lstm_6/Read/ReadVariableOp¢lstm_6/Read_1/ReadVariableOp¢lstm_6/Read_2/ReadVariableOp¢lstm_6/Read_3/ReadVariableOp¢lstm_6/Read_4/ReadVariableOp~
lstm_6/Read/ReadVariableOpReadVariableOp#lstm_6_read_readvariableop_resource*
_output_shapes

:
*
dtype0h
lstm_6/IdentityIdentity"lstm_6/Read/ReadVariableOp:value:0*
T0*
_output_shapes

:

lstm_6/Read_1/ReadVariableOpReadVariableOp%lstm_6_read_1_readvariableop_resource*
_output_shapes

:
*
dtype0l
lstm_6/Identity_1Identity$lstm_6/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes

:

lstm_6/Read_2/ReadVariableOpReadVariableOp%lstm_6_read_2_readvariableop_resource*
_output_shapes

:(*
dtype0l
lstm_6/Identity_2Identity$lstm_6/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(
lstm_6/Read_3/ReadVariableOpReadVariableOp%lstm_6_read_3_readvariableop_resource*
_output_shapes

:
(*
dtype0l
lstm_6/Identity_3Identity$lstm_6/Read_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(~
lstm_6/Read_4/ReadVariableOpReadVariableOp%lstm_6_read_4_readvariableop_resource*
_output_shapes
:(*
dtype0h
lstm_6/Identity_4Identity$lstm_6/Read_4/ReadVariableOp:value:0*
T0*
_output_shapes
:(Á
lstm_6/PartitionedCallPartitionedCallinputslstm_6/Identity:output:0lstm_6/Identity_1:output:0lstm_6/Identity_2:output:0lstm_6/Identity_3:output:0lstm_6/Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.:
:
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3087743±
lstm_6/AssignVariableOpAssignVariableOp#lstm_6_read_readvariableop_resourcelstm_6/PartitionedCall:output:2^lstm_6/Read/ReadVariableOp*
_output_shapes
 *
dtype0·
lstm_6/AssignVariableOp_1AssignVariableOp%lstm_6_read_1_readvariableop_resourcelstm_6/PartitionedCall:output:3^lstm_6/Read_1/ReadVariableOp*
_output_shapes
 *
dtype0
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_18/MatMulMatMullstm_6/PartitionedCall:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_19/MatMulMatMuldense_18/BiasAdd:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_20/MatMulMatMuldense_19/BiasAdd:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:_
IdentityIdentitydense_20/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:Þ
NoOpNoOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp^lstm_6/AssignVariableOp^lstm_6/AssignVariableOp_1^lstm_6/Read/ReadVariableOp^lstm_6/Read_1/ReadVariableOp^lstm_6/Read_2/ReadVariableOp^lstm_6/Read_3/ReadVariableOp^lstm_6/Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:: : : : : : : : : : : 2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp22
lstm_6/AssignVariableOplstm_6/AssignVariableOp26
lstm_6/AssignVariableOp_1lstm_6/AssignVariableOp_128
lstm_6/Read/ReadVariableOplstm_6/Read/ReadVariableOp2<
lstm_6/Read_1/ReadVariableOplstm_6/Read_1/ReadVariableOp2<
lstm_6/Read_2/ReadVariableOplstm_6/Read_2/ReadVariableOp2<
lstm_6/Read_3/ReadVariableOplstm_6/Read_3/ReadVariableOp2<
lstm_6/Read_4/ReadVariableOplstm_6/Read_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ä>
Í
*__inference_gpu_lstm_with_fallback_3089636

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_46c71261-d4f2-4431-9560-aa7c09c37949*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
¾¾
³
=__inference___backward_gpu_lstm_with_fallback_3089219_3089393
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesñ
î:
:ÿÿÿÿÿÿÿÿÿ
:
:
: :ÿÿÿÿÿÿÿÿÿ
:::ÿÿÿÿÿÿÿÿÿ:
:
::
:
:: ::::::::: : : : *=
api_implements+)lstm_da35dd23-3ac8-4fea-a54b-41e3fafd4028*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3089392*
go_backwards( *

time_major( :$  

_output_shapes

:
:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
: 

_output_shapes
::

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:(	$
"
_output_shapes
:
:(
$
"
_output_shapes
:
:!

_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ä>
Í
*__inference_gpu_lstm_with_fallback_3090055

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_12da7097-17af-433f-9f35-d3f8aae28387*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
 

*__inference_dense_19_layer_call_fn_3090261

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_3086838f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs
ï&
Ð
while_body_3086006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(
ç7
Á
!__inference_standard_lstm_3085217

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:(U
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:([
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:(J
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:
M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:
J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:
E
TanhTanhsplit:output:2*
T0*
_output_shapes

:
L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:
K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:
M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:
B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:
P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :
:
: : :(:
(:(* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_3085132*
condR
while_cond_3085131*M
output_shapes<
:: : : : :
:
: : :(:
(:(*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:
*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:
O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:
O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_59e7c84d-b37d-47e5-8f93-687da55391fb*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
J

(__forward_gpu_lstm_with_fallback_3088449

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:

:

:

:

*
	num_splitW

zeros_likeConst*
_output_shapes
:(*
dtype0*
valueB(*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : q
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
:PS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:
:
:
:
:
:
:
:
*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:
X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:
Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:
a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:da
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:

Z
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:d[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:
[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:
\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:
\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:
\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:
\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:
\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:
\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.:
:
:
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:
*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:
g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:
*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:
*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:
T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:
Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:
S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:
I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::
:
:(:
(:(*=
api_implements+)lstm_5d0093af-f409-4c9d-ad3b-4dc4f9a8fb51*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_3088275_3088450*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:

 
_user_specified_nameinit_h:FB

_output_shapes

:

 
_user_specified_nameinit_c:FB

_output_shapes

:(
 
_user_specified_namekernel:PL

_output_shapes

:
(
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:(

_user_specified_namebias
	
ö
E__inference_dense_20_layer_call_and_return_conditional_losses_3086854

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
¾¾
³
=__inference___backward_gpu_lstm_with_fallback_3088801_3088975
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesñ
î:
:ÿÿÿÿÿÿÿÿÿ
:
:
: :ÿÿÿÿÿÿÿÿÿ
:::ÿÿÿÿÿÿÿÿÿ:
:
::
:
:: ::::::::: : : : *=
api_implements+)lstm_0e75f141-db4a-4943-bcc0-ae159f642d9d*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3088974*
go_backwards( *

time_major( :$  

_output_shapes

:
:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
: 

_output_shapes
::

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:(	$
"
_output_shapes
:
:(
$
"
_output_shapes
:
:!

_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ï&
Ð
while_body_3089876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(
ò
Æ
while_cond_3086005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_3086005___redundant_placeholder05
1while_while_cond_3086005___redundant_placeholder15
1while_while_cond_3086005___redundant_placeholder25
1while_while_cond_3086005___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :
:
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
²
ö
C__inference_lstm_6_layer_call_and_return_conditional_losses_3087352

inputs.
read_readvariableop_resource:
0
read_1_readvariableop_resource:
0
read_2_readvariableop_resource:(0
read_3_readvariableop_resource:
(,
read_4_readvariableop_resource:(

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:
*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:
*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:(*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:(t
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:
(*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:
(p
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:(*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:(
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.:
:
:
:
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_standard_lstm_3087080
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ï&
Ð
while_body_3086443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(
ï&
Ð
while_body_3088095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:(
ï¾
»
=__inference___backward_gpu_lstm_with_fallback_3087838_3088013
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:
[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:
W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:
W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:
O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:
*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:
q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:
s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      
   
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:
ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:
c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::
:
:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:
r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:
^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:di
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:
i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:
j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:
ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:dï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:
ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:
ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:
m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:
o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:

o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"
   
   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:

h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:
h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:
i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:

,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:


,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:

æ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
:P®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:(´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:
(\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:(g
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:(Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:(Õ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:(i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:
m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:
e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:(g

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:
(c

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:("
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó:
:
:
:
: ::::
:
::
:
:
:: ::::::::: : : : *=
api_implements+)lstm_a30cd431-c61c-4524-96e1-5815c3c08e3e*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_3088012*
go_backwards( *

time_major( :$  

_output_shapes

:
:($
"
_output_shapes
:
:$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:
:(	$
"
_output_shapes
:
:!


_output_shapes	
::($
"
_output_shapes
:
:($
"
_output_shapes
:
:($
"
_output_shapes
:
: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ï&
Ð
while_body_3086995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:(y
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:(m
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:(f
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:(W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(:
:
:
:
*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:
Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:
c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:
Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:
^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:
]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:
Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:
N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:
b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:
¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:
V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:
"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :
:
: : :(:
(:(: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

:
:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(:$	 

_output_shapes

:
(: 


_output_shapes
:("ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*§
serving_default
@
lstm_6_input0
serving_default_lstm_6_input:03
dense_20'
StatefulPartitionedCall:0tensorflow/serving/predict:És

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ú
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
»

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
õ
/iter

0beta_1

1beta_2
	2decay
3learning_ratemfmgmh mi'mj(mk4ml5mm6mnvovpvq vr'vs(vt4vu5vv6vw"
	optimizer
_
40
51
62
3
4
5
 6
'7
(8"
trackable_list_wrapper
_
40
51
62
3
4
5
 6
'7
(8"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
.__inference_sequential_6_layer_call_fn_3086886
.__inference_sequential_6_layer_call_fn_3087569
.__inference_sequential_6_layer_call_fn_3087596
.__inference_sequential_6_layer_call_fn_3087476À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_6_layer_call_and_return_conditional_losses_3088033
I__inference_sequential_6_layer_call_and_return_conditional_losses_3088470
I__inference_sequential_6_layer_call_and_return_conditional_losses_3087506
I__inference_sequential_6_layer_call_and_return_conditional_losses_3087536À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÒBÏ
"__inference__wrapped_model_3085507lstm_6_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
<serving_default"
signature_map
ø
=
state_size

4kernel
5recurrent_kernel
6bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
(__inference_lstm_6_layer_call_fn_3088514
(__inference_lstm_6_layer_call_fn_3088529
(__inference_lstm_6_layer_call_fn_3088544
(__inference_lstm_6_layer_call_fn_3088559Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
C__inference_lstm_6_layer_call_and_return_conditional_losses_3088977
C__inference_lstm_6_layer_call_and_return_conditional_losses_3089395
C__inference_lstm_6_layer_call_and_return_conditional_losses_3089814
C__inference_lstm_6_layer_call_and_return_conditional_losses_3090233Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
!:
2dense_18/kernel
:2dense_18/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_18_layer_call_fn_3090242¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_18_layer_call_and_return_conditional_losses_3090252¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
!:2dense_19/kernel
:2dense_19/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_19_layer_call_fn_3090261¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_19_layer_call_and_return_conditional_losses_3090271¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
!:2dense_20/kernel
:2dense_20/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_20_layer_call_fn_3090280¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_20_layer_call_and_return_conditional_losses_3090290¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
+:)(2lstm_6/lstm_cell_6/kernel
5:3
(2#lstm_6/lstm_cell_6/recurrent_kernel
%:#(2lstm_6/lstm_cell_6/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÑBÎ
%__inference_signature_wrapper_3088499lstm_6_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
­
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ä2Á¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ä2Á¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	btotal
	ccount
d	variables
e	keras_api"
_tf_keras_metric
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
!:
2lstm_6/Variable
!:
2lstm_6/Variable
:  (2total
:  (2count
.
b0
c1"
trackable_list_wrapper
-
d	variables"
_generic_user_object
&:$
2Adam/dense_18/kernel/m
 :2Adam/dense_18/bias/m
&:$2Adam/dense_19/kernel/m
 :2Adam/dense_19/bias/m
&:$2Adam/dense_20/kernel/m
 :2Adam/dense_20/bias/m
0:.(2 Adam/lstm_6/lstm_cell_6/kernel/m
::8
(2*Adam/lstm_6/lstm_cell_6/recurrent_kernel/m
*:((2Adam/lstm_6/lstm_cell_6/bias/m
&:$
2Adam/dense_18/kernel/v
 :2Adam/dense_18/bias/v
&:$2Adam/dense_19/kernel/v
 :2Adam/dense_19/bias/v
&:$2Adam/dense_20/kernel/v
 :2Adam/dense_20/bias/v
0:.(2 Adam/lstm_6/lstm_cell_6/kernel/v
::8
(2*Adam/lstm_6/lstm_cell_6/recurrent_kernel/v
*:((2Adam/lstm_6/lstm_cell_6/bias/v
"__inference__wrapped_model_3085507k`a456 '(0¢-
&¢#
!
lstm_6_input
ª "*ª'
%
dense_20
dense_20
E__inference_dense_18_layer_call_and_return_conditional_losses_3090252J&¢#
¢

inputs

ª "¢

0
 k
*__inference_dense_18_layer_call_fn_3090242=&¢#
¢

inputs

ª "
E__inference_dense_19_layer_call_and_return_conditional_losses_3090271J &¢#
¢

inputs
ª "¢

0
 k
*__inference_dense_19_layer_call_fn_3090261= &¢#
¢

inputs
ª "
E__inference_dense_20_layer_call_and_return_conditional_losses_3090290J'(&¢#
¢

inputs
ª "¢

0
 k
*__inference_dense_20_layer_call_fn_3090280='(&¢#
¢

inputs
ª "´
C__inference_lstm_6_layer_call_and_return_conditional_losses_3088977m`a456F¢C
<¢9
+(
&#
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "¢

0

 ´
C__inference_lstm_6_layer_call_and_return_conditional_losses_3089395m`a456F¢C
<¢9
+(
&#
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p

 
ª "¢

0

 ¤
C__inference_lstm_6_layer_call_and_return_conditional_losses_3089814]`a4566¢3
,¢)

inputs

 
p 

 
ª "¢

0

 ¤
C__inference_lstm_6_layer_call_and_return_conditional_losses_3090233]`a4566¢3
,¢)

inputs

 
p

 
ª "¢

0

 
(__inference_lstm_6_layer_call_fn_3088514``a456F¢C
<¢9
+(
&#
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "

(__inference_lstm_6_layer_call_fn_3088529``a456F¢C
<¢9
+(
&#
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p

 
ª "
|
(__inference_lstm_6_layer_call_fn_3088544P`a4566¢3
,¢)

inputs

 
p 

 
ª "
|
(__inference_lstm_6_layer_call_fn_3088559P`a4566¢3
,¢)

inputs

 
p

 
ª "
²
I__inference_sequential_6_layer_call_and_return_conditional_losses_3087506e`a456 '(8¢5
.¢+
!
lstm_6_input
p 

 
ª "¢

0
 ²
I__inference_sequential_6_layer_call_and_return_conditional_losses_3087536e`a456 '(8¢5
.¢+
!
lstm_6_input
p

 
ª "¢

0
 ¬
I__inference_sequential_6_layer_call_and_return_conditional_losses_3088033_`a456 '(2¢/
(¢%

inputs
p 

 
ª "¢

0
 ¬
I__inference_sequential_6_layer_call_and_return_conditional_losses_3088470_`a456 '(2¢/
(¢%

inputs
p

 
ª "¢

0
 
.__inference_sequential_6_layer_call_fn_3086886X`a456 '(8¢5
.¢+
!
lstm_6_input
p 

 
ª "
.__inference_sequential_6_layer_call_fn_3087476X`a456 '(8¢5
.¢+
!
lstm_6_input
p

 
ª "
.__inference_sequential_6_layer_call_fn_3087569R`a456 '(2¢/
(¢%

inputs
p 

 
ª "
.__inference_sequential_6_layer_call_fn_3087596R`a456 '(2¢/
(¢%

inputs
p

 
ª "¤
%__inference_signature_wrapper_3088499{`a456 '(@¢=
¢ 
6ª3
1
lstm_6_input!
lstm_6_input"*ª'
%
dense_20
dense_20