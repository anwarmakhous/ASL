??	
??
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
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
?
conv2d_90/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_90/kernel
}
$conv2d_90/kernel/Read/ReadVariableOpReadVariableOpconv2d_90/kernel*&
_output_shapes
: *
dtype0
t
conv2d_90/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_90/bias
m
"conv2d_90/bias/Read/ReadVariableOpReadVariableOpconv2d_90/bias*
_output_shapes
: *
dtype0
?
conv2d_91/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		 *!
shared_nameconv2d_91/kernel
}
$conv2d_91/kernel/Read/ReadVariableOpReadVariableOpconv2d_91/kernel*&
_output_shapes
:		 *
dtype0
t
conv2d_91/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_91/bias
m
"conv2d_91/bias/Read/ReadVariableOpReadVariableOpconv2d_91/bias*
_output_shapes
:*
dtype0
}
dense_128/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*!
shared_namedense_128/kernel
v
$dense_128/kernel/Read/ReadVariableOpReadVariableOpdense_128/kernel*
_output_shapes
:	?@*
dtype0
t
dense_128/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_128/bias
m
"dense_128/bias/Read/ReadVariableOpReadVariableOpdense_128/bias*
_output_shapes
:@*
dtype0
|
dense_129/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_129/kernel
u
$dense_129/kernel/Read/ReadVariableOpReadVariableOpdense_129/kernel*
_output_shapes

