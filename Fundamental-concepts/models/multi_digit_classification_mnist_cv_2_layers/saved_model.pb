�
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8��
�
Adam/dense_71/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*%
shared_nameAdam/dense_71/bias/v
y
(Adam/dense_71/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_71/bias/v*
_output_shapes
:#*
dtype0
�
Adam/dense_71/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:##*'
shared_nameAdam/dense_71/kernel/v
�
*Adam/dense_71/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_71/kernel/v*
_output_shapes

:##*
dtype0
�
Adam/dense_70/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*%
shared_nameAdam/dense_70/bias/v
y
(Adam/dense_70/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_70/bias/v*
_output_shapes
:#*
dtype0
�
Adam/dense_70/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�#*'
shared_nameAdam/dense_70/kernel/v
�
*Adam/dense_70/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_70/kernel/v*
_output_shapes
:	�#*
dtype0
�
Adam/dense_71/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*%
shared_nameAdam/dense_71/bias/m
y
(Adam/dense_71/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_71/bias/m*
_output_shapes
:#*
dtype0
�
Adam/dense_71/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:##*'
shared_nameAdam/dense_71/kernel/m
�
*Adam/dense_71/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_71/kernel/m*
_output_shapes

:##*
dtype0
�
Adam/dense_70/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*%
shared_nameAdam/dense_70/bias/m
y
(Adam/dense_70/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_70/bias/m*
_output_shapes
:#*
dtype0
�
Adam/dense_70/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�#*'
shared_nameAdam/dense_70/kernel/m
�
*Adam/dense_70/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_70/kernel/m*
_output_shapes
:	�#*
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
r
dense_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*
shared_namedense_71/bias
k
!dense_71/bias/Read/ReadVariableOpReadVariableOpdense_71/bias*
_output_shapes
:#*
dtype0
z
dense_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:##* 
shared_namedense_71/kernel
s
#dense_71/kernel/Read/ReadVariableOpReadVariableOpdense_71/kernel*
_output_shapes

:##*
dtype0
r
dense_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:#*
shared_namedense_70/bias
k
!dense_70/bias/Read/ReadVariableOpReadVariableOpdense_70/bias*
_output_shapes
:#*
dtype0
{
dense_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�#* 
shared_namedense_70/kernel
t
#dense_70/kernel/Read/ReadVariableOpReadVariableOpdense_70/kernel*
_output_shapes
:	�#*
dtype0
}
serving_default_input_28Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_28dense_70/kerneldense_70/biasdense_71/kerneldense_71/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1369612

NoOpNoOp
�"
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�!
value�!B�! B�!
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
 
0
1
2
3*
 
0
1
2
3*

0
1* 
�
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
#trace_0
$trace_1
%trace_2
&trace_3* 
6
'trace_0
(trace_1
)trace_2
*trace_3* 
* 
�
+iter

,beta_1

-beta_2
	.decay
/learning_ratemFmGmHmIvJvKvLvM*

0serving_default* 

0
1*

0
1*
	
0* 
�
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

6trace_0* 

7trace_0* 
_Y
VARIABLE_VALUEdense_70/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_70/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
	
0* 
�
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

=trace_0* 

>trace_0* 
_Y
VARIABLE_VALUEdense_71/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_71/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

?trace_0* 

@trace_0* 
* 

0
1*

A0*
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
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
8
B	variables
C	keras_api
	Dtotal
	Ecount*

D0
E1*

B	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_70/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_70/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_71/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_71/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_70/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_70/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_71/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_71/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_70/kernel/Read/ReadVariableOp!dense_70/bias/Read/ReadVariableOp#dense_71/kernel/Read/ReadVariableOp!dense_71/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_70/kernel/m/Read/ReadVariableOp(Adam/dense_70/bias/m/Read/ReadVariableOp*Adam/dense_71/kernel/m/Read/ReadVariableOp(Adam/dense_71/bias/m/Read/ReadVariableOp*Adam/dense_70/kernel/v/Read/ReadVariableOp(Adam/dense_70/bias/v/Read/ReadVariableOp*Adam/dense_71/kernel/v/Read/ReadVariableOp(Adam/dense_71/bias/v/Read/ReadVariableOpConst* 
Tin
2	*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_1369841
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_70/kerneldense_70/biasdense_71/kerneldense_71/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_70/kernel/mAdam/dense_70/bias/mAdam/dense_71/kernel/mAdam/dense_71/bias/mAdam/dense_70/kernel/vAdam/dense_70/bias/vAdam/dense_71/kernel/vAdam/dense_71/bias/v*
Tin
2*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_1369908��
�
�
E__inference_dense_71_layer_call_and_return_conditional_losses_1369743

inputs0
matmul_readvariableop_resource:##-
biasadd_readvariableop_resource:#
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:##*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:##*
dtype0�
"dense_71/kernel/Regularizer/L2LossL2Loss9dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_71/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_71/kernel/Regularizer/mulMul*dense_71/kernel/Regularizer/mul/x:output:0+dense_71/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_71/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�
�
*__inference_dense_70_layer_call_fn_1369705

inputs
unknown:	�#
	unknown_0:#
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_70_layer_call_and_return_conditional_losses_1369412o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_dense_70_layer_call_and_return_conditional_losses_1369720

inputs1
matmul_readvariableop_resource:	�#-
biasadd_readvariableop_resource:#
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�#*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������#�
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�#*
dtype0�
"dense_70/kernel/Regularizer/L2LossL2Loss9dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0+dense_70/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_70/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_1_1369761L
:dense_71_kernel_regularizer_l2loss_readvariableop_resource:##
identity��1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp�
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:dense_71_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes

:##*
dtype0�
"dense_71/kernel/Regularizer/L2LossL2Loss9dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_71/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_71/kernel/Regularizer/mulMul*dense_71/kernel/Regularizer/mul/x:output:0+dense_71/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_71/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_71/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp
�
�
E__inference_dense_70_layer_call_and_return_conditional_losses_1369412

inputs1
matmul_readvariableop_resource:	�#-
biasadd_readvariableop_resource:#
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�#*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������#�
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�#*
dtype0�
"dense_70/kernel/Regularizer/L2LossL2Loss9dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0+dense_70/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_70/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369583
input_28#
dense_70_1369564:	�#
dense_70_1369566:#"
dense_71_1369569:##
dense_71_1369571:#
identity�� dense_70/StatefulPartitionedCall�1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp� dense_71/StatefulPartitionedCall�1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp�
 dense_70/StatefulPartitionedCallStatefulPartitionedCallinput_28dense_70_1369564dense_70_1369566*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_70_layer_call_and_return_conditional_losses_1369412�
 dense_71/StatefulPartitionedCallStatefulPartitionedCall)dense_70/StatefulPartitionedCall:output:0dense_71_1369569dense_71_1369571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_71_layer_call_and_return_conditional_losses_1369432�
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_70_1369564*
_output_shapes
:	�#*
dtype0�
"dense_70/kernel/Regularizer/L2LossL2Loss9dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0+dense_70/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_71_1369569*
_output_shapes

:##*
dtype0�
"dense_71/kernel/Regularizer/L2LossL2Loss9dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_71/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_71/kernel/Regularizer/mulMul*dense_71/kernel/Regularizer/mul/x:output:0+dense_71/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp!^dense_70/StatefulPartitionedCall2^dense_70/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_71/StatefulPartitionedCall2^dense_71/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2f
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2f
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:R N
(
_output_shapes
:����������
"
_user_specified_name
input_28
�
�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369447

inputs#
dense_70_1369413:	�#
dense_70_1369415:#"
dense_71_1369433:##
dense_71_1369435:#
identity�� dense_70/StatefulPartitionedCall�1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp� dense_71/StatefulPartitionedCall�1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp�
 dense_70/StatefulPartitionedCallStatefulPartitionedCallinputsdense_70_1369413dense_70_1369415*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_70_layer_call_and_return_conditional_losses_1369412�
 dense_71/StatefulPartitionedCallStatefulPartitionedCall)dense_70/StatefulPartitionedCall:output:0dense_71_1369433dense_71_1369435*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_71_layer_call_and_return_conditional_losses_1369432�
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_70_1369413*
_output_shapes
:	�#*
dtype0�
"dense_70/kernel/Regularizer/L2LossL2Loss9dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0+dense_70/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_71_1369433*
_output_shapes

:##*
dtype0�
"dense_71/kernel/Regularizer/L2LossL2Loss9dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_71/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_71/kernel/Regularizer/mulMul*dense_71/kernel/Regularizer/mul/x:output:0+dense_71/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp!^dense_70/StatefulPartitionedCall2^dense_70/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_71/StatefulPartitionedCall2^dense_71/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2f
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2f
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference__wrapped_model_1369390
input_28^
Kmulti_class_classification_2_layers_dense_70_matmul_readvariableop_resource:	�#Z
Lmulti_class_classification_2_layers_dense_70_biasadd_readvariableop_resource:#]
Kmulti_class_classification_2_layers_dense_71_matmul_readvariableop_resource:##Z
Lmulti_class_classification_2_layers_dense_71_biasadd_readvariableop_resource:#
identity��CMulti_Class_Classification_2_layers/dense_70/BiasAdd/ReadVariableOp�BMulti_Class_Classification_2_layers/dense_70/MatMul/ReadVariableOp�CMulti_Class_Classification_2_layers/dense_71/BiasAdd/ReadVariableOp�BMulti_Class_Classification_2_layers/dense_71/MatMul/ReadVariableOp�
BMulti_Class_Classification_2_layers/dense_70/MatMul/ReadVariableOpReadVariableOpKmulti_class_classification_2_layers_dense_70_matmul_readvariableop_resource*
_output_shapes
:	�#*
dtype0�
3Multi_Class_Classification_2_layers/dense_70/MatMulMatMulinput_28JMulti_Class_Classification_2_layers/dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
CMulti_Class_Classification_2_layers/dense_70/BiasAdd/ReadVariableOpReadVariableOpLmulti_class_classification_2_layers_dense_70_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype0�
4Multi_Class_Classification_2_layers/dense_70/BiasAddBiasAdd=Multi_Class_Classification_2_layers/dense_70/MatMul:product:0KMulti_Class_Classification_2_layers/dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
1Multi_Class_Classification_2_layers/dense_70/ReluRelu=Multi_Class_Classification_2_layers/dense_70/BiasAdd:output:0*
T0*'
_output_shapes
:���������#�
BMulti_Class_Classification_2_layers/dense_71/MatMul/ReadVariableOpReadVariableOpKmulti_class_classification_2_layers_dense_71_matmul_readvariableop_resource*
_output_shapes

:##*
dtype0�
3Multi_Class_Classification_2_layers/dense_71/MatMulMatMul?Multi_Class_Classification_2_layers/dense_70/Relu:activations:0JMulti_Class_Classification_2_layers/dense_71/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
CMulti_Class_Classification_2_layers/dense_71/BiasAdd/ReadVariableOpReadVariableOpLmulti_class_classification_2_layers_dense_71_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype0�
4Multi_Class_Classification_2_layers/dense_71/BiasAddBiasAdd=Multi_Class_Classification_2_layers/dense_71/MatMul:product:0KMulti_Class_Classification_2_layers/dense_71/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
IdentityIdentity=Multi_Class_Classification_2_layers/dense_71/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOpD^Multi_Class_Classification_2_layers/dense_70/BiasAdd/ReadVariableOpC^Multi_Class_Classification_2_layers/dense_70/MatMul/ReadVariableOpD^Multi_Class_Classification_2_layers/dense_71/BiasAdd/ReadVariableOpC^Multi_Class_Classification_2_layers/dense_71/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2�
CMulti_Class_Classification_2_layers/dense_70/BiasAdd/ReadVariableOpCMulti_Class_Classification_2_layers/dense_70/BiasAdd/ReadVariableOp2�
BMulti_Class_Classification_2_layers/dense_70/MatMul/ReadVariableOpBMulti_Class_Classification_2_layers/dense_70/MatMul/ReadVariableOp2�
CMulti_Class_Classification_2_layers/dense_71/BiasAdd/ReadVariableOpCMulti_Class_Classification_2_layers/dense_71/BiasAdd/ReadVariableOp2�
BMulti_Class_Classification_2_layers/dense_71/MatMul/ReadVariableOpBMulti_Class_Classification_2_layers/dense_71/MatMul/ReadVariableOp:R N
(
_output_shapes
:����������
"
_user_specified_name
input_28
�
�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369696

inputs:
'dense_70_matmul_readvariableop_resource:	�#6
(dense_70_biasadd_readvariableop_resource:#9
'dense_71_matmul_readvariableop_resource:##6
(dense_71_biasadd_readvariableop_resource:#
identity��dense_70/BiasAdd/ReadVariableOp�dense_70/MatMul/ReadVariableOp�1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp�dense_71/BiasAdd/ReadVariableOp�dense_71/MatMul/ReadVariableOp�1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp�
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes
:	�#*
dtype0{
dense_70/MatMulMatMulinputs&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype0�
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#b
dense_70/ReluReludense_70/BiasAdd:output:0*
T0*'
_output_shapes
:���������#�
dense_71/MatMul/ReadVariableOpReadVariableOp'dense_71_matmul_readvariableop_resource*
_output_shapes

:##*
dtype0�
dense_71/MatMulMatMuldense_70/Relu:activations:0&dense_71/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
dense_71/BiasAdd/ReadVariableOpReadVariableOp(dense_71_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype0�
dense_71/BiasAddBiasAdddense_71/MatMul:product:0'dense_71/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes
:	�#*
dtype0�
"dense_70/kernel/Regularizer/L2LossL2Loss9dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0+dense_70/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_71_matmul_readvariableop_resource*
_output_shapes

:##*
dtype0�
"dense_71/kernel/Regularizer/L2LossL2Loss9dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_71/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_71/kernel/Regularizer/mulMul*dense_71/kernel/Regularizer/mul/x:output:0+dense_71/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_71/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp2^dense_70/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_71/BiasAdd/ReadVariableOp^dense_71/MatMul/ReadVariableOp2^dense_71/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp2f
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_71/BiasAdd/ReadVariableOpdense_71/BiasAdd/ReadVariableOp2@
dense_71/MatMul/ReadVariableOpdense_71/MatMul/ReadVariableOp2f
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369671

inputs:
'dense_70_matmul_readvariableop_resource:	�#6
(dense_70_biasadd_readvariableop_resource:#9
'dense_71_matmul_readvariableop_resource:##6
(dense_71_biasadd_readvariableop_resource:#
identity��dense_70/BiasAdd/ReadVariableOp�dense_70/MatMul/ReadVariableOp�1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp�dense_71/BiasAdd/ReadVariableOp�dense_71/MatMul/ReadVariableOp�1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp�
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes
:	�#*
dtype0{
dense_70/MatMulMatMulinputs&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype0�
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#b
dense_70/ReluReludense_70/BiasAdd:output:0*
T0*'
_output_shapes
:���������#�
dense_71/MatMul/ReadVariableOpReadVariableOp'dense_71_matmul_readvariableop_resource*
_output_shapes

:##*
dtype0�
dense_71/MatMulMatMuldense_70/Relu:activations:0&dense_71/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
dense_71/BiasAdd/ReadVariableOpReadVariableOp(dense_71_biasadd_readvariableop_resource*
_output_shapes
:#*
dtype0�
dense_71/BiasAddBiasAdddense_71/MatMul:product:0'dense_71/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes
:	�#*
dtype0�
"dense_70/kernel/Regularizer/L2LossL2Loss9dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0+dense_70/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_71_matmul_readvariableop_resource*
_output_shapes

:##*
dtype0�
"dense_71/kernel/Regularizer/L2LossL2Loss9dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_71/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_71/kernel/Regularizer/mulMul*dense_71/kernel/Regularizer/mul/x:output:0+dense_71/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_71/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp2^dense_70/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_71/BiasAdd/ReadVariableOp^dense_71/MatMul/ReadVariableOp2^dense_71/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp2f
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_71/BiasAdd/ReadVariableOpdense_71/BiasAdd/ReadVariableOp2@
dense_71/MatMul/ReadVariableOpdense_71/MatMul/ReadVariableOp2f
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_dense_71_layer_call_fn_1369729

inputs
unknown:##
	unknown_0:#
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_71_layer_call_and_return_conditional_losses_1369432o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�
�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369646

inputs
unknown:	�#
	unknown_0:#
	unknown_1:##
	unknown_2:#
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_dense_71_layer_call_and_return_conditional_losses_1369432

inputs0
matmul_readvariableop_resource:##-
biasadd_readvariableop_resource:#
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:##*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:#*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������#�
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:##*
dtype0�
"dense_71/kernel/Regularizer/L2LossL2Loss9dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_71/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_71/kernel/Regularizer/mulMul*dense_71/kernel/Regularizer/mul/x:output:0+dense_71/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_71/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�N
�
#__inference__traced_restore_1369908
file_prefix3
 assignvariableop_dense_70_kernel:	�#.
 assignvariableop_1_dense_70_bias:#4
"assignvariableop_2_dense_71_kernel:##.
 assignvariableop_3_dense_71_bias:#&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: =
*assignvariableop_11_adam_dense_70_kernel_m:	�#6
(assignvariableop_12_adam_dense_70_bias_m:#<
*assignvariableop_13_adam_dense_71_kernel_m:##6
(assignvariableop_14_adam_dense_71_bias_m:#=
*assignvariableop_15_adam_dense_70_kernel_v:	�#6
(assignvariableop_16_adam_dense_70_bias_v:#<
*assignvariableop_17_adam_dense_71_kernel_v:##6
(assignvariableop_18_adam_dense_71_bias_v:#
identity_20��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_70_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_70_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_71_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_71_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp*assignvariableop_11_adam_dense_70_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adam_dense_70_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_dense_71_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_dense_71_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_70_kernel_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_70_bias_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_71_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_71_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
�
�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369539
input_28
unknown:	�#
	unknown_0:#
	unknown_1:##
	unknown_2:#
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_28unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:����������
"
_user_specified_name
input_28
�
�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369515

inputs#
dense_70_1369496:	�#
dense_70_1369498:#"
dense_71_1369501:##
dense_71_1369503:#
identity�� dense_70/StatefulPartitionedCall�1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp� dense_71/StatefulPartitionedCall�1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp�
 dense_70/StatefulPartitionedCallStatefulPartitionedCallinputsdense_70_1369496dense_70_1369498*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_70_layer_call_and_return_conditional_losses_1369412�
 dense_71/StatefulPartitionedCallStatefulPartitionedCall)dense_70/StatefulPartitionedCall:output:0dense_71_1369501dense_71_1369503*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_71_layer_call_and_return_conditional_losses_1369432�
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_70_1369496*
_output_shapes
:	�#*
dtype0�
"dense_70/kernel/Regularizer/L2LossL2Loss9dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0+dense_70/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_71_1369501*
_output_shapes

:##*
dtype0�
"dense_71/kernel/Regularizer/L2LossL2Loss9dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_71/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_71/kernel/Regularizer/mulMul*dense_71/kernel/Regularizer/mul/x:output:0+dense_71/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp!^dense_70/StatefulPartitionedCall2^dense_70/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_71/StatefulPartitionedCall2^dense_71/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2f
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2f
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_0_1369752M
:dense_70_kernel_regularizer_l2loss_readvariableop_resource:	�#
identity��1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp�
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:dense_70_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�#*
dtype0�
"dense_70/kernel/Regularizer/L2LossL2Loss9dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0+dense_70/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_70/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_70/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp
�.
�
 __inference__traced_save_1369841
file_prefix.
*savev2_dense_70_kernel_read_readvariableop,
(savev2_dense_70_bias_read_readvariableop.
*savev2_dense_71_kernel_read_readvariableop,
(savev2_dense_71_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_70_kernel_m_read_readvariableop3
/savev2_adam_dense_70_bias_m_read_readvariableop5
1savev2_adam_dense_71_kernel_m_read_readvariableop3
/savev2_adam_dense_71_bias_m_read_readvariableop5
1savev2_adam_dense_70_kernel_v_read_readvariableop3
/savev2_adam_dense_70_bias_v_read_readvariableop5
1savev2_adam_dense_71_kernel_v_read_readvariableop3
/savev2_adam_dense_71_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_70_kernel_read_readvariableop(savev2_dense_70_bias_read_readvariableop*savev2_dense_71_kernel_read_readvariableop(savev2_dense_71_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_70_kernel_m_read_readvariableop/savev2_adam_dense_70_bias_m_read_readvariableop1savev2_adam_dense_71_kernel_m_read_readvariableop/savev2_adam_dense_71_bias_m_read_readvariableop1savev2_adam_dense_70_kernel_v_read_readvariableop/savev2_adam_dense_70_bias_v_read_readvariableop1savev2_adam_dense_71_kernel_v_read_readvariableop/savev2_adam_dense_71_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *"
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapesw
u: :	�#:#:##:#: : : : : : : :	�#:#:##:#:	�#:#:##:#: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�#: 

_output_shapes
:#:$ 

_output_shapes

:##: 

_output_shapes
:#:

_output_shapes
: :

_output_shapes
: :
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
: :%!

_output_shapes
:	�#: 

_output_shapes
:#:$ 

_output_shapes

:##: 

_output_shapes
:#:%!

_output_shapes
:	�#: 

_output_shapes
:#:$ 

_output_shapes

:##: 

_output_shapes
:#:

_output_shapes
: 
�
�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369561
input_28#
dense_70_1369542:	�#
dense_70_1369544:#"
dense_71_1369547:##
dense_71_1369549:#
identity�� dense_70/StatefulPartitionedCall�1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp� dense_71/StatefulPartitionedCall�1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp�
 dense_70/StatefulPartitionedCallStatefulPartitionedCallinput_28dense_70_1369542dense_70_1369544*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_70_layer_call_and_return_conditional_losses_1369412�
 dense_71/StatefulPartitionedCallStatefulPartitionedCall)dense_70/StatefulPartitionedCall:output:0dense_71_1369547dense_71_1369549*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_71_layer_call_and_return_conditional_losses_1369432�
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_70_1369542*
_output_shapes
:	�#*
dtype0�
"dense_70/kernel/Regularizer/L2LossL2Loss9dense_70/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0+dense_70/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_71_1369547*
_output_shapes

:##*
dtype0�
"dense_71/kernel/Regularizer/L2LossL2Loss9dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_71/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#=�
dense_71/kernel/Regularizer/mulMul*dense_71/kernel/Regularizer/mul/x:output:0+dense_71/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp!^dense_70/StatefulPartitionedCall2^dense_70/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_71/StatefulPartitionedCall2^dense_71/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2f
1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp1dense_70/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2f
1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp1dense_71/kernel/Regularizer/L2Loss/ReadVariableOp:R N
(
_output_shapes
:����������
"
_user_specified_name
input_28
�
�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369458
input_28
unknown:	�#
	unknown_0:#
	unknown_1:##
	unknown_2:#
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_28unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369447o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:����������
"
_user_specified_name
input_28
�
�
%__inference_signature_wrapper_1369612
input_28
unknown:	�#
	unknown_0:#
	unknown_1:##
	unknown_2:#
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_28unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_1369390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:����������
"
_user_specified_name
input_28
�
�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369633

inputs
unknown:	�#
	unknown_0:#
	unknown_1:##
	unknown_2:#
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369447o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
>
input_282
serving_default_input_28:0����������<
dense_710
StatefulPartitionedCall:0���������#tensorflow/serving/predict:�e
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
#trace_0
$trace_1
%trace_2
&trace_32�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369458
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369633
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369646
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369539�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#trace_0z$trace_1z%trace_2z&trace_3
�
'trace_0
(trace_1
)trace_2
*trace_32�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369671
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369696
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369561
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369583�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z'trace_0z(trace_1z)trace_2z*trace_3
�B�
"__inference__wrapped_model_1369390input_28"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
+iter

,beta_1

-beta_2
	.decay
/learning_ratemFmGmHmIvJvKvLvM"
	optimizer
,
0serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
6trace_02�
*__inference_dense_70_layer_call_fn_1369705�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z6trace_0
�
7trace_02�
E__inference_dense_70_layer_call_and_return_conditional_losses_1369720�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z7trace_0
": 	�#2dense_70/kernel
:#2dense_70/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
=trace_02�
*__inference_dense_71_layer_call_fn_1369729�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z=trace_0
�
>trace_02�
E__inference_dense_71_layer_call_and_return_conditional_losses_1369743�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z>trace_0
!:##2dense_71/kernel
:#2dense_71/bias
�
?trace_02�
__inference_loss_fn_0_1369752�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z?trace_0
�
@trace_02�
__inference_loss_fn_1_1369761�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z@trace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369458input_28"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369633inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369646inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369539input_28"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369671inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369696inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369561input_28"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369583input_28"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
%__inference_signature_wrapper_1369612input_28"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_70_layer_call_fn_1369705inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_70_layer_call_and_return_conditional_losses_1369720inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_71_layer_call_fn_1369729inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_71_layer_call_and_return_conditional_losses_1369743inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_1369752"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_1369761"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
N
B	variables
C	keras_api
	Dtotal
	Ecount"
_tf_keras_metric
.
D0
E1"
trackable_list_wrapper
-
B	variables"
_generic_user_object
:  (2total
:  (2count
':%	�#2Adam/dense_70/kernel/m
 :#2Adam/dense_70/bias/m
&:$##2Adam/dense_71/kernel/m
 :#2Adam/dense_71/bias/m
':%	�#2Adam/dense_70/kernel/v
 :#2Adam/dense_70/bias/v
&:$##2Adam/dense_71/kernel/v
 :#2Adam/dense_71/bias/v�
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369561i:�7
0�-
#� 
input_28����������
p 

 
� "%�"
�
0���������#
� �
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369583i:�7
0�-
#� 
input_28����������
p

 
� "%�"
�
0���������#
� �
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369671g8�5
.�+
!�
inputs����������
p 

 
� "%�"
�
0���������#
� �
`__inference_Multi_Class_Classification_2_layers_layer_call_and_return_conditional_losses_1369696g8�5
.�+
!�
inputs����������
p

 
� "%�"
�
0���������#
� �
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369458\:�7
0�-
#� 
input_28����������
p 

 
� "����������#�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369539\:�7
0�-
#� 
input_28����������
p

 
� "����������#�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369633Z8�5
.�+
!�
inputs����������
p 

 
� "����������#�
E__inference_Multi_Class_Classification_2_layers_layer_call_fn_1369646Z8�5
.�+
!�
inputs����������
p

 
� "����������#�
"__inference__wrapped_model_1369390o2�/
(�%
#� 
input_28����������
� "3�0
.
dense_71"�
dense_71���������#�
E__inference_dense_70_layer_call_and_return_conditional_losses_1369720]0�-
&�#
!�
inputs����������
� "%�"
�
0���������#
� ~
*__inference_dense_70_layer_call_fn_1369705P0�-
&�#
!�
inputs����������
� "����������#�
E__inference_dense_71_layer_call_and_return_conditional_losses_1369743\/�,
%�"
 �
inputs���������#
� "%�"
�
0���������#
� }
*__inference_dense_71_layer_call_fn_1369729O/�,
%�"
 �
inputs���������#
� "����������#<
__inference_loss_fn_0_1369752�

� 
� "� <
__inference_loss_fn_1_1369761�

� 
� "� �
%__inference_signature_wrapper_1369612{>�;
� 
4�1
/
input_28#� 
input_28����������"3�0
.
dense_71"�
dense_71���������#