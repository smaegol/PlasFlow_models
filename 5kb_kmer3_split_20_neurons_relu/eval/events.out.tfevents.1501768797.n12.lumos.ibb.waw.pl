       �K"	  @�`�Abrain.Event:2,��o�      �4�	��u�`�A"��
m
global_stepVariable*
_output_shapes
: *
shared_name *
dtype0	*
	container *
shape: 

global_step/Initializer/zerosConst*
value	B	 R *
_output_shapes
: *
dtype0	*
_class
loc:@global_step
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
use_locking(*
_output_shapes
: *
validate_shape(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
W
inputPlaceholder*'
_output_shapes
:���������@*
dtype0*
shape: 
T
outputPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape: 
�
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
valueB"����@   *
dtype0*
_output_shapes
:
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*
T0*'
_output_shapes
:���������@
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
<input_from_feature_columns/input_from_feature_columns/concatIdentity=input_from_feature_columns/input_from_feature_columns/Reshape*
T0*'
_output_shapes
:���������@
�
!hiddenlayer_0/hiddenlayer_0/ShapeShape<input_from_feature_columns/input_from_feature_columns/concat*
T0*
_output_shapes
:
�
"hiddenlayer_0/hiddenlayer_0/unpackUnpack!hiddenlayer_0/hiddenlayer_0/Shape*	
num*
T0*
_output_shapes
: : *

axis 
�
hiddenlayer_0/weights/part_0Variable*
_output_shapes

:@*
shared_name *
dtype0*
	container *
shape
:@
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"@      *
_output_shapes
:*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *wֈ�*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *wֈ>*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
T0*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
seed2*

seed**
_output_shapes

:@
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_0/weights/part_0/Initializer/random_uniform/max;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
: 
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes

:@
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes

:@
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
T0*
use_locking(*
_output_shapes

:@*
validate_shape(*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes

:@
m
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
T0*
_output_shapes

:@
�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:���������
�
hiddenlayer_0/biases/part_0Variable*
_output_shapes
:*
shared_name *
dtype0*
	container *
shape:
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
T0*
use_locking(*
_output_shapes
:*
validate_shape(*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
:
g
hiddenlayer_0/biasesIdentity hiddenlayer_0/biases/part_0/read*
T0*
_output_shapes
:
�
#hiddenlayer_0/hiddenlayer_0/BiasAddBiasAdd"hiddenlayer_0/hiddenlayer_0/MatMulhiddenlayer_0/biases*
T0*
data_formatNHWC*'
_output_shapes
:���������

 hiddenlayer_0/hiddenlayer_0/ReluRelu#hiddenlayer_0/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:���������
W
zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
zero_fraction/EqualEqual hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*
T0*'
_output_shapes
:���������
p
zero_fraction/CastCastzero_fraction/Equal*

DstT0*

SrcT0
*'
_output_shapes
:���������
d
zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
T0*
_output_shapes
: *
	keep_dims( 
x
ScalarSummary/tagsConst*6
value-B+ B%hiddenlayer_0:fraction_of_zero_values*
dtype0*
_output_shapes
: 
g
ScalarSummaryScalarSummaryScalarSummary/tagszero_fraction/Mean*
T0*
_output_shapes
: 
m
HistogramSummary/tagConst*)
value B Bhiddenlayer_0:activation*
dtype0*
_output_shapes
: 
}
HistogramSummaryHistogramSummaryHistogramSummary/tag hiddenlayer_0/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
k
dnn_logits/dnn_logits/ShapeShape hiddenlayer_0/hiddenlayer_0/Relu*
T0*
_output_shapes
:
}
dnn_logits/dnn_logits/unpackUnpackdnn_logits/dnn_logits/Shape*	
num*
T0*
_output_shapes
: : *

axis 
�
dnn_logits/weights/part_0Variable*
_output_shapes

: *
shared_name *
dtype0*
	container *
shape
: 
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"       *
_output_shapes
:*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *�ꭾ*
_output_shapes
: *
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *��>*
_output_shapes
: *
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*
T0*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0*
seed2.*

seed**
_output_shapes

: 
�
8dnn_logits/weights/part_0/Initializer/random_uniform/subSub8dnn_logits/weights/part_0/Initializer/random_uniform/max8dnn_logits/weights/part_0/Initializer/random_uniform/min*
T0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
: 
�
8dnn_logits/weights/part_0/Initializer/random_uniform/mulMulBdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn_logits/weights/part_0/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

: 
�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*
T0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

: 
�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
T0*
use_locking(*
_output_shapes

: *
validate_shape(*,
_class"
 loc:@dnn_logits/weights/part_0
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*
T0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

: 
g
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
T0*
_output_shapes

: 
�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reludnn_logits/weights*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:��������� 
�
dnn_logits/biases/part_0Variable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
valueB *    *
_output_shapes
: *
dtype0*+
_class!
loc:@dnn_logits/biases/part_0
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*+
_class!
loc:@dnn_logits/biases/part_0
�
dnn_logits/biases/part_0/readIdentitydnn_logits/biases/part_0*
T0*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
: 
a
dnn_logits/biasesIdentitydnn_logits/biases/part_0/read*
T0*
_output_shapes
: 
�
dnn_logits/dnn_logits/BiasAddBiasAdddnn_logits/dnn_logits/MatMuldnn_logits/biases*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
Y
zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
zero_fraction_1/EqualEqualdnn_logits/dnn_logits/BiasAddzero_fraction_1/zero*
T0*'
_output_shapes
:��������� 
t
zero_fraction_1/CastCastzero_fraction_1/Equal*

DstT0*

SrcT0
*'
_output_shapes
:��������� 
f
zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
T0*
_output_shapes
: *
	keep_dims( 
w
ScalarSummary_1/tagsConst*3
value*B( B"dnn_logits:fraction_of_zero_values*
dtype0*
_output_shapes
: 
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
T0*
_output_shapes
: 
l
HistogramSummary_1/tagConst*&
valueB Bdnn_logits:activation*
dtype0*
_output_shapes
: 
~
HistogramSummary_1HistogramSummaryHistogramSummary_1/tagdnn_logits/dnn_logits/BiasAdd*
T0*
_output_shapes
: 
R
zerosConst*
valueB *    *
dtype0*
_output_shapes
: 
~
centered_bias_weightVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*'
_class
loc:@centered_bias_weight
�
centered_bias_weight/readIdentitycentered_bias_weight*
T0*'
_class
loc:@centered_bias_weight*
_output_shapes
: 
`
Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
a
ReshapeReshapecentered_bias_weight/readReshape/shape*
T0*
_output_shapes
: 
�
ScalarSummary_2/tagsConst*�
value�B� Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14Bcentered_bias_15Bcentered_bias_16Bcentered_bias_17Bcentered_bias_18Bcentered_bias_19Bcentered_bias_20Bcentered_bias_21Bcentered_bias_22Bcentered_bias_23Bcentered_bias_24Bcentered_bias_25Bcentered_bias_26Bcentered_bias_27Bcentered_bias_28Bcentered_bias_29Bcentered_bias_30Bcentered_bias_31*
dtype0*
_output_shapes
: 
`
ScalarSummary_2ScalarSummaryScalarSummary_2/tagsReshape*
T0*
_output_shapes
: 
�
BiasAddBiasAdddnn_logits/dnn_logits/BiasAddcentered_bias_weight/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
_
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeoutput*
T0	*
_output_shapes
:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsBiasAddoutput*
T0*6
_output_shapes$
":���������:��������� *
Tlabels0	
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
T0*
_output_shapes
: *
	keep_dims( 
O

mean/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l

mean/totalVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
mean/total/AssignAssign
mean/total
mean/zeros*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*
_class
loc:@mean/total
g
mean/total/readIdentity
mean/total*
T0*
_class
loc:@mean/total*
_output_shapes
: 
Q
mean/zeros_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
l

mean/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*
_class
loc:@mean/count
g
mean/count/readIdentity
mean/count*
T0*
_class
loc:@mean/count*
_output_shapes
: 
8
	mean/SizeSizeloss*
T0*
_output_shapes
: 
Q
mean/ToFloat_1Cast	mean/Size*

DstT0*

SrcT0*
_output_shapes
: 
M

mean/ConstConst*
valueB *
dtype0*
_output_shapes
: 
S
mean/SumSumloss
mean/Const*
T0*
_output_shapes
: *
	keep_dims( 
�
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
T0*
use_locking( *
_output_shapes
: *
_class
loc:@mean/total
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
T0*
use_locking( *
_output_shapes
: *
_class
loc:@mean/count
S
mean/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Y
mean/GreaterGreatermean/count/readmean/Greater/y*
T0*
_output_shapes
: 
R
mean/DivDivmean/total/readmean/count/read*
T0*
_output_shapes
: 
Q
mean/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 
[

mean/valueSelectmean/Greatermean/Divmean/value/e*
T0*
_output_shapes
: 
y
mean/Greater_1/yConst^mean/AssignAdd^mean/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
]
mean/Greater_1Greatermean/count/readmean/Greater_1/y*
T0*
_output_shapes
: 
x

mean/Div_1Divmean/total/readmean/count/read^mean/AssignAdd^mean/AssignAdd_1*
T0*
_output_shapes
: 
y
mean/update_op/eConst^mean/AssignAdd^mean/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
g
mean/update_opSelectmean/Greater_1
mean/Div_1mean/update_op/e*
T0*
_output_shapes
: 
M
SigmoidSigmoidBiasAdd*
T0*'
_output_shapes
:��������� 
T
ToFloatCastoutput*

DstT0*

SrcT0	*#
_output_shapes
:���������
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Y
ArgMaxArgMaxBiasAddArgMax/dimension*
T0*#
_output_shapes
:���������
_
recall/true_positives/Equal/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
y
recall/true_positives/EqualEqualoutputrecall/true_positives/Equal/y*
T0	*#
_output_shapes
:���������
a
recall/true_positives/Equal_1/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
}
recall/true_positives/Equal_1EqualArgMaxrecall/true_positives/Equal_1/y*
T0	*#
_output_shapes
:���������
�
 recall/true_positives/LogicalAnd
LogicalAndrecall/true_positives/Equalrecall/true_positives/Equal_1*#
_output_shapes
:���������
`
recall/true_positives/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
}
recall/true_positives/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*.
_class$
" loc:@recall/true_positives/count
�
 recall/true_positives/count/readIdentityrecall/true_positives/count*
T0*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: 
�
recall/true_positives/ToFloatCast recall/true_positives/LogicalAnd*

DstT0*

SrcT0
*#
_output_shapes
:���������
m
recall/true_positives/IdentityIdentity recall/true_positives/count/read*
T0*
_output_shapes
: 
e
recall/true_positives/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
T0*
_output_shapes
: *
	keep_dims( 
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
T0*
use_locking( *
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count
`
recall/false_negatives/Equal/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
{
recall/false_negatives/EqualEqualoutputrecall/false_negatives/Equal/y*
T0	*#
_output_shapes
:���������
b
 recall/false_negatives/Equal_1/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

recall/false_negatives/Equal_1EqualArgMax recall/false_negatives/Equal_1/y*
T0	*#
_output_shapes
:���������
�
!recall/false_negatives/LogicalAnd
LogicalAndrecall/false_negatives/Equalrecall/false_negatives/Equal_1*#
_output_shapes
:���������
a
recall/false_negatives/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
~
recall/false_negatives/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*/
_class%
#!loc:@recall/false_negatives/count
�
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*
T0*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: 
�
recall/false_negatives/ToFloatCast!recall/false_negatives/LogicalAnd*

DstT0*

SrcT0
*#
_output_shapes
:���������
o
recall/false_negatives/IdentityIdentity!recall/false_negatives/count/read*
T0*
_output_shapes
: 
f
recall/false_negatives/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
T0*
_output_shapes
: *
	keep_dims( 
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
T0*
use_locking( *
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count
s

recall/addAddrecall/true_positives/Identityrecall/false_negatives/Identity*
T0*
_output_shapes
: 
U
recall/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
X
recall/GreaterGreater
recall/addrecall/Greater/y*
T0*
_output_shapes
: 
u
recall/add_1Addrecall/true_positives/Identityrecall/false_negatives/Identity*
T0*
_output_shapes
: 
`

recall/DivDivrecall/true_positives/Identityrecall/add_1*
T0*
_output_shapes
: 
S
recall/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 
c
recall/valueSelectrecall/Greater
recall/Divrecall/value/e*
T0*
_output_shapes
: 
�
recall/add_2Addrecall/true_positives/Identityrecall/false_negatives/Identity ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
T0*
_output_shapes
: 
�
recall/Greater_1/yConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
valueB
 *    *
dtype0*
_output_shapes
: 
^
recall/Greater_1Greaterrecall/add_2recall/Greater_1/y*
T0*
_output_shapes
: 
�
recall/add_3Addrecall/true_positives/Identityrecall/false_negatives/Identity ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
T0*
_output_shapes
: 
b
recall/Div_1Divrecall/true_positives/Identityrecall/add_3*
T0*
_output_shapes
: 
�
recall/update_op/eConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
valueB
 *    *
dtype0*
_output_shapes
: 
o
recall/update_opSelectrecall/Greater_1recall/Div_1recall/update_op/e*
T0*
_output_shapes
: 
L
EqualEqualArgMaxoutput*
T0	*#
_output_shapes
:���������
U
	ToFloat_1CastEqual*

DstT0*

SrcT0
*#
_output_shapes
:���������
S
accuracy/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
accuracy/totalVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*!
_class
loc:@accuracy/total
s
accuracy/total/readIdentityaccuracy/total*
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
U
accuracy/zeros_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
p
accuracy/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*!
_class
loc:@accuracy/count
s
accuracy/count/readIdentityaccuracy/count*
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
A
accuracy/SizeSize	ToFloat_1*
T0*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*

SrcT0*
_output_shapes
: 
X
accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
`
accuracy/SumSum	ToFloat_1accuracy/Const*
T0*
_output_shapes
: *
	keep_dims( 
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
T0*
use_locking( *
_output_shapes
: *!
_class
loc:@accuracy/total
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
T0*
use_locking( *
_output_shapes
: *!
_class
loc:@accuracy/count
W
accuracy/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
T0*
_output_shapes
: 
^
accuracy/DivDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
U
accuracy/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
accuracy/valueSelectaccuracy/Greateraccuracy/Divaccuracy/value/e*
T0*
_output_shapes
: 
�
accuracy/Greater_1/yConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
i
accuracy/Greater_1Greateraccuracy/count/readaccuracy/Greater_1/y*
T0*
_output_shapes
: 
�
accuracy/Div_1Divaccuracy/total/readaccuracy/count/read^accuracy/AssignAdd^accuracy/AssignAdd_1*
T0*
_output_shapes
: 
�
accuracy/update_op/eConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
w
accuracy/update_opSelectaccuracy/Greater_1accuracy/Div_1accuracy/update_op/e*
T0*
_output_shapes
: 
b
 precision/true_positives/Equal/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

precision/true_positives/EqualEqualoutput precision/true_positives/Equal/y*
T0	*#
_output_shapes
:���������
d
"precision/true_positives/Equal_1/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
�
 precision/true_positives/Equal_1EqualArgMax"precision/true_positives/Equal_1/y*
T0	*#
_output_shapes
:���������
�
#precision/true_positives/LogicalAnd
LogicalAndprecision/true_positives/Equal precision/true_positives/Equal_1*#
_output_shapes
:���������
c
precision/true_positives/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
precision/true_positives/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*1
_class'
%#loc:@precision/true_positives/count
�
#precision/true_positives/count/readIdentityprecision/true_positives/count*
T0*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: 
�
 precision/true_positives/ToFloatCast#precision/true_positives/LogicalAnd*

DstT0*

SrcT0
*#
_output_shapes
:���������
s
!precision/true_positives/IdentityIdentity#precision/true_positives/count/read*
T0*
_output_shapes
: 
h
precision/true_positives/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
T0*
_output_shapes
: *
	keep_dims( 
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
T0*
use_locking( *
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count
c
!precision/false_positives/Equal/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
precision/false_positives/EqualEqualoutput!precision/false_positives/Equal/y*
T0	*#
_output_shapes
:���������
e
#precision/false_positives/Equal_1/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
�
!precision/false_positives/Equal_1EqualArgMax#precision/false_positives/Equal_1/y*
T0	*#
_output_shapes
:���������
�
$precision/false_positives/LogicalAnd
LogicalAndprecision/false_positives/Equal!precision/false_positives/Equal_1*#
_output_shapes
:���������
d
precision/false_positives/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
precision/false_positives/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*2
_class(
&$loc:@precision/false_positives/count
�
$precision/false_positives/count/readIdentityprecision/false_positives/count*
T0*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: 
�
!precision/false_positives/ToFloatCast$precision/false_positives/LogicalAnd*

DstT0*

SrcT0
*#
_output_shapes
:���������
u
"precision/false_positives/IdentityIdentity$precision/false_positives/count/read*
T0*
_output_shapes
: 
i
precision/false_positives/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
T0*
_output_shapes
: *
	keep_dims( 
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
T0*
use_locking( *
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count
|
precision/addAdd!precision/true_positives/Identity"precision/false_positives/Identity*
T0*
_output_shapes
: 
X
precision/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
precision/GreaterGreaterprecision/addprecision/Greater/y*
T0*
_output_shapes
: 
~
precision/add_1Add!precision/true_positives/Identity"precision/false_positives/Identity*
T0*
_output_shapes
: 
i
precision/DivDiv!precision/true_positives/Identityprecision/add_1*
T0*
_output_shapes
: 
V
precision/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
precision/valueSelectprecision/Greaterprecision/Divprecision/value/e*
T0*
_output_shapes
: 
�
precision/add_2Add!precision/true_positives/Identity"precision/false_positives/Identity#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
T0*
_output_shapes
: 
�
precision/Greater_1/yConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
valueB
 *    *
dtype0*
_output_shapes
: 
g
precision/Greater_1Greaterprecision/add_2precision/Greater_1/y*
T0*
_output_shapes
: 
�
precision/add_3Add!precision/true_positives/Identity"precision/false_positives/Identity#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
T0*
_output_shapes
: 
k
precision/Div_1Div!precision/true_positives/Identityprecision/add_3*
T0*
_output_shapes
: 
�
precision/update_op/eConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
valueB
 *    *
dtype0*
_output_shapes
: 
{
precision/update_opSelectprecision/Greater_1precision/Div_1precision/update_op/e*
T0*
_output_shapes
: 
H
subSubArgMaxoutput*
T0	*#
_output_shapes
:���������
=
AbsAbssub*
T0	*#
_output_shapes
:���������
e
mean_absolute_error/ToFloatCastAbs*

DstT0*

SrcT0	*#
_output_shapes
:���������
^
mean_absolute_error/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
{
mean_absolute_error/totalVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*,
_class"
 loc:@mean_absolute_error/total
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*
T0*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: 
`
mean_absolute_error/zeros_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
{
mean_absolute_error/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*,
_class"
 loc:@mean_absolute_error/count
�
mean_absolute_error/count/readIdentitymean_absolute_error/count*
T0*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: 
^
mean_absolute_error/SizeSizemean_absolute_error/ToFloat*
T0*
_output_shapes
: 
o
mean_absolute_error/ToFloat_1Castmean_absolute_error/Size*

DstT0*

SrcT0*
_output_shapes
: 
c
mean_absolute_error/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
T0*
_output_shapes
: *
	keep_dims( 
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*
T0*
use_locking( *
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
T0*
use_locking( *
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count
b
mean_absolute_error/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_absolute_error/GreaterGreatermean_absolute_error/count/readmean_absolute_error/Greater/y*
T0*
_output_shapes
: 

mean_absolute_error/DivDivmean_absolute_error/total/readmean_absolute_error/count/read*
T0*
_output_shapes
: 
`
mean_absolute_error/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_absolute_error/valueSelectmean_absolute_error/Greatermean_absolute_error/Divmean_absolute_error/value/e*
T0*
_output_shapes
: 
�
mean_absolute_error/Greater_1/yConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_absolute_error/Greater_1Greatermean_absolute_error/count/readmean_absolute_error/Greater_1/y*
T0*
_output_shapes
: 
�
mean_absolute_error/Div_1Divmean_absolute_error/total/readmean_absolute_error/count/read^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
T0*
_output_shapes
: 
�
mean_absolute_error/update_op/eConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_absolute_error/update_opSelectmean_absolute_error/Greater_1mean_absolute_error/Div_1mean_absolute_error/update_op/e*
T0*
_output_shapes
: 
J
sub_1SuboutputArgMax*
T0	*#
_output_shapes
:���������
E
SquareSquaresub_1*
T0	*#
_output_shapes
:���������
g
mean_squared_error/ToFloatCastSquare*

DstT0*

SrcT0	*#
_output_shapes
:���������
]
mean_squared_error/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
mean_squared_error/totalVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*+
_class!
loc:@mean_squared_error/total
�
mean_squared_error/total/readIdentitymean_squared_error/total*
T0*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: 
_
mean_squared_error/zeros_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
z
mean_squared_error/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*+
_class!
loc:@mean_squared_error/count
�
mean_squared_error/count/readIdentitymean_squared_error/count*
T0*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: 
\
mean_squared_error/SizeSizemean_squared_error/ToFloat*
T0*
_output_shapes
: 
m
mean_squared_error/ToFloat_1Castmean_squared_error/Size*

DstT0*

SrcT0*
_output_shapes
: 
b
mean_squared_error/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
T0*
_output_shapes
: *
	keep_dims( 
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*
T0*
use_locking( *
_output_shapes
: *+
_class!
loc:@mean_squared_error/total
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
T0*
use_locking( *
_output_shapes
: *+
_class!
loc:@mean_squared_error/count
a
mean_squared_error/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_squared_error/GreaterGreatermean_squared_error/count/readmean_squared_error/Greater/y*
T0*
_output_shapes
: 
|
mean_squared_error/DivDivmean_squared_error/total/readmean_squared_error/count/read*
T0*
_output_shapes
: 
_
mean_squared_error/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/Divmean_squared_error/value/e*
T0*
_output_shapes
: 
�
mean_squared_error/Greater_1/yConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_squared_error/Greater_1Greatermean_squared_error/count/readmean_squared_error/Greater_1/y*
T0*
_output_shapes
: 
�
mean_squared_error/Div_1Divmean_squared_error/total/readmean_squared_error/count/read^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
T0*
_output_shapes
: 
�
mean_squared_error/update_op/eConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_squared_error/update_opSelectmean_squared_error/Greater_1mean_squared_error/Div_1mean_squared_error/update_op/e*
T0*
_output_shapes
: 
�

group_depsNoOp^recall/update_op^accuracy/update_op^mean_squared_error/update_op^mean/update_op^precision/update_op^mean_absolute_error/update_op
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/save/tensor_namesConst*�
value�BBcentered_bias_weightBdnn_logits/biasesBdnn_logits/weightsBglobal_stepBhiddenlayer_0/biasesBhiddenlayer_0/weights*
dtype0*
_output_shapes
:
�
save/save/shapes_and_slicesConst*K
valueBB@B B32 0,32B20 32 0,20:0,32B B20 0,20B64 20 0,64:0,20*
dtype0*
_output_shapes
:
�
	save/save
SaveSlices
save/Constsave/save/tensor_namessave/save/shapes_and_slicescentered_bias_weightdnn_logits/biases/part_0/readdnn_logits/weights/part_0/readglobal_step hiddenlayer_0/biases/part_0/read!hiddenlayer_0/weights/part_0/read*
T

2	
{
save/control_dependencyIdentity
save/Const
^save/save*
T0*
_class
loc:@save/Const*
_output_shapes
: 
s
save/restore_slice/tensor_nameConst*%
valueB Bcentered_bias_weight*
dtype0*
_output_shapes
: 
c
"save/restore_slice/shape_and_sliceConst*
valueB B *
dtype0*
_output_shapes
: 
�
save/restore_sliceRestoreSlice
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*'
_class
loc:@centered_bias_weight
r
 save/restore_slice_1/tensor_nameConst*"
valueB Bdnn_logits/biases*
dtype0*
_output_shapes
: 
l
$save/restore_slice_1/shape_and_sliceConst*
valueB B32 0,32*
dtype0*
_output_shapes
: 
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
T0*
use_locking(*
_output_shapes
: *
validate_shape(*+
_class!
loc:@dnn_logits/biases/part_0
s
 save/restore_slice_2/tensor_nameConst*#
valueB Bdnn_logits/weights*
dtype0*
_output_shapes
: 
t
$save/restore_slice_2/shape_and_sliceConst* 
valueB B20 32 0,20:0,32*
dtype0*
_output_shapes
: 
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
T0*
use_locking(*
_output_shapes

: *
validate_shape(*,
_class"
 loc:@dnn_logits/weights/part_0
l
 save/restore_slice_3/tensor_nameConst*
valueB Bglobal_step*
dtype0*
_output_shapes
: 
e
$save/restore_slice_3/shape_and_sliceConst*
valueB B *
dtype0*
_output_shapes
: 
�
save/restore_slice_3RestoreSlice
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
preferred_shard���������*
dt0	*
_output_shapes
:
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
T0	*
use_locking(*
_output_shapes
: *
validate_shape(*
_class
loc:@global_step
u
 save/restore_slice_4/tensor_nameConst*%
valueB Bhiddenlayer_0/biases*
dtype0*
_output_shapes
: 
l
$save/restore_slice_4/shape_and_sliceConst*
valueB B20 0,20*
dtype0*
_output_shapes
: 
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
T0*
use_locking(*
_output_shapes
:*
validate_shape(*.
_class$
" loc:@hiddenlayer_0/biases/part_0
v
 save/restore_slice_5/tensor_nameConst*&
valueB Bhiddenlayer_0/weights*
dtype0*
_output_shapes
: 
t
$save/restore_slice_5/shape_and_sliceConst* 
valueB B64 20 0,64:0,20*
dtype0*
_output_shapes
: 
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
T0*
use_locking(*
_output_shapes

:@*
validate_shape(*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
v
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5
�
initNoOp^mean/total/Assign^mean/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign^accuracy/total/Assign^accuracy/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign

init_all_tablesNoOp
-
group_deps_1NoOp^init^init_all_tables
�
IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
IsVariableInitialized_1IsVariableInitializedhiddenlayer_0/weights/part_0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_2IsVariableInitializedhiddenlayer_0/biases/part_0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_3IsVariableInitializeddnn_logits/weights/part_0*,
_class"
 loc:@dnn_logits/weights/part_0*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_4IsVariableInitializeddnn_logits/biases/part_0*+
_class!
loc:@dnn_logits/biases/part_0*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_5IsVariableInitializedcentered_bias_weight*'
_class
loc:@centered_bias_weight*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_6IsVariableInitialized
mean/total*
_class
loc:@mean/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_7IsVariableInitialized
mean/count*
_class
loc:@mean/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_8IsVariableInitializedrecall/true_positives/count*.
_class$
" loc:@recall/true_positives/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitializedrecall/false_negatives/count*/
_class%
#!loc:@recall/false_negatives/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_10IsVariableInitializedaccuracy/total*!
_class
loc:@accuracy/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_11IsVariableInitializedaccuracy/count*!
_class
loc:@accuracy/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_12IsVariableInitializedprecision/true_positives/count*1
_class'
%#loc:@precision/true_positives/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedprecision/false_positives/count*2
_class(
&$loc:@precision/false_positives/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_14IsVariableInitializedmean_absolute_error/total*,
_class"
 loc:@mean_absolute_error/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedmean_absolute_error/count*,
_class"
 loc:@mean_absolute_error/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedmean_squared_error/total*+
_class!
loc:@mean_squared_error/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedmean_squared_error/count*+
_class!
loc:@mean_squared_error/count*
dtype0*
_output_shapes
: 
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17*
T0
*
N*
_output_shapes
:*

axis 
:

LogicalNot
LogicalNotpack*
_output_shapes
:
�
Const_1Const*�
value�B�Bglobal_stepBhiddenlayer_0/weights/part_0Bhiddenlayer_0/biases/part_0Bdnn_logits/weights/part_0Bdnn_logits/biases/part_0Bcentered_bias_weightB
mean/totalB
mean/countBrecall/true_positives/countBrecall/false_negatives/countBaccuracy/totalBaccuracy/countBprecision/true_positives/countBprecision/false_positives/countBmean_absolute_error/totalBmean_absolute_error/countBmean_squared_error/totalBmean_squared_error/count*
dtype0*
_output_shapes
:
[
$report_uninitialized_variables/ShapeShapeConst_1*
T0*
_output_shapes
:
t
*report_uninitialized_variables/Slice/beginConst*
valueB:*
dtype0*
_output_shapes
:
|
)report_uninitialized_variables/Slice/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
T0*
Index0*
_output_shapes
: 
r
0report_uninitialized_variables/concat/concat_dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
.report_uninitialized_variables/concat/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
�
%report_uninitialized_variables/concatConcat0report_uninitialized_variables/concat/concat_dim.report_uninitialized_variables/concat/values_0$report_uninitialized_variables/Slice*
T0*
_output_shapes
:*
N
�
&report_uninitialized_variables/ReshapeReshapeConst_1%report_uninitialized_variables/concat*
T0*
_output_shapes
:
�
.report_uninitialized_variables/Reshape_1/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
(report_uninitialized_variables/Reshape_1Reshape
LogicalNot.report_uninitialized_variables/Reshape_1/shape*
T0
*
_output_shapes
:
�
$report_uninitialized_variables/WhereWhere(report_uninitialized_variables/Reshape_1*'
_output_shapes
:���������
�
&report_uninitialized_variables/SqueezeSqueeze$report_uninitialized_variables/Where*
T0	*
squeeze_dims
*#
_output_shapes
:���������
�
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*
Tparams0*
validate_indices(*#
_output_shapes
:���������*
Tindices0	"
qzk�e       ��Zi	��u�`�A�*W

recall    

accuracy��>


MSE� (C

lossws�?

	precision    


MAE�7A�P:[e       ��Zi	��8�`�A�*W

recall    

accuracy��>


MSE�!'C

loss���?

	precision    


MAEs�A	g�Ue       ��Zi	酙X�`�A�*W

recall  �?

accuracy���>


MSE^^ C

lossg��?

	precision  �?


MAE��Ax��e       ��Zi	0Ly�`�A�	*W

recall  �?

accuracy?


MSElC

loss���?

	precision  �?


MAEA�@�7%Se       ��Zi	����`�A�*W

recall  �?

accuracy<?


MSEYC

lossm(�?

	precision  �?


MAE'��@��AEe       ��Zi	�~غ�`�A�*W

recall  �?

accuracy�
?


MSE� C

lossJ2�?

	precision  �?


MAE���@��?�e       ��Zi	����`�A�*W

recall  �?

accuracy3x?


MSE� C

lossZj�?

	precisiont�?


MAE �@&�#�e       ��Zi	J72��`�A�*W

recall  �?

accuracy��
?


MSE��B

lossS��?

	precision��?


MAEpn�@6<�e       ��Zi	~:��`�A�*W

recall  �?

accuracy��?


MSE�9�B

loss��?

	precision��?


MAEy�@p  e       ��Zi	-��=�`�A�*W

recall  �?

accuracy8�?


MSE?�B

loss�7�?

	precision��?


MAE���@���e       ��Zi	��u^�`�A�*W

recall  �?

accuracyM?


MSE��B

loss�"�?

	precision��?


MAE���@�G(�e       ��Zi	:],�`�A�*W

recall  �?

accuracyz?


MSE��B

lossu�?

	precisionO�?


MAE�<�@��
e       ��Zi	�ຟ�`�A�*W

recall  �?

accuracy{
?


MSE���B

loss�?

	precisionb�?


MAE`�@��x	e       ��Zi	II`��`�A� *W

recall  �?

accuracy��?


MSE�q�B

loss�ס?

	precision�?


MAEً�@b�e       ��Zi	׫��`�A�#*W

recall  �?

accuracy�^?


MSE1�B

loss�Ơ?

	precision1}?


MAE���@�� e       ��Zi	)���`�A�%*W

recall  �?

accuracyc�?


MSE���B

loss�П?

	precisionz�?


MAE`�@�m�Fe       ��Zi	�5�"�`�A�'*W

recall  �?

accuracy7F?


MSEG��B

loss��?

	precision��?


MAE�7�@�l�Te       ��Zi	/C�`�A�**W

recall  �?

accuracyj�?


MSE;�B

loss��?

	precision��?


MAEpf�@~A��e       ��Zi	p��c�`�A�,*W

recall  �?

accuracy�T?


MSE�Y�B

loss�Y�?

	precision�?


MAE���@&��Ze       ��Zi	�݋��`�A�.*W

recall  �?

accuracy�?


MSEʃ�B

loss	��?

	precision�?


MAE��@��Le       ��Zi	\;>��`�A�1*W

recall  �?

accuracy��?


MSEj&�B

loss��?

	precision�?


MAE��@���e       ��Zi	˿���`�A�3*W

recall  �?

accuracy�]?


MSE�U�B

loss�8�?

	precision�}?


MAE��@�6��e       ��Zi	ύ���`�A�5*W

recall  �?

accuracyɪ?


MSEP�B

loss���?

	precision�}?


MAE0d�@�\��e       ��Zi	�5�`�A�8*W

recall  �?

accuracy<�?


MSE16�B

loss���?

	precision�}?


MAE��@�K}e       ��Zi	�V�'�`�A�:*W

recall  �?

accuracy ?


MSE���B

loss�7�?

	precision�}?


MAE���@u�}�e       ��Zi	h!�H�`�A�<*W

recall  �?

accuracy�m?


MSEE��B

loss	��?

	precision�}?


MAE���@w:��e       ��Zi	lji�`�A�?*W

recall  �?

accuracy��?


MSE�4�B

loss�?

	precision�}?


MAE���@Ļ"ee       ��Zi	p#��`�A�A*W

recall  �?

accuracyJR?


MSEɒ�B

loss�=�?

	precisionY}?


MAE�T�@1iU]e       ��Zi	��Ȫ�`�A�C*W

recall  �?

accuracy��?


MSE4u�B

loss\��?

	precision#}?


MAExt�@�/�$e       ��Zi	�̪��`�A�F*W

recall  �?

accuracy�E?


MSEG_�B

loss��?

	precision�|?


MAE陾@춛�e       ��Zi	y_���`�A�H*W

recall  �?

accuracy��?


MSE���B

loss�D�?

	precision�|?


MAE���@�E1�e       ��Zi	2�E�`�A�K*W

recall  �?

accuracy�1?


MSE���B

lossx��?

	precision�|?


MAEO2�@���e       ��Zi	���-�`�A�M*W

recall  �?

accuracyy�?


MSE��B

loss���?

	precision1|?


MAE�P�@���e       ��Zi	���N�`�A�O*W

recall  �?

accuracyH?


MSE%��B

loss|X�?

	precision�{?


MAE�O�@��be       ��Zi	��Xo�`�A�R*W

recall  �?

accuracy��?


MSE���B

losso��?

	precision��?


MAE�_�@*��7e       ��Zi	����`�A�T*W

recall  �?

accuracy�A?


MSEu��B

loss� �?

	precision��?


MAE���@,�,�e       ��Zi	�Lǰ�`�A�V*W

recall  �?

accuracy��?


MSEH�B

lossf��?

	precision��?


MAE:a�@��i�e       ��Zi	ͼ���`�A�Y*W

recall  �?

accuracy�9?


MSE��B

loss��?

	precisione�?


MAE�t�@��q�e       ��Zi	Zg��`�A�[*W

recall  �?

accuracy̃?


MSE�A�B

loss�o�?

	precision8�?


MAE�@]�e       ��Zi	��`�A�]*W

recall  �?

accuracy��?


MSE ��B

loss��?

	precision�?


MAE)_�@鷆�e       ��Zi	�h�3�`�A�`*W

recall  �?

accuracy&'?


MSE	b�B

loss�f�?

	precision�?


MAE��@v���e       ��Zi	ywT�`�A�b*W

recall  �?

accuracy��?


MSE[K�B

loss��?

	precision��?


MAE��@���e       ��Zi	׵#u�`�A�d*W

recall  �?

accuracy�?


MSE�C�B

loss�q�?

	precision��?


MAE�޳@���e       ��Zi	�lȕ�`�A�g*W

recall  �?

accuracy�?


MSE���B

lossN��?

	precisionX�?


MAE	��@5�e       ��Zi	pl��`�A�i*W

recall  �?

accuracyg7?


MSE y�B

lossf��?

	precisionA�?


MAE9?�@�&U�e       ��Zi	�*��`�A�k*W

recall  �?

accuracy��?


MSE���B

lossX�?

	precision�?


MAE��@�u�?e       ��Zi	�����`�A�n*W

recall  �?

accuracy��?


MSE�ԾB

loss(��?

	precisionϓ?


MAEr�@�Cse       ��Zi	0���`�A�p*W

recall  �?

accuracy�G ?


MSEw�B

lossc4�?

	precision��?


MAE�@f�ˬe       ��Zi	��>9�`�A�r*W

recall  �?

accuracy� ?


MSE�0�B

loss΋?

	precision]�?


MAEZ�@�t�e       ��Zi	Z�Y�`�A�u*W

recall  �?

accuracy� ?


MSE�{�B

loss�l�?

	precisionQ�?


MAE"ȯ@�ve       ��Zi	��z�`�A�w*W

recall  �?

accuracy<!?


MSEs.�B

loss��?

	precisionݒ?


MAE���@[���e       ��Zi	h_��`�A�y*W

recall  �?

accuracy�Z!?


MSE\@�B

loss���?

	precision��?


MAE*ˮ@��xe       ��Zi	=���`�A�|*W

recall  �?

accuracyӉ!?


MSE���B

loss�_�?

	precision9�?


MAEK��@�\�|e       ��Zi	?q���`�A�~*W

recall  �?

accuracy��!?


MSExr�B

loss��?

	precision.�?


MAE��@�(h�f       r;�j	� ���`�A�*W

recall  �?

accuracy��!?


MSE���B

lossm��?

	precision"�?


MAEs��@?�of       r;�j	�C�`�A��*W

recall  �?

accuracy�"?


MSEI͹B

loss
o�?

	precisionϑ?


MAE���@� kf       r;�j	�?�`�A̅*W

recall  �?

accuracy30"?


MSEݢ�B

loss�#�?

	precision��?


MAE�_�@7�kf       r;�j	l�_�`�A��*W

recall  �?

accuracy�r"?


MSE)+�B

loss�ڈ?

	precision��?


MAE��@�f       r;�j	(�~��`�A��*W

recall  �?

accuracy��"?


MSEfָB

lossN��?

	precision��?


MAE���@e��f       r;�j	��W��`�AЌ*W

recall  �?

accuracyZ�"?


MSEY��B

loss�L�?

	precisiond�?


MAE�}�@*�tnf       r;�j	����`�A��*W

recall  �?

accuracyW�"?


MSE�B�B

lossF�?

	precisionX�?


MAE��@ޱX�f       r;�j	3���`�A��*W

recall  �?

accuracy�2#?


MSE�طB

loss�?

	precisionX�?


MAE氫@d: f       r;�j	��z�`�Aԓ*W

recall  �?

accuracy�^#?


MSER��B

lossQ�?

	precision@�?


MAE�_�@�'�f       r;�j	�] $�`�A��*W

recall  �?

accuracy��#?


MSE��B

loss�<�?

	precision4�?


MAE��@jPOqf       r;�j	��D�`�A��*W

recall  �?

accuracyޮ#?


MSE��B

loss���?

	precision�?


MAE�Ϊ@e˒�f       r;�j	�Ne�`�Aؚ*W

recall  �?

accuracy8�#?


MSE���B

loss ��?

	precision��?


MAEq��@ ��7f       r;�j	�����`�A��*W

recall  �?

accuracy��#?


MSEi]�B

loss�y�?

	precision��?


MAE+A�@8V�yf       r;�j	�����`�A��*W

recall  �?

accuracyo/$?


MSE�)�B

loss�:�?

	precisionȐ?


MAE���@�?�f       r;�j	� Y��`�Aܡ*W

recall  �?

accuracy�D$?


MSE��B

losst��?

	precision��?


MAE�٩@�6f       r;�j	)����`�A��*W

recall  �?

accuracy�b$?


MSE9͵B

loss��?

	precision��?


MAE%��@<�f       r;�j	����`�A��*W

recall  �?

accuracy�$?


MSE���B

loss���?

	precision��?


MAEL}�@[��1f       r;�j	�ZY)�`�A�*W

recall  �?

accuracyo�$?


MSEx��B

loss$G�?

	precision�?


MAE�S�@�;�5f       r;�j	(�J�`�A��*W

recall  �?

accuracyl�$?


MSEiF�B

loss��?

	precisiong�?


MAE~��@����f       r;�j	�,�j�`�A��*W

recall  �?

accuracy) %?


MSE�"�B

losseӄ?

	precision[�?


MAE�˨@J��$f       r;�j	��d��`�A�*W

recall  �?

accuracy�-%?


MSE���B

loss���?

	precisionO�?


MAE�`�@"�	f       r;�j	����`�A��*W

recall  �?

accuracy�e%?


MSEkT�B

loss2c�?

	precisionO�?


MAE��@�f       r;�j	�����`�A��*W

recall  �?

accuracyُ%?


MSE� �B

loss�,�?

	precision[�?


MAE�ҧ@:�p�f       r;�j	_#x��`�A�*W

recall  �?

accuracy��%?


MSE��B

lossQ��?

	precisions�?


MAE���@g.=?f       r;�j	$�+�`�A��*W

recall  �?

accuracy9�%?


MSEoԳB

loss�?

	precisiong�?


MAE���@�d�wf       r;�j	��.�`�A��*W

recall  �?

accuracy��%?


MSE���B

loss>��?

	precisionO�?


MAEZ>�@n+�f       r;�j	~ӊO�`�A�*W

recall  �?

accuracy�&?


MSE�E�B

loss�\�?

	precision��?


MAE��@hoF�f       r;�j	4�Ep�`�A��*W

recall  �?

accuracy�1&?


MSE~��B

loss�*�?

	precision��?


MAE���@b��f       r;�j	����`�A��*W

recall  �?

accuracygK&?


MSE9�B

lossb��?

	precision��?


MAE���@r2�f       r;�j	Fs���`�A��*W

recall  �?

accuracy7q&?


MSE㱲B

loss�ʂ?

	precision�t?


MAE`�@�#
f       r;�j	#�r��`�A��*W

recall  �?

accuracy�&?


MSEi��B

loss���?

	precision�t?


MAE�,�@����f       r;�j	T��`�A��*W

recall  �?

accuracyG�&?


MSE%>�B

loss'o�?

	precision�t?


MAE��@�+[f       r;�j	���`�A��*W

recall  �?

accuracyn�&?


MSE��B

loss�B�?

	precision�t?


MAEp��@���f       r;�j	tc�4�`�A��*W

recall  �?

accuracy��&?


MSE���B

loss��?

	precision�t?


MAE��@����f       r;�j	� <U�`�A��*W

recall  �?

accuracy��&?


MSE�~�B

loss��?

	precision�t?


MAE�B�@�,yf       r;�j	��v�`�A��*W

recall  �?

accuracy�'?


MSE�4�B

loss?ā?

	precision�t?


MAEt�@2LL�f       r;�j	rtݖ�`�A��*W

recall  �?

accuracy� '?


MSE�E�B

loss	��?

	precision�t?


MAE
�@�6f       r;�j	\����`�A��*W

recall  �?

accuracy�>'?


MSE��B

loss�t�?

	precision�t?


MAE�֤@h��f       r;�j	DW��`�A��*W

recall  �?

accuracyKl'?


MSE���B

loss�N�?

	precision�t?


MAE���@��(�f       r;�j	u*)��`�A��*W

recall  �?

accuracy�'?


MSEϰB

loss~)�?

	precision�t?


MAE���@j�Ǌf       r;�j	A0��`�A��*W

recall  �?

accuracy"�'?


MSE���B

lossD�?

	precision�t?


MAE�a�@~��>f       r;�j	猍:�`�A��*W

recall  �?

accuracy��'?


MSE7i�B

loss��?

	precisionY?


MAEf:�@����f       r;�j	�8[�`�A��*W

recall  �?

accuracyN�'?


MSE�G�B

loss�?

	precision�X?


MAE��@����f       r;�j	>}�{�`�A��*W

recall  �?

accuracy[�'?


MSEx%�B

loss!��?

	precision�X?


MAE)�@�"��f       r;�j	�I���`�A��*W

recall  �?

accuracy��'?


MSEV)�B

loss'|�?

	precision�X?


MAE���@w%��f       r;�j	`!J��`�A��*W

recall  �?

accuracy��'?


MSE�
�B

loss�[�?

	precisionY?


MAEoܣ@��f       r;�j	{���`�A��*W

recall  �?

accuracy��'?


MSE��B

loss0<�?

	precisionY?


MAE�ˣ@A�)�f       r;�j	�����`�A��*W

recall  �?

accuracyK�'?


MSE?ݯB

loss1�?

	precision,Y?


MAEǺ�@O71Kf       r;�j	Fq�`�A��*W

recall  �?

accuracy�(?


MSE���B

loss��?

	precision,Y?


MAE�~�@Ӓ�f       r;�j	�/@�`�A��*W

recall  �?

accuracy�(?


MSE���B

loss��?

	precisionY?


MAEuf�@�6$.f       r;�j	���`�`�A��*W

recall  �?

accuracy�-(?


MSE�V�B

loss��?

	precision>Y?


MAE�>�@��e�f       r;�j	k���`�A��*W

recall  �?

accuracy�-(?


MSE�h�B

loss.P?

	precision,Y?


MAE�C�@�t�f       r;�j	�?6��`�A��*W

recall  �?

accuracyb,(?


MSE���B

loss�?

	precisionY?


MAEqU�@�e3�f       r;�j	)���`�A��*W

recall  �?

accuracy�G(?


MSE�F�B

lossi�~?

	precision�X?


MAE��@R�+lf       r;�j	����`�A��*W

recall  �?

accuracyF(?


MSE�L�B

loss�~?

	precision�X?


MAE�&�@��@f       r;�j	M3�`�A�*W

recall  �?

accuracyC(?


MSE@e�B

loss�x~?

	precision�X?


MAE�3�@�>:�f       r;�j	#��$�`�A��*W

recall  �?

accuracy�D(?


MSE�X�B

loss�E~?

	precision�X?


MAEj,�@�f��f       r;�j	��E�`�A��*W

recall  �?

accuracy,O(?


MSE�9�B

lossv~?

	precision�X?


MAE��@c���f       r;�j	@|Uf�`�A�*W

recall  �?

accuracyF(?


MSE	T�B

loss4�}?

	precision�X?


MAE.�@v��f       r;�j	���`�A��*W

recall  �?

accuracy%L(?


MSE�G�B

loss�}?

	precision�X?


MAEr!�@��ef       r;�j	�	ۧ�`�Ač*W

recall  �?

accuracyI(?


MSEI�B

lossk�}?

	precision�X?


MAE�#�@-�)�f       r;�j	S���`�A��*W

recall  �?

accuracy�Y(?


MSE3�B

loss�S}?

	precision�X?


MAEy��@�(�/f       r;�j	�H9��`�A��*W

recall  �?

accuracyYd(?


MSEC��B

loss}&}?

	precision�X?


MAE��@���f       r;�j	���	�`�AȔ*W

recall  �?

accuracyx(?


MSE��B

loss��|?

	precision�X?


MAE��@�}Of       r;�j	Ȏ�*�`�A��*W

recall  �?

accuracy��(?


MSEn��B

loss��|?

	precision�X?


MAEF��@��4ef       r;�j	:S�K�`�A��*W

recall  �?

accuracy6�(?


MSE%�B

lossʢ|?

	precision�<?


MAE勢@V?��f       r;�j	H�Jl�`�A̛*W

recall  �?

accuracyI�(?


MSE�\�B

lossix|?

	precision�<?


MAE�s�@f��Hf       r;�j	��`�A��*W

recall  �?

accuracy�(?


MSE�N�B

loss�N|?

	precision	=?


MAE�]�@�2�f       r;�j	v_���`�A��*W

recall  �?

accuracy�(?


MSE|F�B

loss�%|?

	precision	=?


MAEJJ�@~ZMNf       r;�j	5cP��`�AТ*W

recall  �?

accuracy��(?


MSES$�B

loss��{?

	precision=?


MAE#?�@���lf       r;�j	���`�A��*W

recall  �?

accuracy��(?


MSEp�B

loss��{?

	precisionI=?


MAEt!�@|��f       r;�j	����`�A��*W

recall  �?

accuracyL�(?


MSEd��B

loss�{?

	precisionI=?


MAES�@��Ff       r;�j	�n�0�`�Aԩ*W

recall  �?

accuracy��(?


MSE��B

loss��{?

	precisions=?


MAEѡ@B�Ff       r;�j	C�1Q�`�A��*W

recall  �?

accuracy��(?


MSE�m�B

loss�d{?

	precision�=?


MAE��@��Mf       r;�j	���q�`�A��*W

recall  �?

accuracyC)?


MSE�\�B

loss�?{?

	precision�=?


MAE}��@h<�f       r;�j		���`�Aذ*W

recall  �?

accuracy\)?


MSE�H�B

loss�{?

	precision�=?


MAEC��@�p�f       r;�j	�N��`�A��*W

recall  �?

accuracyV)?


MSE�b�B

lossL�z?

	precision�=?


MAE9��@��j?f       r;�j	%U��`�A��*W

recall  �?

accuracyv')?


MSE�0�B

loss��z?

	precision�=?


MAE�m�@�1�f       r;�j	�����`�Aܷ*W

recall  �?

accuracy}*)?


MSE��B

losst�z?

	precision�=?


MAE�d�@p�Bf       r;�j	�+|�`�A��*W

recall  �?

accuracy�-)?


MSE
*�B

loss��z?

	precision�=?


MAEj�@�IWf       r;�j	8i=6�`�A��*W

recall  �?

accuracy2)?


MSE$�B

losszpz?

	precision�=?


MAE�d�@c4f       r;�j	i��V�`�A�*W

recall  �?

accuracy5)?


MSEN.�B

loss�Oz?

	precision�=?


MAE�g�@*�"f       r;�j	*x�w�`�A��*W

recall  �?

accuracy2)?


MSE$?�B

lossM/z?

	precision�=?


MAE�z�@�l f       r;�j	_$,��`�A��*W

recall  �?

accuracy�?)?


MSEf�B

lossaz?

	precision�=?


MAE�W�@n�tf       r;�j	�'��`�A��*W

recall  �?

accuracy&>)?


MSE5�B

loss�y?

	precision"?


MAE�\�@�}M�f       r;�j	����`�A��*W

recall  �?

accuracy�K)?


MSE��B

loss/�y?

	precision"?


MAE�7�@�q��f       r;�j	{OI��`�A��*W

recall  �?

accuracy�`)?


MSEe��B

loss��y?

	precision "?


MAE�@���*f       r;�j	^��`�A��*W

recall  �?

accuracy�q)?


MSE閬B

lossC�y?

	precision8"?


MAE���@m��Mf       r;�j	�	�;�`�A��*W

recall  �?

accuracyp)?


MSE���B

lossjvy?

	precisionP"?


MAE+�@6�k�f       r;�j	��G\�`�A��*W

recall  �?

accuracy�w)?


MSE���B

lossYy?

	precision�"?


MAE��@�k�f       r;�j	L�|�`�A��*W

recall  �?

accuracy�w)?


MSEޏ�B

loss<y?

	precision�"?


MAE��@��W�f       r;�j	X���`�A��*W

recall  �?

accuracy�t)?


MSEe��B

lossGy?

	precision�"?


MAE���@��f       r;�j	�J��`�A��*W

recall  �?

accuracy�})?


MSE@~�B

loss�y?

	precision�"?


MAEl�@>Q@�f       r;�j	�����`�A��*W

recall  �?

accuracy��)?


MSE�a�B

loss��x?

	precision�"?


MAE#͠@�N��f       r;�j	�<���`�A��*W

recall  �?

accuracy�w)?


MSEa�B

loss��x?

	precision�"?


MAE|Ѡ@Fu�Sf       r;�j	*�^ �`�A��*W

recall  �?

accuracy=�)?


MSE�`�B

loss�x?

	precisionW#?


MAE�à@9�f       r;�j	o�A�`�A��*W

recall  �?

accuracyP�)?


MSEK�B

loss��x?

	precisiono#?


MAE<��@�A�f       r;�j	Ɠ�a�`�A��*W

recall  �?

accuracyP�)?


MSE-=�B

loss�xx?

	precision?


MAE�@/�z'f       r;�j	wHw��`�A��*W

recall  �?

accuracy��)?


MSE98�B

loss^x?

	precisionG?


MAEӶ�@7 �f       r;�j	B:;��`�A��*W

recall  �?

accuracy0)?


MSEL6�B

loss�Cx?

	precisionG?


MAE���@�`�f       r;�j	�����`�A��*W

recall  �?

accuracyC�)?


MSE�B

loss?)x?

	precisionG?


MAE䧠@g�f       r;�j	����`�A��*W

recall  �?

accuracyC�)?


MSE��B

lossix?

	precision}?


MAE�@�6"f       r;�j	�{3�`�A��*W

recall  �?

accuracyV�)?


MSE[��B

loss��w?

	precisionb?


MAE���@*�D�f       r;�j	$�%�`�A��*W

recall  �?

accuracyj�)?


MSEz�B

loss�w?

	precision}?


MAE���@��f>f       r;�j	q�F�`�A��*W

recall  �?

accuracyj�)?


MSE4�B

loss��w?

	precisionb?


MAEだ@|(fdf       r;�j	T�Og�`�A��*W

recall  �?

accuracy��)?


MSE�ԫB

lossL�w?

	precisionb?


MAEr�@7%kf       r;�j	eJ��`�A��*W

recall  �?

accuracy3�)?


MSE9��B

lossҎw?

	precision}?


MAE^;�@�o	Gf       r;�j	��Ĩ�`�A��*W

recall  �?

accuracy �)?


MSE߯�B

lossxuw?

	precision}?


MAEhO�@s�)f       r;�j	^m��`�A��*W

recall  �?

accuracy��)?


MSE�B

loss�[w?

	precision}?


MAEO�@B�f       r;�j	�V*��`�A��*W

recall  �?

accuracy:�)?


MSE֗�B

loss�Bw?

	precision�?


MAE&?�@ZN�4f       r;�j	���
�`�A܂*W

recall  �?

accuracy��)?


MSEQ��B

lossr)w?

	precision�?


MAE;:�@gX�f       r;�j	��+�`�A��*W

recall  �?

accuracyG�)?


MSEՋ�B

lossw?

	precision�?


MAE�1�@��q