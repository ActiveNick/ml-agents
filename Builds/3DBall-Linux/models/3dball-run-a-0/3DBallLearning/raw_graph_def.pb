
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
dtype0*
	container *
shape: *
shared_name 

global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
/
Add/yConst*
value	B :*
dtype0
,
AddAddglobal_step/readAdd/y*
T0
t
AssignAssignglobal_stepAdd*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
5

batch_sizePlaceholder*
shape:*
dtype0
:
sequence_lengthPlaceholder*
dtype0*
shape:
;
masksPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
+
CastCastmasks*

SrcT0*

DstT0
M
#is_continuous_control/initial_valueConst*
value	B :*
dtype0
a
is_continuous_control
VariableV2*
shape: *
shared_name *
dtype0*
	container 
¾
is_continuous_control/AssignAssignis_continuous_control#is_continuous_control/initial_value*
use_locking(*
T0*(
_class
loc:@is_continuous_control*
validate_shape(
p
is_continuous_control/readIdentityis_continuous_control*
T0*(
_class
loc:@is_continuous_control
F
version_number/initial_valueConst*
value	B :*
dtype0
Z
version_number
VariableV2*
dtype0*
	container *
shape: *
shared_name 
¢
version_number/AssignAssignversion_numberversion_number/initial_value*
use_locking(*
T0*!
_class
loc:@version_number*
validate_shape(
[
version_number/readIdentityversion_number*
T0*!
_class
loc:@version_number
C
memory_size/initial_valueConst*
value	B : *
dtype0
W
memory_size
VariableV2*
shape: *
shared_name *
dtype0*
	container 

memory_size/AssignAssignmemory_sizememory_size/initial_value*
T0*
_class
loc:@memory_size*
validate_shape(*
use_locking(
R
memory_size/readIdentitymemory_size*
T0*
_class
loc:@memory_size
K
!action_output_shape/initial_valueConst*
value	B :*
dtype0
_
action_output_shape
VariableV2*
shared_name *
dtype0*
	container *
shape: 
¶
action_output_shape/AssignAssignaction_output_shape!action_output_shape/initial_value*
use_locking(*
T0*&
_class
loc:@action_output_shape*
validate_shape(
j
action_output_shape/readIdentityaction_output_shape*
T0*&
_class
loc:@action_output_shape
F
last_reward/initial_valueConst*
valueB
 *    *
dtype0
W
last_reward
VariableV2*
dtype0*
	container *
shape: *
shared_name 

last_reward/AssignAssignlast_rewardlast_reward/initial_value*
use_locking(*
T0*
_class
loc:@last_reward*
validate_shape(
R
last_reward/readIdentitylast_reward*
T0*
_class
loc:@last_reward
3

new_rewardPlaceholder*
shape: *
dtype0
}
Assign_1Assignlast_reward
new_reward*
_class
loc:@last_reward*
validate_shape(*
use_locking(*
T0
L
vector_observationPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
}
.running_mean/Initializer/zeros/shape_as_tensorConst*
_class
loc:@running_mean*
valueB:*
dtype0
r
$running_mean/Initializer/zeros/ConstConst*
_class
loc:@running_mean*
valueB
 *    *
dtype0
¸
running_mean/Initializer/zerosFill.running_mean/Initializer/zeros/shape_as_tensor$running_mean/Initializer/zeros/Const*
T0*
_class
loc:@running_mean*

index_type0
}
running_mean
VariableV2*
shared_name *
_class
loc:@running_mean*
dtype0*
	container *
shape:

running_mean/AssignAssignrunning_meanrunning_mean/Initializer/zeros*
_class
loc:@running_mean*
validate_shape(*
use_locking(*
T0
U
running_mean/readIdentityrunning_mean*
T0*
_class
loc:@running_mean

1running_variance/Initializer/ones/shape_as_tensorConst*#
_class
loc:@running_variance*
valueB:*
dtype0
y
'running_variance/Initializer/ones/ConstConst*#
_class
loc:@running_variance*
valueB
 *  ?*
dtype0
Å
!running_variance/Initializer/onesFill1running_variance/Initializer/ones/shape_as_tensor'running_variance/Initializer/ones/Const*
T0*#
_class
loc:@running_variance*

index_type0

running_variance
VariableV2*
shared_name *#
_class
loc:@running_variance*
dtype0*
	container *
shape:
­
running_variance/AssignAssignrunning_variance!running_variance/Initializer/ones*#
_class
loc:@running_variance*
validate_shape(*
use_locking(*
T0
a
running_variance/readIdentityrunning_variance*
T0*#
_class
loc:@running_variance
@
Mean/reduction_indicesConst*
dtype0*
value	B : 
^
MeanMeanvector_observationMean/reduction_indices*
T0*
	keep_dims( *

Tidx0
,
subSubMeanrunning_mean/read*
T0
1
Add_1/yConst*
value	B :*
dtype0
0
Add_1Addglobal_step/readAdd_1/y*
T0
-
Cast_1CastAdd_1*

DstT0*

SrcT0
(
truedivRealDivsubCast_1*
T0
/
addAddrunning_mean/readtruediv*
T0
 
sub_1SubMeanadd*
T0
.
sub_2SubMeanrunning_mean/read*
T0
!
mulMulsub_1sub_2*
T0
1
add_1Addrunning_variance/readmul*
T0
x
Assign_2Assignrunning_meanadd*
_class
loc:@running_mean*
validate_shape(*
use_locking(*
T0

Assign_3Assignrunning_varianceadd_1*
use_locking(*
T0*#
_class
loc:@running_variance*
validate_shape(
<
sub_3Subvector_observationrunning_mean/read*
T0
8
Cast_2Castglobal_step/read*

DstT0*

SrcT0
4
add_2/yConst*
valueB
 *  ?*
dtype0
&
add_2AddCast_2add_2/y*
T0
;
	truediv_1RealDivrunning_variance/readadd_2*
T0
 
SqrtSqrt	truediv_1*
T0
*
	truediv_2RealDivsub_3Sqrt*
T0
G
normalized_state/Minimum/yConst*
valueB
 *   @*
dtype0
S
normalized_state/MinimumMinimum	truediv_2normalized_state/Minimum/y*
T0
?
normalized_state/yConst*
valueB
 *   À*
dtype0
R
normalized_stateMaximumnormalized_state/Minimumnormalized_state/y*
T0
¥
?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB"      *
dtype0

>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *    *
dtype0

@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddevConst*
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *ÐdÎ>
þ
Imain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
seed2J*
seedà!

=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
ù
9main_graph_0/hidden_0/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
¢
main_graph_0/hidden_0/kernel
VariableV2*
shape:	*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container 
é
#main_graph_0/hidden_0/kernel/AssignAssignmain_graph_0/hidden_0/kernel9main_graph_0/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(

!main_graph_0/hidden_0/kernel/readIdentitymain_graph_0/hidden_0/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

<main_graph_0/hidden_0/bias/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB:*
dtype0

2main_graph_0/hidden_0/bias/Initializer/zeros/ConstConst*
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB
 *    
ð
,main_graph_0/hidden_0/bias/Initializer/zerosFill<main_graph_0/hidden_0/bias/Initializer/zeros/shape_as_tensor2main_graph_0/hidden_0/bias/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*

index_type0

main_graph_0/hidden_0/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias
Ö
!main_graph_0/hidden_0/bias/AssignAssignmain_graph_0/hidden_0/bias,main_graph_0/hidden_0/bias/Initializer/zeros*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(*
use_locking(

main_graph_0/hidden_0/bias/readIdentitymain_graph_0/hidden_0/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/MatMulMatMulnormalized_state!main_graph_0/hidden_0/kernel/read*
transpose_a( *
transpose_b( *
T0

main_graph_0/hidden_0/BiasAddBiasAddmain_graph_0/hidden_0/MatMulmain_graph_0/hidden_0/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_0/SigmoidSigmoidmain_graph_0/hidden_0/BiasAdd*
T0
g
main_graph_0/hidden_0/MulMulmain_graph_0/hidden_0/BiasAddmain_graph_0/hidden_0/Sigmoid*
T0
¥
?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB"      *
dtype0

>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *    *
dtype0

@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *ÐdÎ=*
dtype0
þ
Imain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
seed2]*
seedà!

=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
ù
9main_graph_0/hidden_1/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
£
main_graph_0/hidden_1/kernel
VariableV2*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container *
shape:
*
shared_name 
é
#main_graph_0/hidden_1/kernel/AssignAssignmain_graph_0/hidden_1/kernel9main_graph_0/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(

!main_graph_0/hidden_1/kernel/readIdentitymain_graph_0/hidden_1/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

<main_graph_0/hidden_1/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB:

2main_graph_0/hidden_1/bias/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB
 *    *
dtype0
ð
,main_graph_0/hidden_1/bias/Initializer/zerosFill<main_graph_0/hidden_1/bias/Initializer/zeros/shape_as_tensor2main_graph_0/hidden_1/bias/Initializer/zeros/Const*-
_class#
!loc:@main_graph_0/hidden_1/bias*

index_type0*
T0

main_graph_0/hidden_1/bias
VariableV2*-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container *
shape:*
shared_name 
Ö
!main_graph_0/hidden_1/bias/AssignAssignmain_graph_0/hidden_1/bias,main_graph_0/hidden_1/bias/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

main_graph_0/hidden_1/bias/readIdentitymain_graph_0/hidden_1/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/MatMulMatMulmain_graph_0/hidden_0/Mul!main_graph_0/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 

main_graph_0/hidden_1/BiasAddBiasAddmain_graph_0/hidden_1/MatMulmain_graph_0/hidden_1/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_1/SigmoidSigmoidmain_graph_0/hidden_1/BiasAdd*
T0
g
main_graph_0/hidden_1/MulMulmain_graph_0/hidden_1/BiasAddmain_graph_0/hidden_1/Sigmoid*
T0
¥
?main_graph_1/hidden_0/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
valueB"      *
dtype0

>main_graph_1/hidden_0/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
valueB
 *    *
dtype0

@main_graph_1/hidden_0/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
valueB
 *ÐdÎ>*
dtype0
þ
Imain_graph_1/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_1/hidden_0/kernel/Initializer/truncated_normal/shape*
seed2p*
seedà!*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0

=main_graph_1/hidden_0/kernel/Initializer/truncated_normal/mulMulImain_graph_1/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_1/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel
ù
9main_graph_1/hidden_0/kernel/Initializer/truncated_normalAdd=main_graph_1/hidden_0/kernel/Initializer/truncated_normal/mul>main_graph_1/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel
¢
main_graph_1/hidden_0/kernel
VariableV2*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0*
	container *
shape:	*
shared_name 
é
#main_graph_1/hidden_0/kernel/AssignAssignmain_graph_1/hidden_0/kernel9main_graph_1/hidden_0/kernel/Initializer/truncated_normal*
validate_shape(*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel

!main_graph_1/hidden_0/kernel/readIdentitymain_graph_1/hidden_0/kernel*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel

<main_graph_1/hidden_0/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
valueB:

2main_graph_1/hidden_0/bias/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_1/hidden_0/bias*
valueB
 *    *
dtype0
ð
,main_graph_1/hidden_0/bias/Initializer/zerosFill<main_graph_1/hidden_0/bias/Initializer/zeros/shape_as_tensor2main_graph_1/hidden_0/bias/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*

index_type0

main_graph_1/hidden_0/bias
VariableV2*-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0*
	container *
shape:*
shared_name 
Ö
!main_graph_1/hidden_0/bias/AssignAssignmain_graph_1/hidden_0/bias,main_graph_1/hidden_0/bias/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(

main_graph_1/hidden_0/bias/readIdentitymain_graph_1/hidden_0/bias*-
_class#
!loc:@main_graph_1/hidden_0/bias*
T0

main_graph_1/hidden_0/MatMulMatMulnormalized_state!main_graph_1/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 

main_graph_1/hidden_0/BiasAddBiasAddmain_graph_1/hidden_0/MatMulmain_graph_1/hidden_0/bias/read*
T0*
data_formatNHWC
P
main_graph_1/hidden_0/SigmoidSigmoidmain_graph_1/hidden_0/BiasAdd*
T0
g
main_graph_1/hidden_0/MulMulmain_graph_1/hidden_0/BiasAddmain_graph_1/hidden_0/Sigmoid*
T0
¥
?main_graph_1/hidden_1/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
valueB"      *
dtype0

>main_graph_1/hidden_1/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
valueB
 *    *
dtype0

@main_graph_1/hidden_1/kernel/Initializer/truncated_normal/stddevConst*
dtype0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
valueB
 *ÐdÎ=
ÿ
Imain_graph_1/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_1/hidden_1/kernel/Initializer/truncated_normal/shape*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0*
seed2*
seedà!*
T0

=main_graph_1/hidden_1/kernel/Initializer/truncated_normal/mulMulImain_graph_1/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_1/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel
ù
9main_graph_1/hidden_1/kernel/Initializer/truncated_normalAdd=main_graph_1/hidden_1/kernel/Initializer/truncated_normal/mul>main_graph_1/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel
£
main_graph_1/hidden_1/kernel
VariableV2*
shared_name */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0*
	container *
shape:

é
#main_graph_1/hidden_1/kernel/AssignAssignmain_graph_1/hidden_1/kernel9main_graph_1/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(

!main_graph_1/hidden_1/kernel/readIdentitymain_graph_1/hidden_1/kernel*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
T0

<main_graph_1/hidden_1/bias/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_1/hidden_1/bias*
valueB:*
dtype0

2main_graph_1/hidden_1/bias/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_1/hidden_1/bias*
valueB
 *    *
dtype0
ð
,main_graph_1/hidden_1/bias/Initializer/zerosFill<main_graph_1/hidden_1/bias/Initializer/zeros/shape_as_tensor2main_graph_1/hidden_1/bias/Initializer/zeros/Const*-
_class#
!loc:@main_graph_1/hidden_1/bias*

index_type0*
T0

main_graph_1/hidden_1/bias
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0*
	container 
Ö
!main_graph_1/hidden_1/bias/AssignAssignmain_graph_1/hidden_1/bias,main_graph_1/hidden_1/bias/Initializer/zeros*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(*
use_locking(

main_graph_1/hidden_1/bias/readIdentitymain_graph_1/hidden_1/bias*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias

main_graph_1/hidden_1/MatMulMatMulmain_graph_1/hidden_0/Mul!main_graph_1/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 

main_graph_1/hidden_1/BiasAddBiasAddmain_graph_1/hidden_1/MatMulmain_graph_1/hidden_1/bias/read*
T0*
data_formatNHWC
P
main_graph_1/hidden_1/SigmoidSigmoidmain_graph_1/hidden_1/BiasAdd*
T0
g
main_graph_1/hidden_1/MulMulmain_graph_1/hidden_1/BiasAddmain_graph_1/hidden_1/Sigmoid*
T0

/dense/kernel/Initializer/truncated_normal/shapeConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0
|
.dense/kernel/Initializer/truncated_normal/meanConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
~
0dense/kernel/Initializer/truncated_normal/stddevConst*
_class
loc:@dense/kernel*
valueB
 *s%<*
dtype0
Ï
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
seed2*
seedà!*
T0*
_class
loc:@dense/kernel*
dtype0
Ë
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel
¹
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel

dense/kernel
VariableV2*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container *
shape:	
©
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
y
,dense/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:*
dtype0
n
"dense/bias/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0
°
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*

index_type0
y

dense/bias
VariableV2*
shape:*
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 

dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/bias
O
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias
s
dense/MatMulMatMulmain_graph_0/hidden_1/Muldense/kernel/read*
transpose_a( *
transpose_b( *
T0
W
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC

3log_sigma_squared/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@log_sigma_squared*
valueB:*
dtype0
|
)log_sigma_squared/Initializer/zeros/ConstConst*$
_class
loc:@log_sigma_squared*
valueB
 *    *
dtype0
Ì
#log_sigma_squared/Initializer/zerosFill3log_sigma_squared/Initializer/zeros/shape_as_tensor)log_sigma_squared/Initializer/zeros/Const*
T0*$
_class
loc:@log_sigma_squared*

index_type0

log_sigma_squared
VariableV2*$
_class
loc:@log_sigma_squared*
dtype0*
	container *
shape:*
shared_name 
²
log_sigma_squared/AssignAssignlog_sigma_squared#log_sigma_squared/Initializer/zeros*$
_class
loc:@log_sigma_squared*
validate_shape(*
use_locking(*
T0
d
log_sigma_squared/readIdentitylog_sigma_squared*
T0*$
_class
loc:@log_sigma_squared
+
ExpExplog_sigma_squared/read*
T0
A
epsilonPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0

Sqrt_1SqrtExp*
T0
&
mul_1MulSqrt_1epsilon*
T0
+
add_3Adddense/BiasAddmul_1*
T0
D
clip_by_value/Minimum/yConst*
dtype0*
valueB
 *  @@
I
clip_by_value/MinimumMinimumadd_3clip_by_value/Minimum/y*
T0
<
clip_by_value/yConst*
valueB
 *  @À*
dtype0
I
clip_by_valueMaximumclip_by_value/Minimumclip_by_value/y*
T0
8
truediv_3/yConst*
valueB
 *  @@*
dtype0
9
	truediv_3RealDivclip_by_valuetruediv_3/y*
T0
&
actionIdentity	truediv_3*
T0
0
StopGradientStopGradient	truediv_3*
T0
.
StopGradient_1StopGradientadd_3*
T0
4
sub_4SubStopGradient_1dense/BiasAdd*
T0
 
SquareSquaresub_4*
T0
4
mul_2/xConst*
valueB
 *   ¿*
dtype0
&
mul_2Mulmul_2/xSquare*
T0
)
	truediv_4RealDivmul_2Exp*
T0
2
Log/xConst*
valueB
 *ÛÉ@*
dtype0

LogLogLog/x*
T0
4
mul_3/xConst*
valueB
 *   ?*
dtype0
#
mul_3Mulmul_3/xLog*
T0
'
sub_5Sub	truediv_4mul_3*
T0
4
mul_4/xConst*
dtype0*
valueB
 *   ?
6
mul_4Mulmul_4/xlog_sigma_squared/read*
T0
#
sub_6Subsub_5mul_4*
T0
(
action_probsIdentitysub_6*
T0
4
Log_1/xConst*
valueB
 *À¢A*
dtype0

Log_1LogLog_1/x*
T0
4
add_4AddLog_1log_sigma_squared/read*
T0
3
ConstConst*
valueB: *
dtype0
B
Mean_1Meanadd_4Const*
	keep_dims( *

Tidx0*
T0
4
mul_5/xConst*
valueB
 *   ?*
dtype0
&
mul_5Mulmul_5/xMean_1*
T0

/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0
}
-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *n×\¾
}
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *n×\>*
dtype0
Í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
seed2Ð*
seedà!*
T0*!
_class
loc:@dense_1/kernel*
dtype0
¾
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel
È
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel
º
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel

dense_1/kernel
VariableV2*!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:	*
shared_name 
¯
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
}
.dense_1/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_1/bias*
valueB:*
dtype0
r
$dense_1/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_1/bias*
valueB
 *    *
dtype0
¸
dense_1/bias/Initializer/zerosFill.dense_1/bias/Initializer/zeros/shape_as_tensor$dense_1/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_1/bias*

index_type0
}
dense_1/bias
VariableV2*
_class
loc:@dense_1/bias*
dtype0*
	container *
shape:*
shared_name 

dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
w
dense_1/MatMulMatMulmain_graph_1/hidden_1/Muldense_1/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC
4
value_estimateIdentitydense_1/BiasAdd*
T0
K
old_probabilitiesPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
+
IdentityIdentityaction_probs*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
Q
SumSumIdentitySum/reduction_indices*
	keep_dims(*

Tidx0*
T0
2

Identity_1Identityold_probabilities*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
W
Sum_1Sum
Identity_1Sum_1/reduction_indices*
T0*
	keep_dims(*

Tidx0
D
Reshape/shapeConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
H
ReshapeReshapevalue_estimateReshape/shape*
T0*
Tshape0
:
ones_like/ShapeShapeReshape*
T0*
out_type0
<
ones_like/ConstConst*
valueB
 *  ?*
dtype0
N
	ones_likeFillones_like/Shapeones_like/Const*
T0*

index_type0
'
mul_6Mul	ones_likemul_5*
T0
Q
next_vector_observationPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
±
Evector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB"      *
dtype0
¨
Dvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB
 *    *
dtype0
ª
Fvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB
 *ÐdÎ>*
dtype0

Ovector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
dtype0*
seed2ñ*
seedà!
£
Cvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/mulMulOvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalFvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel

?vector_obs_encoder/hidden_0/kernel/Initializer/truncated_normalAddCvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/mulDvector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
®
"vector_obs_encoder/hidden_0/kernel
VariableV2*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
dtype0*
	container *
shape:	*
shared_name 

)vector_obs_encoder/hidden_0/kernel/AssignAssign"vector_obs_encoder/hidden_0/kernel?vector_obs_encoder/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
validate_shape(

'vector_obs_encoder/hidden_0/kernel/readIdentity"vector_obs_encoder/hidden_0/kernel*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
¦
Bvector_obs_encoder/hidden_0/bias/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB:*
dtype0

8vector_obs_encoder/hidden_0/bias/Initializer/zeros/ConstConst*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB
 *    *
dtype0

2vector_obs_encoder/hidden_0/bias/Initializer/zerosFillBvector_obs_encoder/hidden_0/bias/Initializer/zeros/shape_as_tensor8vector_obs_encoder/hidden_0/bias/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*

index_type0
¦
 vector_obs_encoder/hidden_0/bias
VariableV2*
shape:*
shared_name *3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
dtype0*
	container 
î
'vector_obs_encoder/hidden_0/bias/AssignAssign vector_obs_encoder/hidden_0/bias2vector_obs_encoder/hidden_0/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

%vector_obs_encoder/hidden_0/bias/readIdentity vector_obs_encoder/hidden_0/bias*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias

"vector_obs_encoder/hidden_0/MatMulMatMulvector_observation'vector_obs_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 

#vector_obs_encoder/hidden_0/BiasAddBiasAdd"vector_obs_encoder/hidden_0/MatMul%vector_obs_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
\
#vector_obs_encoder/hidden_0/SigmoidSigmoid#vector_obs_encoder/hidden_0/BiasAdd*
T0
y
vector_obs_encoder/hidden_0/MulMul#vector_obs_encoder/hidden_0/BiasAdd#vector_obs_encoder/hidden_0/Sigmoid*
T0
±
Evector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB"      *
dtype0
¨
Dvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB
 *    *
dtype0
ª
Fvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB
 *ÐdÎ=*
dtype0

Ovector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
dtype0*
seed2*
seedà!
£
Cvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/mulMulOvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalFvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
T0

?vector_obs_encoder/hidden_1/kernel/Initializer/truncated_normalAddCvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/mulDvector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¯
"vector_obs_encoder/hidden_1/kernel
VariableV2*
shared_name *5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
dtype0*
	container *
shape:


)vector_obs_encoder/hidden_1/kernel/AssignAssign"vector_obs_encoder/hidden_1/kernel?vector_obs_encoder/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
validate_shape(

'vector_obs_encoder/hidden_1/kernel/readIdentity"vector_obs_encoder/hidden_1/kernel*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
¦
Bvector_obs_encoder/hidden_1/bias/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB:*
dtype0

8vector_obs_encoder/hidden_1/bias/Initializer/zeros/ConstConst*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB
 *    *
dtype0

2vector_obs_encoder/hidden_1/bias/Initializer/zerosFillBvector_obs_encoder/hidden_1/bias/Initializer/zeros/shape_as_tensor8vector_obs_encoder/hidden_1/bias/Initializer/zeros/Const*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*

index_type0*
T0
¦
 vector_obs_encoder/hidden_1/bias
VariableV2*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
dtype0*
	container *
shape:*
shared_name 
î
'vector_obs_encoder/hidden_1/bias/AssignAssign vector_obs_encoder/hidden_1/bias2vector_obs_encoder/hidden_1/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

%vector_obs_encoder/hidden_1/bias/readIdentity vector_obs_encoder/hidden_1/bias*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
¥
"vector_obs_encoder/hidden_1/MatMulMatMulvector_obs_encoder/hidden_0/Mul'vector_obs_encoder/hidden_1/kernel/read*
transpose_a( *
transpose_b( *
T0

#vector_obs_encoder/hidden_1/BiasAddBiasAdd"vector_obs_encoder/hidden_1/MatMul%vector_obs_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
\
#vector_obs_encoder/hidden_1/SigmoidSigmoid#vector_obs_encoder/hidden_1/BiasAdd*
T0
y
vector_obs_encoder/hidden_1/MulMul#vector_obs_encoder/hidden_1/BiasAdd#vector_obs_encoder/hidden_1/Sigmoid*
T0

$vector_obs_encoder_1/hidden_0/MatMulMatMulnext_vector_observation'vector_obs_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b( 

%vector_obs_encoder_1/hidden_0/BiasAddBiasAdd$vector_obs_encoder_1/hidden_0/MatMul%vector_obs_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
`
%vector_obs_encoder_1/hidden_0/SigmoidSigmoid%vector_obs_encoder_1/hidden_0/BiasAdd*
T0

!vector_obs_encoder_1/hidden_0/MulMul%vector_obs_encoder_1/hidden_0/BiasAdd%vector_obs_encoder_1/hidden_0/Sigmoid*
T0
©
$vector_obs_encoder_1/hidden_1/MatMulMatMul!vector_obs_encoder_1/hidden_0/Mul'vector_obs_encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b( 

%vector_obs_encoder_1/hidden_1/BiasAddBiasAdd$vector_obs_encoder_1/hidden_1/MatMul%vector_obs_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
`
%vector_obs_encoder_1/hidden_1/SigmoidSigmoid%vector_obs_encoder_1/hidden_1/BiasAdd*
T0

!vector_obs_encoder_1/hidden_1/MulMul%vector_obs_encoder_1/hidden_1/BiasAdd%vector_obs_encoder_1/hidden_1/Sigmoid*
T0
;
concat/concat_dimConst*
value	B :*
dtype0
<
concatIdentityvector_obs_encoder/hidden_1/Mul*
T0
=
concat_1/concat_dimConst*
value	B :*
dtype0
@
concat_1Identity!vector_obs_encoder_1/hidden_1/Mul*
T0
7
concat_2/axisConst*
value	B :*
dtype0
S
concat_2ConcatV2concatconcat_1concat_2/axis*

Tidx0*
T0*
N

/dense_2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"      *
dtype0
}
-dense_2/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_2/kernel*
valueB
 *×³Ý½*
dtype0
}
-dense_2/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_2/kernel*
valueB
 *×³Ý=*
dtype0
Í
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_2/kernel*
dtype0*
seed2¥*
seedà!
¾
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel
È
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel
º
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel

dense_2/kernel
VariableV2*!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:
*
shared_name 
¯
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(*
T0
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
~
.dense_2/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_2/bias*
valueB:*
dtype0
r
$dense_2/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_2/bias*
valueB
 *    *
dtype0
¸
dense_2/bias/Initializer/zerosFill.dense_2/bias/Initializer/zeros/shape_as_tensor$dense_2/bias/Initializer/zeros/Const*
_class
loc:@dense_2/bias*

index_type0*
T0
~
dense_2/bias
VariableV2*
shared_name *
_class
loc:@dense_2/bias*
dtype0*
	container *
shape:

dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
U
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias
f
dense_2/MatMulMatMulconcat_2dense_2/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC
4
dense_2/SigmoidSigmoiddense_2/BiasAdd*
T0
=
dense_2/MulMuldense_2/BiasAdddense_2/Sigmoid*
T0

/dense_3/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0
}
-dense_3/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_3/kernel*
valueB
 *(¾*
dtype0
}
-dense_3/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_3/kernel*
valueB
 *(>*
dtype0
Í
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_3/kernel*
dtype0*
seed2¹*
seedà!*
T0
¾
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel
È
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel
º
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel

dense_3/kernel
VariableV2*
dtype0*
	container *
shape:	*
shared_name *!
_class
loc:@dense_3/kernel
¯
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(
[
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel
}
.dense_3/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_3/bias*
valueB:*
dtype0
r
$dense_3/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_3/bias*
valueB
 *    *
dtype0
¸
dense_3/bias/Initializer/zerosFill.dense_3/bias/Initializer/zeros/shape_as_tensor$dense_3/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_3/bias*

index_type0
}
dense_3/bias
VariableV2*
shape:*
shared_name *
_class
loc:@dense_3/bias*
dtype0*
	container 

dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
_class
loc:@dense_3/bias*
validate_shape(*
use_locking(*
T0
U
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias
i
dense_3/MatMulMatMuldense_2/Muldense_3/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC
N
SquaredDifferenceSquaredDifferencedense_3/BiasAddStopGradient*
T0
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
^
Sum_2SumSquaredDifferenceSum_2/reduction_indices*
	keep_dims( *

Tidx0*
T0
P
DynamicPartitionDynamicPartitionSum_2Cast*
num_partitions*
T0
5
Const_1Const*
valueB: *
dtype0
Q
Mean_2MeanDynamicPartition:1Const_1*
T0*
	keep_dims( *

Tidx0
7
concat_3/axisConst*
value	B :*
dtype0
W
concat_3ConcatV2concatStopGradientconcat_3/axis*
T0*
N*

Tidx0

/dense_4/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_4/kernel*
valueB"      *
dtype0
}
-dense_4/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_4/kernel*
valueB
 *ÿUÿ½
}
-dense_4/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_4/kernel*
valueB
 *ÿUÿ=*
dtype0
Í
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
seedà!*
T0*!
_class
loc:@dense_4/kernel*
dtype0*
seed2Ó
¾
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel
È
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_4/kernel
º
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel

dense_4/kernel
VariableV2*
	container *
shape:
*
shared_name *!
_class
loc:@dense_4/kernel*
dtype0
¯
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(
[
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel
~
.dense_4/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_4/bias*
valueB:*
dtype0
r
$dense_4/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_4/bias*
valueB
 *    *
dtype0
¸
dense_4/bias/Initializer/zerosFill.dense_4/bias/Initializer/zeros/shape_as_tensor$dense_4/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_4/bias*

index_type0
~
dense_4/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_4/bias

dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_4/bias
U
dense_4/bias/readIdentitydense_4/bias*
T0*
_class
loc:@dense_4/bias
f
dense_4/MatMulMatMulconcat_3dense_4/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*
T0*
data_formatNHWC
4
dense_4/SigmoidSigmoiddense_4/BiasAdd*
T0
=
dense_4/MulMuldense_4/BiasAdddense_4/Sigmoid*
T0

/dense_5/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_5/kernel*
valueB"      *
dtype0
}
-dense_5/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_5/kernel*
valueB
 *   ¾*
dtype0
}
-dense_5/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_5/kernel*
valueB
 *   >*
dtype0
Í
7dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_5/kernel/Initializer/random_uniform/shape*
dtype0*
seed2ç*
seedà!*
T0*!
_class
loc:@dense_5/kernel
¾
-dense_5/kernel/Initializer/random_uniform/subSub-dense_5/kernel/Initializer/random_uniform/max-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel
È
-dense_5/kernel/Initializer/random_uniform/mulMul7dense_5/kernel/Initializer/random_uniform/RandomUniform-dense_5/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_5/kernel
º
)dense_5/kernel/Initializer/random_uniformAdd-dense_5/kernel/Initializer/random_uniform/mul-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel

dense_5/kernel
VariableV2*
shared_name *!
_class
loc:@dense_5/kernel*
dtype0*
	container *
shape:

¯
dense_5/kernel/AssignAssigndense_5/kernel)dense_5/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
use_locking(
[
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel
~
.dense_5/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_5/bias*
valueB:*
dtype0
r
$dense_5/bias/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense_5/bias*
valueB
 *    
¸
dense_5/bias/Initializer/zerosFill.dense_5/bias/Initializer/zeros/shape_as_tensor$dense_5/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_5/bias*

index_type0
~
dense_5/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_5/bias

dense_5/bias/AssignAssigndense_5/biasdense_5/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(
U
dense_5/bias/readIdentitydense_5/bias*
T0*
_class
loc:@dense_5/bias
i
dense_5/MatMulMatMuldense_4/Muldense_5/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*
T0*
data_formatNHWC
L
SquaredDifference_1SquaredDifferencedense_5/BiasAddconcat_1*
T0
A
Sum_3/reduction_indicesConst*
dtype0*
value	B :
`
Sum_3SumSquaredDifference_1Sum_3/reduction_indices*
	keep_dims( *

Tidx0*
T0
4
mul_7/xConst*
valueB
 *   ?*
dtype0
%
mul_7Mulmul_7/xSum_3*
T0
4
mul_8/xConst*
valueB
 *
×#<*
dtype0
%
mul_8Mulmul_8/xmul_7*
T0
F
clip_by_value_1/Minimum/yConst*
valueB
 *  ?*
dtype0
M
clip_by_value_1/MinimumMinimummul_8clip_by_value_1/Minimum/y*
T0
>
clip_by_value_1/yConst*
valueB
 *    *
dtype0
O
clip_by_value_1Maximumclip_by_value_1/Minimumclip_by_value_1/y*
T0
R
DynamicPartition_1DynamicPartitionmul_7Cast*
num_partitions*
T0
5
Const_2Const*
valueB: *
dtype0
S
Mean_3MeanDynamicPartition_1:1Const_2*
T0*
	keep_dims( *

Tidx0
H
discounted_rewardsPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
D

advantagesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
J
PolynomialDecay/learning_rateConst*
valueB
 *RI9*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

SrcT0*

DstT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 * @E*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *ÿæÛ.*
dtype0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
[
PolynomialDecay/MinimumMinimumPolynomialDecay/CastPolynomialDecay/Cast_1/x*
T0
Z
PolynomialDecay/divRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_1/x*
T0
\
PolynomialDecay/subSubPolynomialDecay/learning_ratePolynomialDecay/Cast_2/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
S
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/div*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_3/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
N
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast_2/x*
T0
I
old_value_estimatesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
L
PolynomialDecay_1/learning_rateConst*
dtype0*
valueB
 *ÍÌL>
H
PolynomialDecay_1/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 * @E*
dtype0
G
PolynomialDecay_1/Cast_2/xConst*
valueB
 *ÍÌÌ=*
dtype0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/CastPolynomialDecay_1/Cast_1/x*
T0
`
PolynomialDecay_1/divRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_1/x*
T0
b
PolynomialDecay_1/subSubPolynomialDecay_1/learning_ratePolynomialDecay_1/Cast_2/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/div*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_3/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
T
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast_2/x*
T0
L
PolynomialDecay_2/learning_rateConst*
valueB
 *o:*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 * @E*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/CastPolynomialDecay_2/Cast_1/x*
T0
`
PolynomialDecay_2/divRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_1/x*
T0
b
PolynomialDecay_2/subSubPolynomialDecay_2/learning_ratePolynomialDecay_2/Cast_2/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/div*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_3/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
T
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast_2/x*
T0
A
Sum_4/reduction_indicesConst*
value	B :*
dtype0
[
Sum_4Sumvalue_estimateSum_4/reduction_indices*
T0*
	keep_dims( *

Tidx0
1
sub_7SubSum_4old_value_estimates*
T0
&
NegNegPolynomialDecay_1*
T0
E
clip_by_value_2/MinimumMinimumsub_7PolynomialDecay_1*
T0
A
clip_by_value_2Maximumclip_by_value_2/MinimumNeg*
T0
;
add_5Addold_value_estimatesclip_by_value_2*
T0
A
Sum_5/reduction_indicesConst*
value	B :*
dtype0
[
Sum_5Sumvalue_estimateSum_5/reduction_indices*
T0*
	keep_dims( *

Tidx0
L
SquaredDifference_2SquaredDifferencediscounted_rewardsSum_5*
T0
L
SquaredDifference_3SquaredDifferencediscounted_rewardsadd_5*
T0
E
MaximumMaximumSquaredDifference_2SquaredDifference_3*
T0
T
DynamicPartition_2DynamicPartitionMaximumCast*
T0*
num_partitions
5
Const_3Const*
valueB: *
dtype0
S
Mean_4MeanDynamicPartition_2:1Const_3*
T0*
	keep_dims( *

Tidx0
!
sub_8SubSumSum_1*
T0

Exp_1Expsub_8*
T0
(
mul_9MulExp_1
advantages*
T0
4
sub_9/xConst*
valueB
 *  ?*
dtype0
1
sub_9Subsub_9/xPolynomialDecay_1*
T0
4
add_6/xConst*
valueB
 *  ?*
dtype0
1
add_6Addadd_6/xPolynomialDecay_1*
T0
9
clip_by_value_3/MinimumMinimumExp_1add_6*
T0
C
clip_by_value_3Maximumclip_by_value_3/Minimumsub_9*
T0
3
mul_10Mulclip_by_value_3
advantages*
T0
*
MinimumMinimummul_9mul_10*
T0
T
DynamicPartition_3DynamicPartitionMinimumCast*
num_partitions*
T0
<
Const_4Const*
valueB"       *
dtype0
S
Mean_5MeanDynamicPartition_3:1Const_4*
	keep_dims( *

Tidx0*
T0

Neg_1NegMean_5*
T0
5
mul_11/xConst*
valueB
 *   ?*
dtype0
(
mul_11Mulmul_11/xMean_4*
T0
$
add_7AddNeg_1mul_11*
T0
R
DynamicPartition_4DynamicPartitionmul_6Cast*
T0*
num_partitions
5
Const_5Const*
valueB: *
dtype0
S
Mean_6MeanDynamicPartition_4:1Const_5*
	keep_dims( *

Tidx0*
T0
1
mul_12MulPolynomialDecay_2Mean_6*
T0
%
sub_10Subadd_7mul_12*
T0
5
mul_13/xConst*
valueB
 *ÍÌL>*
dtype0
(
mul_13Mulmul_13/xMean_3*
T0
5
mul_14/xConst*
valueB
 *ÍÌL?*
dtype0
(
mul_14Mulmul_14/xMean_2*
T0
%
add_8Addmul_13mul_14*
T0
5
mul_15/xConst*
valueB
 *   A*
dtype0
'
mul_15Mulmul_15/xadd_8*
T0
%
add_9Addsub_10mul_15*
T0
8
gradients/ShapeConst*
dtype0*
valueB 
@
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
>
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/Fill

-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/add_9_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill

/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/Fill&^gradients/add_9_grad/tuple/group_deps*!
_class
loc:@gradients/Fill*
T0
X
gradients/sub_10_grad/NegNeg-gradients/add_9_grad/tuple/control_dependency*
T0
z
&gradients/sub_10_grad/tuple/group_depsNoOp.^gradients/add_9_grad/tuple/control_dependency^gradients/sub_10_grad/Neg
¾
.gradients/sub_10_grad/tuple/control_dependencyIdentity-gradients/add_9_grad/tuple/control_dependency'^gradients/sub_10_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
·
0gradients/sub_10_grad/tuple/control_dependency_1Identitygradients/sub_10_grad/Neg'^gradients/sub_10_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/sub_10_grad/Neg
a
gradients/mul_15_grad/MulMul/gradients/add_9_grad/tuple/control_dependency_1add_8*
T0
f
gradients/mul_15_grad/Mul_1Mul/gradients/add_9_grad/tuple/control_dependency_1mul_15/x*
T0
h
&gradients/mul_15_grad/tuple/group_depsNoOp^gradients/mul_15_grad/Mul^gradients/mul_15_grad/Mul_1
µ
.gradients/mul_15_grad/tuple/control_dependencyIdentitygradients/mul_15_grad/Mul'^gradients/mul_15_grad/tuple/group_deps*,
_class"
 loc:@gradients/mul_15_grad/Mul*
T0
»
0gradients/mul_15_grad/tuple/control_dependency_1Identitygradients/mul_15_grad/Mul_1'^gradients/mul_15_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/mul_15_grad/Mul_1
^
%gradients/add_7_grad/tuple/group_depsNoOp/^gradients/sub_10_grad/tuple/control_dependency
½
-gradients/add_7_grad/tuple/control_dependencyIdentity.gradients/sub_10_grad/tuple/control_dependency&^gradients/add_7_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
¿
/gradients/add_7_grad/tuple/control_dependency_1Identity.gradients/sub_10_grad/tuple/control_dependency&^gradients/add_7_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
c
gradients/mul_12_grad/MulMul0gradients/sub_10_grad/tuple/control_dependency_1Mean_6*
T0
p
gradients/mul_12_grad/Mul_1Mul0gradients/sub_10_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
h
&gradients/mul_12_grad/tuple/group_depsNoOp^gradients/mul_12_grad/Mul^gradients/mul_12_grad/Mul_1
µ
.gradients/mul_12_grad/tuple/control_dependencyIdentitygradients/mul_12_grad/Mul'^gradients/mul_12_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/mul_12_grad/Mul
»
0gradients/mul_12_grad/tuple/control_dependency_1Identitygradients/mul_12_grad/Mul_1'^gradients/mul_12_grad/tuple/group_deps*.
_class$
" loc:@gradients/mul_12_grad/Mul_1*
T0
`
%gradients/add_8_grad/tuple/group_depsNoOp1^gradients/mul_15_grad/tuple/control_dependency_1
Ì
-gradients/add_8_grad/tuple/control_dependencyIdentity0gradients/mul_15_grad/tuple/control_dependency_1&^gradients/add_8_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/mul_15_grad/Mul_1
Î
/gradients/add_8_grad/tuple/control_dependency_1Identity0gradients/mul_15_grad/tuple/control_dependency_1&^gradients/add_8_grad/tuple/group_deps*.
_class$
" loc:@gradients/mul_15_grad/Mul_1*
T0
W
gradients/Neg_1_grad/NegNeg-gradients/add_7_grad/tuple/control_dependency*
T0
b
gradients/mul_11_grad/MulMul/gradients/add_7_grad/tuple/control_dependency_1Mean_4*
T0
f
gradients/mul_11_grad/Mul_1Mul/gradients/add_7_grad/tuple/control_dependency_1mul_11/x*
T0
h
&gradients/mul_11_grad/tuple/group_depsNoOp^gradients/mul_11_grad/Mul^gradients/mul_11_grad/Mul_1
µ
.gradients/mul_11_grad/tuple/control_dependencyIdentitygradients/mul_11_grad/Mul'^gradients/mul_11_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/mul_11_grad/Mul
»
0gradients/mul_11_grad/tuple/control_dependency_1Identitygradients/mul_11_grad/Mul_1'^gradients/mul_11_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/mul_11_grad/Mul_1
Q
#gradients/Mean_6_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_6_grad/ReshapeReshape0gradients/mul_12_grad/tuple/control_dependency_1#gradients/Mean_6_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_6_grad/ShapeShapeDynamicPartition_4:1*
T0*
out_type0
y
gradients/Mean_6_grad/TileTilegradients/Mean_6_grad/Reshapegradients/Mean_6_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_6_grad/Shape_1ShapeDynamicPartition_4:1*
T0*
out_type0
F
gradients/Mean_6_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_6_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_6_grad/ProdProdgradients/Mean_6_grad/Shape_1gradients/Mean_6_grad/Const*
	keep_dims( *

Tidx0*
T0
K
gradients/Mean_6_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_6_grad/Prod_1Prodgradients/Mean_6_grad/Shape_2gradients/Mean_6_grad/Const_1*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_6_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_6_grad/MaximumMaximumgradients/Mean_6_grad/Prod_1gradients/Mean_6_grad/Maximum/y*
T0
n
gradients/Mean_6_grad/floordivFloorDivgradients/Mean_6_grad/Prodgradients/Mean_6_grad/Maximum*
T0
Z
gradients/Mean_6_grad/CastCastgradients/Mean_6_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_6_grad/truedivRealDivgradients/Mean_6_grad/Tilegradients/Mean_6_grad/Cast*
T0
`
gradients/mul_13_grad/MulMul-gradients/add_8_grad/tuple/control_dependencyMean_3*
T0
d
gradients/mul_13_grad/Mul_1Mul-gradients/add_8_grad/tuple/control_dependencymul_13/x*
T0
h
&gradients/mul_13_grad/tuple/group_depsNoOp^gradients/mul_13_grad/Mul^gradients/mul_13_grad/Mul_1
µ
.gradients/mul_13_grad/tuple/control_dependencyIdentitygradients/mul_13_grad/Mul'^gradients/mul_13_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/mul_13_grad/Mul
»
0gradients/mul_13_grad/tuple/control_dependency_1Identitygradients/mul_13_grad/Mul_1'^gradients/mul_13_grad/tuple/group_deps*.
_class$
" loc:@gradients/mul_13_grad/Mul_1*
T0
b
gradients/mul_14_grad/MulMul/gradients/add_8_grad/tuple/control_dependency_1Mean_2*
T0
f
gradients/mul_14_grad/Mul_1Mul/gradients/add_8_grad/tuple/control_dependency_1mul_14/x*
T0
h
&gradients/mul_14_grad/tuple/group_depsNoOp^gradients/mul_14_grad/Mul^gradients/mul_14_grad/Mul_1
µ
.gradients/mul_14_grad/tuple/control_dependencyIdentitygradients/mul_14_grad/Mul'^gradients/mul_14_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/mul_14_grad/Mul
»
0gradients/mul_14_grad/tuple/control_dependency_1Identitygradients/mul_14_grad/Mul_1'^gradients/mul_14_grad/tuple/group_deps*.
_class$
" loc:@gradients/mul_14_grad/Mul_1*
T0
X
#gradients/Mean_5_grad/Reshape/shapeConst*
valueB"      *
dtype0
~
gradients/Mean_5_grad/ReshapeReshapegradients/Neg_1_grad/Neg#gradients/Mean_5_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_5_grad/ShapeShapeDynamicPartition_3:1*
T0*
out_type0
y
gradients/Mean_5_grad/TileTilegradients/Mean_5_grad/Reshapegradients/Mean_5_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_5_grad/Shape_1ShapeDynamicPartition_3:1*
T0*
out_type0
F
gradients/Mean_5_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_5_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_5_grad/ProdProdgradients/Mean_5_grad/Shape_1gradients/Mean_5_grad/Const*
T0*
	keep_dims( *

Tidx0
K
gradients/Mean_5_grad/Const_1Const*
dtype0*
valueB: 

gradients/Mean_5_grad/Prod_1Prodgradients/Mean_5_grad/Shape_2gradients/Mean_5_grad/Const_1*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_5_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_5_grad/MaximumMaximumgradients/Mean_5_grad/Prod_1gradients/Mean_5_grad/Maximum/y*
T0
n
gradients/Mean_5_grad/floordivFloorDivgradients/Mean_5_grad/Prodgradients/Mean_5_grad/Maximum*
T0
Z
gradients/Mean_5_grad/CastCastgradients/Mean_5_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_5_grad/truedivRealDivgradients/Mean_5_grad/Tilegradients/Mean_5_grad/Cast*
T0
Q
#gradients/Mean_4_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_4_grad/ReshapeReshape0gradients/mul_11_grad/tuple/control_dependency_1#gradients/Mean_4_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_4_grad/ShapeShapeDynamicPartition_2:1*
T0*
out_type0
y
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_4_grad/Shape_1ShapeDynamicPartition_2:1*
T0*
out_type0
F
gradients/Mean_4_grad/Shape_2Const*
dtype0*
valueB 
I
gradients/Mean_4_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_1gradients/Mean_4_grad/Const*
T0*
	keep_dims( *

Tidx0
K
gradients/Mean_4_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const_1*
T0*
	keep_dims( *

Tidx0
I
gradients/Mean_4_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_4_grad/MaximumMaximumgradients/Mean_4_grad/Prod_1gradients/Mean_4_grad/Maximum/y*
T0
n
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum*
T0
Z
gradients/Mean_4_grad/CastCastgradients/Mean_4_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0
>
gradients/zeros_like	ZerosLikeDynamicPartition_4*
T0
O
'gradients/DynamicPartition_4_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_4_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_4_grad/ProdProd'gradients/DynamicPartition_4_grad/Shape'gradients/DynamicPartition_4_grad/Const*
	keep_dims( *

Tidx0*
T0
W
-gradients/DynamicPartition_4_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_4_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients/DynamicPartition_4_grad/rangeRange-gradients/DynamicPartition_4_grad/range/start&gradients/DynamicPartition_4_grad/Prod-gradients/DynamicPartition_4_grad/range/delta*

Tidx0

)gradients/DynamicPartition_4_grad/ReshapeReshape'gradients/DynamicPartition_4_grad/range'gradients/DynamicPartition_4_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_4_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_4_grad/ReshapeCast*
T0*
num_partitions
ñ
/gradients/DynamicPartition_4_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_4_grad/DynamicPartition4gradients/DynamicPartition_4_grad/DynamicPartition:1gradients/zeros_likegradients/Mean_6_grad/truediv*
T0*
N
R
)gradients/DynamicPartition_4_grad/Shape_1Shapemul_6*
T0*
out_type0
©
+gradients/DynamicPartition_4_grad/Reshape_1Reshape/gradients/DynamicPartition_4_grad/DynamicStitch)gradients/DynamicPartition_4_grad/Shape_1*
T0*
Tshape0
Q
#gradients/Mean_3_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_3_grad/ReshapeReshape0gradients/mul_13_grad/tuple/control_dependency_1#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_3_grad/ShapeShapeDynamicPartition_1:1*
T0*
out_type0
y
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_3_grad/Shape_1ShapeDynamicPartition_1:1*
T0*
out_type0
F
gradients/Mean_3_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_3_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
T0*
	keep_dims( *

Tidx0
K
gradients/Mean_3_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
T0
n
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
T0
Z
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
T0
Q
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_2_grad/ReshapeReshape0gradients/mul_14_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
Tshape0*
T0
Q
gradients/Mean_2_grad/ShapeShapeDynamicPartition:1*
T0*
out_type0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*

Tmultiples0*
T0
S
gradients/Mean_2_grad/Shape_1ShapeDynamicPartition:1*
T0*
out_type0
F
gradients/Mean_2_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_2_grad/ConstConst*
dtype0*
valueB: 

gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*
T0*
	keep_dims( *

Tidx0
K
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0
n
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0
Z
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0
@
gradients/zeros_like_1	ZerosLikeDynamicPartition_3*
T0
O
'gradients/DynamicPartition_3_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_3_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_3_grad/ProdProd'gradients/DynamicPartition_3_grad/Shape'gradients/DynamicPartition_3_grad/Const*
	keep_dims( *

Tidx0*
T0
W
-gradients/DynamicPartition_3_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_3_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients/DynamicPartition_3_grad/rangeRange-gradients/DynamicPartition_3_grad/range/start&gradients/DynamicPartition_3_grad/Prod-gradients/DynamicPartition_3_grad/range/delta*

Tidx0

)gradients/DynamicPartition_3_grad/ReshapeReshape'gradients/DynamicPartition_3_grad/range'gradients/DynamicPartition_3_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_3_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_3_grad/ReshapeCast*
T0*
num_partitions
ó
/gradients/DynamicPartition_3_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_3_grad/DynamicPartition4gradients/DynamicPartition_3_grad/DynamicPartition:1gradients/zeros_like_1gradients/Mean_5_grad/truediv*
N*
T0
T
)gradients/DynamicPartition_3_grad/Shape_1ShapeMinimum*
T0*
out_type0
©
+gradients/DynamicPartition_3_grad/Reshape_1Reshape/gradients/DynamicPartition_3_grad/DynamicStitch)gradients/DynamicPartition_3_grad/Shape_1*
T0*
Tshape0
@
gradients/zeros_like_2	ZerosLikeDynamicPartition_2*
T0
O
'gradients/DynamicPartition_2_grad/ShapeShapeCast*
out_type0*
T0
U
'gradients/DynamicPartition_2_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_2_grad/ProdProd'gradients/DynamicPartition_2_grad/Shape'gradients/DynamicPartition_2_grad/Const*
	keep_dims( *

Tidx0*
T0
W
-gradients/DynamicPartition_2_grad/range/startConst*
dtype0*
value	B : 
W
-gradients/DynamicPartition_2_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients/DynamicPartition_2_grad/rangeRange-gradients/DynamicPartition_2_grad/range/start&gradients/DynamicPartition_2_grad/Prod-gradients/DynamicPartition_2_grad/range/delta*

Tidx0

)gradients/DynamicPartition_2_grad/ReshapeReshape'gradients/DynamicPartition_2_grad/range'gradients/DynamicPartition_2_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_2_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_2_grad/ReshapeCast*
T0*
num_partitions
ó
/gradients/DynamicPartition_2_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_2_grad/DynamicPartition4gradients/DynamicPartition_2_grad/DynamicPartition:1gradients/zeros_like_2gradients/Mean_4_grad/truediv*
N*
T0
T
)gradients/DynamicPartition_2_grad/Shape_1ShapeMaximum*
out_type0*
T0
©
+gradients/DynamicPartition_2_grad/Reshape_1Reshape/gradients/DynamicPartition_2_grad/DynamicStitch)gradients/DynamicPartition_2_grad/Shape_1*
T0*
Tshape0
G
gradients/mul_6_grad/ShapeShape	ones_like*
T0*
out_type0
E
gradients/mul_6_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_6_grad/Shapegradients/mul_6_grad/Shape_1*
T0
\
gradients/mul_6_grad/MulMul+gradients/DynamicPartition_4_grad/Reshape_1mul_5*
T0

gradients/mul_6_grad/SumSumgradients/mul_6_grad/Mul*gradients/mul_6_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_6_grad/ReshapeReshapegradients/mul_6_grad/Sumgradients/mul_6_grad/Shape*
T0*
Tshape0
b
gradients/mul_6_grad/Mul_1Mul	ones_like+gradients/DynamicPartition_4_grad/Reshape_1*
T0

gradients/mul_6_grad/Sum_1Sumgradients/mul_6_grad/Mul_1,gradients/mul_6_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_6_grad/Reshape_1Reshapegradients/mul_6_grad/Sum_1gradients/mul_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Reshape^gradients/mul_6_grad/Reshape_1
¹
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Reshape&^gradients/mul_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_6_grad/Reshape
¿
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Reshape_1&^gradients/mul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_6_grad/Reshape_1
@
gradients/zeros_like_3	ZerosLikeDynamicPartition_1*
T0
O
'gradients/DynamicPartition_1_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_1_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_1_grad/ProdProd'gradients/DynamicPartition_1_grad/Shape'gradients/DynamicPartition_1_grad/Const*
	keep_dims( *

Tidx0*
T0
W
-gradients/DynamicPartition_1_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_1_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients/DynamicPartition_1_grad/rangeRange-gradients/DynamicPartition_1_grad/range/start&gradients/DynamicPartition_1_grad/Prod-gradients/DynamicPartition_1_grad/range/delta*

Tidx0

)gradients/DynamicPartition_1_grad/ReshapeReshape'gradients/DynamicPartition_1_grad/range'gradients/DynamicPartition_1_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_1_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_1_grad/ReshapeCast*
num_partitions*
T0
ó
/gradients/DynamicPartition_1_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_1_grad/DynamicPartition4gradients/DynamicPartition_1_grad/DynamicPartition:1gradients/zeros_like_3gradients/Mean_3_grad/truediv*
N*
T0
R
)gradients/DynamicPartition_1_grad/Shape_1Shapemul_7*
T0*
out_type0
©
+gradients/DynamicPartition_1_grad/Reshape_1Reshape/gradients/DynamicPartition_1_grad/DynamicStitch)gradients/DynamicPartition_1_grad/Shape_1*
T0*
Tshape0
>
gradients/zeros_like_4	ZerosLikeDynamicPartition*
T0
M
%gradients/DynamicPartition_grad/ShapeShapeCast*
T0*
out_type0
S
%gradients/DynamicPartition_grad/ConstConst*
valueB: *
dtype0
 
$gradients/DynamicPartition_grad/ProdProd%gradients/DynamicPartition_grad/Shape%gradients/DynamicPartition_grad/Const*
T0*
	keep_dims( *

Tidx0
U
+gradients/DynamicPartition_grad/range/startConst*
value	B : *
dtype0
U
+gradients/DynamicPartition_grad/range/deltaConst*
dtype0*
value	B :
º
%gradients/DynamicPartition_grad/rangeRange+gradients/DynamicPartition_grad/range/start$gradients/DynamicPartition_grad/Prod+gradients/DynamicPartition_grad/range/delta*

Tidx0

'gradients/DynamicPartition_grad/ReshapeReshape%gradients/DynamicPartition_grad/range%gradients/DynamicPartition_grad/Shape*
T0*
Tshape0

0gradients/DynamicPartition_grad/DynamicPartitionDynamicPartition'gradients/DynamicPartition_grad/ReshapeCast*
num_partitions*
T0
í
-gradients/DynamicPartition_grad/DynamicStitchDynamicStitch0gradients/DynamicPartition_grad/DynamicPartition2gradients/DynamicPartition_grad/DynamicPartition:1gradients/zeros_like_4gradients/Mean_2_grad/truediv*
T0*
N
P
'gradients/DynamicPartition_grad/Shape_1ShapeSum_2*
T0*
out_type0
£
)gradients/DynamicPartition_grad/Reshape_1Reshape-gradients/DynamicPartition_grad/DynamicStitch'gradients/DynamicPartition_grad/Shape_1*
T0*
Tshape0
E
gradients/Minimum_grad/ShapeShapemul_9*
T0*
out_type0
H
gradients/Minimum_grad/Shape_1Shapemul_10*
T0*
out_type0
m
gradients/Minimum_grad/Shape_2Shape+gradients/DynamicPartition_3_grad/Reshape_1*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*

index_type0*
T0
E
 gradients/Minimum_grad/LessEqual	LessEqualmul_9mul_10*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual+gradients/DynamicPartition_3_grad/Reshape_1gradients/Minimum_grad/zeros*
T0

gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros+gradients/DynamicPartition_3_grad/Reshape_1*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Á
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
Ç
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
S
gradients/Maximum_grad/ShapeShapeSquaredDifference_2*
T0*
out_type0
U
gradients/Maximum_grad/Shape_1ShapeSquaredDifference_3*
T0*
out_type0
m
gradients/Maximum_grad/Shape_2Shape+gradients/DynamicPartition_2_grad/Reshape_1*
out_type0*
T0
O
"gradients/Maximum_grad/zeros/ConstConst*
dtype0*
valueB
 *    

gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
T0*

index_type0
f
#gradients/Maximum_grad/GreaterEqualGreaterEqualSquaredDifference_2SquaredDifference_3*
T0

,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
T0
 
gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqual+gradients/DynamicPartition_2_grad/Reshape_1gradients/Maximum_grad/zeros*
T0
¢
gradients/Maximum_grad/Select_1Select#gradients/Maximum_grad/GreaterEqualgradients/Maximum_grad/zeros+gradients/DynamicPartition_2_grad/Reshape_1*
T0

gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
z
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
T0*
Tshape0

gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Maximum_grad/tuple/group_depsNoOp^gradients/Maximum_grad/Reshape!^gradients/Maximum_grad/Reshape_1
Á
/gradients/Maximum_grad/tuple/control_dependencyIdentitygradients/Maximum_grad/Reshape(^gradients/Maximum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Maximum_grad/Reshape
Ç
1gradients/Maximum_grad/tuple/control_dependency_1Identity gradients/Maximum_grad/Reshape_1(^gradients/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Maximum_grad/Reshape_1
L
gradients/ones_like_grad/ConstConst*
valueB: *
dtype0

gradients/ones_like_grad/SumSum-gradients/mul_6_grad/tuple/control_dependencygradients/ones_like_grad/Const*
	keep_dims( *

Tidx0*
T0
a
gradients/mul_5_grad/MulMul/gradients/mul_6_grad/tuple/control_dependency_1Mean_1*
T0
d
gradients/mul_5_grad/Mul_1Mul/gradients/mul_6_grad/tuple/control_dependency_1mul_5/x*
T0
e
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Mul^gradients/mul_5_grad/Mul_1
±
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Mul&^gradients/mul_5_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_5_grad/Mul
·
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Mul_1&^gradients/mul_5_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_5_grad/Mul_1
C
gradients/mul_7_grad/ShapeConst*
valueB *
dtype0
E
gradients/mul_7_grad/Shape_1ShapeSum_3*
T0*
out_type0

*gradients/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_7_grad/Shapegradients/mul_7_grad/Shape_1*
T0
\
gradients/mul_7_grad/MulMul+gradients/DynamicPartition_1_grad/Reshape_1Sum_3*
T0

gradients/mul_7_grad/SumSumgradients/mul_7_grad/Mul*gradients/mul_7_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_7_grad/ReshapeReshapegradients/mul_7_grad/Sumgradients/mul_7_grad/Shape*
T0*
Tshape0
`
gradients/mul_7_grad/Mul_1Mulmul_7/x+gradients/DynamicPartition_1_grad/Reshape_1*
T0

gradients/mul_7_grad/Sum_1Sumgradients/mul_7_grad/Mul_1,gradients/mul_7_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_7_grad/Reshape_1Reshapegradients/mul_7_grad/Sum_1gradients/mul_7_grad/Shape_1*
Tshape0*
T0
m
%gradients/mul_7_grad/tuple/group_depsNoOp^gradients/mul_7_grad/Reshape^gradients/mul_7_grad/Reshape_1
¹
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Reshape&^gradients/mul_7_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_7_grad/Reshape*
T0
¿
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Reshape_1&^gradients/mul_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_7_grad/Reshape_1
O
gradients/Sum_2_grad/ShapeShapeSquaredDifference*
T0*
out_type0
r
gradients/Sum_2_grad/SizeConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0

gradients/Sum_2_grad/addAddSum_2/reduction_indicesgradients/Sum_2_grad/Size*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
T0

gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
t
gradients/Sum_2_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_2_grad/range/startConst*
dtype0*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B : 
y
 gradients/Sum_2_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0
½
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
x
gradients/Sum_2_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0
ª
gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape*

index_type0
á
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
N
w
gradients/Sum_2_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/ReshapeReshape)gradients/DynamicPartition_grad/Reshape_1"gradients/Sum_2_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*

Tmultiples0*
T0
C
gradients/mul_9_grad/ShapeShapeExp_1*
T0*
out_type0
J
gradients/mul_9_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_9_grad/Shapegradients/mul_9_grad/Shape_1*
T0
e
gradients/mul_9_grad/MulMul/gradients/Minimum_grad/tuple/control_dependency
advantages*
T0

gradients/mul_9_grad/SumSumgradients/mul_9_grad/Mul*gradients/mul_9_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_9_grad/ReshapeReshapegradients/mul_9_grad/Sumgradients/mul_9_grad/Shape*
T0*
Tshape0
b
gradients/mul_9_grad/Mul_1MulExp_1/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_9_grad/Sum_1Sumgradients/mul_9_grad/Mul_1,gradients/mul_9_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_9_grad/Reshape_1Reshapegradients/mul_9_grad/Sum_1gradients/mul_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_9_grad/tuple/group_depsNoOp^gradients/mul_9_grad/Reshape^gradients/mul_9_grad/Reshape_1
¹
-gradients/mul_9_grad/tuple/control_dependencyIdentitygradients/mul_9_grad/Reshape&^gradients/mul_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_9_grad/Reshape
¿
/gradients/mul_9_grad/tuple/control_dependency_1Identitygradients/mul_9_grad/Reshape_1&^gradients/mul_9_grad/tuple/group_deps*1
_class'
%#loc:@gradients/mul_9_grad/Reshape_1*
T0
N
gradients/mul_10_grad/ShapeShapeclip_by_value_3*
T0*
out_type0
K
gradients/mul_10_grad/Shape_1Shape
advantages*
T0*
out_type0

+gradients/mul_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_10_grad/Shapegradients/mul_10_grad/Shape_1*
T0
h
gradients/mul_10_grad/MulMul1gradients/Minimum_grad/tuple/control_dependency_1
advantages*
T0

gradients/mul_10_grad/SumSumgradients/mul_10_grad/Mul+gradients/mul_10_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
w
gradients/mul_10_grad/ReshapeReshapegradients/mul_10_grad/Sumgradients/mul_10_grad/Shape*
T0*
Tshape0
o
gradients/mul_10_grad/Mul_1Mulclip_by_value_31gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_10_grad/Sum_1Sumgradients/mul_10_grad/Mul_1-gradients/mul_10_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
}
gradients/mul_10_grad/Reshape_1Reshapegradients/mul_10_grad/Sum_1gradients/mul_10_grad/Shape_1*
T0*
Tshape0
p
&gradients/mul_10_grad/tuple/group_depsNoOp^gradients/mul_10_grad/Reshape ^gradients/mul_10_grad/Reshape_1
½
.gradients/mul_10_grad/tuple/control_dependencyIdentitygradients/mul_10_grad/Reshape'^gradients/mul_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_10_grad/Reshape
Ã
0gradients/mul_10_grad/tuple/control_dependency_1Identitygradients/mul_10_grad/Reshape_1'^gradients/mul_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/mul_10_grad/Reshape_1
^
(gradients/SquaredDifference_2_grad/ShapeShapediscounted_rewards*
T0*
out_type0
S
*gradients/SquaredDifference_2_grad/Shape_1ShapeSum_5*
T0*
out_type0
°
8gradients/SquaredDifference_2_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_2_grad/Shape*gradients/SquaredDifference_2_grad/Shape_1*
T0

)gradients/SquaredDifference_2_grad/scalarConst0^gradients/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0

&gradients/SquaredDifference_2_grad/mulMul)gradients/SquaredDifference_2_grad/scalar/gradients/Maximum_grad/tuple/control_dependency*
T0

&gradients/SquaredDifference_2_grad/subSubdiscounted_rewardsSum_50^gradients/Maximum_grad/tuple/control_dependency*
T0

(gradients/SquaredDifference_2_grad/mul_1Mul&gradients/SquaredDifference_2_grad/mul&gradients/SquaredDifference_2_grad/sub*
T0
·
&gradients/SquaredDifference_2_grad/SumSum(gradients/SquaredDifference_2_grad/mul_18gradients/SquaredDifference_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

*gradients/SquaredDifference_2_grad/ReshapeReshape&gradients/SquaredDifference_2_grad/Sum(gradients/SquaredDifference_2_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_2_grad/Sum_1Sum(gradients/SquaredDifference_2_grad/mul_1:gradients/SquaredDifference_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
¤
,gradients/SquaredDifference_2_grad/Reshape_1Reshape(gradients/SquaredDifference_2_grad/Sum_1*gradients/SquaredDifference_2_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_2_grad/NegNeg,gradients/SquaredDifference_2_grad/Reshape_1*
T0

3gradients/SquaredDifference_2_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_2_grad/Reshape'^gradients/SquaredDifference_2_grad/Neg
ñ
;gradients/SquaredDifference_2_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_2_grad/Reshape4^gradients/SquaredDifference_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_2_grad/Reshape
ë
=gradients/SquaredDifference_2_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_2_grad/Neg4^gradients/SquaredDifference_2_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_2_grad/Neg
^
(gradients/SquaredDifference_3_grad/ShapeShapediscounted_rewards*
T0*
out_type0
S
*gradients/SquaredDifference_3_grad/Shape_1Shapeadd_5*
T0*
out_type0
°
8gradients/SquaredDifference_3_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_3_grad/Shape*gradients/SquaredDifference_3_grad/Shape_1*
T0

)gradients/SquaredDifference_3_grad/scalarConst2^gradients/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0

&gradients/SquaredDifference_3_grad/mulMul)gradients/SquaredDifference_3_grad/scalar1gradients/Maximum_grad/tuple/control_dependency_1*
T0

&gradients/SquaredDifference_3_grad/subSubdiscounted_rewardsadd_52^gradients/Maximum_grad/tuple/control_dependency_1*
T0

(gradients/SquaredDifference_3_grad/mul_1Mul&gradients/SquaredDifference_3_grad/mul&gradients/SquaredDifference_3_grad/sub*
T0
·
&gradients/SquaredDifference_3_grad/SumSum(gradients/SquaredDifference_3_grad/mul_18gradients/SquaredDifference_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

*gradients/SquaredDifference_3_grad/ReshapeReshape&gradients/SquaredDifference_3_grad/Sum(gradients/SquaredDifference_3_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_3_grad/Sum_1Sum(gradients/SquaredDifference_3_grad/mul_1:gradients/SquaredDifference_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
¤
,gradients/SquaredDifference_3_grad/Reshape_1Reshape(gradients/SquaredDifference_3_grad/Sum_1*gradients/SquaredDifference_3_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_3_grad/NegNeg,gradients/SquaredDifference_3_grad/Reshape_1*
T0

3gradients/SquaredDifference_3_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_3_grad/Reshape'^gradients/SquaredDifference_3_grad/Neg
ñ
;gradients/SquaredDifference_3_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_3_grad/Reshape4^gradients/SquaredDifference_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_3_grad/Reshape
ë
=gradients/SquaredDifference_3_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_3_grad/Neg4^gradients/SquaredDifference_3_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_3_grad/Neg
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
dtype0*
valueB:

gradients/Mean_1_grad/ReshapeReshape/gradients/mul_5_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
I
gradients/Mean_1_grad/ConstConst*
valueB:*
dtype0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Const*

Tmultiples0*
T0
J
gradients/Mean_1_grad/Const_1Const*
valueB
 *   @*
dtype0
l
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Const_1*
T0
Q
gradients/Sum_3_grad/ShapeShapeSquaredDifference_1*
T0*
out_type0
r
gradients/Sum_3_grad/SizeConst*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
value	B :*
dtype0

gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
t
gradients/Sum_3_grad/Shape_1Const*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
valueB 
y
 gradients/Sum_3_grad/range/startConst*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_3_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
value	B :*
dtype0
½
gradients/Sum_3_grad/rangeRange gradients/Sum_3_grad/range/startgradients/Sum_3_grad/Size gradients/Sum_3_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
x
gradients/Sum_3_grad/Fill/valueConst*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
value	B :
ª
gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*

index_type0
á
"gradients/Sum_3_grad/DynamicStitchDynamicStitchgradients/Sum_3_grad/rangegradients/Sum_3_grad/modgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
N
w
gradients/Sum_3_grad/Maximum/yConst*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
value	B :
£
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/ReshapeReshape/gradients/mul_7_grad/tuple/control_dependency_1"gradients/Sum_3_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*

Tmultiples0*
T0
Y
&gradients/SquaredDifference_grad/ShapeShapedense_3/BiasAdd*
T0*
out_type0
X
(gradients/SquaredDifference_grad/Shape_1ShapeStopGradient*
T0*
out_type0
ª
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
p
'gradients/SquaredDifference_grad/scalarConst^gradients/Sum_2_grad/Tile*
valueB
 *   @*
dtype0
x
$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/Sum_2_grad/Tile*
T0
o
$gradients/SquaredDifference_grad/subSubdense_3/BiasAddStopGradient^gradients/Sum_2_grad/Tile*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ã
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
_
$gradients/clip_by_value_3_grad/ShapeShapeclip_by_value_3/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_3_grad/Shape_1Const*
valueB *
dtype0
x
&gradients/clip_by_value_3_grad/Shape_2Shape.gradients/mul_10_grad/tuple/control_dependency*
T0*
out_type0
W
*gradients/clip_by_value_3_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients/clip_by_value_3_grad/zerosFill&gradients/clip_by_value_3_grad/Shape_2*gradients/clip_by_value_3_grad/zeros/Const*
T0*

index_type0
d
+gradients/clip_by_value_3_grad/GreaterEqualGreaterEqualclip_by_value_3/Minimumsub_9*
T0
¤
4gradients/clip_by_value_3_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_3_grad/Shape&gradients/clip_by_value_3_grad/Shape_1*
T0
»
%gradients/clip_by_value_3_grad/SelectSelect+gradients/clip_by_value_3_grad/GreaterEqual.gradients/mul_10_grad/tuple/control_dependency$gradients/clip_by_value_3_grad/zeros*
T0
½
'gradients/clip_by_value_3_grad/Select_1Select+gradients/clip_by_value_3_grad/GreaterEqual$gradients/clip_by_value_3_grad/zeros.gradients/mul_10_grad/tuple/control_dependency*
T0
¬
"gradients/clip_by_value_3_grad/SumSum%gradients/clip_by_value_3_grad/Select4gradients/clip_by_value_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

&gradients/clip_by_value_3_grad/ReshapeReshape"gradients/clip_by_value_3_grad/Sum$gradients/clip_by_value_3_grad/Shape*
Tshape0*
T0
²
$gradients/clip_by_value_3_grad/Sum_1Sum'gradients/clip_by_value_3_grad/Select_16gradients/clip_by_value_3_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

(gradients/clip_by_value_3_grad/Reshape_1Reshape$gradients/clip_by_value_3_grad/Sum_1&gradients/clip_by_value_3_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_3_grad/tuple/group_depsNoOp'^gradients/clip_by_value_3_grad/Reshape)^gradients/clip_by_value_3_grad/Reshape_1
á
7gradients/clip_by_value_3_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_3_grad/Reshape0^gradients/clip_by_value_3_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_3_grad/Reshape
ç
9gradients/clip_by_value_3_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_3_grad/Reshape_10^gradients/clip_by_value_3_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_3_grad/Reshape_1
L
gradients/Sum_5_grad/ShapeShapevalue_estimate*
T0*
out_type0
r
gradients/Sum_5_grad/SizeConst*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
value	B :*
dtype0

gradients/Sum_5_grad/addAddSum_5/reduction_indicesgradients/Sum_5_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape

gradients/Sum_5_grad/modFloorModgradients/Sum_5_grad/addgradients/Sum_5_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
t
gradients/Sum_5_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_5_grad/range/startConst*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_5_grad/range/deltaConst*
dtype0*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
value	B :
½
gradients/Sum_5_grad/rangeRange gradients/Sum_5_grad/range/startgradients/Sum_5_grad/Size gradients/Sum_5_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
x
gradients/Sum_5_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
value	B :*
dtype0
ª
gradients/Sum_5_grad/FillFillgradients/Sum_5_grad/Shape_1gradients/Sum_5_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape*

index_type0
á
"gradients/Sum_5_grad/DynamicStitchDynamicStitchgradients/Sum_5_grad/rangegradients/Sum_5_grad/modgradients/Sum_5_grad/Shapegradients/Sum_5_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
N
w
gradients/Sum_5_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_5_grad/MaximumMaximum"gradients/Sum_5_grad/DynamicStitchgradients/Sum_5_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape

gradients/Sum_5_grad/floordivFloorDivgradients/Sum_5_grad/Shapegradients/Sum_5_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
¡
gradients/Sum_5_grad/ReshapeReshape=gradients/SquaredDifference_2_grad/tuple/control_dependency_1"gradients/Sum_5_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_5_grad/TileTilegradients/Sum_5_grad/Reshapegradients/Sum_5_grad/floordiv*
T0*

Tmultiples0
Q
gradients/add_5_grad/ShapeShapeold_value_estimates*
T0*
out_type0
O
gradients/add_5_grad/Shape_1Shapeclip_by_value_2*
T0*
out_type0

*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0
°
gradients/add_5_grad/SumSum=gradients/SquaredDifference_3_grad/tuple/control_dependency_1*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
Tshape0
´
gradients/add_5_grad/Sum_1Sum=gradients/SquaredDifference_3_grad/tuple/control_dependency_1,gradients/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
¹
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_5_grad/Reshape
¿
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
C
gradients/add_4_grad/ShapeConst*
dtype0*
valueB 
J
gradients/add_4_grad/Shape_1Const*
dtype0*
valueB:

*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0

gradients/add_4_grad/SumSumgradients/Mean_1_grad/truediv*gradients/add_4_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0

gradients/add_4_grad/Sum_1Sumgradients/Mean_1_grad/truediv,gradients/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
¹
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape
¿
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
[
(gradients/SquaredDifference_1_grad/ShapeShapedense_5/BiasAdd*
T0*
out_type0
V
*gradients/SquaredDifference_1_grad/Shape_1Shapeconcat_1*
T0*
out_type0
°
8gradients/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_1_grad/Shape*gradients/SquaredDifference_1_grad/Shape_1*
T0
r
)gradients/SquaredDifference_1_grad/scalarConst^gradients/Sum_3_grad/Tile*
valueB
 *   @*
dtype0
|
&gradients/SquaredDifference_1_grad/mulMul)gradients/SquaredDifference_1_grad/scalargradients/Sum_3_grad/Tile*
T0
m
&gradients/SquaredDifference_1_grad/subSubdense_5/BiasAddconcat_1^gradients/Sum_3_grad/Tile*
T0

(gradients/SquaredDifference_1_grad/mul_1Mul&gradients/SquaredDifference_1_grad/mul&gradients/SquaredDifference_1_grad/sub*
T0
·
&gradients/SquaredDifference_1_grad/SumSum(gradients/SquaredDifference_1_grad/mul_18gradients/SquaredDifference_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

*gradients/SquaredDifference_1_grad/ReshapeReshape&gradients/SquaredDifference_1_grad/Sum(gradients/SquaredDifference_1_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_1_grad/Sum_1Sum(gradients/SquaredDifference_1_grad/mul_1:gradients/SquaredDifference_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
¤
,gradients/SquaredDifference_1_grad/Reshape_1Reshape(gradients/SquaredDifference_1_grad/Sum_1*gradients/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_1_grad/NegNeg,gradients/SquaredDifference_1_grad/Reshape_1*
T0

3gradients/SquaredDifference_1_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_1_grad/Reshape'^gradients/SquaredDifference_1_grad/Neg
ñ
;gradients/SquaredDifference_1_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_1_grad/Reshape4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_1_grad/Reshape
ë
=gradients/SquaredDifference_1_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_1_grad/Neg4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_1_grad/Neg

*gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad9gradients/SquaredDifference_grad/tuple/control_dependency*
data_formatNHWC*
T0
 
/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp:^gradients/SquaredDifference_grad/tuple/control_dependency+^gradients/dense_3/BiasAdd_grad/BiasAddGrad
ö
7gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity9gradients/SquaredDifference_grad/tuple/control_dependency0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ë
9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_3/BiasAdd_grad/BiasAddGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_3/BiasAdd_grad/BiasAddGrad
U
,gradients/clip_by_value_3/Minimum_grad/ShapeShapeExp_1*
out_type0*
T0
W
.gradients/clip_by_value_3/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients/clip_by_value_3/Minimum_grad/Shape_2Shape7gradients/clip_by_value_3_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_3/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_3/Minimum_grad/zerosFill.gradients/clip_by_value_3/Minimum_grad/Shape_22gradients/clip_by_value_3/Minimum_grad/zeros/Const*
T0*

index_type0
T
0gradients/clip_by_value_3/Minimum_grad/LessEqual	LessEqualExp_1add_6*
T0
¼
<gradients/clip_by_value_3/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_3/Minimum_grad/Shape.gradients/clip_by_value_3/Minimum_grad/Shape_1*
T0
Ù
-gradients/clip_by_value_3/Minimum_grad/SelectSelect0gradients/clip_by_value_3/Minimum_grad/LessEqual7gradients/clip_by_value_3_grad/tuple/control_dependency,gradients/clip_by_value_3/Minimum_grad/zeros*
T0
Û
/gradients/clip_by_value_3/Minimum_grad/Select_1Select0gradients/clip_by_value_3/Minimum_grad/LessEqual,gradients/clip_by_value_3/Minimum_grad/zeros7gradients/clip_by_value_3_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_3/Minimum_grad/SumSum-gradients/clip_by_value_3/Minimum_grad/Select<gradients/clip_by_value_3/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
ª
.gradients/clip_by_value_3/Minimum_grad/ReshapeReshape*gradients/clip_by_value_3/Minimum_grad/Sum,gradients/clip_by_value_3/Minimum_grad/Shape*
T0*
Tshape0
Ê
,gradients/clip_by_value_3/Minimum_grad/Sum_1Sum/gradients/clip_by_value_3/Minimum_grad/Select_1>gradients/clip_by_value_3/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
°
0gradients/clip_by_value_3/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_3/Minimum_grad/Sum_1.gradients/clip_by_value_3/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_3/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_3/Minimum_grad/Reshape1^gradients/clip_by_value_3/Minimum_grad/Reshape_1

?gradients/clip_by_value_3/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_3/Minimum_grad/Reshape8^gradients/clip_by_value_3/Minimum_grad/tuple/group_deps*A
_class7
53loc:@gradients/clip_by_value_3/Minimum_grad/Reshape*
T0

Agradients/clip_by_value_3/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_3/Minimum_grad/Reshape_18^gradients/clip_by_value_3/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_3/Minimum_grad/Reshape_1
_
$gradients/clip_by_value_2_grad/ShapeShapeclip_by_value_2/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_2_grad/Shape_1Const*
valueB *
dtype0
y
&gradients/clip_by_value_2_grad/Shape_2Shape/gradients/add_5_grad/tuple/control_dependency_1*
T0*
out_type0
W
*gradients/clip_by_value_2_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients/clip_by_value_2_grad/zerosFill&gradients/clip_by_value_2_grad/Shape_2*gradients/clip_by_value_2_grad/zeros/Const*

index_type0*
T0
b
+gradients/clip_by_value_2_grad/GreaterEqualGreaterEqualclip_by_value_2/MinimumNeg*
T0
¤
4gradients/clip_by_value_2_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_2_grad/Shape&gradients/clip_by_value_2_grad/Shape_1*
T0
¼
%gradients/clip_by_value_2_grad/SelectSelect+gradients/clip_by_value_2_grad/GreaterEqual/gradients/add_5_grad/tuple/control_dependency_1$gradients/clip_by_value_2_grad/zeros*
T0
¾
'gradients/clip_by_value_2_grad/Select_1Select+gradients/clip_by_value_2_grad/GreaterEqual$gradients/clip_by_value_2_grad/zeros/gradients/add_5_grad/tuple/control_dependency_1*
T0
¬
"gradients/clip_by_value_2_grad/SumSum%gradients/clip_by_value_2_grad/Select4gradients/clip_by_value_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

&gradients/clip_by_value_2_grad/ReshapeReshape"gradients/clip_by_value_2_grad/Sum$gradients/clip_by_value_2_grad/Shape*
Tshape0*
T0
²
$gradients/clip_by_value_2_grad/Sum_1Sum'gradients/clip_by_value_2_grad/Select_16gradients/clip_by_value_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

(gradients/clip_by_value_2_grad/Reshape_1Reshape$gradients/clip_by_value_2_grad/Sum_1&gradients/clip_by_value_2_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_2_grad/tuple/group_depsNoOp'^gradients/clip_by_value_2_grad/Reshape)^gradients/clip_by_value_2_grad/Reshape_1
á
7gradients/clip_by_value_2_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_2_grad/Reshape0^gradients/clip_by_value_2_grad/tuple/group_deps*9
_class/
-+loc:@gradients/clip_by_value_2_grad/Reshape*
T0
ç
9gradients/clip_by_value_2_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_2_grad/Reshape_10^gradients/clip_by_value_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_2_grad/Reshape_1

*gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad;gradients/SquaredDifference_1_grad/tuple/control_dependency*
T0*
data_formatNHWC
¢
/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp<^gradients/SquaredDifference_1_grad/tuple/control_dependency+^gradients/dense_5/BiasAdd_grad/BiasAddGrad
ú
7gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentity;gradients/SquaredDifference_1_grad/tuple/control_dependency0^gradients/dense_5/BiasAdd_grad/tuple/group_deps*=
_class3
1/loc:@gradients/SquaredDifference_1_grad/Reshape*
T0
ë
9gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_5/BiasAdd_grad/BiasAddGrad0^gradients/dense_5/BiasAdd_grad/tuple/group_deps*=
_class3
1/loc:@gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0
«
$gradients/dense_3/MatMul_grad/MatMulMatMul7gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
T0*
transpose_a( *
transpose_b(
¥
&gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/Mul7gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Û
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul
á
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1
É
gradients/AddNAddN-gradients/mul_9_grad/tuple/control_dependency?gradients/clip_by_value_3/Minimum_grad/tuple/control_dependency*
T0*/
_class%
#!loc:@gradients/mul_9_grad/Reshape*
N
?
gradients/Exp_1_grad/mulMulgradients/AddNExp_1*
T0
U
,gradients/clip_by_value_2/Minimum_grad/ShapeShapesub_7*
out_type0*
T0
W
.gradients/clip_by_value_2/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients/clip_by_value_2/Minimum_grad/Shape_2Shape7gradients/clip_by_value_2_grad/tuple/control_dependency*
out_type0*
T0
_
2gradients/clip_by_value_2/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_2/Minimum_grad/zerosFill.gradients/clip_by_value_2/Minimum_grad/Shape_22gradients/clip_by_value_2/Minimum_grad/zeros/Const*
T0*

index_type0
`
0gradients/clip_by_value_2/Minimum_grad/LessEqual	LessEqualsub_7PolynomialDecay_1*
T0
¼
<gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_2/Minimum_grad/Shape.gradients/clip_by_value_2/Minimum_grad/Shape_1*
T0
Ù
-gradients/clip_by_value_2/Minimum_grad/SelectSelect0gradients/clip_by_value_2/Minimum_grad/LessEqual7gradients/clip_by_value_2_grad/tuple/control_dependency,gradients/clip_by_value_2/Minimum_grad/zeros*
T0
Û
/gradients/clip_by_value_2/Minimum_grad/Select_1Select0gradients/clip_by_value_2/Minimum_grad/LessEqual,gradients/clip_by_value_2/Minimum_grad/zeros7gradients/clip_by_value_2_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_2/Minimum_grad/SumSum-gradients/clip_by_value_2/Minimum_grad/Select<gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
ª
.gradients/clip_by_value_2/Minimum_grad/ReshapeReshape*gradients/clip_by_value_2/Minimum_grad/Sum,gradients/clip_by_value_2/Minimum_grad/Shape*
T0*
Tshape0
Ê
,gradients/clip_by_value_2/Minimum_grad/Sum_1Sum/gradients/clip_by_value_2/Minimum_grad/Select_1>gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
°
0gradients/clip_by_value_2/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_2/Minimum_grad/Sum_1.gradients/clip_by_value_2/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_2/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_2/Minimum_grad/Reshape1^gradients/clip_by_value_2/Minimum_grad/Reshape_1

?gradients/clip_by_value_2/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_2/Minimum_grad/Reshape8^gradients/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_2/Minimum_grad/Reshape

Agradients/clip_by_value_2/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_2/Minimum_grad/Reshape_18^gradients/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_2/Minimum_grad/Reshape_1
«
$gradients/dense_5/MatMul_grad/MatMulMatMul7gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_5/kernel/read*
transpose_a( *
transpose_b(*
T0
¥
&gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_4/Mul7gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_5/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_5/MatMul_grad/MatMul'^gradients/dense_5/MatMul_grad/MatMul_1
Û
6gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_5/MatMul_grad/MatMul/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_5/MatMul_grad/MatMul
á
8gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_5/MatMul_grad/MatMul_1/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_5/MatMul_grad/MatMul_1
S
 gradients/dense_2/Mul_grad/ShapeShapedense_2/BiasAdd*
T0*
out_type0
U
"gradients/dense_2/Mul_grad/Shape_1Shapedense_2/Sigmoid*
T0*
out_type0

0gradients/dense_2/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dense_2/Mul_grad/Shape"gradients/dense_2/Mul_grad/Shape_1*
T0
w
gradients/dense_2/Mul_grad/MulMul6gradients/dense_3/MatMul_grad/tuple/control_dependencydense_2/Sigmoid*
T0

gradients/dense_2/Mul_grad/SumSumgradients/dense_2/Mul_grad/Mul0gradients/dense_2/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

"gradients/dense_2/Mul_grad/ReshapeReshapegradients/dense_2/Mul_grad/Sum gradients/dense_2/Mul_grad/Shape*
T0*
Tshape0
y
 gradients/dense_2/Mul_grad/Mul_1Muldense_2/BiasAdd6gradients/dense_3/MatMul_grad/tuple/control_dependency*
T0
£
 gradients/dense_2/Mul_grad/Sum_1Sum gradients/dense_2/Mul_grad/Mul_12gradients/dense_2/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

$gradients/dense_2/Mul_grad/Reshape_1Reshape gradients/dense_2/Mul_grad/Sum_1"gradients/dense_2/Mul_grad/Shape_1*
T0*
Tshape0

+gradients/dense_2/Mul_grad/tuple/group_depsNoOp#^gradients/dense_2/Mul_grad/Reshape%^gradients/dense_2/Mul_grad/Reshape_1
Ñ
3gradients/dense_2/Mul_grad/tuple/control_dependencyIdentity"gradients/dense_2/Mul_grad/Reshape,^gradients/dense_2/Mul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/dense_2/Mul_grad/Reshape*
T0
×
5gradients/dense_2/Mul_grad/tuple/control_dependency_1Identity$gradients/dense_2/Mul_grad/Reshape_1,^gradients/dense_2/Mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/Mul_grad/Reshape_1
A
gradients/sub_8_grad/ShapeShapeSum*
T0*
out_type0
E
gradients/sub_8_grad/Shape_1ShapeSum_1*
T0*
out_type0

*gradients/sub_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_8_grad/Shapegradients/sub_8_grad/Shape_1*
T0

gradients/sub_8_grad/SumSumgradients/Exp_1_grad/mul*gradients/sub_8_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/sub_8_grad/ReshapeReshapegradients/sub_8_grad/Sumgradients/sub_8_grad/Shape*
T0*
Tshape0

gradients/sub_8_grad/Sum_1Sumgradients/Exp_1_grad/mul,gradients/sub_8_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
D
gradients/sub_8_grad/NegNeggradients/sub_8_grad/Sum_1*
T0
x
gradients/sub_8_grad/Reshape_1Reshapegradients/sub_8_grad/Neggradients/sub_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_8_grad/tuple/group_depsNoOp^gradients/sub_8_grad/Reshape^gradients/sub_8_grad/Reshape_1
¹
-gradients/sub_8_grad/tuple/control_dependencyIdentitygradients/sub_8_grad/Reshape&^gradients/sub_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_8_grad/Reshape
¿
/gradients/sub_8_grad/tuple/control_dependency_1Identitygradients/sub_8_grad/Reshape_1&^gradients/sub_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_8_grad/Reshape_1
C
gradients/sub_7_grad/ShapeShapeSum_4*
T0*
out_type0
S
gradients/sub_7_grad/Shape_1Shapeold_value_estimates*
out_type0*
T0

*gradients/sub_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_7_grad/Shapegradients/sub_7_grad/Shape_1*
T0
²
gradients/sub_7_grad/SumSum?gradients/clip_by_value_2/Minimum_grad/tuple/control_dependency*gradients/sub_7_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/sub_7_grad/ReshapeReshapegradients/sub_7_grad/Sumgradients/sub_7_grad/Shape*
T0*
Tshape0
¶
gradients/sub_7_grad/Sum_1Sum?gradients/clip_by_value_2/Minimum_grad/tuple/control_dependency,gradients/sub_7_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
D
gradients/sub_7_grad/NegNeggradients/sub_7_grad/Sum_1*
T0
x
gradients/sub_7_grad/Reshape_1Reshapegradients/sub_7_grad/Neggradients/sub_7_grad/Shape_1*
Tshape0*
T0
m
%gradients/sub_7_grad/tuple/group_depsNoOp^gradients/sub_7_grad/Reshape^gradients/sub_7_grad/Reshape_1
¹
-gradients/sub_7_grad/tuple/control_dependencyIdentitygradients/sub_7_grad/Reshape&^gradients/sub_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_7_grad/Reshape
¿
/gradients/sub_7_grad/tuple/control_dependency_1Identitygradients/sub_7_grad/Reshape_1&^gradients/sub_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_7_grad/Reshape_1
S
 gradients/dense_4/Mul_grad/ShapeShapedense_4/BiasAdd*
T0*
out_type0
U
"gradients/dense_4/Mul_grad/Shape_1Shapedense_4/Sigmoid*
T0*
out_type0

0gradients/dense_4/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dense_4/Mul_grad/Shape"gradients/dense_4/Mul_grad/Shape_1*
T0
w
gradients/dense_4/Mul_grad/MulMul6gradients/dense_5/MatMul_grad/tuple/control_dependencydense_4/Sigmoid*
T0

gradients/dense_4/Mul_grad/SumSumgradients/dense_4/Mul_grad/Mul0gradients/dense_4/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

"gradients/dense_4/Mul_grad/ReshapeReshapegradients/dense_4/Mul_grad/Sum gradients/dense_4/Mul_grad/Shape*
T0*
Tshape0
y
 gradients/dense_4/Mul_grad/Mul_1Muldense_4/BiasAdd6gradients/dense_5/MatMul_grad/tuple/control_dependency*
T0
£
 gradients/dense_4/Mul_grad/Sum_1Sum gradients/dense_4/Mul_grad/Mul_12gradients/dense_4/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

$gradients/dense_4/Mul_grad/Reshape_1Reshape gradients/dense_4/Mul_grad/Sum_1"gradients/dense_4/Mul_grad/Shape_1*
T0*
Tshape0

+gradients/dense_4/Mul_grad/tuple/group_depsNoOp#^gradients/dense_4/Mul_grad/Reshape%^gradients/dense_4/Mul_grad/Reshape_1
Ñ
3gradients/dense_4/Mul_grad/tuple/control_dependencyIdentity"gradients/dense_4/Mul_grad/Reshape,^gradients/dense_4/Mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_4/Mul_grad/Reshape
×
5gradients/dense_4/Mul_grad/tuple/control_dependency_1Identity$gradients/dense_4/Mul_grad/Reshape_1,^gradients/dense_4/Mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/Mul_grad/Reshape_1

*gradients/dense_2/Sigmoid_grad/SigmoidGradSigmoidGraddense_2/Sigmoid5gradients/dense_2/Mul_grad/tuple/control_dependency_1*
T0
D
gradients/Sum_grad/ShapeShapeIdentity*
T0*
out_type0
n
gradients/Sum_grad/SizeConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
p
gradients/Sum_grad/Shape_1Const*+
_class!
loc:@gradients/Sum_grad/Shape*
valueB *
dtype0
u
gradients/Sum_grad/range/startConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B : *
dtype0
u
gradients/Sum_grad/range/deltaConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
³
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*+
_class!
loc:@gradients/Sum_grad/Shape*

Tidx0
t
gradients/Sum_grad/Fill/valueConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
¢
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*

index_type0
Õ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
N
s
gradients/Sum_grad/Maximum/yConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*+
_class!
loc:@gradients/Sum_grad/Shape*
T0

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/ReshapeReshape-gradients/sub_8_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
T0*
Tshape0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
T0*

Tmultiples0
L
gradients/Sum_4_grad/ShapeShapevalue_estimate*
T0*
out_type0
r
gradients/Sum_4_grad/SizeConst*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
value	B :*
dtype0

gradients/Sum_4_grad/addAddSum_4/reduction_indicesgradients/Sum_4_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape

gradients/Sum_4_grad/modFloorModgradients/Sum_4_grad/addgradients/Sum_4_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape
t
gradients/Sum_4_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_4_grad/range/startConst*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_4_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
value	B :*
dtype0
½
gradients/Sum_4_grad/rangeRange gradients/Sum_4_grad/range/startgradients/Sum_4_grad/Size gradients/Sum_4_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_4_grad/Shape
x
gradients/Sum_4_grad/Fill/valueConst*
dtype0*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
value	B :
ª
gradients/Sum_4_grad/FillFillgradients/Sum_4_grad/Shape_1gradients/Sum_4_grad/Fill/value*-
_class#
!loc:@gradients/Sum_4_grad/Shape*

index_type0*
T0
á
"gradients/Sum_4_grad/DynamicStitchDynamicStitchgradients/Sum_4_grad/rangegradients/Sum_4_grad/modgradients/Sum_4_grad/Shapegradients/Sum_4_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
N
w
gradients/Sum_4_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
value	B :*
dtype0
£
gradients/Sum_4_grad/MaximumMaximum"gradients/Sum_4_grad/DynamicStitchgradients/Sum_4_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape

gradients/Sum_4_grad/floordivFloorDivgradients/Sum_4_grad/Shapegradients/Sum_4_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape

gradients/Sum_4_grad/ReshapeReshape-gradients/sub_7_grad/tuple/control_dependency"gradients/Sum_4_grad/DynamicStitch*
Tshape0*
T0
y
gradients/Sum_4_grad/TileTilegradients/Sum_4_grad/Reshapegradients/Sum_4_grad/floordiv*

Tmultiples0*
T0

*gradients/dense_4/Sigmoid_grad/SigmoidGradSigmoidGraddense_4/Sigmoid5gradients/dense_4/Mul_grad/tuple/control_dependency_1*
T0
Â
gradients/AddN_1AddN3gradients/dense_2/Mul_grad/tuple/control_dependency*gradients/dense_2/Sigmoid_grad/SigmoidGrad*
T0*5
_class+
)'loc:@gradients/dense_2/Mul_grad/Reshape*
N
k
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC
w
/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1+^gradients/dense_2/BiasAdd_grad/BiasAddGrad
Ç
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_10^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_2/Mul_grad/Reshape
ë
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad

gradients/AddN_2AddNgradients/Sum_5_grad/Tilegradients/Sum_4_grad/Tile*
T0*,
_class"
 loc:@gradients/Sum_5_grad/Tile*
N
Â
gradients/AddN_3AddN3gradients/dense_4/Mul_grad/tuple/control_dependency*gradients/dense_4/Sigmoid_grad/SigmoidGrad*
N*
T0*5
_class+
)'loc:@gradients/dense_4/Mul_grad/Reshape
k
*gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
T0*
data_formatNHWC
w
/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_3+^gradients/dense_4/BiasAdd_grad/BiasAddGrad
Ç
7gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_30^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense_4/Mul_grad/Reshape
ë
9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_4/BiasAdd_grad/BiasAddGrad0^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_4/BiasAdd_grad/BiasAddGrad
«
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
T0*
transpose_a( *
transpose_b(
¢
&gradients/dense_2/MatMul_grad/MatMul_1MatMulconcat_27gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Û
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
á
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1
k
*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_2*
T0*
data_formatNHWC
w
/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_2+^gradients/dense_1/BiasAdd_grad/BiasAddGrad
¾
7gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_20^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/Sum_5_grad/Tile
ë
9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*=
_class3
1/loc:@gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0
«
$gradients/dense_4/MatMul_grad/MatMulMatMul7gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
transpose_a( *
transpose_b(*
T0
¢
&gradients/dense_4/MatMul_grad/MatMul_1MatMulconcat_37gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_4/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_4/MatMul_grad/MatMul'^gradients/dense_4/MatMul_grad/MatMul_1
Û
6gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_4/MatMul_grad/MatMul/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul
á
8gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_4/MatMul_grad/MatMul_1/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_4/MatMul_grad/MatMul_1
F
gradients/concat_2_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_2_grad/modFloorModconcat_2/axisgradients/concat_2_grad/Rank*
T0
G
gradients/concat_2_grad/ShapeShapeconcat*
T0*
out_type0
\
gradients/concat_2_grad/ShapeNShapeNconcatconcat_1*
T0*
out_type0*
N

$gradients/concat_2_grad/ConcatOffsetConcatOffsetgradients/concat_2_grad/modgradients/concat_2_grad/ShapeN gradients/concat_2_grad/ShapeN:1*
N
º
gradients/concat_2_grad/SliceSlice6gradients/dense_2/MatMul_grad/tuple/control_dependency$gradients/concat_2_grad/ConcatOffsetgradients/concat_2_grad/ShapeN*
T0*
Index0
À
gradients/concat_2_grad/Slice_1Slice6gradients/dense_2/MatMul_grad/tuple/control_dependency&gradients/concat_2_grad/ConcatOffset:1 gradients/concat_2_grad/ShapeN:1*
T0*
Index0
r
(gradients/concat_2_grad/tuple/group_depsNoOp^gradients/concat_2_grad/Slice ^gradients/concat_2_grad/Slice_1
Á
0gradients/concat_2_grad/tuple/control_dependencyIdentitygradients/concat_2_grad/Slice)^gradients/concat_2_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_2_grad/Slice
Ç
2gradients/concat_2_grad/tuple/control_dependency_1Identitygradients/concat_2_grad/Slice_1)^gradients/concat_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_2_grad/Slice_1
C
gradients/sub_6_grad/ShapeShapesub_5*
T0*
out_type0
J
gradients/sub_6_grad/Shape_1Const*
valueB:*
dtype0

*gradients/sub_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_6_grad/Shapegradients/sub_6_grad/Shape_1*
T0

gradients/sub_6_grad/SumSumgradients/Sum_grad/Tile*gradients/sub_6_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/sub_6_grad/ReshapeReshapegradients/sub_6_grad/Sumgradients/sub_6_grad/Shape*
T0*
Tshape0

gradients/sub_6_grad/Sum_1Sumgradients/Sum_grad/Tile,gradients/sub_6_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
D
gradients/sub_6_grad/NegNeggradients/sub_6_grad/Sum_1*
T0
x
gradients/sub_6_grad/Reshape_1Reshapegradients/sub_6_grad/Neggradients/sub_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_6_grad/tuple/group_depsNoOp^gradients/sub_6_grad/Reshape^gradients/sub_6_grad/Reshape_1
¹
-gradients/sub_6_grad/tuple/control_dependencyIdentitygradients/sub_6_grad/Reshape&^gradients/sub_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_6_grad/Reshape
¿
/gradients/sub_6_grad/tuple/control_dependency_1Identitygradients/sub_6_grad/Reshape_1&^gradients/sub_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_6_grad/Reshape_1
«
$gradients/dense_1/MatMul_grad/MatMulMatMul7gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_a( *
transpose_b(*
T0
³
&gradients/dense_1/MatMul_grad/MatMul_1MatMulmain_graph_1/hidden_1/Mul7gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
Û
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul
á
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1
F
gradients/concat_3_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_3_grad/modFloorModconcat_3/axisgradients/concat_3_grad/Rank*
T0
G
gradients/concat_3_grad/ShapeShapeconcat*
T0*
out_type0
`
gradients/concat_3_grad/ShapeNShapeNconcatStopGradient*
T0*
out_type0*
N

$gradients/concat_3_grad/ConcatOffsetConcatOffsetgradients/concat_3_grad/modgradients/concat_3_grad/ShapeN gradients/concat_3_grad/ShapeN:1*
N
º
gradients/concat_3_grad/SliceSlice6gradients/dense_4/MatMul_grad/tuple/control_dependency$gradients/concat_3_grad/ConcatOffsetgradients/concat_3_grad/ShapeN*
T0*
Index0
À
gradients/concat_3_grad/Slice_1Slice6gradients/dense_4/MatMul_grad/tuple/control_dependency&gradients/concat_3_grad/ConcatOffset:1 gradients/concat_3_grad/ShapeN:1*
T0*
Index0
r
(gradients/concat_3_grad/tuple/group_depsNoOp^gradients/concat_3_grad/Slice ^gradients/concat_3_grad/Slice_1
Á
0gradients/concat_3_grad/tuple/control_dependencyIdentitygradients/concat_3_grad/Slice)^gradients/concat_3_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_3_grad/Slice
Ç
2gradients/concat_3_grad/tuple/control_dependency_1Identitygradients/concat_3_grad/Slice_1)^gradients/concat_3_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_3_grad/Slice_1
Ø
gradients/AddN_4AddN=gradients/SquaredDifference_1_grad/tuple/control_dependency_12gradients/concat_2_grad/tuple/control_dependency_1*
T0*9
_class/
-+loc:@gradients/SquaredDifference_1_grad/Neg*
N
G
gradients/sub_5_grad/ShapeShape	truediv_4*
T0*
out_type0
E
gradients/sub_5_grad/Shape_1Const*
dtype0*
valueB 

*gradients/sub_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_5_grad/Shapegradients/sub_5_grad/Shape_1*
T0
 
gradients/sub_5_grad/SumSum-gradients/sub_6_grad/tuple/control_dependency*gradients/sub_5_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/sub_5_grad/ReshapeReshapegradients/sub_5_grad/Sumgradients/sub_5_grad/Shape*
T0*
Tshape0
¤
gradients/sub_5_grad/Sum_1Sum-gradients/sub_6_grad/tuple/control_dependency,gradients/sub_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
D
gradients/sub_5_grad/NegNeggradients/sub_5_grad/Sum_1*
T0
x
gradients/sub_5_grad/Reshape_1Reshapegradients/sub_5_grad/Neggradients/sub_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_5_grad/tuple/group_depsNoOp^gradients/sub_5_grad/Reshape^gradients/sub_5_grad/Reshape_1
¹
-gradients/sub_5_grad/tuple/control_dependencyIdentitygradients/sub_5_grad/Reshape&^gradients/sub_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_5_grad/Reshape
¿
/gradients/sub_5_grad/tuple/control_dependency_1Identitygradients/sub_5_grad/Reshape_1&^gradients/sub_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_5_grad/Reshape_1
C
gradients/mul_4_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_4_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0
q
gradients/mul_4_grad/MulMul/gradients/sub_6_grad/tuple/control_dependency_1log_sigma_squared/read*
T0

gradients/mul_4_grad/SumSumgradients/mul_4_grad/Mul*gradients/mul_4_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0
d
gradients/mul_4_grad/Mul_1Mulmul_4/x/gradients/sub_6_grad/tuple/control_dependency_1*
T0

gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/Mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Reshape^gradients/mul_4_grad/Reshape_1
¹
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_4_grad/Reshape*
T0
¿
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Reshape_1&^gradients/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_4_grad/Reshape_1
o
.gradients/main_graph_1/hidden_1/Mul_grad/ShapeShapemain_graph_1/hidden_1/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_1/hidden_1/Mul_grad/Shape_1Shapemain_graph_1/hidden_1/Sigmoid*
T0*
out_type0
Â
>gradients/main_graph_1/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_1/hidden_1/Mul_grad/Shape0gradients/main_graph_1/hidden_1/Mul_grad/Shape_1*
T0

,gradients/main_graph_1/hidden_1/Mul_grad/MulMul6gradients/dense_1/MatMul_grad/tuple/control_dependencymain_graph_1/hidden_1/Sigmoid*
T0
Ç
,gradients/main_graph_1/hidden_1/Mul_grad/SumSum,gradients/main_graph_1/hidden_1/Mul_grad/Mul>gradients/main_graph_1/hidden_1/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
°
0gradients/main_graph_1/hidden_1/Mul_grad/ReshapeReshape,gradients/main_graph_1/hidden_1/Mul_grad/Sum.gradients/main_graph_1/hidden_1/Mul_grad/Shape*
Tshape0*
T0

.gradients/main_graph_1/hidden_1/Mul_grad/Mul_1Mulmain_graph_1/hidden_1/BiasAdd6gradients/dense_1/MatMul_grad/tuple/control_dependency*
T0
Í
.gradients/main_graph_1/hidden_1/Mul_grad/Sum_1Sum.gradients/main_graph_1/hidden_1/Mul_grad/Mul_1@gradients/main_graph_1/hidden_1/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
¶
2gradients/main_graph_1/hidden_1/Mul_grad/Reshape_1Reshape.gradients/main_graph_1/hidden_1/Mul_grad/Sum_10gradients/main_graph_1/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_1/hidden_1/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_1/hidden_1/Mul_grad/Reshape3^gradients/main_graph_1/hidden_1/Mul_grad/Reshape_1

Agradients/main_graph_1/hidden_1/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_1/hidden_1/Mul_grad/Reshape:^gradients/main_graph_1/hidden_1/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_1/Mul_grad/Reshape

Cgradients/main_graph_1/hidden_1/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_1/hidden_1/Mul_grad/Reshape_1:^gradients/main_graph_1/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_1/hidden_1/Mul_grad/Reshape_1
À
gradients/AddN_5AddN0gradients/concat_2_grad/tuple/control_dependency0gradients/concat_3_grad/tuple/control_dependency*
T0*0
_class&
$"loc:@gradients/concat_2_grad/Slice*
N
Ô
gradients/AddN_6AddN;gradients/SquaredDifference_grad/tuple/control_dependency_12gradients/concat_3_grad/tuple/control_dependency_1*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg*
N

6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/ShapeShape%vector_obs_encoder_1/hidden_1/BiasAdd*
out_type0*
T0

8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape_1Shape%vector_obs_encoder_1/hidden_1/Sigmoid*
out_type0*
T0
Ú
Fgradients/vector_obs_encoder_1/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape_1*
T0
}
4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/MulMulgradients/AddN_4%vector_obs_encoder_1/hidden_1/Sigmoid*
T0
ß
4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/SumSum4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/MulFgradients/vector_obs_encoder_1/hidden_1/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
È
8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/ReshapeReshape4gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Sum6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape*
T0*
Tshape0

6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Mul_1Mul%vector_obs_encoder_1/hidden_1/BiasAddgradients/AddN_4*
T0
å
6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Sum_1Sum6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Mul_1Hgradients/vector_obs_encoder_1/hidden_1/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
Î
:gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1Reshape6gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Sum_18gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
Á
Agradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape;^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1
©
Igradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder_1/hidden_1/Mul_grad/ReshapeB^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/group_deps*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape*
T0
¯
Kgradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1B^gradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape_1
G
gradients/truediv_4_grad/ShapeShapemul_2*
T0*
out_type0
N
 gradients/truediv_4_grad/Shape_1Const*
valueB:*
dtype0

.gradients/truediv_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_4_grad/Shape gradients/truediv_4_grad/Shape_1*
T0
h
 gradients/truediv_4_grad/RealDivRealDiv-gradients/sub_5_grad/tuple/control_dependencyExp*
T0

gradients/truediv_4_grad/SumSum gradients/truediv_4_grad/RealDiv.gradients/truediv_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

 gradients/truediv_4_grad/ReshapeReshapegradients/truediv_4_grad/Sumgradients/truediv_4_grad/Shape*
T0*
Tshape0
3
gradients/truediv_4_grad/NegNegmul_2*
T0
Y
"gradients/truediv_4_grad/RealDiv_1RealDivgradients/truediv_4_grad/NegExp*
T0
_
"gradients/truediv_4_grad/RealDiv_2RealDiv"gradients/truediv_4_grad/RealDiv_1Exp*
T0

gradients/truediv_4_grad/mulMul-gradients/sub_5_grad/tuple/control_dependency"gradients/truediv_4_grad/RealDiv_2*
T0

gradients/truediv_4_grad/Sum_1Sumgradients/truediv_4_grad/mul0gradients/truediv_4_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

"gradients/truediv_4_grad/Reshape_1Reshapegradients/truediv_4_grad/Sum_1 gradients/truediv_4_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_4_grad/tuple/group_depsNoOp!^gradients/truediv_4_grad/Reshape#^gradients/truediv_4_grad/Reshape_1
É
1gradients/truediv_4_grad/tuple/control_dependencyIdentity gradients/truediv_4_grad/Reshape*^gradients/truediv_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_4_grad/Reshape
Ï
3gradients/truediv_4_grad/tuple/control_dependency_1Identity"gradients/truediv_4_grad/Reshape_1*^gradients/truediv_4_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_4_grad/Reshape_1
´
8gradients/main_graph_1/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_1/hidden_1/SigmoidCgradients/main_graph_1/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
{
4gradients/vector_obs_encoder/hidden_1/Mul_grad/ShapeShape#vector_obs_encoder/hidden_1/BiasAdd*
T0*
out_type0
}
6gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape_1Shape#vector_obs_encoder/hidden_1/Sigmoid*
T0*
out_type0
Ô
Dgradients/vector_obs_encoder/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape6gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape_1*
T0
y
2gradients/vector_obs_encoder/hidden_1/Mul_grad/MulMulgradients/AddN_5#vector_obs_encoder/hidden_1/Sigmoid*
T0
Ù
2gradients/vector_obs_encoder/hidden_1/Mul_grad/SumSum2gradients/vector_obs_encoder/hidden_1/Mul_grad/MulDgradients/vector_obs_encoder/hidden_1/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
Â
6gradients/vector_obs_encoder/hidden_1/Mul_grad/ReshapeReshape2gradients/vector_obs_encoder/hidden_1/Mul_grad/Sum4gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape*
T0*
Tshape0
{
4gradients/vector_obs_encoder/hidden_1/Mul_grad/Mul_1Mul#vector_obs_encoder/hidden_1/BiasAddgradients/AddN_5*
T0
ß
4gradients/vector_obs_encoder/hidden_1/Mul_grad/Sum_1Sum4gradients/vector_obs_encoder/hidden_1/Mul_grad/Mul_1Fgradients/vector_obs_encoder/hidden_1/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
È
8gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1Reshape4gradients/vector_obs_encoder/hidden_1/Mul_grad/Sum_16gradients/vector_obs_encoder/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
»
?gradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/group_depsNoOp7^gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape9^gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1
¡
Ggradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependencyIdentity6gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape@^gradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape
§
Igradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependency_1Identity8gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1@^gradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape_1
Ì
@gradients/vector_obs_encoder_1/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad%vector_obs_encoder_1/hidden_1/SigmoidKgradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
C
gradients/mul_2_grad/ShapeConst*
valueB *
dtype0
F
gradients/mul_2_grad/Shape_1ShapeSquare*
T0*
out_type0

*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
T0
c
gradients/mul_2_grad/MulMul1gradients/truediv_4_grad/tuple/control_dependencySquare*
T0

gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
T0*
Tshape0
f
gradients/mul_2_grad/Mul_1Mulmul_2/x1gradients/truediv_4_grad/tuple/control_dependency*
T0

gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/Mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
Tshape0*
T0
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
¹
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape
¿
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1
ì
gradients/AddN_7AddNAgradients/main_graph_1/hidden_1/Mul_grad/tuple/control_dependency8gradients/main_graph_1/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_1/Mul_grad/Reshape*
N
y
8gradients/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_7*
T0*
data_formatNHWC

=gradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_79^gradients/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGrad
ñ
Egradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_7>^gradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_1/Mul_grad/Reshape
£
Ggradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@gradients/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGrad*
T0
Æ
>gradients/vector_obs_encoder/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad#vector_obs_encoder/hidden_1/SigmoidIgradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependency_1*
T0

gradients/AddN_8AddNIgradients/vector_obs_encoder_1/hidden_1/Mul_grad/tuple/control_dependency@gradients/vector_obs_encoder_1/hidden_1/Sigmoid_grad/SigmoidGrad*
N*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape

@gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_8*
T0*
data_formatNHWC
£
Egradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_8A^gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGrad

Mgradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_8F^gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_1/Mul_grad/Reshape
Ã
Ogradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity@gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGradF^gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGrad
z
gradients/Square_grad/ConstConst0^gradients/mul_2_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0
M
gradients/Square_grad/MulMulsub_4gradients/Square_grad/Const*
T0
w
gradients/Square_grad/Mul_1Mul/gradients/mul_2_grad/tuple/control_dependency_1gradients/Square_grad/Mul*
T0
Õ
2gradients/main_graph_1/hidden_1/MatMul_grad/MatMulMatMulEgradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_1/hidden_1/kernel/read*
transpose_a( *
transpose_b(*
T0
Ï
4gradients/main_graph_1/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_1/hidden_0/MulEgradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
°
<gradients/main_graph_1/hidden_1/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_1/hidden_1/MatMul_grad/MatMul5^gradients/main_graph_1/hidden_1/MatMul_grad/MatMul_1

Dgradients/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_1/hidden_1/MatMul_grad/MatMul=^gradients/main_graph_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_1/hidden_1/MatMul_grad/MatMul

Fgradients/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_1/hidden_1/MatMul_grad/MatMul_1=^gradients/main_graph_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_1/hidden_1/MatMul_grad/MatMul_1
þ
gradients/AddN_9AddNGgradients/vector_obs_encoder/hidden_1/Mul_grad/tuple/control_dependency>gradients/vector_obs_encoder/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape*
N

>gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_9*
T0*
data_formatNHWC

Cgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_9?^gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGrad

Kgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_9D^gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_1/Mul_grad/Reshape
»
Mgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity>gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGradD^gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/vector_obs_encoder/hidden_1/BiasAdd_grad/BiasAddGrad
ë
:gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMulMatMulMgradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_1/kernel/read*
transpose_a( *
transpose_b(*
T0
ç
<gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1MatMul!vector_obs_encoder_1/hidden_0/MulMgradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
È
Dgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/group_depsNoOp;^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul=^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1
³
Lgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependencyIdentity:gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMulE^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul
¹
Ngradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency_1Identity<gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1E^gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1
L
gradients/sub_4_grad/ShapeShapeStopGradient_1*
T0*
out_type0
M
gradients/sub_4_grad/Shape_1Shapedense/BiasAdd*
T0*
out_type0

*gradients/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_4_grad/Shapegradients/sub_4_grad/Shape_1*
T0

gradients/sub_4_grad/SumSumgradients/Square_grad/Mul_1*gradients/sub_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/sub_4_grad/ReshapeReshapegradients/sub_4_grad/Sumgradients/sub_4_grad/Shape*
T0*
Tshape0

gradients/sub_4_grad/Sum_1Sumgradients/Square_grad/Mul_1,gradients/sub_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
D
gradients/sub_4_grad/NegNeggradients/sub_4_grad/Sum_1*
T0
x
gradients/sub_4_grad/Reshape_1Reshapegradients/sub_4_grad/Neggradients/sub_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_4_grad/tuple/group_depsNoOp^gradients/sub_4_grad/Reshape^gradients/sub_4_grad/Reshape_1
¹
-gradients/sub_4_grad/tuple/control_dependencyIdentitygradients/sub_4_grad/Reshape&^gradients/sub_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_4_grad/Reshape
¿
/gradients/sub_4_grad/tuple/control_dependency_1Identitygradients/sub_4_grad/Reshape_1&^gradients/sub_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_4_grad/Reshape_1
o
.gradients/main_graph_1/hidden_0/Mul_grad/ShapeShapemain_graph_1/hidden_0/BiasAdd*
out_type0*
T0
q
0gradients/main_graph_1/hidden_0/Mul_grad/Shape_1Shapemain_graph_1/hidden_0/Sigmoid*
T0*
out_type0
Â
>gradients/main_graph_1/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_1/hidden_0/Mul_grad/Shape0gradients/main_graph_1/hidden_0/Mul_grad/Shape_1*
T0
¡
,gradients/main_graph_1/hidden_0/Mul_grad/MulMulDgradients/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_1/hidden_0/Sigmoid*
T0
Ç
,gradients/main_graph_1/hidden_0/Mul_grad/SumSum,gradients/main_graph_1/hidden_0/Mul_grad/Mul>gradients/main_graph_1/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
°
0gradients/main_graph_1/hidden_0/Mul_grad/ReshapeReshape,gradients/main_graph_1/hidden_0/Mul_grad/Sum.gradients/main_graph_1/hidden_0/Mul_grad/Shape*
T0*
Tshape0
£
.gradients/main_graph_1/hidden_0/Mul_grad/Mul_1Mulmain_graph_1/hidden_0/BiasAddDgradients/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Í
.gradients/main_graph_1/hidden_0/Mul_grad/Sum_1Sum.gradients/main_graph_1/hidden_0/Mul_grad/Mul_1@gradients/main_graph_1/hidden_0/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
¶
2gradients/main_graph_1/hidden_0/Mul_grad/Reshape_1Reshape.gradients/main_graph_1/hidden_0/Mul_grad/Sum_10gradients/main_graph_1/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_1/hidden_0/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_1/hidden_0/Mul_grad/Reshape3^gradients/main_graph_1/hidden_0/Mul_grad/Reshape_1

Agradients/main_graph_1/hidden_0/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_1/hidden_0/Mul_grad/Reshape:^gradients/main_graph_1/hidden_0/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_0/Mul_grad/Reshape

Cgradients/main_graph_1/hidden_0/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_1/hidden_0/Mul_grad/Reshape_1:^gradients/main_graph_1/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_1/hidden_0/Mul_grad/Reshape_1
ç
8gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMulMatMulKgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b(
á
:gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1MatMulvector_obs_encoder/hidden_0/MulKgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
Â
Bgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul;^gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1
«
Jgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMulC^gradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul
±
Lgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1C^gradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder/hidden_1/MatMul_grad/MatMul_1
 
gradients/AddN_10AddNOgradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1Mgradients/vector_obs_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*S
_classI
GEloc:@gradients/vector_obs_encoder_1/hidden_1/BiasAdd_grad/BiasAddGrad*
N

6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/ShapeShape%vector_obs_encoder_1/hidden_0/BiasAdd*
T0*
out_type0

8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape_1Shape%vector_obs_encoder_1/hidden_0/Sigmoid*
T0*
out_type0
Ú
Fgradients/vector_obs_encoder_1/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape_1*
T0
¹
4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/MulMulLgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency%vector_obs_encoder_1/hidden_0/Sigmoid*
T0
ß
4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/SumSum4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/MulFgradients/vector_obs_encoder_1/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
È
8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/ReshapeReshape4gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Sum6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape*
T0*
Tshape0
»
6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Mul_1Mul%vector_obs_encoder_1/hidden_0/BiasAddLgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency*
T0
å
6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Sum_1Sum6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Mul_1Hgradients/vector_obs_encoder_1/hidden_0/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
Î
:gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1Reshape6gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Sum_18gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
Á
Agradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape;^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1
©
Igradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder_1/hidden_0/Mul_grad/ReshapeB^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape
¯
Kgradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1B^gradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape_1
´
8gradients/main_graph_1/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_1/hidden_0/SigmoidCgradients/main_graph_1/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
{
4gradients/vector_obs_encoder/hidden_0/Mul_grad/ShapeShape#vector_obs_encoder/hidden_0/BiasAdd*
T0*
out_type0
}
6gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape_1Shape#vector_obs_encoder/hidden_0/Sigmoid*
T0*
out_type0
Ô
Dgradients/vector_obs_encoder/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape6gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape_1*
T0
³
2gradients/vector_obs_encoder/hidden_0/Mul_grad/MulMulJgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency#vector_obs_encoder/hidden_0/Sigmoid*
T0
Ù
2gradients/vector_obs_encoder/hidden_0/Mul_grad/SumSum2gradients/vector_obs_encoder/hidden_0/Mul_grad/MulDgradients/vector_obs_encoder/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
Â
6gradients/vector_obs_encoder/hidden_0/Mul_grad/ReshapeReshape2gradients/vector_obs_encoder/hidden_0/Mul_grad/Sum4gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape*
T0*
Tshape0
µ
4gradients/vector_obs_encoder/hidden_0/Mul_grad/Mul_1Mul#vector_obs_encoder/hidden_0/BiasAddJgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency*
T0
ß
4gradients/vector_obs_encoder/hidden_0/Mul_grad/Sum_1Sum4gradients/vector_obs_encoder/hidden_0/Mul_grad/Mul_1Fgradients/vector_obs_encoder/hidden_0/Mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
È
8gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1Reshape4gradients/vector_obs_encoder/hidden_0/Mul_grad/Sum_16gradients/vector_obs_encoder/hidden_0/Mul_grad/Shape_1*
Tshape0*
T0
»
?gradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/group_depsNoOp7^gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape9^gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1
¡
Ggradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependencyIdentity6gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape@^gradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape
§
Igradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependency_1Identity8gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1@^gradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape_1

gradients/AddN_11AddNNgradients/vector_obs_encoder_1/hidden_1/MatMul_grad/tuple/control_dependency_1Lgradients/vector_obs_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*O
_classE
CAloc:@gradients/vector_obs_encoder_1/hidden_1/MatMul_grad/MatMul_1*
N
Ì
@gradients/vector_obs_encoder_1/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad%vector_obs_encoder_1/hidden_0/SigmoidKgradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
í
gradients/AddN_12AddNAgradients/main_graph_1/hidden_0/Mul_grad/tuple/control_dependency8gradients/main_graph_1/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_0/Mul_grad/Reshape*
N
z
8gradients/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_12*
data_formatNHWC*
T0

=gradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_129^gradients/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGrad
ò
Egradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_12>^gradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_0/Mul_grad/Reshape
£
Ggradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGrad
Æ
>gradients/vector_obs_encoder/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad#vector_obs_encoder/hidden_0/SigmoidIgradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependency_1*
T0

gradients/AddN_13AddNIgradients/vector_obs_encoder_1/hidden_0/Mul_grad/tuple/control_dependency@gradients/vector_obs_encoder_1/hidden_0/Sigmoid_grad/SigmoidGrad*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape*
N*
T0

@gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_13*
T0*
data_formatNHWC
¤
Egradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_13A^gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGrad

Mgradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_13F^gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder_1/hidden_0/Mul_grad/Reshape
Ã
Ogradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity@gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGradF^gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGrad

(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/sub_4_grad/tuple/control_dependency_1*
data_formatNHWC*
T0

-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp0^gradients/sub_4_grad/tuple/control_dependency_1)^gradients/dense/BiasAdd_grad/BiasAddGrad
Þ
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/sub_4_grad/tuple/control_dependency_1.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_4_grad/Reshape_1
ã
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_1/hidden_0/MatMul_grad/MatMulMatMulEgradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_1/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
Æ
4gradients/main_graph_1/hidden_0/MatMul_grad/MatMul_1MatMulnormalized_stateEgradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
°
<gradients/main_graph_1/hidden_0/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_1/hidden_0/MatMul_grad/MatMul5^gradients/main_graph_1/hidden_0/MatMul_grad/MatMul_1

Dgradients/main_graph_1/hidden_0/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_1/hidden_0/MatMul_grad/MatMul=^gradients/main_graph_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_1/hidden_0/MatMul_grad/MatMul

Fgradients/main_graph_1/hidden_0/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_1/hidden_0/MatMul_grad/MatMul_1=^gradients/main_graph_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_1/hidden_0/MatMul_grad/MatMul_1
ÿ
gradients/AddN_14AddNGgradients/vector_obs_encoder/hidden_0/Mul_grad/tuple/control_dependency>gradients/vector_obs_encoder/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape*
N

>gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_14*
data_formatNHWC*
T0
 
Cgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_14?^gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGrad

Kgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_14D^gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/vector_obs_encoder/hidden_0/Mul_grad/Reshape
»
Mgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity>gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGradD^gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*Q
_classG
ECloc:@gradients/vector_obs_encoder/hidden_0/BiasAdd_grad/BiasAddGrad*
T0
ë
:gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMulMatMulMgradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
Ý
<gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1MatMulnext_vector_observationMgradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
È
Dgradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/group_depsNoOp;^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul=^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1
³
Lgradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/control_dependencyIdentity:gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMulE^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul
¹
Ngradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/control_dependency_1Identity<gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1E^gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1
¥
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_a( *
transpose_b(*
T0
¯
$gradients/dense/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul5gradients/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ù
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
ç
8gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMulMatMulKgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency'vector_obs_encoder/hidden_0/kernel/read*
T0*
transpose_a( *
transpose_b(
Ô
:gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationKgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
Â
Bgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/group_depsNoOp9^gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul;^gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1
«
Jgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/control_dependencyIdentity8gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMulC^gradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul
±
Lgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1Identity:gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1C^gradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/vector_obs_encoder/hidden_0/MatMul_grad/MatMul_1
 
gradients/AddN_15AddNOgradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1Mgradients/vector_obs_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
T0*S
_classI
GEloc:@gradients/vector_obs_encoder_1/hidden_0/BiasAdd_grad/BiasAddGrad*
N
o
.gradients/main_graph_0/hidden_1/Mul_grad/ShapeShapemain_graph_0/hidden_1/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1Shapemain_graph_0/hidden_1/Sigmoid*
T0*
out_type0
Â
>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_1/Mul_grad/Shape0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0

,gradients/main_graph_0/hidden_1/Mul_grad/MulMul4gradients/dense/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_1/Sigmoid*
T0
Ç
,gradients/main_graph_0/hidden_1/Mul_grad/SumSum,gradients/main_graph_0/hidden_1/Mul_grad/Mul>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
°
0gradients/main_graph_0/hidden_1/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_1/Mul_grad/Sum.gradients/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0

.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1Mulmain_graph_0/hidden_1/BiasAdd4gradients/dense/MatMul_grad/tuple/control_dependency*
T0
Í
.gradients/main_graph_0/hidden_1/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1@gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
¶
2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_1/Mul_grad/Sum_10gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_1/Mul_grad/Reshape3^gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_1/Mul_grad/Reshape:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*E
_class;
97loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1*
T0
`
gradients/Exp_grad/mulMul3gradients/truediv_4_grad/tuple/control_dependency_1Exp*
T0

gradients/AddN_16AddNNgradients/vector_obs_encoder_1/hidden_0/MatMul_grad/tuple/control_dependency_1Lgradients/vector_obs_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1*
T0*O
_classE
CAloc:@gradients/vector_obs_encoder_1/hidden_0/MatMul_grad/MatMul_1*
N
´
8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_1/SigmoidCgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
Ø
gradients/AddN_17AddN/gradients/add_4_grad/tuple/control_dependency_1/gradients/mul_4_grad/tuple/control_dependency_1gradients/Exp_grad/mul*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1*
N
í
gradients/AddN_18AddNAgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape*
N*
T0
z
8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_18*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_189^gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
ò
Egradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_18>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*K
_classA
?=loc:@gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad*
T0
Õ
2gradients/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_1/kernel/read*
T0*
transpose_a( *
transpose_b(
Ï
4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_0/MulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
°
<gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_1/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1
o
.gradients/main_graph_0/hidden_0/Mul_grad/ShapeShapemain_graph_0/hidden_0/BiasAdd*
out_type0*
T0
q
0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1Shapemain_graph_0/hidden_0/Sigmoid*
T0*
out_type0
Â
>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_0/Mul_grad/Shape0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
¡
,gradients/main_graph_0/hidden_0/Mul_grad/MulMulDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_0/Sigmoid*
T0
Ç
,gradients/main_graph_0/hidden_0/Mul_grad/SumSum,gradients/main_graph_0/hidden_0/Mul_grad/Mul>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
°
0gradients/main_graph_0/hidden_0/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_0/Mul_grad/Sum.gradients/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
£
.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1Mulmain_graph_0/hidden_0/BiasAddDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Í
.gradients/main_graph_0/hidden_0/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1@gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
¶
2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_0/Mul_grad/Sum_10gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_0/Mul_grad/Reshape3^gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_0/Mul_grad/Reshape:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape*
T0

Cgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1
´
8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_0/SigmoidCgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
í
gradients/AddN_19AddNAgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape*
N
z
8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_19*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_199^gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
ò
Egradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_19>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_0/kernel/read*
transpose_a( *
transpose_b(*
T0
Æ
4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulnormalized_stateEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
°
<gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_0/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1
e
beta1_power/initial_valueConst*
_class
loc:@dense/bias*
valueB
 *fff?*
dtype0
v
beta1_power
VariableV2*
dtype0*
	container *
shape: *
shared_name *
_class
loc:@dense/bias

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
_class
loc:@dense/bias*
validate_shape(*
use_locking(
Q
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/bias
e
beta2_power/initial_valueConst*
_class
loc:@dense/bias*
valueB
 *w¾?*
dtype0
v
beta2_power
VariableV2*
_class
loc:@dense/bias*
dtype0*
	container *
shape: *
shared_name 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
_class
loc:@dense/bias*
validate_shape(*
use_locking(
Q
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/bias
©
Cmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB"      

9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *    *
dtype0

3main_graph_0/hidden_0/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*

index_type0
§
!main_graph_0/hidden_0/kernel/Adam
VariableV2*
	container *
shape:	*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0
í
(main_graph_0/hidden_0/kernel/Adam/AssignAssign!main_graph_0/hidden_0/kernel/Adam3main_graph_0/hidden_0/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(

&main_graph_0/hidden_0/kernel/Adam/readIdentity!main_graph_0/hidden_0/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
«
Emain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB"      *
dtype0

;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *    *
dtype0

5main_graph_0/hidden_0/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/Const*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*

index_type0*
T0
©
#main_graph_0/hidden_0/kernel/Adam_1
VariableV2*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container *
shape:	*
shared_name 
ó
*main_graph_0/hidden_0/kernel/Adam_1/AssignAssign#main_graph_0/hidden_0/kernel/Adam_15main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(*
use_locking(

(main_graph_0/hidden_0/kernel/Adam_1/readIdentity#main_graph_0/hidden_0/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

Amain_graph_0/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB:

7main_graph_0/hidden_0/bias/Adam/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB
 *    *
dtype0
ÿ
1main_graph_0/hidden_0/bias/Adam/Initializer/zerosFillAmain_graph_0/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_0/hidden_0/bias/Adam/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*

index_type0

main_graph_0/hidden_0/bias/Adam
VariableV2*-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container *
shape:*
shared_name 
å
&main_graph_0/hidden_0/bias/Adam/AssignAssignmain_graph_0/hidden_0/bias/Adam1main_graph_0/hidden_0/bias/Adam/Initializer/zeros*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(*
use_locking(

$main_graph_0/hidden_0/bias/Adam/readIdentitymain_graph_0/hidden_0/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
¡
Cmain_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB:

9main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB
 *    *
dtype0

3main_graph_0/hidden_0/bias/Adam_1/Initializer/zerosFillCmain_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/Const*-
_class#
!loc:@main_graph_0/hidden_0/bias*

index_type0*
T0
¡
!main_graph_0/hidden_0/bias/Adam_1
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container 
ë
(main_graph_0/hidden_0/bias/Adam_1/AssignAssign!main_graph_0/hidden_0/bias/Adam_13main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(

&main_graph_0/hidden_0/bias/Adam_1/readIdentity!main_graph_0/hidden_0/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
©
Cmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB"      *
dtype0

9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *    *
dtype0

3main_graph_0/hidden_1/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*

index_type0
¨
!main_graph_0/hidden_1/kernel/Adam
VariableV2*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container *
shape:
*
shared_name 
í
(main_graph_0/hidden_1/kernel/Adam/AssignAssign!main_graph_0/hidden_1/kernel/Adam3main_graph_0/hidden_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(

&main_graph_0/hidden_1/kernel/Adam/readIdentity!main_graph_0/hidden_1/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
«
Emain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB"      *
dtype0

;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *    *
dtype0

5main_graph_0/hidden_1/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*

index_type0
ª
#main_graph_0/hidden_1/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:
*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel
ó
*main_graph_0/hidden_1/kernel/Adam_1/AssignAssign#main_graph_0/hidden_1/kernel/Adam_15main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(*
use_locking(

(main_graph_0/hidden_1/kernel/Adam_1/readIdentity#main_graph_0/hidden_1/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

Amain_graph_0/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB:*
dtype0

7main_graph_0/hidden_1/bias/Adam/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB
 *    *
dtype0
ÿ
1main_graph_0/hidden_1/bias/Adam/Initializer/zerosFillAmain_graph_0/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_0/hidden_1/bias/Adam/Initializer/zeros/Const*-
_class#
!loc:@main_graph_0/hidden_1/bias*

index_type0*
T0

main_graph_0/hidden_1/bias/Adam
VariableV2*-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container *
shape:*
shared_name 
å
&main_graph_0/hidden_1/bias/Adam/AssignAssignmain_graph_0/hidden_1/bias/Adam1main_graph_0/hidden_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

$main_graph_0/hidden_1/bias/Adam/readIdentitymain_graph_0/hidden_1/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
¡
Cmain_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB:*
dtype0

9main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB
 *    *
dtype0

3main_graph_0/hidden_1/bias/Adam_1/Initializer/zerosFillCmain_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*

index_type0
¡
!main_graph_0/hidden_1/bias/Adam_1
VariableV2*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container *
shape:
ë
(main_graph_0/hidden_1/bias/Adam_1/AssignAssign!main_graph_0/hidden_1/bias/Adam_13main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

&main_graph_0/hidden_1/bias/Adam_1/readIdentity!main_graph_0/hidden_1/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
©
Cmain_graph_1/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
valueB"      *
dtype0

9main_graph_1/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
valueB
 *    *
dtype0

3main_graph_1/hidden_0/kernel/Adam/Initializer/zerosFillCmain_graph_1/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_1/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*

index_type0
§
!main_graph_1/hidden_0/kernel/Adam
VariableV2*
shared_name */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0*
	container *
shape:	
í
(main_graph_1/hidden_0/kernel/Adam/AssignAssign!main_graph_1/hidden_0/kernel/Adam3main_graph_1/hidden_0/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(

&main_graph_1/hidden_0/kernel/Adam/readIdentity!main_graph_1/hidden_0/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel
«
Emain_graph_1/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
valueB"      *
dtype0

;main_graph_1/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
valueB
 *    *
dtype0

5main_graph_1/hidden_0/kernel/Adam_1/Initializer/zerosFillEmain_graph_1/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_1/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*

index_type0
©
#main_graph_1/hidden_0/kernel/Adam_1
VariableV2*
shared_name */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0*
	container *
shape:	
ó
*main_graph_1/hidden_0/kernel/Adam_1/AssignAssign#main_graph_1/hidden_0/kernel/Adam_15main_graph_1/hidden_0/kernel/Adam_1/Initializer/zeros*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(*
use_locking(*
T0

(main_graph_1/hidden_0/kernel/Adam_1/readIdentity#main_graph_1/hidden_0/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel

Amain_graph_1/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_1/hidden_0/bias*
valueB:*
dtype0

7main_graph_1/hidden_0/bias/Adam/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_1/hidden_0/bias*
valueB
 *    *
dtype0
ÿ
1main_graph_1/hidden_0/bias/Adam/Initializer/zerosFillAmain_graph_1/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_1/hidden_0/bias/Adam/Initializer/zeros/Const*-
_class#
!loc:@main_graph_1/hidden_0/bias*

index_type0*
T0

main_graph_1/hidden_0/bias/Adam
VariableV2*
shared_name *-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0*
	container *
shape:
å
&main_graph_1/hidden_0/bias/Adam/AssignAssignmain_graph_1/hidden_0/bias/Adam1main_graph_1/hidden_0/bias/Adam/Initializer/zeros*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(*
use_locking(*
T0

$main_graph_1/hidden_0/bias/Adam/readIdentitymain_graph_1/hidden_0/bias/Adam*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias
¡
Cmain_graph_1/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_1/hidden_0/bias*
valueB:*
dtype0

9main_graph_1/hidden_0/bias/Adam_1/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_1/hidden_0/bias*
valueB
 *    *
dtype0

3main_graph_1/hidden_0/bias/Adam_1/Initializer/zerosFillCmain_graph_1/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_1/hidden_0/bias/Adam_1/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*

index_type0
¡
!main_graph_1/hidden_0/bias/Adam_1
VariableV2*
shared_name *-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0*
	container *
shape:
ë
(main_graph_1/hidden_0/bias/Adam_1/AssignAssign!main_graph_1/hidden_0/bias/Adam_13main_graph_1/hidden_0/bias/Adam_1/Initializer/zeros*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(*
use_locking(

&main_graph_1/hidden_0/bias/Adam_1/readIdentity!main_graph_1/hidden_0/bias/Adam_1*-
_class#
!loc:@main_graph_1/hidden_0/bias*
T0
©
Cmain_graph_1/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
valueB"      *
dtype0

9main_graph_1/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
valueB
 *    

3main_graph_1/hidden_1/kernel/Adam/Initializer/zerosFillCmain_graph_1/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_1/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*

index_type0
¨
!main_graph_1/hidden_1/kernel/Adam
VariableV2*
shared_name */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0*
	container *
shape:

í
(main_graph_1/hidden_1/kernel/Adam/AssignAssign!main_graph_1/hidden_1/kernel/Adam3main_graph_1/hidden_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(

&main_graph_1/hidden_1/kernel/Adam/readIdentity!main_graph_1/hidden_1/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel
«
Emain_graph_1/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
valueB"      

;main_graph_1/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
valueB
 *    

5main_graph_1/hidden_1/kernel/Adam_1/Initializer/zerosFillEmain_graph_1/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_1/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*

index_type0
ª
#main_graph_1/hidden_1/kernel/Adam_1
VariableV2*
	container *
shape:
*
shared_name */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0
ó
*main_graph_1/hidden_1/kernel/Adam_1/AssignAssign#main_graph_1/hidden_1/kernel/Adam_15main_graph_1/hidden_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(

(main_graph_1/hidden_1/kernel/Adam_1/readIdentity#main_graph_1/hidden_1/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel

Amain_graph_1/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*-
_class#
!loc:@main_graph_1/hidden_1/bias*
valueB:*
dtype0

7main_graph_1/hidden_1/bias/Adam/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_1/hidden_1/bias*
valueB
 *    *
dtype0
ÿ
1main_graph_1/hidden_1/bias/Adam/Initializer/zerosFillAmain_graph_1/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_1/hidden_1/bias/Adam/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*

index_type0

main_graph_1/hidden_1/bias/Adam
VariableV2*-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0*
	container *
shape:*
shared_name 
å
&main_graph_1/hidden_1/bias/Adam/AssignAssignmain_graph_1/hidden_1/bias/Adam1main_graph_1/hidden_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(

$main_graph_1/hidden_1/bias/Adam/readIdentitymain_graph_1/hidden_1/bias/Adam*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias
¡
Cmain_graph_1/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
valueB:

9main_graph_1/hidden_1/bias/Adam_1/Initializer/zeros/ConstConst*-
_class#
!loc:@main_graph_1/hidden_1/bias*
valueB
 *    *
dtype0

3main_graph_1/hidden_1/bias/Adam_1/Initializer/zerosFillCmain_graph_1/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_1/hidden_1/bias/Adam_1/Initializer/zeros/Const*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*

index_type0
¡
!main_graph_1/hidden_1/bias/Adam_1
VariableV2*
shared_name *-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0*
	container *
shape:
ë
(main_graph_1/hidden_1/bias/Adam_1/AssignAssign!main_graph_1/hidden_1/bias/Adam_13main_graph_1/hidden_1/bias/Adam_1/Initializer/zeros*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(*
use_locking(

&main_graph_1/hidden_1/bias/Adam_1/readIdentity!main_graph_1/hidden_1/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias

3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0
w
)dense/kernel/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
Ç
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0

dense/kernel/Adam
VariableV2*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container *
shape:	
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel

5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0
y
+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *    
Í
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0

dense/kernel/Adam_1
VariableV2*
_class
loc:@dense/kernel*
dtype0*
	container *
shape:	*
shared_name 
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel
~
1dense/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:*
dtype0
s
'dense/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0
¿
!dense/bias/Adam/Initializer/zerosFill1dense/bias/Adam/Initializer/zeros/shape_as_tensor'dense/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*

index_type0
~
dense/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense/bias*
dtype0*
	container *
shape:
¥
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
Y
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias

3dense/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:*
dtype0
u
)dense/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0
Å
#dense/bias/Adam_1/Initializer/zerosFill3dense/bias/Adam_1/Initializer/zeros/shape_as_tensor)dense/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*

index_type0

dense/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@dense/bias*
dtype0*
	container *
shape:
«
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense/bias*
validate_shape(*
use_locking(
]
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias

8log_sigma_squared/Adam/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@log_sigma_squared*
valueB:*
dtype0

.log_sigma_squared/Adam/Initializer/zeros/ConstConst*$
_class
loc:@log_sigma_squared*
valueB
 *    *
dtype0
Û
(log_sigma_squared/Adam/Initializer/zerosFill8log_sigma_squared/Adam/Initializer/zeros/shape_as_tensor.log_sigma_squared/Adam/Initializer/zeros/Const*
T0*$
_class
loc:@log_sigma_squared*

index_type0

log_sigma_squared/Adam
VariableV2*
shared_name *$
_class
loc:@log_sigma_squared*
dtype0*
	container *
shape:
Á
log_sigma_squared/Adam/AssignAssignlog_sigma_squared/Adam(log_sigma_squared/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
n
log_sigma_squared/Adam/readIdentitylog_sigma_squared/Adam*
T0*$
_class
loc:@log_sigma_squared

:log_sigma_squared/Adam_1/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@log_sigma_squared*
valueB:*
dtype0

0log_sigma_squared/Adam_1/Initializer/zeros/ConstConst*$
_class
loc:@log_sigma_squared*
valueB
 *    *
dtype0
á
*log_sigma_squared/Adam_1/Initializer/zerosFill:log_sigma_squared/Adam_1/Initializer/zeros/shape_as_tensor0log_sigma_squared/Adam_1/Initializer/zeros/Const*
T0*$
_class
loc:@log_sigma_squared*

index_type0

log_sigma_squared/Adam_1
VariableV2*
shape:*
shared_name *$
_class
loc:@log_sigma_squared*
dtype0*
	container 
Ç
log_sigma_squared/Adam_1/AssignAssignlog_sigma_squared/Adam_1*log_sigma_squared/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
r
log_sigma_squared/Adam_1/readIdentitylog_sigma_squared/Adam_1*
T0*$
_class
loc:@log_sigma_squared

5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0
{
+dense_1/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0
Ï
%dense_1/kernel/Adam/Initializer/zerosFill5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_1/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0

dense_1/kernel/Adam
VariableV2*
dtype0*
	container *
shape:	*
shared_name *!
_class
loc:@dense_1/kernel
µ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0
}
-dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0
Õ
'dense_1/kernel/Adam_1/Initializer/zerosFill7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0

dense_1/kernel/Adam_1
VariableV2*
shape:	*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
»
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(*
T0
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel

3dense_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_1/bias*
valueB:*
dtype0
w
)dense_1/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_1/bias*
valueB
 *    *
dtype0
Ç
#dense_1/bias/Adam/Initializer/zerosFill3dense_1/bias/Adam/Initializer/zeros/shape_as_tensor)dense_1/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_1/bias*

index_type0

dense_1/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense_1/bias*
dtype0*
	container *
shape:
­
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
_
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias

5dense_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_1/bias*
valueB:*
dtype0
y
+dense_1/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_1/bias*
valueB
 *    *
dtype0
Í
%dense_1/bias/Adam_1/Initializer/zerosFill5dense_1/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_1/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_1/bias*

index_type0

dense_1/bias/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_1/bias
³
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
c
dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
T0*
_class
loc:@dense_1/bias
µ
Ivector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB"      *
dtype0
£
?vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB
 *    *
dtype0

9vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zerosFillIvector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*

index_type0
³
'vector_obs_encoder/hidden_0/kernel/Adam
VariableV2*
shape:	*
shared_name *5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
dtype0*
	container 

.vector_obs_encoder/hidden_0/kernel/Adam/AssignAssign'vector_obs_encoder/hidden_0/kernel/Adam9vector_obs_encoder/hidden_0/kernel/Adam/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
validate_shape(
¡
,vector_obs_encoder/hidden_0/kernel/Adam/readIdentity'vector_obs_encoder/hidden_0/kernel/Adam*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
T0
·
Kvector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB"      *
dtype0
¥
Avector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
valueB
 *    *
dtype0
¥
;vector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zerosFillKvector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorAvector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*

index_type0
µ
)vector_obs_encoder/hidden_0/kernel/Adam_1
VariableV2*
shared_name *5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
dtype0*
	container *
shape:	

0vector_obs_encoder/hidden_0/kernel/Adam_1/AssignAssign)vector_obs_encoder/hidden_0/kernel/Adam_1;vector_obs_encoder/hidden_0/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
¥
.vector_obs_encoder/hidden_0/kernel/Adam_1/readIdentity)vector_obs_encoder/hidden_0/kernel/Adam_1*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel
«
Gvector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB:*
dtype0

=vector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/ConstConst*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB
 *    *
dtype0

7vector_obs_encoder/hidden_0/bias/Adam/Initializer/zerosFillGvector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensor=vector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*

index_type0
«
%vector_obs_encoder/hidden_0/bias/Adam
VariableV2*
shared_name *3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
dtype0*
	container *
shape:
ý
,vector_obs_encoder/hidden_0/bias/Adam/AssignAssign%vector_obs_encoder/hidden_0/bias/Adam7vector_obs_encoder/hidden_0/bias/Adam/Initializer/zeros*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
validate_shape(*
use_locking(*
T0

*vector_obs_encoder/hidden_0/bias/Adam/readIdentity%vector_obs_encoder/hidden_0/bias/Adam*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
T0
­
Ivector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB:*
dtype0
¡
?vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/ConstConst*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
valueB
 *    *
dtype0

9vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zerosFillIvector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*

index_type0
­
'vector_obs_encoder/hidden_0/bias/Adam_1
VariableV2*
	container *
shape:*
shared_name *3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
dtype0

.vector_obs_encoder/hidden_0/bias/Adam_1/AssignAssign'vector_obs_encoder/hidden_0/bias/Adam_19vector_obs_encoder/hidden_0/bias/Adam_1/Initializer/zeros*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
validate_shape(*
use_locking(

,vector_obs_encoder/hidden_0/bias/Adam_1/readIdentity'vector_obs_encoder/hidden_0/bias/Adam_1*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
µ
Ivector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB"      *
dtype0
£
?vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB
 *    *
dtype0

9vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zerosFillIvector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*

index_type0
´
'vector_obs_encoder/hidden_1/kernel/Adam
VariableV2*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
dtype0*
	container *
shape:
*
shared_name 

.vector_obs_encoder/hidden_1/kernel/Adam/AssignAssign'vector_obs_encoder/hidden_1/kernel/Adam9vector_obs_encoder/hidden_1/kernel/Adam/Initializer/zeros*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
validate_shape(*
use_locking(*
T0
¡
,vector_obs_encoder/hidden_1/kernel/Adam/readIdentity'vector_obs_encoder/hidden_1/kernel/Adam*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
·
Kvector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB"      *
dtype0
¥
Avector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
valueB
 *    *
dtype0
¥
;vector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zerosFillKvector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorAvector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*

index_type0
¶
)vector_obs_encoder/hidden_1/kernel/Adam_1
VariableV2*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
dtype0*
	container *
shape:
*
shared_name 

0vector_obs_encoder/hidden_1/kernel/Adam_1/AssignAssign)vector_obs_encoder/hidden_1/kernel/Adam_1;vector_obs_encoder/hidden_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
validate_shape(
¥
.vector_obs_encoder/hidden_1/kernel/Adam_1/readIdentity)vector_obs_encoder/hidden_1/kernel/Adam_1*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel
«
Gvector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB:*
dtype0

=vector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/ConstConst*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB
 *    *
dtype0

7vector_obs_encoder/hidden_1/bias/Adam/Initializer/zerosFillGvector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensor=vector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*

index_type0
«
%vector_obs_encoder/hidden_1/bias/Adam
VariableV2*
shared_name *3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
dtype0*
	container *
shape:
ý
,vector_obs_encoder/hidden_1/bias/Adam/AssignAssign%vector_obs_encoder/hidden_1/bias/Adam7vector_obs_encoder/hidden_1/bias/Adam/Initializer/zeros*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
validate_shape(*
use_locking(*
T0

*vector_obs_encoder/hidden_1/bias/Adam/readIdentity%vector_obs_encoder/hidden_1/bias/Adam*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias
­
Ivector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB:*
dtype0
¡
?vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/ConstConst*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
valueB
 *    *
dtype0

9vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zerosFillIvector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensor?vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros/Const*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*

index_type0
­
'vector_obs_encoder/hidden_1/bias/Adam_1
VariableV2*
shared_name *3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
dtype0*
	container *
shape:

.vector_obs_encoder/hidden_1/bias/Adam_1/AssignAssign'vector_obs_encoder/hidden_1/bias/Adam_19vector_obs_encoder/hidden_1/bias/Adam_1/Initializer/zeros*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
validate_shape(*
use_locking(

,vector_obs_encoder/hidden_1/bias/Adam_1/readIdentity'vector_obs_encoder/hidden_1/bias/Adam_1*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias

5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB"      
{
+dense_2/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0
Ï
%dense_2/kernel/Adam/Initializer/zerosFill5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_2/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0

dense_2/kernel/Adam
VariableV2*!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:
*
shared_name 
µ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"      *
dtype0
}
-dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0
Õ
'dense_2/kernel/Adam_1/Initializer/zerosFill7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0

dense_2/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:
*
shared_name *!
_class
loc:@dense_2/kernel
»
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel

3dense_2/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_2/bias*
valueB:*
dtype0
w
)dense_2/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_2/bias*
valueB
 *    *
dtype0
Ç
#dense_2/bias/Adam/Initializer/zerosFill3dense_2/bias/Adam/Initializer/zeros/shape_as_tensor)dense_2/bias/Adam/Initializer/zeros/Const*
_class
loc:@dense_2/bias*

index_type0*
T0

dense_2/bias/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@dense_2/bias*
dtype0*
	container 
­
dense_2/bias/Adam/AssignAssigndense_2/bias/Adam#dense_2/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_2/bias
_
dense_2/bias/Adam/readIdentitydense_2/bias/Adam*
T0*
_class
loc:@dense_2/bias

5dense_2/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_2/bias*
valueB:*
dtype0
y
+dense_2/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_2/bias*
valueB
 *    *
dtype0
Í
%dense_2/bias/Adam_1/Initializer/zerosFill5dense_2/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_2/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_2/bias*

index_type0

dense_2/bias/Adam_1
VariableV2*
	container *
shape:*
shared_name *
_class
loc:@dense_2/bias*
dtype0
³
dense_2/bias/Adam_1/AssignAssigndense_2/bias/Adam_1%dense_2/bias/Adam_1/Initializer/zeros*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking(*
T0
c
dense_2/bias/Adam_1/readIdentitydense_2/bias/Adam_1*
T0*
_class
loc:@dense_2/bias

5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0
{
+dense_3/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *    
Ï
%dense_3/kernel/Adam/Initializer/zerosFill5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_3/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_3/kernel*

index_type0

dense_3/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_3/kernel*
dtype0*
	container *
shape:	
µ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel

7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0
}
-dense_3/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_3/kernel*
valueB
 *    *
dtype0
Õ
'dense_3/kernel/Adam_1/Initializer/zerosFill7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_3/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_3/kernel*

index_type0

dense_3/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_3/kernel*
dtype0*
	container *
shape:	
»
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*!
_class
loc:@dense_3/kernel*
validate_shape(*
use_locking(*
T0
i
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel

3dense_3/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_3/bias*
valueB:*
dtype0
w
)dense_3/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_3/bias*
valueB
 *    *
dtype0
Ç
#dense_3/bias/Adam/Initializer/zerosFill3dense_3/bias/Adam/Initializer/zeros/shape_as_tensor)dense_3/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_3/bias*

index_type0

dense_3/bias/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@dense_3/bias*
dtype0*
	container 
­
dense_3/bias/Adam/AssignAssigndense_3/bias/Adam#dense_3/bias/Adam/Initializer/zeros*
_class
loc:@dense_3/bias*
validate_shape(*
use_locking(*
T0
_
dense_3/bias/Adam/readIdentitydense_3/bias/Adam*
_class
loc:@dense_3/bias*
T0

5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_3/bias*
valueB:*
dtype0
y
+dense_3/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_3/bias*
valueB
 *    *
dtype0
Í
%dense_3/bias/Adam_1/Initializer/zerosFill5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_3/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_3/bias*

index_type0

dense_3/bias/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense_3/bias*
dtype0*
	container 
³
dense_3/bias/Adam_1/AssignAssigndense_3/bias/Adam_1%dense_3/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(
c
dense_3/bias/Adam_1/readIdentitydense_3/bias/Adam_1*
T0*
_class
loc:@dense_3/bias

5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_4/kernel*
valueB"      *
dtype0
{
+dense_4/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_4/kernel*
valueB
 *    *
dtype0
Ï
%dense_4/kernel/Adam/Initializer/zerosFill5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_4/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_4/kernel*

index_type0

dense_4/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_4/kernel*
dtype0*
	container *
shape:

µ
dense_4/kernel/Adam/AssignAssigndense_4/kernel/Adam%dense_4/kernel/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_4/kernel
e
dense_4/kernel/Adam/readIdentitydense_4/kernel/Adam*
T0*!
_class
loc:@dense_4/kernel

7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_4/kernel*
valueB"      *
dtype0
}
-dense_4/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_4/kernel*
valueB
 *    *
dtype0
Õ
'dense_4/kernel/Adam_1/Initializer/zerosFill7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_4/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_4/kernel*

index_type0

dense_4/kernel/Adam_1
VariableV2*
shape:
*
shared_name *!
_class
loc:@dense_4/kernel*
dtype0*
	container 
»
dense_4/kernel/Adam_1/AssignAssigndense_4/kernel/Adam_1'dense_4/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(
i
dense_4/kernel/Adam_1/readIdentitydense_4/kernel/Adam_1*
T0*!
_class
loc:@dense_4/kernel

3dense_4/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_4/bias*
valueB:*
dtype0
w
)dense_4/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_4/bias*
valueB
 *    *
dtype0
Ç
#dense_4/bias/Adam/Initializer/zerosFill3dense_4/bias/Adam/Initializer/zeros/shape_as_tensor)dense_4/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_4/bias*

index_type0

dense_4/bias/Adam
VariableV2*
_class
loc:@dense_4/bias*
dtype0*
	container *
shape:*
shared_name 
­
dense_4/bias/Adam/AssignAssigndense_4/bias/Adam#dense_4/bias/Adam/Initializer/zeros*
_class
loc:@dense_4/bias*
validate_shape(*
use_locking(*
T0
_
dense_4/bias/Adam/readIdentitydense_4/bias/Adam*
T0*
_class
loc:@dense_4/bias

5dense_4/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_4/bias*
valueB:*
dtype0
y
+dense_4/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_4/bias*
valueB
 *    *
dtype0
Í
%dense_4/bias/Adam_1/Initializer/zerosFill5dense_4/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_4/bias/Adam_1/Initializer/zeros/Const*
_class
loc:@dense_4/bias*

index_type0*
T0

dense_4/bias/Adam_1
VariableV2*
_class
loc:@dense_4/bias*
dtype0*
	container *
shape:*
shared_name 
³
dense_4/bias/Adam_1/AssignAssigndense_4/bias/Adam_1%dense_4/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(
c
dense_4/bias/Adam_1/readIdentitydense_4/bias/Adam_1*
T0*
_class
loc:@dense_4/bias

5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_5/kernel*
valueB"      *
dtype0
{
+dense_5/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_5/kernel*
valueB
 *    *
dtype0
Ï
%dense_5/kernel/Adam/Initializer/zerosFill5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_5/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_5/kernel*

index_type0

dense_5/kernel/Adam
VariableV2*
	container *
shape:
*
shared_name *!
_class
loc:@dense_5/kernel*
dtype0
µ
dense_5/kernel/Adam/AssignAssigndense_5/kernel/Adam%dense_5/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(
e
dense_5/kernel/Adam/readIdentitydense_5/kernel/Adam*
T0*!
_class
loc:@dense_5/kernel

7dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_5/kernel*
valueB"      *
dtype0
}
-dense_5/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_5/kernel*
valueB
 *    *
dtype0
Õ
'dense_5/kernel/Adam_1/Initializer/zerosFill7dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_5/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_5/kernel*

index_type0

dense_5/kernel/Adam_1
VariableV2*
shape:
*
shared_name *!
_class
loc:@dense_5/kernel*
dtype0*
	container 
»
dense_5/kernel/Adam_1/AssignAssigndense_5/kernel/Adam_1'dense_5/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(
i
dense_5/kernel/Adam_1/readIdentitydense_5/kernel/Adam_1*
T0*!
_class
loc:@dense_5/kernel

3dense_5/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_5/bias*
valueB:*
dtype0
w
)dense_5/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_5/bias*
valueB
 *    *
dtype0
Ç
#dense_5/bias/Adam/Initializer/zerosFill3dense_5/bias/Adam/Initializer/zeros/shape_as_tensor)dense_5/bias/Adam/Initializer/zeros/Const*
_class
loc:@dense_5/bias*

index_type0*
T0

dense_5/bias/Adam
VariableV2*
_class
loc:@dense_5/bias*
dtype0*
	container *
shape:*
shared_name 
­
dense_5/bias/Adam/AssignAssigndense_5/bias/Adam#dense_5/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(
_
dense_5/bias/Adam/readIdentitydense_5/bias/Adam*
T0*
_class
loc:@dense_5/bias

5dense_5/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_5/bias*
valueB:*
dtype0
y
+dense_5/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_5/bias*
valueB
 *    *
dtype0
Í
%dense_5/bias/Adam_1/Initializer/zerosFill5dense_5/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_5/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_5/bias*

index_type0

dense_5/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@dense_5/bias*
dtype0*
	container *
shape:
³
dense_5/bias/Adam_1/AssignAssigndense_5/bias/Adam_1%dense_5/bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_5/bias
c
dense_5/bias/Adam_1/readIdentitydense_5/bias/Adam_1*
T0*
_class
loc:@dense_5/bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
dtype0*
valueB
 *wÌ+2
©
2Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonFgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
use_nesterov( 
 
0Adam/update_main_graph_0/hidden_0/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonGgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
use_nesterov( 
©
2Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonFgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
use_nesterov( 
 
0Adam/update_main_graph_0/hidden_1/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonGgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
use_nesterov( 
©
2Adam/update_main_graph_1/hidden_0/kernel/ApplyAdam	ApplyAdammain_graph_1/hidden_0/kernel!main_graph_1/hidden_0/kernel/Adam#main_graph_1/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonFgradients/main_graph_1/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
use_nesterov( 
 
0Adam/update_main_graph_1/hidden_0/bias/ApplyAdam	ApplyAdammain_graph_1/hidden_0/biasmain_graph_1/hidden_0/bias/Adam!main_graph_1/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonGgradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
use_nesterov( 
©
2Adam/update_main_graph_1/hidden_1/kernel/ApplyAdam	ApplyAdammain_graph_1/hidden_1/kernel!main_graph_1/hidden_1/kernel/Adam#main_graph_1/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonFgradients/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
use_nesterov( 
 
0Adam/update_main_graph_1/hidden_1/bias/ApplyAdam	ApplyAdammain_graph_1/hidden_1/biasmain_graph_1/hidden_1/bias/Adam!main_graph_1/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonGgradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
use_nesterov( 
É
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( 
À
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense/bias*
use_nesterov( *
use_locking( 
½
'Adam/update_log_sigma_squared/ApplyAdam	ApplyAdamlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_17*
use_locking( *
T0*$
_class
loc:@log_sigma_squared*
use_nesterov( 
Õ
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
use_nesterov( 
Ì
"Adam/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@dense_1/bias

8Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam	ApplyAdam"vector_obs_encoder/hidden_0/kernel'vector_obs_encoder/hidden_0/kernel/Adam)vector_obs_encoder/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_16*
use_locking( *
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
use_nesterov( 

6Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam	ApplyAdam vector_obs_encoder/hidden_0/bias%vector_obs_encoder/hidden_0/bias/Adam'vector_obs_encoder/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_15*
use_locking( *
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
use_nesterov( 

8Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam	ApplyAdam"vector_obs_encoder/hidden_1/kernel'vector_obs_encoder/hidden_1/kernel/Adam)vector_obs_encoder/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_11*
use_locking( *
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
use_nesterov( 

6Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam	ApplyAdam vector_obs_encoder/hidden_1/bias%vector_obs_encoder/hidden_1/bias/Adam'vector_obs_encoder/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_10*
use_locking( *
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
use_nesterov( 
Õ
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_2/kernel*
use_nesterov( *
use_locking( 
Ì
"Adam/update_dense_2/bias/ApplyAdam	ApplyAdamdense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_2/bias*
use_nesterov( 
Õ
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_3/kernel*
use_nesterov( 
Ì
"Adam/update_dense_3/bias/ApplyAdam	ApplyAdamdense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_3/bias*
use_nesterov( 
Õ
$Adam/update_dense_4/kernel/ApplyAdam	ApplyAdamdense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_4/kernel*
use_nesterov( *
use_locking( 
Ì
"Adam/update_dense_4/bias/ApplyAdam	ApplyAdamdense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_4/bias*
use_nesterov( 
Õ
$Adam/update_dense_5/kernel/ApplyAdam	ApplyAdamdense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_5/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_5/kernel*
use_nesterov( 
Ì
"Adam/update_dense_5/bias/ApplyAdam	ApplyAdamdense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_5/bias*
use_nesterov( 
Ë	
Adam/mulMulbeta1_power/read
Adam/beta13^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam*
T0*
_class
loc:@dense/bias
}
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(
Í	

Adam/mul_1Mulbeta2_power/read
Adam/beta23^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam*
T0*
_class
loc:@dense/bias

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
use_locking( *
T0*
_class
loc:@dense/bias
 	
AdamNoOp3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_0/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_0/bias/ApplyAdam9^Adam/update_vector_obs_encoder/hidden_1/kernel/ApplyAdam7^Adam/update_vector_obs_encoder/hidden_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
8

save/ConstConst*
valueB Bmodel*
dtype0
´
save/SaveV2/tensor_namesConst*
valueùBöUBaction_output_shapeBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bglobal_stepBis_continuous_controlBlast_rewardBlog_sigma_squaredBlog_sigma_squared/AdamBlog_sigma_squared/Adam_1Bmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmain_graph_1/hidden_0/biasBmain_graph_1/hidden_0/bias/AdamB!main_graph_1/hidden_0/bias/Adam_1Bmain_graph_1/hidden_0/kernelB!main_graph_1/hidden_0/kernel/AdamB#main_graph_1/hidden_0/kernel/Adam_1Bmain_graph_1/hidden_1/biasBmain_graph_1/hidden_1/bias/AdamB!main_graph_1/hidden_1/bias/Adam_1Bmain_graph_1/hidden_1/kernelB!main_graph_1/hidden_1/kernel/AdamB#main_graph_1/hidden_1/kernel/Adam_1Bmemory_sizeBrunning_meanBrunning_varianceB vector_obs_encoder/hidden_0/biasB%vector_obs_encoder/hidden_0/bias/AdamB'vector_obs_encoder/hidden_0/bias/Adam_1B"vector_obs_encoder/hidden_0/kernelB'vector_obs_encoder/hidden_0/kernel/AdamB)vector_obs_encoder/hidden_0/kernel/Adam_1B vector_obs_encoder/hidden_1/biasB%vector_obs_encoder/hidden_1/bias/AdamB'vector_obs_encoder/hidden_1/bias/Adam_1B"vector_obs_encoder/hidden_1/kernelB'vector_obs_encoder/hidden_1/kernel/AdamB)vector_obs_encoder/hidden_1/kernel/Adam_1Bversion_number*
dtype0
ô
save/SaveV2/shape_and_slicesConst*¿
valueµB²UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
¬
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesaction_output_shapebeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1dense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1dense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1dense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1dense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1global_stepis_continuous_controllast_rewardlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1main_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1main_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1main_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1main_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1main_graph_1/hidden_0/biasmain_graph_1/hidden_0/bias/Adam!main_graph_1/hidden_0/bias/Adam_1main_graph_1/hidden_0/kernel!main_graph_1/hidden_0/kernel/Adam#main_graph_1/hidden_0/kernel/Adam_1main_graph_1/hidden_1/biasmain_graph_1/hidden_1/bias/Adam!main_graph_1/hidden_1/bias/Adam_1main_graph_1/hidden_1/kernel!main_graph_1/hidden_1/kernel/Adam#main_graph_1/hidden_1/kernel/Adam_1memory_sizerunning_meanrunning_variance vector_obs_encoder/hidden_0/bias%vector_obs_encoder/hidden_0/bias/Adam'vector_obs_encoder/hidden_0/bias/Adam_1"vector_obs_encoder/hidden_0/kernel'vector_obs_encoder/hidden_0/kernel/Adam)vector_obs_encoder/hidden_0/kernel/Adam_1 vector_obs_encoder/hidden_1/bias%vector_obs_encoder/hidden_1/bias/Adam'vector_obs_encoder/hidden_1/bias/Adam_1"vector_obs_encoder/hidden_1/kernel'vector_obs_encoder/hidden_1/kernel/Adam)vector_obs_encoder/hidden_1/kernel/Adam_1version_number*c
dtypesY
W2U
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
Æ
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueùBöUBaction_output_shapeBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bglobal_stepBis_continuous_controlBlast_rewardBlog_sigma_squaredBlog_sigma_squared/AdamBlog_sigma_squared/Adam_1Bmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmain_graph_1/hidden_0/biasBmain_graph_1/hidden_0/bias/AdamB!main_graph_1/hidden_0/bias/Adam_1Bmain_graph_1/hidden_0/kernelB!main_graph_1/hidden_0/kernel/AdamB#main_graph_1/hidden_0/kernel/Adam_1Bmain_graph_1/hidden_1/biasBmain_graph_1/hidden_1/bias/AdamB!main_graph_1/hidden_1/bias/Adam_1Bmain_graph_1/hidden_1/kernelB!main_graph_1/hidden_1/kernel/AdamB#main_graph_1/hidden_1/kernel/Adam_1Bmemory_sizeBrunning_meanBrunning_varianceB vector_obs_encoder/hidden_0/biasB%vector_obs_encoder/hidden_0/bias/AdamB'vector_obs_encoder/hidden_0/bias/Adam_1B"vector_obs_encoder/hidden_0/kernelB'vector_obs_encoder/hidden_0/kernel/AdamB)vector_obs_encoder/hidden_0/kernel/Adam_1B vector_obs_encoder/hidden_1/biasB%vector_obs_encoder/hidden_1/bias/AdamB'vector_obs_encoder/hidden_1/bias/Adam_1B"vector_obs_encoder/hidden_1/kernelB'vector_obs_encoder/hidden_1/kernel/AdamB)vector_obs_encoder/hidden_1/kernel/Adam_1Bversion_number*
dtype0

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*¿
valueµB²UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ù
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*c
dtypesY
W2U

save/AssignAssignaction_output_shapesave/RestoreV2*&
_class
loc:@action_output_shape*
validate_shape(*
use_locking(*
T0

save/Assign_1Assignbeta1_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_2Assignbeta2_powersave/RestoreV2:2*
_class
loc:@dense/bias*
validate_shape(*
use_locking(*
T0

save/Assign_3Assign
dense/biassave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_4Assigndense/bias/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_5Assigndense/bias/Adam_1save/RestoreV2:5*
T0*
_class
loc:@dense/bias*
validate_shape(*
use_locking(

save/Assign_6Assigndense/kernelsave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_7Assigndense/kernel/Adamsave/RestoreV2:7*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_8Assigndense/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_9Assigndense_1/biassave/RestoreV2:9*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
T0

save/Assign_10Assigndense_1/bias/Adamsave/RestoreV2:10*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
T0

save/Assign_11Assigndense_1/bias/Adam_1save/RestoreV2:11*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
T0

save/Assign_12Assigndense_1/kernelsave/RestoreV2:12*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(

save/Assign_13Assigndense_1/kernel/Adamsave/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(

save/Assign_14Assigndense_1/kernel/Adam_1save/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(

save/Assign_15Assigndense_2/biassave/RestoreV2:15*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(

save/Assign_16Assigndense_2/bias/Adamsave/RestoreV2:16*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_2/bias

save/Assign_17Assigndense_2/bias/Adam_1save/RestoreV2:17*
_class
loc:@dense_2/bias*
validate_shape(*
use_locking(*
T0

save/Assign_18Assigndense_2/kernelsave/RestoreV2:18*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(

save/Assign_19Assigndense_2/kernel/Adamsave/RestoreV2:19*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(*
T0

save/Assign_20Assigndense_2/kernel/Adam_1save/RestoreV2:20*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(

save/Assign_21Assigndense_3/biassave/RestoreV2:21*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(

save/Assign_22Assigndense_3/bias/Adamsave/RestoreV2:22*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
use_locking(

save/Assign_23Assigndense_3/bias/Adam_1save/RestoreV2:23*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(

save/Assign_24Assigndense_3/kernelsave/RestoreV2:24*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(

save/Assign_25Assigndense_3/kernel/Adamsave/RestoreV2:25*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(

save/Assign_26Assigndense_3/kernel/Adam_1save/RestoreV2:26*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
use_locking(

save/Assign_27Assigndense_4/biassave/RestoreV2:27*
use_locking(*
T0*
_class
loc:@dense_4/bias*
validate_shape(

save/Assign_28Assigndense_4/bias/Adamsave/RestoreV2:28*
_class
loc:@dense_4/bias*
validate_shape(*
use_locking(*
T0

save/Assign_29Assigndense_4/bias/Adam_1save/RestoreV2:29*
T0*
_class
loc:@dense_4/bias*
validate_shape(*
use_locking(

save/Assign_30Assigndense_4/kernelsave/RestoreV2:30*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(

save/Assign_31Assigndense_4/kernel/Adamsave/RestoreV2:31*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_4/kernel

save/Assign_32Assigndense_4/kernel/Adam_1save/RestoreV2:32*!
_class
loc:@dense_4/kernel*
validate_shape(*
use_locking(*
T0

save/Assign_33Assigndense_5/biassave/RestoreV2:33*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(

save/Assign_34Assigndense_5/bias/Adamsave/RestoreV2:34*
_class
loc:@dense_5/bias*
validate_shape(*
use_locking(*
T0

save/Assign_35Assigndense_5/bias/Adam_1save/RestoreV2:35*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(

save/Assign_36Assigndense_5/kernelsave/RestoreV2:36*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(

save/Assign_37Assigndense_5/kernel/Adamsave/RestoreV2:37*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(

save/Assign_38Assigndense_5/kernel/Adam_1save/RestoreV2:38*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
use_locking(

save/Assign_39Assignglobal_stepsave/RestoreV2:39*
T0*
_class
loc:@global_step*
validate_shape(*
use_locking(

save/Assign_40Assignis_continuous_controlsave/RestoreV2:40*(
_class
loc:@is_continuous_control*
validate_shape(*
use_locking(*
T0

save/Assign_41Assignlast_rewardsave/RestoreV2:41*
use_locking(*
T0*
_class
loc:@last_reward*
validate_shape(

save/Assign_42Assignlog_sigma_squaredsave/RestoreV2:42*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(*
use_locking(

save/Assign_43Assignlog_sigma_squared/Adamsave/RestoreV2:43*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(

save/Assign_44Assignlog_sigma_squared/Adam_1save/RestoreV2:44*
validate_shape(*
use_locking(*
T0*$
_class
loc:@log_sigma_squared
¨
save/Assign_45Assignmain_graph_0/hidden_0/biassave/RestoreV2:45*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
­
save/Assign_46Assignmain_graph_0/hidden_0/bias/Adamsave/RestoreV2:46*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
¯
save/Assign_47Assign!main_graph_0/hidden_0/bias/Adam_1save/RestoreV2:47*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
¬
save/Assign_48Assignmain_graph_0/hidden_0/kernelsave/RestoreV2:48*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
±
save/Assign_49Assign!main_graph_0/hidden_0/kernel/Adamsave/RestoreV2:49*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
³
save/Assign_50Assign#main_graph_0/hidden_0/kernel/Adam_1save/RestoreV2:50*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
¨
save/Assign_51Assignmain_graph_0/hidden_1/biassave/RestoreV2:51*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
­
save/Assign_52Assignmain_graph_0/hidden_1/bias/Adamsave/RestoreV2:52*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
¯
save/Assign_53Assign!main_graph_0/hidden_1/bias/Adam_1save/RestoreV2:53*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
¬
save/Assign_54Assignmain_graph_0/hidden_1/kernelsave/RestoreV2:54*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
±
save/Assign_55Assign!main_graph_0/hidden_1/kernel/Adamsave/RestoreV2:55*
validate_shape(*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
³
save/Assign_56Assign#main_graph_0/hidden_1/kernel/Adam_1save/RestoreV2:56*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
¨
save/Assign_57Assignmain_graph_1/hidden_0/biassave/RestoreV2:57*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(
­
save/Assign_58Assignmain_graph_1/hidden_0/bias/Adamsave/RestoreV2:58*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(
¯
save/Assign_59Assign!main_graph_1/hidden_0/bias/Adam_1save/RestoreV2:59*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(
¬
save/Assign_60Assignmain_graph_1/hidden_0/kernelsave/RestoreV2:60*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(*
use_locking(
±
save/Assign_61Assign!main_graph_1/hidden_0/kernel/Adamsave/RestoreV2:61*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(
³
save/Assign_62Assign#main_graph_1/hidden_0/kernel/Adam_1save/RestoreV2:62*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(
¨
save/Assign_63Assignmain_graph_1/hidden_1/biassave/RestoreV2:63*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(*
use_locking(
­
save/Assign_64Assignmain_graph_1/hidden_1/bias/Adamsave/RestoreV2:64*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(*
use_locking(*
T0
¯
save/Assign_65Assign!main_graph_1/hidden_1/bias/Adam_1save/RestoreV2:65*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(*
use_locking(*
T0
¬
save/Assign_66Assignmain_graph_1/hidden_1/kernelsave/RestoreV2:66*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(*
use_locking(
±
save/Assign_67Assign!main_graph_1/hidden_1/kernel/Adamsave/RestoreV2:67*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(
³
save/Assign_68Assign#main_graph_1/hidden_1/kernel/Adam_1save/RestoreV2:68*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(*
use_locking(

save/Assign_69Assignmemory_sizesave/RestoreV2:69*
_class
loc:@memory_size*
validate_shape(*
use_locking(*
T0

save/Assign_70Assignrunning_meansave/RestoreV2:70*
use_locking(*
T0*
_class
loc:@running_mean*
validate_shape(

save/Assign_71Assignrunning_variancesave/RestoreV2:71*
use_locking(*
T0*#
_class
loc:@running_variance*
validate_shape(
´
save/Assign_72Assign vector_obs_encoder/hidden_0/biassave/RestoreV2:72*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias*
validate_shape(
¹
save/Assign_73Assign%vector_obs_encoder/hidden_0/bias/Adamsave/RestoreV2:73*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
»
save/Assign_74Assign'vector_obs_encoder/hidden_0/bias/Adam_1save/RestoreV2:74*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_0/bias
¸
save/Assign_75Assign"vector_obs_encoder/hidden_0/kernelsave/RestoreV2:75*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
validate_shape(
½
save/Assign_76Assign'vector_obs_encoder/hidden_0/kernel/Adamsave/RestoreV2:76*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
validate_shape(
¿
save/Assign_77Assign)vector_obs_encoder/hidden_0/kernel/Adam_1save/RestoreV2:77*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_0/kernel*
validate_shape(*
use_locking(
´
save/Assign_78Assign vector_obs_encoder/hidden_1/biassave/RestoreV2:78*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
validate_shape(
¹
save/Assign_79Assign%vector_obs_encoder/hidden_1/bias/Adamsave/RestoreV2:79*
use_locking(*
T0*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
validate_shape(
»
save/Assign_80Assign'vector_obs_encoder/hidden_1/bias/Adam_1save/RestoreV2:80*3
_class)
'%loc:@vector_obs_encoder/hidden_1/bias*
validate_shape(*
use_locking(*
T0
¸
save/Assign_81Assign"vector_obs_encoder/hidden_1/kernelsave/RestoreV2:81*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
validate_shape(
½
save/Assign_82Assign'vector_obs_encoder/hidden_1/kernel/Adamsave/RestoreV2:82*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
validate_shape(
¿
save/Assign_83Assign)vector_obs_encoder/hidden_1/kernel/Adam_1save/RestoreV2:83*
use_locking(*
T0*5
_class+
)'loc:@vector_obs_encoder/hidden_1/kernel*
validate_shape(

save/Assign_84Assignversion_numbersave/RestoreV2:84*
use_locking(*
T0*!
_class
loc:@version_number*
validate_shape(
±
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84
¢
initNoOp^global_step/Assign^is_continuous_control/Assign^version_number/Assign^memory_size/Assign^action_output_shape/Assign^last_reward/Assign^running_mean/Assign^running_variance/Assign$^main_graph_0/hidden_0/kernel/Assign"^main_graph_0/hidden_0/bias/Assign$^main_graph_0/hidden_1/kernel/Assign"^main_graph_0/hidden_1/bias/Assign$^main_graph_1/hidden_0/kernel/Assign"^main_graph_1/hidden_0/bias/Assign$^main_graph_1/hidden_1/kernel/Assign"^main_graph_1/hidden_1/bias/Assign^dense/kernel/Assign^dense/bias/Assign^log_sigma_squared/Assign^dense_1/kernel/Assign^dense_1/bias/Assign*^vector_obs_encoder/hidden_0/kernel/Assign(^vector_obs_encoder/hidden_0/bias/Assign*^vector_obs_encoder/hidden_1/kernel/Assign(^vector_obs_encoder/hidden_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^dense_4/kernel/Assign^dense_4/bias/Assign^dense_5/kernel/Assign^dense_5/bias/Assign^beta1_power/Assign^beta2_power/Assign)^main_graph_0/hidden_0/kernel/Adam/Assign+^main_graph_0/hidden_0/kernel/Adam_1/Assign'^main_graph_0/hidden_0/bias/Adam/Assign)^main_graph_0/hidden_0/bias/Adam_1/Assign)^main_graph_0/hidden_1/kernel/Adam/Assign+^main_graph_0/hidden_1/kernel/Adam_1/Assign'^main_graph_0/hidden_1/bias/Adam/Assign)^main_graph_0/hidden_1/bias/Adam_1/Assign)^main_graph_1/hidden_0/kernel/Adam/Assign+^main_graph_1/hidden_0/kernel/Adam_1/Assign'^main_graph_1/hidden_0/bias/Adam/Assign)^main_graph_1/hidden_0/bias/Adam_1/Assign)^main_graph_1/hidden_1/kernel/Adam/Assign+^main_graph_1/hidden_1/kernel/Adam_1/Assign'^main_graph_1/hidden_1/bias/Adam/Assign)^main_graph_1/hidden_1/bias/Adam_1/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^log_sigma_squared/Adam/Assign ^log_sigma_squared/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign/^vector_obs_encoder/hidden_0/kernel/Adam/Assign1^vector_obs_encoder/hidden_0/kernel/Adam_1/Assign-^vector_obs_encoder/hidden_0/bias/Adam/Assign/^vector_obs_encoder/hidden_0/bias/Adam_1/Assign/^vector_obs_encoder/hidden_1/kernel/Adam/Assign1^vector_obs_encoder/hidden_1/kernel/Adam_1/Assign-^vector_obs_encoder/hidden_1/bias/Adam/Assign/^vector_obs_encoder/hidden_1/bias/Adam_1/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_2/bias/Adam/Assign^dense_2/bias/Adam_1/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_3/bias/Adam/Assign^dense_3/bias/Adam_1/Assign^dense_4/kernel/Adam/Assign^dense_4/kernel/Adam_1/Assign^dense_4/bias/Adam/Assign^dense_4/bias/Adam_1/Assign^dense_5/kernel/Adam/Assign^dense_5/kernel/Adam_1/Assign^dense_5/bias/Adam/Assign^dense_5/bias/Adam_1/Assign"