:@*
dtype0
t
dense_129/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_129/bias
m
"dense_129/bias/Read/ReadVariableOpReadVariableOpdense_129/bias*
_output_shapes
:*
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
?
Adam/conv2d_90/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_90/kernel/m
?
+Adam/conv2d_90/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_90/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_90/bias/m
{
)Adam/conv2d_90/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_91/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		 *(
shared_nameAdam/conv2d_91/kernel/m
?
+Adam/conv2d_91/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/kernel/m*&
_output_shapes
:		 *
dtype0
?
Adam/conv2d_91/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_91/bias/m
{
)Adam/conv2d_91/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_128/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_128/kernel/m
?
+Adam/dense_128/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_128/kernel/m*
_output_shapes
:	?@*
dtype0
?
Adam/dense_128/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_128/bias/m
{
)Adam/dense_128/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_128/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_129/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_129/kernel/m
?
+Adam/dense_129/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_129/kernel/m*
_output_shapes

:@*
dtype0
?
Adam/dense_129/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_129/bias/m
{
)Adam/dense_129/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_129/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_90/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_90/kernel/v
?
+Adam/conv2d_90/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_90/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_90/bias/v
{
)Adam/conv2d_90/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_91/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		 *(
shared_nameAdam/conv2d_91/kernel/v
?
+Adam/conv2d_91/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/kernel/v*&
_output_shapes
:		 *
dtype0
?
Adam/conv2d_91/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_91/bias/v
{
)Adam/conv2d_91/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_128/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*(
shared_nameAdam/dense_128/kernel/v
?
+Adam/dense_128/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_128/kernel/v*
_output_shapes
:	?@*
dtype0
?
Adam/dense_128/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_128/bias/v
{
)Adam/dense_128/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_128/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_129/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_129/kernel/v
?
+Adam/dense_129/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_129/kernel/v*
_output_shapes

:@*
dtype0
?
Adam/dense_129/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_129/bias/v
{
)Adam/dense_129/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_129/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?6
value?6B?6 B?6
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
		optimizer

trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
 regularization_losses
!	variables
"	keras_api
R
#trainable_variables
$regularization_losses
%	variables
&	keras_api
R
'trainable_variables
(regularization_losses
)	variables
*	keras_api
h

+kernel
,bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
h

1kernel
2bias
3trainable_variables
4regularization_losses
5	variables
6	keras_api
?
7iter

8beta_1

9beta_2
	:decay
;learning_ratemtmumvmw+mx,my1mz2m{v|v}v~v+v?,v?1v?2v?
8
0
1
2
3
+4
,5
16
27
 
8
0
1
2
3
+4
,5
16
27
?

<layers
=layer_regularization_losses

trainable_variables
>metrics
?layer_metrics
regularization_losses
	variables
@non_trainable_variables
 
\Z
VARIABLE_VALUEconv2d_90/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_90/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Alayers
Blayer_regularization_losses
trainable_variables
Cmetrics
Dlayer_metrics
regularization_losses
	variables
Enon_trainable_variables
 
 
 
?

Flayers
Glayer_regularization_losses
trainable_variables
Hmetrics
Ilayer_metrics
regularization_losses
	variables
Jnon_trainable_variables
\Z
VARIABLE_VALUEconv2d_91/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_91/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Klayers
Llayer_regularization_losses
trainable_variables
Mmetrics
Nlayer_metrics
regularization_losses
	variables
Onon_trainable_variables
 
 
 
?

Players
Qlayer_regularization_losses
trainable_variables
Rmetrics
Slayer_metrics
 regularization_losses
!	variables
Tnon_trainable_variables
 
 
 
?

Ulayers
Vlayer_regularization_losses
#trainable_variables
Wmetrics
Xlayer_metrics
$regularization_losses
%	variables
Ynon_trainable_variables
 
 
 
?

Zlayers
[layer_regularization_losses
'trainable_variables
\metrics
]layer_metrics
(regularization_losses
)	variables
^non_trainable_variables
\Z
VARIABLE_VALUEdense_128/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_128/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
?

_layers
`layer_regularization_losses
-trainable_variables
ametrics
blayer_metrics
.regularization_losses
/	variables
cnon_trainable_variables
\Z
VARIABLE_VALUEdense_129/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_129/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
?

dlayers
elayer_regularization_losses
3trainable_variables
fmetrics
glayer_metrics
4regularization_losses
5	variables
hnon_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
8
0
1
2
3
4
5
6
7
 

i0
j1
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
	ktotal
	lcount
m	variables
n	keras_api
D
	ototal
	pcount
q
_fn_kwargs
r	variables
s	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

k0
l1

m	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

o0
p1

r	variables
}
VARIABLE_VALUEAdam/conv2d_90/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_90/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_91/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_91/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_128/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_128/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_129/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_129/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_90/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_90/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_91/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_91/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_128/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_128/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_129/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_129/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_90_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_90_inputconv2d_90/kernelconv2d_90/biasconv2d_91/kernelconv2d_91/biasdense_128/kerneldense_128/biasdense_129/kerneldense_129/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_263906
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_90/kernel/Read/ReadVariableOp"conv2d_90/bias/Read/ReadVariableOp$conv2d_91/kernel/Read/ReadVariableOp"conv2d_91/bias/Read/ReadVariableOp$dense_128/kernel/Read/ReadVariableOp"dense_128/bias/Read/ReadVariableOp$dense_129/kernel/Read/ReadVariableOp"dense_129/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_90/kernel/m/Read/ReadVariableOp)Adam/conv2d_90/bias/m/Read/ReadVariableOp+Adam/conv2d_91/kernel/m/Read/ReadVariableOp)Adam/conv2d_91/bias/m/Read/ReadVariableOp+Adam/dense_128/kernel/m/Read/ReadVariableOp)Adam/dense_128/bias/m/Read/ReadVariableOp+Adam/dense_129/kernel/m/Read/ReadVariableOp)Adam/dense_129/bias/m/Read/ReadVariableOp+Adam/conv2d_90/kernel/v/Read/ReadVariableOp)Adam/conv2d_90/bias/v/Read/ReadVariableOp+Adam/conv2d_91/kernel/v/Read/ReadVariableOp)Adam/conv2d_91/bias/v/Read/ReadVariableOp+Adam/dense_128/kernel/v/Read/ReadVariableOp)Adam/dense_128/bias/v/Read/ReadVariableOp+Adam/dense_129/kernel/v/Read/ReadVariableOp)Adam/dense_129/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_264269
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_90/kernelconv2d_90/biasconv2d_91/kernelconv2d_91/biasdense_128/kerneldense_128/biasdense_129/kerneldense_129/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_90/kernel/mAdam/conv2d_90/bias/mAdam/conv2d_91/kernel/mAdam/conv2d_91/bias/mAdam/dense_128/kernel/mAdam/dense_128/bias/mAdam/dense_129/kernel/mAdam/dense_129/bias/mAdam/conv2d_90/kernel/vAdam/conv2d_90/bias/vAdam/conv2d_91/kernel/vAdam/conv2d_91/bias/vAdam/dense_128/kernel/vAdam/dense_128/bias/vAdam/dense_129/kernel/vAdam/dense_129/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_264378??
?
h
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_263531

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_91_layer_call_fn_264058

inputs!
unknown:		 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_91_layer_call_and_return_conditional_losses_2635852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_263906
conv2d_90_input!
unknown: 
	unknown_0: #
	unknown_1:		 
	unknown_2:
	unknown_3:	?@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_90_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_2635252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_90_input
?	
?
.__inference_sequential_45_layer_call_fn_263661
conv2d_90_input!
unknown: 
	unknown_0: #
	unknown_1:		 
	unknown_2:
	unknown_3:	?@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_90_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_45_layer_call_and_return_conditional_losses_2636422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_90_input
?
d
F__inference_dropout_45_layer_call_and_return_conditional_losses_264084

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_91_layer_call_and_return_conditional_losses_264069

inputs8
conv2d_readvariableop_resource:		 -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
E__inference_dense_128_layer_call_and_return_conditional_losses_264127

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_45_layer_call_fn_263927

inputs!
unknown: 
	unknown_0: #
	unknown_1:		 
	unknown_2:
	unknown_3:	?@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_45_layer_call_and_return_conditional_losses_2636422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_45_layer_call_and_return_conditional_losses_264107

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
I__inference_sequential_45_layer_call_and_return_conditional_losses_263849
conv2d_90_input*
conv2d_90_263824: 
conv2d_90_263826: *
conv2d_91_263830:		 
conv2d_91_263832:#
dense_128_263838:	?@
dense_128_263840:@"
dense_129_263843:@
dense_129_263845:
identity??!conv2d_90/StatefulPartitionedCall?!conv2d_91/StatefulPartitionedCall?!dense_128/StatefulPartitionedCall?!dense_129/StatefulPartitionedCall?
!conv2d_90/StatefulPartitionedCallStatefulPartitionedCallconv2d_90_inputconv2d_90_263824conv2d_90_263826*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_90_layer_call_and_return_conditional_losses_2635672#
!conv2d_90/StatefulPartitionedCall?
 max_pooling2d_90/PartitionedCallPartitionedCall*conv2d_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_2635312"
 max_pooling2d_90/PartitionedCall?
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_90/PartitionedCall:output:0conv2d_91_263830conv2d_91_263832*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_91_layer_call_and_return_conditional_losses_2635852#
!conv2d_91/StatefulPartitionedCall?
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_2635432"
 max_pooling2d_91/PartitionedCall?
dropout_45/PartitionedCallPartitionedCall)max_pooling2d_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_2635972
dropout_45/PartitionedCall?
flatten_45/PartitionedCallPartitionedCall#dropout_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_45_layer_call_and_return_conditional_losses_2636052
flatten_45/PartitionedCall?
!dense_128/StatefulPartitionedCallStatefulPartitionedCall#flatten_45/PartitionedCall:output:0dense_128_263838dense_128_263840*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_128_layer_call_and_return_conditional_losses_2636182#
!dense_128/StatefulPartitionedCall?
!dense_129/StatefulPartitionedCallStatefulPartitionedCall*dense_128/StatefulPartitionedCall:output:0dense_129_263843dense_129_263845*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_129_layer_call_and_return_conditional_losses_2636352#
!dense_129/StatefulPartitionedCall?
IdentityIdentity*dense_129/StatefulPartitionedCall:output:0"^conv2d_90/StatefulPartitionedCall"^conv2d_91/StatefulPartitionedCall"^dense_128/StatefulPartitionedCall"^dense_129/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 2F
!conv2d_90/StatefulPartitionedCall!conv2d_90/StatefulPartitionedCall2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2F
!dense_129/StatefulPartitionedCall!dense_129/StatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_90_input
?
M
1__inference_max_pooling2d_90_layer_call_fn_263537

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_2635312
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?0
?
I__inference_sequential_45_layer_call_and_return_conditional_losses_263985

inputsB
(conv2d_90_conv2d_readvariableop_resource: 7
)conv2d_90_biasadd_readvariableop_resource: B
(conv2d_91_conv2d_readvariableop_resource:		 7
)conv2d_91_biasadd_readvariableop_resource:;
(dense_128_matmul_readvariableop_resource:	?@7
)dense_128_biasadd_readvariableop_resource:@:
(dense_129_matmul_readvariableop_resource:@7
)dense_129_biasadd_readvariableop_resource:
identity?? conv2d_90/BiasAdd/ReadVariableOp?conv2d_90/Conv2D/ReadVariableOp? conv2d_91/BiasAdd/ReadVariableOp?conv2d_91/Conv2D/ReadVariableOp? dense_128/BiasAdd/ReadVariableOp?dense_128/MatMul/ReadVariableOp? dense_129/BiasAdd/ReadVariableOp?dense_129/MatMul/ReadVariableOp?
conv2d_90/Conv2D/ReadVariableOpReadVariableOp(conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_90/Conv2D/ReadVariableOp?
conv2d_90/Conv2DConv2Dinputs'conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_90/Conv2D?
 conv2d_90/BiasAdd/ReadVariableOpReadVariableOp)conv2d_90_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_90/BiasAdd/ReadVariableOp?
conv2d_90/BiasAddBiasAddconv2d_90/Conv2D:output:0(conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_90/BiasAdd?
conv2d_90/ReluReluconv2d_90/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_90/Relu?
max_pooling2d_90/MaxPoolMaxPoolconv2d_90/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_90/MaxPool?
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02!
conv2d_91/Conv2D/ReadVariableOp?
conv2d_91/Conv2DConv2D!max_pooling2d_90/MaxPool:output:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv2d_91/Conv2D?
 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_91/BiasAdd/ReadVariableOp?
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_91/BiasAdd~
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_91/Relu?
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_91/MaxPool?
dropout_45/IdentityIdentity!max_pooling2d_91/MaxPool:output:0*
T0*/
_output_shapes
:?????????2
dropout_45/Identityu
flatten_45/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_45/Const?
flatten_45/ReshapeReshapedropout_45/Identity:output:0flatten_45/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_45/Reshape?
dense_128/MatMul/ReadVariableOpReadVariableOp(dense_128_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_128/MatMul/ReadVariableOp?
dense_128/MatMulMatMulflatten_45/Reshape:output:0'dense_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_128/MatMul?
 dense_128/BiasAdd/ReadVariableOpReadVariableOp)dense_128_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_128/BiasAdd/ReadVariableOp?
dense_128/BiasAddBiasAdddense_128/MatMul:product:0(dense_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_128/BiasAddv
dense_128/ReluReludense_128/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_128/Relu?
dense_129/MatMul/ReadVariableOpReadVariableOp(dense_129_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_129/MatMul/ReadVariableOp?
dense_129/MatMulMatMuldense_128/Relu:activations:0'dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_129/MatMul?
 dense_129/BiasAdd/ReadVariableOpReadVariableOp)dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_129/BiasAdd/ReadVariableOp?
dense_129/BiasAddBiasAdddense_129/MatMul:product:0(dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_129/BiasAdd
dense_129/SoftmaxSoftmaxdense_129/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_129/Softmax?
IdentityIdentitydense_129/Softmax:softmax:0!^conv2d_90/BiasAdd/ReadVariableOp ^conv2d_90/Conv2D/ReadVariableOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^dense_128/BiasAdd/ReadVariableOp ^dense_128/MatMul/ReadVariableOp!^dense_129/BiasAdd/ReadVariableOp ^dense_129/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 2D
 conv2d_90/BiasAdd/ReadVariableOp conv2d_90/BiasAdd/ReadVariableOp2B
conv2d_90/Conv2D/ReadVariableOpconv2d_90/Conv2D/ReadVariableOp2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 dense_128/BiasAdd/ReadVariableOp dense_128/BiasAdd/ReadVariableOp2B
dense_128/MatMul/ReadVariableOpdense_128/MatMul/ReadVariableOp2D
 dense_129/BiasAdd/ReadVariableOp dense_129/BiasAdd/ReadVariableOp2B
dense_129/MatMul/ReadVariableOpdense_129/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_45_layer_call_and_return_conditional_losses_263605

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
I__inference_sequential_45_layer_call_and_return_conditional_losses_263642

inputs*
conv2d_90_263568: 
conv2d_90_263570: *
conv2d_91_263586:		 
conv2d_91_263588:#
dense_128_263619:	?@
dense_128_263621:@"
dense_129_263636:@
dense_129_263638:
identity??!conv2d_90/StatefulPartitionedCall?!conv2d_91/StatefulPartitionedCall?!dense_128/StatefulPartitionedCall?!dense_129/StatefulPartitionedCall?
!conv2d_90/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_90_263568conv2d_90_263570*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_90_layer_call_and_return_conditional_losses_2635672#
!conv2d_90/StatefulPartitionedCall?
 max_pooling2d_90/PartitionedCallPartitionedCall*conv2d_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_2635312"
 max_pooling2d_90/PartitionedCall?
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_90/PartitionedCall:output:0conv2d_91_263586conv2d_91_263588*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_91_layer_call_and_return_conditional_losses_2635852#
!conv2d_91/StatefulPartitionedCall?
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_2635432"
 max_pooling2d_91/PartitionedCall?
dropout_45/PartitionedCallPartitionedCall)max_pooling2d_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_2635972
dropout_45/PartitionedCall?
flatten_45/PartitionedCallPartitionedCall#dropout_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_45_layer_call_and_return_conditional_losses_2636052
flatten_45/PartitionedCall?
!dense_128/StatefulPartitionedCallStatefulPartitionedCall#flatten_45/PartitionedCall:output:0dense_128_263619dense_128_263621*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_128_layer_call_and_return_conditional_losses_2636182#
!dense_128/StatefulPartitionedCall?
!dense_129/StatefulPartitionedCallStatefulPartitionedCall*dense_128/StatefulPartitionedCall:output:0dense_129_263636dense_129_263638*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_129_layer_call_and_return_conditional_losses_2636352#
!dense_129/StatefulPartitionedCall?
IdentityIdentity*dense_129/StatefulPartitionedCall:output:0"^conv2d_90/StatefulPartitionedCall"^conv2d_91/StatefulPartitionedCall"^dense_128/StatefulPartitionedCall"^dense_129/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 2F
!conv2d_90/StatefulPartitionedCall!conv2d_90/StatefulPartitionedCall2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2F
!dense_129/StatefulPartitionedCall!dense_129/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_45_layer_call_fn_263948

inputs!
unknown: 
	unknown_0: #
	unknown_1:		 
	unknown_2:
	unknown_3:	?@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_45_layer_call_and_return_conditional_losses_2637812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?H
?
__inference__traced_save_264269
file_prefix/
+savev2_conv2d_90_kernel_read_readvariableop-
)savev2_conv2d_90_bias_read_readvariableop/
+savev2_conv2d_91_kernel_read_readvariableop-
)savev2_conv2d_91_bias_read_readvariableop/
+savev2_dense_128_kernel_read_readvariableop-
)savev2_dense_128_bias_read_readvariableop/
+savev2_dense_129_kernel_read_readvariableop-
)savev2_dense_129_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_90_kernel_m_read_readvariableop4
0savev2_adam_conv2d_90_bias_m_read_readvariableop6
2savev2_adam_conv2d_91_kernel_m_read_readvariableop4
0savev2_adam_conv2d_91_bias_m_read_readvariableop6
2savev2_adam_dense_128_kernel_m_read_readvariableop4
0savev2_adam_dense_128_bias_m_read_readvariableop6
2savev2_adam_dense_129_kernel_m_read_readvariableop4
0savev2_adam_dense_129_bias_m_read_readvariableop6
2savev2_adam_conv2d_90_kernel_v_read_readvariableop4
0savev2_adam_conv2d_90_bias_v_read_readvariableop6
2savev2_adam_conv2d_91_kernel_v_read_readvariableop4
0savev2_adam_conv2d_91_bias_v_read_readvariableop6
2savev2_adam_dense_128_kernel_v_read_readvariableop4
0savev2_adam_dense_128_bias_v_read_readvariableop6
2savev2_adam_dense_129_kernel_v_read_readvariableop4
0savev2_adam_dense_129_bias_v_read_readvariableop
savev2_const

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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_90_kernel_read_readvariableop)savev2_conv2d_90_bias_read_readvariableop+savev2_conv2d_91_kernel_read_readvariableop)savev2_conv2d_91_bias_read_readvariableop+savev2_dense_128_kernel_read_readvariableop)savev2_dense_128_bias_read_readvariableop+savev2_dense_129_kernel_read_readvariableop)savev2_dense_129_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_90_kernel_m_read_readvariableop0savev2_adam_conv2d_90_bias_m_read_readvariableop2savev2_adam_conv2d_91_kernel_m_read_readvariableop0savev2_adam_conv2d_91_bias_m_read_readvariableop2savev2_adam_dense_128_kernel_m_read_readvariableop0savev2_adam_dense_128_bias_m_read_readvariableop2savev2_adam_dense_129_kernel_m_read_readvariableop0savev2_adam_dense_129_bias_m_read_readvariableop2savev2_adam_conv2d_90_kernel_v_read_readvariableop0savev2_adam_conv2d_90_bias_v_read_readvariableop2savev2_adam_conv2d_91_kernel_v_read_readvariableop0savev2_adam_conv2d_91_bias_v_read_readvariableop2savev2_adam_dense_128_kernel_v_read_readvariableop0savev2_adam_dense_128_bias_v_read_readvariableop2savev2_adam_dense_129_kernel_v_read_readvariableop0savev2_adam_dense_129_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :		 ::	?@:@:@:: : : : : : : : : : : :		 ::	?@:@:@:: : :		 ::	?@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:		 : 

_output_shapes
::%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::	
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:		 : 

_output_shapes
::%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:		 : 

_output_shapes
::%!

_output_shapes
:	?@: 

_output_shapes
:@:$  

_output_shapes

:@: !

_output_shapes
::"

_output_shapes
: 
?
G
+__inference_dropout_45_layer_call_fn_264074

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_2635972
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_128_layer_call_and_return_conditional_losses_263618

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_91_layer_call_fn_263549

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_2635432
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_45_layer_call_fn_264079

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_2637072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?:
?
I__inference_sequential_45_layer_call_and_return_conditional_losses_264029

inputsB
(conv2d_90_conv2d_readvariableop_resource: 7
)conv2d_90_biasadd_readvariableop_resource: B
(conv2d_91_conv2d_readvariableop_resource:		 7
)conv2d_91_biasadd_readvariableop_resource:;
(dense_128_matmul_readvariableop_resource:	?@7
)dense_128_biasadd_readvariableop_resource:@:
(dense_129_matmul_readvariableop_resource:@7
)dense_129_biasadd_readvariableop_resource:
identity?? conv2d_90/BiasAdd/ReadVariableOp?conv2d_90/Conv2D/ReadVariableOp? conv2d_91/BiasAdd/ReadVariableOp?conv2d_91/Conv2D/ReadVariableOp? dense_128/BiasAdd/ReadVariableOp?dense_128/MatMul/ReadVariableOp? dense_129/BiasAdd/ReadVariableOp?dense_129/MatMul/ReadVariableOp?
conv2d_90/Conv2D/ReadVariableOpReadVariableOp(conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_90/Conv2D/ReadVariableOp?
conv2d_90/Conv2DConv2Dinputs'conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_90/Conv2D?
 conv2d_90/BiasAdd/ReadVariableOpReadVariableOp)conv2d_90_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_90/BiasAdd/ReadVariableOp?
conv2d_90/BiasAddBiasAddconv2d_90/Conv2D:output:0(conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_90/BiasAdd?
conv2d_90/ReluReluconv2d_90/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_90/Relu?
max_pooling2d_90/MaxPoolMaxPoolconv2d_90/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_90/MaxPool?
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02!
conv2d_91/Conv2D/ReadVariableOp?
conv2d_91/Conv2DConv2D!max_pooling2d_90/MaxPool:output:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv2d_91/Conv2D?
 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_91/BiasAdd/ReadVariableOp?
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_91/BiasAdd~
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_91/Relu?
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_91/MaxPooly
dropout_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_45/dropout/Const?
dropout_45/dropout/MulMul!max_pooling2d_91/MaxPool:output:0!dropout_45/dropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout_45/dropout/Mul?
dropout_45/dropout/ShapeShape!max_pooling2d_91/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_45/dropout/Shape?
/dropout_45/dropout/random_uniform/RandomUniformRandomUniform!dropout_45/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype021
/dropout_45/dropout/random_uniform/RandomUniform?
!dropout_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2#
!dropout_45/dropout/GreaterEqual/y?
dropout_45/dropout/GreaterEqualGreaterEqual8dropout_45/dropout/random_uniform/RandomUniform:output:0*dropout_45/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2!
dropout_45/dropout/GreaterEqual?
dropout_45/dropout/CastCast#dropout_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout_45/dropout/Cast?
dropout_45/dropout/Mul_1Muldropout_45/dropout/Mul:z:0dropout_45/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout_45/dropout/Mul_1u
flatten_45/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_45/Const?
flatten_45/ReshapeReshapedropout_45/dropout/Mul_1:z:0flatten_45/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_45/Reshape?
dense_128/MatMul/ReadVariableOpReadVariableOp(dense_128_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02!
dense_128/MatMul/ReadVariableOp?
dense_128/MatMulMatMulflatten_45/Reshape:output:0'dense_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_128/MatMul?
 dense_128/BiasAdd/ReadVariableOpReadVariableOp)dense_128_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_128/BiasAdd/ReadVariableOp?
dense_128/BiasAddBiasAdddense_128/MatMul:product:0(dense_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_128/BiasAddv
dense_128/ReluReludense_128/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_128/Relu?
dense_129/MatMul/ReadVariableOpReadVariableOp(dense_129_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_129/MatMul/ReadVariableOp?
dense_129/MatMulMatMuldense_128/Relu:activations:0'dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_129/MatMul?
 dense_129/BiasAdd/ReadVariableOpReadVariableOp)dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_129/BiasAdd/ReadVariableOp?
dense_129/BiasAddBiasAdddense_129/MatMul:product:0(dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_129/BiasAdd
dense_129/SoftmaxSoftmaxdense_129/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_129/Softmax?
IdentityIdentitydense_129/Softmax:softmax:0!^conv2d_90/BiasAdd/ReadVariableOp ^conv2d_90/Conv2D/ReadVariableOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^dense_128/BiasAdd/ReadVariableOp ^dense_128/MatMul/ReadVariableOp!^dense_129/BiasAdd/ReadVariableOp ^dense_129/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 2D
 conv2d_90/BiasAdd/ReadVariableOp conv2d_90/BiasAdd/ReadVariableOp2B
conv2d_90/Conv2D/ReadVariableOpconv2d_90/Conv2D/ReadVariableOp2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 dense_128/BiasAdd/ReadVariableOp dense_128/BiasAdd/ReadVariableOp2B
dense_128/MatMul/ReadVariableOpdense_128/MatMul/ReadVariableOp2D
 dense_129/BiasAdd/ReadVariableOp dense_129/BiasAdd/ReadVariableOp2B
dense_129/MatMul/ReadVariableOpdense_129/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_90_layer_call_and_return_conditional_losses_263567

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_45_layer_call_and_return_conditional_losses_264096

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_90_layer_call_fn_264038

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_90_layer_call_and_return_conditional_losses_2635672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?&
?
I__inference_sequential_45_layer_call_and_return_conditional_losses_263877
conv2d_90_input*
conv2d_90_263852: 
conv2d_90_263854: *
conv2d_91_263858:		 
conv2d_91_263860:#
dense_128_263866:	?@
dense_128_263868:@"
dense_129_263871:@
dense_129_263873:
identity??!conv2d_90/StatefulPartitionedCall?!conv2d_91/StatefulPartitionedCall?!dense_128/StatefulPartitionedCall?!dense_129/StatefulPartitionedCall?"dropout_45/StatefulPartitionedCall?
!conv2d_90/StatefulPartitionedCallStatefulPartitionedCallconv2d_90_inputconv2d_90_263852conv2d_90_263854*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_90_layer_call_and_return_conditional_losses_2635672#
!conv2d_90/StatefulPartitionedCall?
 max_pooling2d_90/PartitionedCallPartitionedCall*conv2d_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_2635312"
 max_pooling2d_90/PartitionedCall?
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_90/PartitionedCall:output:0conv2d_91_263858conv2d_91_263860*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_91_layer_call_and_return_conditional_losses_2635852#
!conv2d_91/StatefulPartitionedCall?
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_2635432"
 max_pooling2d_91/PartitionedCall?
"dropout_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_2637072$
"dropout_45/StatefulPartitionedCall?
flatten_45/PartitionedCallPartitionedCall+dropout_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_45_layer_call_and_return_conditional_losses_2636052
flatten_45/PartitionedCall?
!dense_128/StatefulPartitionedCallStatefulPartitionedCall#flatten_45/PartitionedCall:output:0dense_128_263866dense_128_263868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_128_layer_call_and_return_conditional_losses_2636182#
!dense_128/StatefulPartitionedCall?
!dense_129/StatefulPartitionedCallStatefulPartitionedCall*dense_128/StatefulPartitionedCall:output:0dense_129_263871dense_129_263873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_129_layer_call_and_return_conditional_losses_2636352#
!dense_129/StatefulPartitionedCall?
IdentityIdentity*dense_129/StatefulPartitionedCall:output:0"^conv2d_90/StatefulPartitionedCall"^conv2d_91/StatefulPartitionedCall"^dense_128/StatefulPartitionedCall"^dense_129/StatefulPartitionedCall#^dropout_45/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 2F
!conv2d_90/StatefulPartitionedCall!conv2d_90/StatefulPartitionedCall2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2F
!dense_129/StatefulPartitionedCall!dense_129/StatefulPartitionedCall2H
"dropout_45/StatefulPartitionedCall"dropout_45/StatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_90_input
?
d
F__inference_dropout_45_layer_call_and_return_conditional_losses_263597

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_129_layer_call_fn_264136

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_129_layer_call_and_return_conditional_losses_2636352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_conv2d_91_layer_call_and_return_conditional_losses_263585

inputs8
conv2d_readvariableop_resource:		 -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_dense_128_layer_call_fn_264116

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_128_layer_call_and_return_conditional_losses_2636182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_dense_129_layer_call_and_return_conditional_losses_264147

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?&
?
I__inference_sequential_45_layer_call_and_return_conditional_losses_263781

inputs*
conv2d_90_263756: 
conv2d_90_263758: *
conv2d_91_263762:		 
conv2d_91_263764:#
dense_128_263770:	?@
dense_128_263772:@"
dense_129_263775:@
dense_129_263777:
identity??!conv2d_90/StatefulPartitionedCall?!conv2d_91/StatefulPartitionedCall?!dense_128/StatefulPartitionedCall?!dense_129/StatefulPartitionedCall?"dropout_45/StatefulPartitionedCall?
!conv2d_90/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_90_263756conv2d_90_263758*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_90_layer_call_and_return_conditional_losses_2635672#
!conv2d_90/StatefulPartitionedCall?
 max_pooling2d_90/PartitionedCallPartitionedCall*conv2d_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_2635312"
 max_pooling2d_90/PartitionedCall?
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_90/PartitionedCall:output:0conv2d_91_263762conv2d_91_263764*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_91_layer_call_and_return_conditional_losses_2635852#
!conv2d_91/StatefulPartitionedCall?
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_2635432"
 max_pooling2d_91/PartitionedCall?
"dropout_45/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_2637072$
"dropout_45/StatefulPartitionedCall?
flatten_45/PartitionedCallPartitionedCall+dropout_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_45_layer_call_and_return_conditional_losses_2636052
flatten_45/PartitionedCall?
!dense_128/StatefulPartitionedCallStatefulPartitionedCall#flatten_45/PartitionedCall:output:0dense_128_263770dense_128_263772*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_128_layer_call_and_return_conditional_losses_2636182#
!dense_128/StatefulPartitionedCall?
!dense_129/StatefulPartitionedCallStatefulPartitionedCall*dense_128/StatefulPartitionedCall:output:0dense_129_263775dense_129_263777*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_129_layer_call_and_return_conditional_losses_2636352#
!dense_129/StatefulPartitionedCall?
IdentityIdentity*dense_129/StatefulPartitionedCall:output:0"^conv2d_90/StatefulPartitionedCall"^conv2d_91/StatefulPartitionedCall"^dense_128/StatefulPartitionedCall"^dense_129/StatefulPartitionedCall#^dropout_45/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 2F
!conv2d_90/StatefulPartitionedCall!conv2d_90/StatefulPartitionedCall2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!dense_128/StatefulPartitionedCall!dense_128/StatefulPartitionedCall2F
!dense_129/StatefulPartitionedCall!dense_129/StatefulPartitionedCall2H
"dropout_45/StatefulPartitionedCall"dropout_45/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_263543

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?>
?
!__inference__wrapped_model_263525
conv2d_90_inputP
6sequential_45_conv2d_90_conv2d_readvariableop_resource: E
7sequential_45_conv2d_90_biasadd_readvariableop_resource: P
6sequential_45_conv2d_91_conv2d_readvariableop_resource:		 E
7sequential_45_conv2d_91_biasadd_readvariableop_resource:I
6sequential_45_dense_128_matmul_readvariableop_resource:	?@E
7sequential_45_dense_128_biasadd_readvariableop_resource:@H
6sequential_45_dense_129_matmul_readvariableop_resource:@E
7sequential_45_dense_129_biasadd_readvariableop_resource:
identity??.sequential_45/conv2d_90/BiasAdd/ReadVariableOp?-sequential_45/conv2d_90/Conv2D/ReadVariableOp?.sequential_45/conv2d_91/BiasAdd/ReadVariableOp?-sequential_45/conv2d_91/Conv2D/ReadVariableOp?.sequential_45/dense_128/BiasAdd/ReadVariableOp?-sequential_45/dense_128/MatMul/ReadVariableOp?.sequential_45/dense_129/BiasAdd/ReadVariableOp?-sequential_45/dense_129/MatMul/ReadVariableOp?
-sequential_45/conv2d_90/Conv2D/ReadVariableOpReadVariableOp6sequential_45_conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_45/conv2d_90/Conv2D/ReadVariableOp?
sequential_45/conv2d_90/Conv2DConv2Dconv2d_90_input5sequential_45/conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2 
sequential_45/conv2d_90/Conv2D?
.sequential_45/conv2d_90/BiasAdd/ReadVariableOpReadVariableOp7sequential_45_conv2d_90_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_45/conv2d_90/BiasAdd/ReadVariableOp?
sequential_45/conv2d_90/BiasAddBiasAdd'sequential_45/conv2d_90/Conv2D:output:06sequential_45/conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2!
sequential_45/conv2d_90/BiasAdd?
sequential_45/conv2d_90/ReluRelu(sequential_45/conv2d_90/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
sequential_45/conv2d_90/Relu?
&sequential_45/max_pooling2d_90/MaxPoolMaxPool*sequential_45/conv2d_90/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2(
&sequential_45/max_pooling2d_90/MaxPool?
-sequential_45/conv2d_91/Conv2D/ReadVariableOpReadVariableOp6sequential_45_conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02/
-sequential_45/conv2d_91/Conv2D/ReadVariableOp?
sequential_45/conv2d_91/Conv2DConv2D/sequential_45/max_pooling2d_90/MaxPool:output:05sequential_45/conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2 
sequential_45/conv2d_91/Conv2D?
.sequential_45/conv2d_91/BiasAdd/ReadVariableOpReadVariableOp7sequential_45_conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_45/conv2d_91/BiasAdd/ReadVariableOp?
sequential_45/conv2d_91/BiasAddBiasAdd'sequential_45/conv2d_91/Conv2D:output:06sequential_45/conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_45/conv2d_91/BiasAdd?
sequential_45/conv2d_91/ReluRelu(sequential_45/conv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_45/conv2d_91/Relu?
&sequential_45/max_pooling2d_91/MaxPoolMaxPool*sequential_45/conv2d_91/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2(
&sequential_45/max_pooling2d_91/MaxPool?
!sequential_45/dropout_45/IdentityIdentity/sequential_45/max_pooling2d_91/MaxPool:output:0*
T0*/
_output_shapes
:?????????2#
!sequential_45/dropout_45/Identity?
sequential_45/flatten_45/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2 
sequential_45/flatten_45/Const?
 sequential_45/flatten_45/ReshapeReshape*sequential_45/dropout_45/Identity:output:0'sequential_45/flatten_45/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_45/flatten_45/Reshape?
-sequential_45/dense_128/MatMul/ReadVariableOpReadVariableOp6sequential_45_dense_128_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02/
-sequential_45/dense_128/MatMul/ReadVariableOp?
sequential_45/dense_128/MatMulMatMul)sequential_45/flatten_45/Reshape:output:05sequential_45/dense_128/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2 
sequential_45/dense_128/MatMul?
.sequential_45/dense_128/BiasAdd/ReadVariableOpReadVariableOp7sequential_45_dense_128_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_45/dense_128/BiasAdd/ReadVariableOp?
sequential_45/dense_128/BiasAddBiasAdd(sequential_45/dense_128/MatMul:product:06sequential_45/dense_128/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2!
sequential_45/dense_128/BiasAdd?
sequential_45/dense_128/ReluRelu(sequential_45/dense_128/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
sequential_45/dense_128/Relu?
-sequential_45/dense_129/MatMul/ReadVariableOpReadVariableOp6sequential_45_dense_129_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02/
-sequential_45/dense_129/MatMul/ReadVariableOp?
sequential_45/dense_129/MatMulMatMul*sequential_45/dense_128/Relu:activations:05sequential_45/dense_129/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_45/dense_129/MatMul?
.sequential_45/dense_129/BiasAdd/ReadVariableOpReadVariableOp7sequential_45_dense_129_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_45/dense_129/BiasAdd/ReadVariableOp?
sequential_45/dense_129/BiasAddBiasAdd(sequential_45/dense_129/MatMul:product:06sequential_45/dense_129/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_45/dense_129/BiasAdd?
sequential_45/dense_129/SoftmaxSoftmax(sequential_45/dense_129/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2!
sequential_45/dense_129/Softmax?
IdentityIdentity)sequential_45/dense_129/Softmax:softmax:0/^sequential_45/conv2d_90/BiasAdd/ReadVariableOp.^sequential_45/conv2d_90/Conv2D/ReadVariableOp/^sequential_45/conv2d_91/BiasAdd/ReadVariableOp.^sequential_45/conv2d_91/Conv2D/ReadVariableOp/^sequential_45/dense_128/BiasAdd/ReadVariableOp.^sequential_45/dense_128/MatMul/ReadVariableOp/^sequential_45/dense_129/BiasAdd/ReadVariableOp.^sequential_45/dense_129/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 2`
.sequential_45/conv2d_90/BiasAdd/ReadVariableOp.sequential_45/conv2d_90/BiasAdd/ReadVariableOp2^
-sequential_45/conv2d_90/Conv2D/ReadVariableOp-sequential_45/conv2d_90/Conv2D/ReadVariableOp2`
.sequential_45/conv2d_91/BiasAdd/ReadVariableOp.sequential_45/conv2d_91/BiasAdd/ReadVariableOp2^
-sequential_45/conv2d_91/Conv2D/ReadVariableOp-sequential_45/conv2d_91/Conv2D/ReadVariableOp2`
.sequential_45/dense_128/BiasAdd/ReadVariableOp.sequential_45/dense_128/BiasAdd/ReadVariableOp2^
-sequential_45/dense_128/MatMul/ReadVariableOp-sequential_45/dense_128/MatMul/ReadVariableOp2`
.sequential_45/dense_129/BiasAdd/ReadVariableOp.sequential_45/dense_129/BiasAdd/ReadVariableOp2^
-sequential_45/dense_129/MatMul/ReadVariableOp-sequential_45/dense_129/MatMul/ReadVariableOp:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_90_input
?
e
F__inference_dropout_45_layer_call_and_return_conditional_losses_263707

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
Ҏ
?
"__inference__traced_restore_264378
file_prefix;
!assignvariableop_conv2d_90_kernel: /
!assignvariableop_1_conv2d_90_bias: =
#assignvariableop_2_conv2d_91_kernel:		 /
!assignvariableop_3_conv2d_91_bias:6
#assignvariableop_4_dense_128_kernel:	?@/
!assignvariableop_5_dense_128_bias:@5
#assignvariableop_6_dense_129_kernel:@/
!assignvariableop_7_dense_129_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: E
+assignvariableop_17_adam_conv2d_90_kernel_m: 7
)assignvariableop_18_adam_conv2d_90_bias_m: E
+assignvariableop_19_adam_conv2d_91_kernel_m:		 7
)assignvariableop_20_adam_conv2d_91_bias_m:>
+assignvariableop_21_adam_dense_128_kernel_m:	?@7
)assignvariableop_22_adam_dense_128_bias_m:@=
+assignvariableop_23_adam_dense_129_kernel_m:@7
)assignvariableop_24_adam_dense_129_bias_m:E
+assignvariableop_25_adam_conv2d_90_kernel_v: 7
)assignvariableop_26_adam_conv2d_90_bias_v: E
+assignvariableop_27_adam_conv2d_91_kernel_v:		 7
)assignvariableop_28_adam_conv2d_91_bias_v:>
+assignvariableop_29_adam_dense_128_kernel_v:	?@7
)assignvariableop_30_adam_dense_128_bias_v:@=
+assignvariableop_31_adam_dense_129_kernel_v:@7
)assignvariableop_32_adam_dense_129_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_90_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_90_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_91_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_91_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_128_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_128_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_129_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_129_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_conv2d_90_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_conv2d_90_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_91_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_91_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_128_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_128_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_129_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_129_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_90_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_90_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_91_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_91_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_128_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_128_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_129_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_129_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33?
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
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
?	
?
.__inference_sequential_45_layer_call_fn_263821
conv2d_90_input!
unknown: 
	unknown_0: #
	unknown_1:		 
	unknown_2:
	unknown_3:	?@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_90_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_45_layer_call_and_return_conditional_losses_2637812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:???????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_90_input
?

?
E__inference_dense_129_layer_call_and_return_conditional_losses_263635

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_conv2d_90_layer_call_and_return_conditional_losses_264049

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_45_layer_call_fn_264101

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_45_layer_call_and_return_conditional_losses_2636052
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
U
conv2d_90_inputB
!serving_default_conv2d_90_input:0???????????=
	dense_1290
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?E
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
		optimizer

trainable_variables
regularization_losses
	variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"?A
_tf_keras_sequential?A{"name": "sequential_45", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_45", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_90_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_90", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [11, 11]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_90", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [8, 8]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [8, 8]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_91", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [9, 9]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_91", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [4, 4]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_45", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_45", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_128", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_129", "trainable": true, "dtype": "float32", "units": 25, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 256, 1]}, "float32", "conv2d_90_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_45", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_90_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_90", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [11, 11]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_90", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [8, 8]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [8, 8]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_91", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [9, 9]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_91", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [4, 4]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Dropout", "config": {"name": "dropout_45", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 9}, {"class_name": "Flatten", "config": {"name": "flatten_45", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_128", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "Dense", "config": {"name": "dense_129", "trainable": true, "dtype": "float32", "units": 25, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 19}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0007350918021984398, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?
{"name": "conv2d_90", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_90", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [11, 11]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 1]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_90", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_90", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [8, 8]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [8, 8]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 20}}
?


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_91", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_91", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [9, 9]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 32]}}
?
trainable_variables
 regularization_losses
!	variables
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_91", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_91", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [4, 4]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 22}}
?
#trainable_variables
$regularization_losses
%	variables
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_45", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_45", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 9}
?
'trainable_variables
(regularization_losses
)	variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_45", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 23}}
?

+kernel
,bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_128", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_128", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 400}}, "shared_object_id": 24}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 400]}}
?

1kernel
2bias
3trainable_variables
4regularization_losses
5	variables
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_129", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_129", "trainable": true, "dtype": "float32", "units": 25, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
7iter

8beta_1

9beta_2
	:decay
;learning_ratemtmumvmw+mx,my1mz2m{v|v}v~v+v?,v?1v?2v?"
	optimizer
X
0
1
2
3
+4
,5
16
27"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
+4
,5
16
27"
trackable_list_wrapper
?

<layers
=layer_regularization_losses

trainable_variables
>metrics
?layer_metrics
regularization_losses
	variables
@non_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:( 2conv2d_90/kernel
: 2conv2d_90/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

Alayers
Blayer_regularization_losses
trainable_variables
Cmetrics
Dlayer_metrics
regularization_losses
	variables
Enon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Flayers
Glayer_regularization_losses
trainable_variables
Hmetrics
Ilayer_metrics
regularization_losses
	variables
Jnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(		 2conv2d_91/kernel
:2conv2d_91/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

Klayers
Llayer_regularization_losses
trainable_variables
Mmetrics
Nlayer_metrics
regularization_losses
	variables
Onon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Players
Qlayer_regularization_losses
trainable_variables
Rmetrics
Slayer_metrics
 regularization_losses
!	variables
Tnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Ulayers
Vlayer_regularization_losses
#trainable_variables
Wmetrics
Xlayer_metrics
$regularization_losses
%	variables
Ynon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Zlayers
[layer_regularization_losses
'trainable_variables
\metrics
]layer_metrics
(regularization_losses
)	variables
^non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?@2dense_128/kernel
:@2dense_128/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
?

_layers
`layer_regularization_losses
-trainable_variables
ametrics
blayer_metrics
.regularization_losses
/	variables
cnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": @2dense_129/kernel
:2dense_129/bias
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
?

dlayers
elayer_regularization_losses
3trainable_variables
fmetrics
glayer_metrics
4regularization_losses
5	variables
hnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
.
i0
j1"
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
	ktotal
	lcount
m	variables
n	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 26}
?
	ototal
	pcount
q
_fn_kwargs
r	variables
s	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 19}
:  (2total
:  (2count
.
k0
l1"
trackable_list_wrapper
-
m	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
o0
p1"
trackable_list_wrapper
-
r	variables"
_generic_user_object
/:- 2Adam/conv2d_90/kernel/m
!: 2Adam/conv2d_90/bias/m
/:-		 2Adam/conv2d_91/kernel/m
!:2Adam/conv2d_91/bias/m
(:&	?@2Adam/dense_128/kernel/m
!:@2Adam/dense_128/bias/m
':%@2Adam/dense_129/kernel/m
!:2Adam/dense_129/bias/m
/:- 2Adam/conv2d_90/kernel/v
!: 2Adam/conv2d_90/bias/v
/:-		 2Adam/conv2d_91/kernel/v
!:2Adam/conv2d_91/bias/v
(:&	?@2Adam/dense_128/kernel/v
!:@2Adam/dense_128/bias/v
':%@2Adam/dense_129/kernel/v
!:2Adam/dense_129/bias/v
?2?
!__inference__wrapped_model_263525?
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
annotations? *8?5
3?0
conv2d_90_input???????????
?2?
.__inference_sequential_45_layer_call_fn_263661
.__inference_sequential_45_layer_call_fn_263927
.__inference_sequential_45_layer_call_fn_263948
.__inference_sequential_45_layer_call_fn_263821?
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
?2?
I__inference_sequential_45_layer_call_and_return_conditional_losses_263985
I__inference_sequential_45_layer_call_and_return_conditional_losses_264029
I__inference_sequential_45_layer_call_and_return_conditional_losses_263849
I__inference_sequential_45_layer_call_and_return_conditional_losses_263877?
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
*__inference_conv2d_90_layer_call_fn_264038?
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
E__inference_conv2d_90_layer_call_and_return_conditional_losses_264049?
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
1__inference_max_pooling2d_90_layer_call_fn_263537?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_263531?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_91_layer_call_fn_264058?
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
E__inference_conv2d_91_layer_call_and_return_conditional_losses_264069?
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
1__inference_max_pooling2d_91_layer_call_fn_263549?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_263543?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_dropout_45_layer_call_fn_264074
+__inference_dropout_45_layer_call_fn_264079?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_45_layer_call_and_return_conditional_losses_264084
F__inference_dropout_45_layer_call_and_return_conditional_losses_264096?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_flatten_45_layer_call_fn_264101?
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
F__inference_flatten_45_layer_call_and_return_conditional_losses_264107?
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
*__inference_dense_128_layer_call_fn_264116?
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
E__inference_dense_128_layer_call_and_return_conditional_losses_264127?
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
*__inference_dense_129_layer_call_fn_264136?
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
E__inference_dense_129_layer_call_and_return_conditional_losses_264147?
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
$__inference_signature_wrapper_263906conv2d_90_input"?
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
 ?
!__inference__wrapped_model_263525?+,12B??
8?5
3?0
conv2d_90_input???????????
? "5?2
0
	dense_129#? 
	dense_129??????????
E__inference_conv2d_90_layer_call_and_return_conditional_losses_264049p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0??????????? 
? ?
*__inference_conv2d_90_layer_call_fn_264038c9?6
/?,
*?'
inputs???????????
? ""???????????? ?
E__inference_conv2d_91_layer_call_and_return_conditional_losses_264069l7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????
? ?
*__inference_conv2d_91_layer_call_fn_264058_7?4
-?*
(?%
inputs????????? 
? " ???????????
E__inference_dense_128_layer_call_and_return_conditional_losses_264127]+,0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ~
*__inference_dense_128_layer_call_fn_264116P+,0?-
&?#
!?
inputs??????????
? "??????????@?
E__inference_dense_129_layer_call_and_return_conditional_losses_264147\12/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? }
*__inference_dense_129_layer_call_fn_264136O12/?,
%?"
 ?
inputs?????????@
? "???????????
F__inference_dropout_45_layer_call_and_return_conditional_losses_264084l;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
F__inference_dropout_45_layer_call_and_return_conditional_losses_264096l;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
+__inference_dropout_45_layer_call_fn_264074_;?8
1?.
(?%
inputs?????????
p 
? " ???????????
+__inference_dropout_45_layer_call_fn_264079_;?8
1?.
(?%
inputs?????????
p
? " ???????????
F__inference_flatten_45_layer_call_and_return_conditional_losses_264107a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? ?
+__inference_flatten_45_layer_call_fn_264101T7?4
-?*
(?%
inputs?????????
? "????????????
L__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_263531?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_90_layer_call_fn_263537?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_263543?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_91_layer_call_fn_263549?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_45_layer_call_and_return_conditional_losses_263849}+,12J?G
@?=
3?0
conv2d_90_input???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_45_layer_call_and_return_conditional_losses_263877}+,12J?G
@?=
3?0
conv2d_90_input???????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_45_layer_call_and_return_conditional_losses_263985t+,12A?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_45_layer_call_and_return_conditional_losses_264029t+,12A?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_45_layer_call_fn_263661p+,12J?G
@?=
3?0
conv2d_90_input???????????
p 

 
? "???????????
.__inference_sequential_45_layer_call_fn_263821p+,12J?G
@?=
3?0
conv2d_90_input???????????
p

 
? "???????????
.__inference_sequential_45_layer_call_fn_263927g+,12A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
.__inference_sequential_45_layer_call_fn_263948g+,12A?>
7?4
*?'
inputs???????????
p

 
? "???????????
$__inference_signature_wrapper_263906?+,12U?R
? 
K?H
F
conv2d_90_input3?0
conv2d_90_input???????????"5?2
0
	dense_129#? 
	dense_129?????????