       �K"	   ��`�Abrain.Event:2��+9��      o���	�l#��`�A"��
m
global_stepVariable*
dtype0	*
	container *
shape: *
shared_name *
_output_shapes
: 

global_step/Initializer/zerosConst*
dtype0	*
value	B	 R *
_class
loc:@global_step*
_output_shapes
: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
validate_shape(*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
X
inputPlaceholder*
dtype0*
shape: *(
_output_shapes
:����������
T
outputPlaceholder*
dtype0	*
shape: *#
_output_shapes
:���������
�
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*(
_output_shapes
:����������*
T0
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
dtype0*
value	B :*
_output_shapes
: 
�
<input_from_feature_columns/input_from_feature_columns/concatIdentity=input_from_feature_columns/input_from_feature_columns/Reshape*(
_output_shapes
:����������*
T0
�
!hiddenlayer_0/hiddenlayer_0/ShapeShape<input_from_feature_columns/input_from_feature_columns/concat*
_output_shapes
:*
T0
�
"hiddenlayer_0/hiddenlayer_0/unpackUnpack!hiddenlayer_0/hiddenlayer_0/Shape*	
num*
_output_shapes
: : *
T0*

axis 
�
hiddenlayer_0/weights/part_0Variable*
dtype0*
	container *
shape:	�*
shared_name *
_output_shapes
:	�
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
:
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
valueB
 *,B��*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
: 
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *,B�=*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
: 
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*

seed**
seed2*
dtype0*
_output_shapes
:	�*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_0/weights/part_0/Initializer/random_uniform/max;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*
_output_shapes
:	�*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
_output_shapes
:	�*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
use_locking(*
T0*
validate_shape(*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
:	�
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
_output_shapes
:	�*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
n
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
_output_shapes
:	�*
T0
�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*'
_output_shapes
:���������*
transpose_b( *
T0*
transpose_a( 
�
hiddenlayer_0/biases/part_0Variable*
dtype0*
	container *
shape:*
shared_name *
_output_shapes
:
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
dtype0*
valueB*    *.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
:
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
use_locking(*
T0*
validate_shape(*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
:
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*
_output_shapes
:*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
g
hiddenlayer_0/biasesIdentity hiddenlayer_0/biases/part_0/read*
_output_shapes
:*
T0
�
#hiddenlayer_0/hiddenlayer_0/BiasAddBiasAdd"hiddenlayer_0/hiddenlayer_0/MatMulhiddenlayer_0/biases*'
_output_shapes
:���������*
T0*
data_formatNHWC

 hiddenlayer_0/hiddenlayer_0/ReluRelu#hiddenlayer_0/hiddenlayer_0/BiasAdd*'
_output_shapes
:���������*
T0
W
zero_fraction/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
zero_fraction/EqualEqual hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*'
_output_shapes
:���������*
T0
p
zero_fraction/CastCastzero_fraction/Equal*

DstT0*'
_output_shapes
:���������*

SrcT0

d
zero_fraction/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
_output_shapes
: *
	keep_dims( *
T0
x
ScalarSummary/tagsConst*
dtype0*6
value-B+ B%hiddenlayer_0:fraction_of_zero_values*
_output_shapes
: 
g
ScalarSummaryScalarSummaryScalarSummary/tagszero_fraction/Mean*
_output_shapes
: *
T0
m
HistogramSummary/tagConst*
dtype0*)
value B Bhiddenlayer_0:activation*
_output_shapes
: 
}
HistogramSummaryHistogramSummaryHistogramSummary/tag hiddenlayer_0/hiddenlayer_0/Relu*
_output_shapes
: *
T0
k
dnn_logits/dnn_logits/ShapeShape hiddenlayer_0/hiddenlayer_0/Relu*
_output_shapes
:*
T0
}
dnn_logits/dnn_logits/unpackUnpackdnn_logits/dnn_logits/Shape*	
num*
_output_shapes
: : *
T0*

axis 
�
dnn_logits/weights/part_0Variable*
dtype0*
	container *
shape
: *
shared_name *
_output_shapes

: 
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
valueB"       *,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
:
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
valueB
 *�ꭾ*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
: 
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *��>*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
: 
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*

seed**
seed2.*
dtype0*
_output_shapes

: *
T0*,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/subSub8dnn_logits/weights/part_0/Initializer/random_uniform/max8dnn_logits/weights/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/mulMulBdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn_logits/weights/part_0/Initializer/random_uniform/sub*
_output_shapes

: *
T0*,
_class"
 loc:@dnn_logits/weights/part_0
�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*
_output_shapes

: *
T0*,
_class"
 loc:@dnn_logits/weights/part_0
�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
use_locking(*
T0*
validate_shape(*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

: 
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*
_output_shapes

: *
T0*,
_class"
 loc:@dnn_logits/weights/part_0
g
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
_output_shapes

: *
T0
�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reludnn_logits/weights*'
_output_shapes
:��������� *
transpose_b( *
T0*
transpose_a( 
�
dnn_logits/biases/part_0Variable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
dtype0*
valueB *    *+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
: 
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
use_locking(*
T0*
validate_shape(*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
: 
�
dnn_logits/biases/part_0/readIdentitydnn_logits/biases/part_0*
_output_shapes
: *
T0*+
_class!
loc:@dnn_logits/biases/part_0
a
dnn_logits/biasesIdentitydnn_logits/biases/part_0/read*
_output_shapes
: *
T0
�
dnn_logits/dnn_logits/BiasAddBiasAdddnn_logits/dnn_logits/MatMuldnn_logits/biases*'
_output_shapes
:��������� *
T0*
data_formatNHWC
Y
zero_fraction_1/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
zero_fraction_1/EqualEqualdnn_logits/dnn_logits/BiasAddzero_fraction_1/zero*'
_output_shapes
:��������� *
T0
t
zero_fraction_1/CastCastzero_fraction_1/Equal*

DstT0*'
_output_shapes
:��������� *

SrcT0

f
zero_fraction_1/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
_output_shapes
: *
	keep_dims( *
T0
w
ScalarSummary_1/tagsConst*
dtype0*3
value*B( B"dnn_logits:fraction_of_zero_values*
_output_shapes
: 
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
_output_shapes
: *
T0
l
HistogramSummary_1/tagConst*
dtype0*&
valueB Bdnn_logits:activation*
_output_shapes
: 
~
HistogramSummary_1HistogramSummaryHistogramSummary_1/tagdnn_logits/dnn_logits/BiasAdd*
_output_shapes
: *
T0
R
zerosConst*
dtype0*
valueB *    *
_output_shapes
: 
~
centered_bias_weightVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
use_locking(*
T0*
validate_shape(*'
_class
loc:@centered_bias_weight*
_output_shapes
: 
�
centered_bias_weight/readIdentitycentered_bias_weight*
_output_shapes
: *
T0*'
_class
loc:@centered_bias_weight
`
Reshape/shapeConst*
dtype0*
valueB:
���������*
_output_shapes
:
a
ReshapeReshapecentered_bias_weight/readReshape/shape*
_output_shapes
: *
T0
�
ScalarSummary_2/tagsConst*
dtype0*�
value�B� Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14Bcentered_bias_15Bcentered_bias_16Bcentered_bias_17Bcentered_bias_18Bcentered_bias_19Bcentered_bias_20Bcentered_bias_21Bcentered_bias_22Bcentered_bias_23Bcentered_bias_24Bcentered_bias_25Bcentered_bias_26Bcentered_bias_27Bcentered_bias_28Bcentered_bias_29Bcentered_bias_30Bcentered_bias_31*
_output_shapes
: 
`
ScalarSummary_2ScalarSummaryScalarSummary_2/tagsReshape*
_output_shapes
: *
T0
�
BiasAddBiasAdddnn_logits/dnn_logits/BiasAddcentered_bias_weight/read*'
_output_shapes
:��������� *
T0*
data_formatNHWC
_
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeoutput*
_output_shapes
:*
T0	
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsBiasAddoutput*6
_output_shapes$
":���������:��������� *
T0*
Tlabels0	
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
_output_shapes
: *
	keep_dims( *
T0
O

mean/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
l

mean/totalVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
mean/total/AssignAssign
mean/total
mean/zeros*
use_locking(*
T0*
validate_shape(*
_class
loc:@mean/total*
_output_shapes
: 
g
mean/total/readIdentity
mean/total*
_output_shapes
: *
T0*
_class
loc:@mean/total
Q
mean/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
l

mean/countVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
use_locking(*
T0*
validate_shape(*
_class
loc:@mean/count*
_output_shapes
: 
g
mean/count/readIdentity
mean/count*
_output_shapes
: *
T0*
_class
loc:@mean/count
8
	mean/SizeSizeloss*
_output_shapes
: *
T0
Q
mean/ToFloat_1Cast	mean/Size*

DstT0*
_output_shapes
: *

SrcT0
M

mean/ConstConst*
dtype0*
valueB *
_output_shapes
: 
S
mean/SumSumloss
mean/Const*
_output_shapes
: *
	keep_dims( *
T0
�
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
use_locking( *
T0*
_class
loc:@mean/total*
_output_shapes
: 
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
use_locking( *
T0*
_class
loc:@mean/count*
_output_shapes
: 
S
mean/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Y
mean/GreaterGreatermean/count/readmean/Greater/y*
_output_shapes
: *
T0
R
mean/DivDivmean/total/readmean/count/read*
_output_shapes
: *
T0
Q
mean/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
[

mean/valueSelectmean/Greatermean/Divmean/value/e*
_output_shapes
: *
T0
y
mean/Greater_1/yConst^mean/AssignAdd^mean/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
]
mean/Greater_1Greatermean/count/readmean/Greater_1/y*
_output_shapes
: *
T0
x

mean/Div_1Divmean/total/readmean/count/read^mean/AssignAdd^mean/AssignAdd_1*
_output_shapes
: *
T0
y
mean/update_op/eConst^mean/AssignAdd^mean/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
g
mean/update_opSelectmean/Greater_1
mean/Div_1mean/update_op/e*
_output_shapes
: *
T0
M
SigmoidSigmoidBiasAdd*'
_output_shapes
:��������� *
T0
T
ToFloatCastoutput*

DstT0*#
_output_shapes
:���������*

SrcT0	
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
Y
ArgMaxArgMaxBiasAddArgMax/dimension*#
_output_shapes
:���������*
T0
L
EqualEqualArgMaxoutput*#
_output_shapes
:���������*
T0	
U
	ToFloat_1CastEqual*

DstT0*#
_output_shapes
:���������*

SrcT0

S
accuracy/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
p
accuracy/totalVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
use_locking(*
T0*
validate_shape(*!
_class
loc:@accuracy/total*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*
_output_shapes
: *
T0*!
_class
loc:@accuracy/total
U
accuracy/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
p
accuracy/countVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
use_locking(*
T0*
validate_shape(*!
_class
loc:@accuracy/count*
_output_shapes
: 
s
accuracy/count/readIdentityaccuracy/count*
_output_shapes
: *
T0*!
_class
loc:@accuracy/count
A
accuracy/SizeSize	ToFloat_1*
_output_shapes
: *
T0
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*
_output_shapes
: *

SrcT0
X
accuracy/ConstConst*
dtype0*
valueB: *
_output_shapes
:
`
accuracy/SumSum	ToFloat_1accuracy/Const*
_output_shapes
: *
	keep_dims( *
T0
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
use_locking( *
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
use_locking( *
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
W
accuracy/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
e
accuracy/GreaterGreateraccuracy/count/readaccuracy/Greater/y*
_output_shapes
: *
T0
^
accuracy/DivDivaccuracy/total/readaccuracy/count/read*
_output_shapes
: *
T0
U
accuracy/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
accuracy/valueSelectaccuracy/Greateraccuracy/Divaccuracy/value/e*
_output_shapes
: *
T0
�
accuracy/Greater_1/yConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
i
accuracy/Greater_1Greateraccuracy/count/readaccuracy/Greater_1/y*
_output_shapes
: *
T0
�
accuracy/Div_1Divaccuracy/total/readaccuracy/count/read^accuracy/AssignAdd^accuracy/AssignAdd_1*
_output_shapes
: *
T0
�
accuracy/update_op/eConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
w
accuracy/update_opSelectaccuracy/Greater_1accuracy/Div_1accuracy/update_op/e*
_output_shapes
: *
T0
b
 precision/true_positives/Equal/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 

precision/true_positives/EqualEqualoutput precision/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
d
"precision/true_positives/Equal_1/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 
�
 precision/true_positives/Equal_1EqualArgMax"precision/true_positives/Equal_1/y*#
_output_shapes
:���������*
T0	
�
#precision/true_positives/LogicalAnd
LogicalAndprecision/true_positives/Equal precision/true_positives/Equal_1*#
_output_shapes
:���������
c
precision/true_positives/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
precision/true_positives/countVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
use_locking(*
T0*
validate_shape(*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: 
�
#precision/true_positives/count/readIdentityprecision/true_positives/count*
_output_shapes
: *
T0*1
_class'
%#loc:@precision/true_positives/count
�
 precision/true_positives/ToFloatCast#precision/true_positives/LogicalAnd*

DstT0*#
_output_shapes
:���������*

SrcT0

s
!precision/true_positives/IdentityIdentity#precision/true_positives/count/read*
_output_shapes
: *
T0
h
precision/true_positives/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
_output_shapes
: *
	keep_dims( *
T0
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
use_locking( *
T0*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: 
c
!precision/false_positives/Equal/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
�
precision/false_positives/EqualEqualoutput!precision/false_positives/Equal/y*#
_output_shapes
:���������*
T0	
e
#precision/false_positives/Equal_1/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 
�
!precision/false_positives/Equal_1EqualArgMax#precision/false_positives/Equal_1/y*#
_output_shapes
:���������*
T0	
�
$precision/false_positives/LogicalAnd
LogicalAndprecision/false_positives/Equal!precision/false_positives/Equal_1*#
_output_shapes
:���������
d
precision/false_positives/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
precision/false_positives/countVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
use_locking(*
T0*
validate_shape(*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: 
�
$precision/false_positives/count/readIdentityprecision/false_positives/count*
_output_shapes
: *
T0*2
_class(
&$loc:@precision/false_positives/count
�
!precision/false_positives/ToFloatCast$precision/false_positives/LogicalAnd*

DstT0*#
_output_shapes
:���������*

SrcT0

u
"precision/false_positives/IdentityIdentity$precision/false_positives/count/read*
_output_shapes
: *
T0
i
precision/false_positives/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
_output_shapes
: *
	keep_dims( *
T0
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
use_locking( *
T0*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: 
|
precision/addAdd!precision/true_positives/Identity"precision/false_positives/Identity*
_output_shapes
: *
T0
X
precision/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
a
precision/GreaterGreaterprecision/addprecision/Greater/y*
_output_shapes
: *
T0
~
precision/add_1Add!precision/true_positives/Identity"precision/false_positives/Identity*
_output_shapes
: *
T0
i
precision/DivDiv!precision/true_positives/Identityprecision/add_1*
_output_shapes
: *
T0
V
precision/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
o
precision/valueSelectprecision/Greaterprecision/Divprecision/value/e*
_output_shapes
: *
T0
�
precision/add_2Add!precision/true_positives/Identity"precision/false_positives/Identity#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
_output_shapes
: *
T0
�
precision/Greater_1/yConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
dtype0*
valueB
 *    *
_output_shapes
: 
g
precision/Greater_1Greaterprecision/add_2precision/Greater_1/y*
_output_shapes
: *
T0
�
precision/add_3Add!precision/true_positives/Identity"precision/false_positives/Identity#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
_output_shapes
: *
T0
k
precision/Div_1Div!precision/true_positives/Identityprecision/add_3*
_output_shapes
: *
T0
�
precision/update_op/eConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
dtype0*
valueB
 *    *
_output_shapes
: 
{
precision/update_opSelectprecision/Greater_1precision/Div_1precision/update_op/e*
_output_shapes
: *
T0
H
subSubArgMaxoutput*#
_output_shapes
:���������*
T0	
=
AbsAbssub*#
_output_shapes
:���������*
T0	
e
mean_absolute_error/ToFloatCastAbs*

DstT0*#
_output_shapes
:���������*

SrcT0	
^
mean_absolute_error/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
{
mean_absolute_error/totalVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
use_locking(*
T0*
validate_shape(*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: 
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*
_output_shapes
: *
T0*,
_class"
 loc:@mean_absolute_error/total
`
mean_absolute_error/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
{
mean_absolute_error/countVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
use_locking(*
T0*
validate_shape(*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: 
�
mean_absolute_error/count/readIdentitymean_absolute_error/count*
_output_shapes
: *
T0*,
_class"
 loc:@mean_absolute_error/count
^
mean_absolute_error/SizeSizemean_absolute_error/ToFloat*
_output_shapes
: *
T0
o
mean_absolute_error/ToFloat_1Castmean_absolute_error/Size*

DstT0*
_output_shapes
: *

SrcT0
c
mean_absolute_error/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
_output_shapes
: *
	keep_dims( *
T0
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*
use_locking( *
T0*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: 
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
use_locking( *
T0*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: 
b
mean_absolute_error/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_absolute_error/GreaterGreatermean_absolute_error/count/readmean_absolute_error/Greater/y*
_output_shapes
: *
T0

mean_absolute_error/DivDivmean_absolute_error/total/readmean_absolute_error/count/read*
_output_shapes
: *
T0
`
mean_absolute_error/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_absolute_error/valueSelectmean_absolute_error/Greatermean_absolute_error/Divmean_absolute_error/value/e*
_output_shapes
: *
T0
�
mean_absolute_error/Greater_1/yConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_absolute_error/Greater_1Greatermean_absolute_error/count/readmean_absolute_error/Greater_1/y*
_output_shapes
: *
T0
�
mean_absolute_error/Div_1Divmean_absolute_error/total/readmean_absolute_error/count/read^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
_output_shapes
: *
T0
�
mean_absolute_error/update_op/eConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_absolute_error/update_opSelectmean_absolute_error/Greater_1mean_absolute_error/Div_1mean_absolute_error/update_op/e*
_output_shapes
: *
T0
J
sub_1SuboutputArgMax*#
_output_shapes
:���������*
T0	
E
SquareSquaresub_1*#
_output_shapes
:���������*
T0	
g
mean_squared_error/ToFloatCastSquare*

DstT0*#
_output_shapes
:���������*

SrcT0	
]
mean_squared_error/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
z
mean_squared_error/totalVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
use_locking(*
T0*
validate_shape(*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: 
�
mean_squared_error/total/readIdentitymean_squared_error/total*
_output_shapes
: *
T0*+
_class!
loc:@mean_squared_error/total
_
mean_squared_error/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
z
mean_squared_error/countVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
use_locking(*
T0*
validate_shape(*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: 
�
mean_squared_error/count/readIdentitymean_squared_error/count*
_output_shapes
: *
T0*+
_class!
loc:@mean_squared_error/count
\
mean_squared_error/SizeSizemean_squared_error/ToFloat*
_output_shapes
: *
T0
m
mean_squared_error/ToFloat_1Castmean_squared_error/Size*

DstT0*
_output_shapes
: *

SrcT0
b
mean_squared_error/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
_output_shapes
: *
	keep_dims( *
T0
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*
use_locking( *
T0*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: 
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
use_locking( *
T0*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: 
a
mean_squared_error/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_squared_error/GreaterGreatermean_squared_error/count/readmean_squared_error/Greater/y*
_output_shapes
: *
T0
|
mean_squared_error/DivDivmean_squared_error/total/readmean_squared_error/count/read*
_output_shapes
: *
T0
_
mean_squared_error/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/Divmean_squared_error/value/e*
_output_shapes
: *
T0
�
mean_squared_error/Greater_1/yConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_squared_error/Greater_1Greatermean_squared_error/count/readmean_squared_error/Greater_1/y*
_output_shapes
: *
T0
�
mean_squared_error/Div_1Divmean_squared_error/total/readmean_squared_error/count/read^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
_output_shapes
: *
T0
�
mean_squared_error/update_op/eConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_squared_error/update_opSelectmean_squared_error/Greater_1mean_squared_error/Div_1mean_squared_error/update_op/e*
_output_shapes
: *
T0
_
recall/true_positives/Equal/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 
y
recall/true_positives/EqualEqualoutputrecall/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
a
recall/true_positives/Equal_1/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 
}
recall/true_positives/Equal_1EqualArgMaxrecall/true_positives/Equal_1/y*#
_output_shapes
:���������*
T0	
�
 recall/true_positives/LogicalAnd
LogicalAndrecall/true_positives/Equalrecall/true_positives/Equal_1*#
_output_shapes
:���������
`
recall/true_positives/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
}
recall/true_positives/countVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
use_locking(*
T0*
validate_shape(*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: 
�
 recall/true_positives/count/readIdentityrecall/true_positives/count*
_output_shapes
: *
T0*.
_class$
" loc:@recall/true_positives/count
�
recall/true_positives/ToFloatCast recall/true_positives/LogicalAnd*

DstT0*#
_output_shapes
:���������*

SrcT0

m
recall/true_positives/IdentityIdentity recall/true_positives/count/read*
_output_shapes
: *
T0
e
recall/true_positives/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
_output_shapes
: *
	keep_dims( *
T0
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
use_locking( *
T0*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: 
`
recall/false_negatives/Equal/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 
{
recall/false_negatives/EqualEqualoutputrecall/false_negatives/Equal/y*#
_output_shapes
:���������*
T0	
b
 recall/false_negatives/Equal_1/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 

recall/false_negatives/Equal_1EqualArgMax recall/false_negatives/Equal_1/y*#
_output_shapes
:���������*
T0	
�
!recall/false_negatives/LogicalAnd
LogicalAndrecall/false_negatives/Equalrecall/false_negatives/Equal_1*#
_output_shapes
:���������
a
recall/false_negatives/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
~
recall/false_negatives/countVariable*
dtype0*
	container *
shape: *
shared_name *
_output_shapes
: 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
use_locking(*
T0*
validate_shape(*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: 
�
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*
_output_shapes
: *
T0*/
_class%
#!loc:@recall/false_negatives/count
�
recall/false_negatives/ToFloatCast!recall/false_negatives/LogicalAnd*

DstT0*#
_output_shapes
:���������*

SrcT0

o
recall/false_negatives/IdentityIdentity!recall/false_negatives/count/read*
_output_shapes
: *
T0
f
recall/false_negatives/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
_output_shapes
: *
	keep_dims( *
T0
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
use_locking( *
T0*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: 
s

recall/addAddrecall/true_positives/Identityrecall/false_negatives/Identity*
_output_shapes
: *
T0
U
recall/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
X
recall/GreaterGreater
recall/addrecall/Greater/y*
_output_shapes
: *
T0
u
recall/add_1Addrecall/true_positives/Identityrecall/false_negatives/Identity*
_output_shapes
: *
T0
`

recall/DivDivrecall/true_positives/Identityrecall/add_1*
_output_shapes
: *
T0
S
recall/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
c
recall/valueSelectrecall/Greater
recall/Divrecall/value/e*
_output_shapes
: *
T0
�
recall/add_2Addrecall/true_positives/Identityrecall/false_negatives/Identity ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
_output_shapes
: *
T0
�
recall/Greater_1/yConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
dtype0*
valueB
 *    *
_output_shapes
: 
^
recall/Greater_1Greaterrecall/add_2recall/Greater_1/y*
_output_shapes
: *
T0
�
recall/add_3Addrecall/true_positives/Identityrecall/false_negatives/Identity ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
_output_shapes
: *
T0
b
recall/Div_1Divrecall/true_positives/Identityrecall/add_3*
_output_shapes
: *
T0
�
recall/update_op/eConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
dtype0*
valueB
 *    *
_output_shapes
: 
o
recall/update_opSelectrecall/Greater_1recall/Div_1recall/update_op/e*
_output_shapes
: *
T0
�

group_depsNoOp^accuracy/update_op^mean_absolute_error/update_op^mean_squared_error/update_op^mean/update_op^precision/update_op^recall/update_op
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save/save/tensor_namesConst*
dtype0*�
value�BBcentered_bias_weightBdnn_logits/biasesBdnn_logits/weightsBglobal_stepBhiddenlayer_0/biasesBhiddenlayer_0/weights*
_output_shapes
:
�
save/save/shapes_and_slicesConst*
dtype0*O
valueFBDB B32 0,32B20 32 0,20:0,32B B20 0,20B1024 20 0,1024:0,20*
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
^save/save*
_output_shapes
: *
T0*
_class
loc:@save/Const
s
save/restore_slice/tensor_nameConst*
dtype0*%
valueB Bcentered_bias_weight*
_output_shapes
: 
c
"save/restore_slice/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
�
save/restore_sliceRestoreSlice
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
use_locking(*
T0*
validate_shape(*'
_class
loc:@centered_bias_weight*
_output_shapes
: 
r
 save/restore_slice_1/tensor_nameConst*
dtype0*"
valueB Bdnn_logits/biases*
_output_shapes
: 
l
$save/restore_slice_1/shape_and_sliceConst*
dtype0*
valueB B32 0,32*
_output_shapes
: 
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
use_locking(*
T0*
validate_shape(*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
: 
s
 save/restore_slice_2/tensor_nameConst*
dtype0*#
valueB Bdnn_logits/weights*
_output_shapes
: 
t
$save/restore_slice_2/shape_and_sliceConst*
dtype0* 
valueB B20 32 0,20:0,32*
_output_shapes
: 
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
use_locking(*
T0*
validate_shape(*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

: 
l
 save/restore_slice_3/tensor_nameConst*
dtype0*
valueB Bglobal_step*
_output_shapes
: 
e
$save/restore_slice_3/shape_and_sliceConst*
dtype0*
valueB B *
_output_shapes
: 
�
save/restore_slice_3RestoreSlice
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0	
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
use_locking(*
T0	*
validate_shape(*
_class
loc:@global_step*
_output_shapes
: 
u
 save/restore_slice_4/tensor_nameConst*
dtype0*%
valueB Bhiddenlayer_0/biases*
_output_shapes
: 
l
$save/restore_slice_4/shape_and_sliceConst*
dtype0*
valueB B20 0,20*
_output_shapes
: 
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
use_locking(*
T0*
validate_shape(*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
:
v
 save/restore_slice_5/tensor_nameConst*
dtype0*&
valueB Bhiddenlayer_0/weights*
_output_shapes
: 
x
$save/restore_slice_5/shape_and_sliceConst*
dtype0*$
valueB B1024 20 0,1024:0,20*
_output_shapes
: 
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
use_locking(*
T0*
validate_shape(*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
:	�
v
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5
�
initNoOp^mean/total/Assign^mean/count/Assign^accuracy/total/Assign^accuracy/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign

init_all_tablesNoOp
-
group_deps_1NoOp^init^init_all_tables
�
IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
�
IsVariableInitialized_1IsVariableInitializedhiddenlayer_0/weights/part_0*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
: 
�
IsVariableInitialized_2IsVariableInitializedhiddenlayer_0/biases/part_0*
dtype0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
: 
�
IsVariableInitialized_3IsVariableInitializeddnn_logits/weights/part_0*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
: 
�
IsVariableInitialized_4IsVariableInitializeddnn_logits/biases/part_0*
dtype0*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
: 
�
IsVariableInitialized_5IsVariableInitializedcentered_bias_weight*
dtype0*'
_class
loc:@centered_bias_weight*
_output_shapes
: 
�
IsVariableInitialized_6IsVariableInitialized
mean/total*
dtype0*
_class
loc:@mean/total*
_output_shapes
: 
�
IsVariableInitialized_7IsVariableInitialized
mean/count*
dtype0*
_class
loc:@mean/count*
_output_shapes
: 
�
IsVariableInitialized_8IsVariableInitializedaccuracy/total*
dtype0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitializedaccuracy/count*
dtype0*!
_class
loc:@accuracy/count*
_output_shapes
: 
�
IsVariableInitialized_10IsVariableInitializedprecision/true_positives/count*
dtype0*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: 
�
IsVariableInitialized_11IsVariableInitializedprecision/false_positives/count*
dtype0*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: 
�
IsVariableInitialized_12IsVariableInitializedmean_absolute_error/total*
dtype0*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedmean_absolute_error/count*
dtype0*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: 
�
IsVariableInitialized_14IsVariableInitializedmean_squared_error/total*
dtype0*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedmean_squared_error/count*
dtype0*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedrecall/true_positives/count*
dtype0*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedrecall/false_negatives/count*
dtype0*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: 
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17*
_output_shapes
:*
T0
*

axis *
N
:

LogicalNot
LogicalNotpack*
_output_shapes
:
�
Const_1Const*
dtype0*�
value�B�Bglobal_stepBhiddenlayer_0/weights/part_0Bhiddenlayer_0/biases/part_0Bdnn_logits/weights/part_0Bdnn_logits/biases/part_0Bcentered_bias_weightB
mean/totalB
mean/countBaccuracy/totalBaccuracy/countBprecision/true_positives/countBprecision/false_positives/countBmean_absolute_error/totalBmean_absolute_error/countBmean_squared_error/totalBmean_squared_error/countBrecall/true_positives/countBrecall/false_negatives/count*
_output_shapes
:
[
$report_uninitialized_variables/ShapeShapeConst_1*
_output_shapes
:*
T0
t
*report_uninitialized_variables/Slice/beginConst*
dtype0*
valueB:*
_output_shapes
:
|
)report_uninitialized_variables/Slice/sizeConst*
dtype0*
valueB:
���������*
_output_shapes
:
�
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
_output_shapes
: *
T0*
Index0
r
0report_uninitialized_variables/concat/concat_dimConst*
dtype0*
value	B : *
_output_shapes
: 
�
.report_uninitialized_variables/concat/values_0Const*
dtype0*
valueB:
���������*
_output_shapes
:
�
%report_uninitialized_variables/concatConcat0report_uninitialized_variables/concat/concat_dim.report_uninitialized_variables/concat/values_0$report_uninitialized_variables/Slice*
_output_shapes
:*
T0*
N
�
&report_uninitialized_variables/ReshapeReshapeConst_1%report_uninitialized_variables/concat*
_output_shapes
:*
T0
�
.report_uninitialized_variables/Reshape_1/shapeConst*
dtype0*
valueB:
���������*
_output_shapes
:
�
(report_uninitialized_variables/Reshape_1Reshape
LogicalNot.report_uninitialized_variables/Reshape_1/shape*
_output_shapes
:*
T0

�
$report_uninitialized_variables/WhereWhere(report_uninitialized_variables/Reshape_1*'
_output_shapes
:���������
�
&report_uninitialized_variables/SqueezeSqueeze$report_uninitialized_variables/Where*#
_output_shapes
:���������*
squeeze_dims
*
T0	
�
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*#
_output_shapes
:���������*
validate_indices(*
Tindices0	*
Tparams0"
�;C�e       ��Zi	��#��`�A�*W

accuracy��>


MAE�eA


MSE��&C

loss�B�?

	precision    

recall    ��J�e       ��Zi	�1P��`�A�*W

accuracy��?


MAE�X�@


MSEh
C

loss��?

	precision  �?

recall  �?Z���e       ��Zi	g�'3�`�A�*W

accuracyHW?


MAE4��@


MSE��B

loss��?

	precision  �?

recall  �?0�e       ��Zi	K�Fy�`�A�	*W

accuracy��?


MAE�D�@


MSE��B

loss�U�?

	precisionv�?

recall  �?��e       ��Zi	q�k��`�A�*W

accuracy0C?


MAEǔ�@


MSE�B

loss�d�?

	precisionڰ?

recall  �?B��e       ��Zi	�f��`�A�*W

accuracy�?


MAE�X�@


MSE}�B

lossj��?

	precision�?

recall  �?Q�=.e       ��Zi	TrI�`�A�*W

accuracy�Q?


MAE�(�@


MSE*��B

loss��?

	precisionG�?

recall  �?[]ve       ��Zi	�xm��`�A�*W

accuracy'�?


MAE�G�@


MSE��B

lossq��?

	precision|�?

recall  �?�6B�e       ��Zi	��J��`�A�*W

accuracy�r?


MAE�g�@


MSEnW�B

loss1��?

	precision��?

recall  �?QU��e       ��Zi	��`�A�*W

accuracy�� ?


MAEі�@


MSE�B

losswc�?

	precisionA�?

recall  �?�bUe       ��Zi	c=�Y�`�A�*W

accuracy�{"?


MAE�<�@


MSEE�B

loss w�?

	precisionl?

recall  �?Ǝґe       ��Zi	fL��`�A�*W

accuracy�J$?


MAE-�@


MSE�O�B

loss���?

	precision<?

recall  �?���ae       ��Zi	�����`�A�*W

accuracyW&?


MAE��@


MSE(ƩB

loss��?

	precision�<?

recall  �?���_e       ��Zi	�3�%�`�A� *W

accuracy_�'?


MAE��@


MSE�2�B

loss���?

	precision'<?

recall  �?Z�%�e       ��Zi	'hi�`�A�#*W

accuracy�)?


MAE�M�@


MSE'P�B

loss�G�?

	precision#?

recall  �?�}#�e       ��Zi	��^��`�A�%*W

accuracyU7+?


MAEX�@


MSE9 �B

lossp�?

	precision)	?

recall  �?�F�Ie       ��Zi		�P��`�A�'*W

accuracy#�,?


MAE���@


MSE�f�B

loss�'|?

	precisionE�~?

recall  �?��ֹe       ��Zi	
�5�`�A�**W

accuracy��-?


MAE���@


MSE���B

loss�dx?

	precision��~?

recall  �?���e       ��Zi	ƫ�x�`�A�,*W

accuracy�.?


MAE��@


MSE&ߛB

loss��t?

	precision��~?

recall  �?Ȓ�e       ��Zi	�����`�A�.*W

accuracy��/?


MAE�v�@


MSE�7�B

lossШq?

	precision��~?

recall  �?´�ke       ��Zi	�Б �`�A�1*W

accuracy��0?


MAEl�@


MSE���B

loss��n?

	precisionK�~?

recall  �?����e       ��Zi	:s`D�`�A�3*W

accuracy��1?


MAEv�@


MSE��B

lossD�k?

	precision��~?

recall  �?�;/e       ��Zi	zu��`�A�5*W

accuracyk�2?


MAE�7�@


MSE�ʕB

loss�#i?

	precision��~?

recall  �?	~�e       ��Zi	#��`�A�8*W

accuracy�X3?


MAE��@


MSE���B

loss#�f?

	precisionX~~?

recall  �?$Y�e       ��Zi	_�`�A�:*W

accuracy#4?


MAE�@


MSE���B

loss�Ld?

	precision�c~?

recall  �?�:�e       ��Zi	���S�`�A�<*W

accuracy��4?


MAEh@�@


MSE:ڒB

loss�b?

	precision-c~?

recall  �?����e       ��Zi	o���`�A�?*W

accuracyj*5?


MAE��@


MSEJ^�B

lossU`?

	precision�b~?

recall  �?h��?e       ��Zi	����`�A�A*W

accuracy�5?


MAE*O�@


MSEn��B

loss/^?

	precisionVH~?

recall  �?�t�Ze       ��Zi	���`�A�C*W

accuracyr6?


MAE�U�@


MSE�o�B

loss�2\?

	precision�H~?

recall  �?V
X�e       ��Zi	�\Kc�`�A�F*W

accuracyχ6?


MAE��@


MSE��B

losssZ?

	precisionwG~?

recall  �?=�L"e       ��Zi	����`�A�H*W

accuracyY7?


MAE��@


MSE%�B

loss��X?

	precision�F~?

recall  �?Ξ�e       ��Zi	�j���`�A�K*W

accuracy��7?


MAE/�@


MSE�4�B

lossy<W?

	precision�E~?

recall  �?��O�e       ��Zi	zx�.�`�A�M*W

accuracy��7?


MAE/��@


MSE-��B

loss��U?

	precision>F~?

recall  �?pge       ��Zi	�fQr�`�A�O*W

accuracy�8?


MAE
�@


MSE��B

loss�TT?

	precision�E~?

recall  �?����e       ��Zi	�� ��`�A�R*W

accuracy-[8?


MAE��@


MSEX��B

loss;�R?

	precision|D~?

recall  �?#���e       ��Zi	r���`�A�T*W

accuracyJ�8?


MAE=�@


MSE*��B

loss�Q?

	precision�C~?

recall  �?ҋ��e       ��Zi	�[�=�`�A�V*W

accuracyA�8?


MAEUЃ@


MSExr�B

lossSP?

	precision�C~?

recall  �?��e       ��Zi	w^���`�A�Y*W

accuracyd*9?


MAE\S�@


MSE���B

loss VO?

	precision�(~?

recall  �?��+�e       ��Zi	�P��`�A�[*W

accuracyae9?


MAE��@


MSE
�B

lossQ@N?

	precision2'~?

recall  �?����e       ��Zi	�%!	�`�A�]*W

accuracy��9?


MAE�U�@


MSEL�B

loss�)M?

	precision�'~?

recall  �?��e       ��Zi	l�L�`�A�`*W

accuracy�9?


MAE^ �@


MSE���B

loss%L?

	precision'~?

recall  �?��P3e       ��Zi	�Ð�`�A�b*W

accuracyX:?


MAE(Ё@


MSE[�B

loss+K?

	precisionb'~?

recall  �?�={e       ��Zi	rtp��`�A�d*W

accuracy�I:?


MAE���@


MSE�2�B

loss_=J?

	precision�&~?

recall  �?ł�e       ��Zi	��*�`�A�g*W

accuracy�i:?


MAE�J�@


MSE�҇B

loss�SI?

	precision�&~?

recall  �?��Pe       ��Zi	p\�`�A�i*W

accuracyL�:?


MAE��@


MSE���B

loss�tH?

	precision&~?

recall  �?Q���e       ��Zi	Y5���`�A�k*W

accuracyO�:?


MAE���@


MSEt��B

lossɝG?

	precision?&~?

recall  �?I�JAe       ��Zi	�}���`�A�n*W

accuracy�	;?


MAE�:�@


MSE�B

loss��F?

	precision�&~?

recall  �?E?�e       ��Zi	p��'�`�A�p*W

accuracy�M;?


MAE��@


MSE�e�B

loss�	F?

	precision'~?

recall  �??��Ce       ��Zi	s�k�`�A�r*W

accuracy}U;?


MAE�d@


MSE7>�B

lossVCE?

	precision$(~?

recall  �?�G{e       ��Zi	�o���`�A�u*W

accuracyS~;?


MAEH�~@


MSE+ƅB

loss�D?

	precision�(~?

recall  �?�e       ��Zi	S�v��`�A�w*W

accuracy��;?


MAEL~@


MSEG{�B

loss��C?

	precision�(~?

recall  �?C<�e       ��Zi	^�^7�`�A�y*W

accuracy �;?


MAEX}@


MSE��B

lossb#C?

	precision�(~?

recall  �?v{w�e       ��Zi	if{�`�A�|*W

accuracy�<?


MAEU�|@


MSEI܄B

loss�zB?

	precision�(~?

recall  �?H#:�e       ��Zi	��F��`�A�~*W

accuracyqA<?


MAE��{@


MSEF�B

loss��A?

	precisionlC~?

recall  �?qA�f       r;�j	�m�`�A�*W

accuracy�h<?


MAE)[{@


MSE��B

loss�6A?

	precision�C~?

recall  �?���f       r;�j	'��F�`�A��*W

accuracy��<?


MAE��z@


MSE#��B

loss��@?

	precision�C~?

recall  �?�}Df       r;�j	����`�A̅*W

accuracyx�<?


MAEZz@


MSE�{�B

lossW	@?

	precision�B~?

recall  �?]hf       r;�j	����`�A��*W

accuracy��<?


MAEb�y@


MSED�B

losseu??

	precision�(~?

recall  �?��f       r;�j	L���`�A��*W

accuracy��<?


MAEnky@


MSE�̂B

loss��>?

	precision�(~?

recall  �?U4f       r;�j	�|6V�`�AЌ*W

accuracy�=?


MAE�x@


MSE-`�B

loss?^>?

	precision�(~?

recall  �?v'o{f       r;�j	����`�A��*W

accuracy�4=?


MAE�Qx@


MSEm�B

lossm�=?

	precision�B~?

recall  �?J�3f       r;�j	r����`�A��*W

accuracyBY=?


MAEm x@


MSE��B

loss"X=?

	precision�B~?

recall  �?'ɇ�f       r;�j	��!�`�Aԓ*W

accuracy�o=?


MAE͇w@


MSEs��B

lossV�<?

	precision�B~?

recall  �??�#�f       r;�j	X�}e�`�A��*W

accuracy?�=?


MAE�w@


MSEs�B

loss�Y<?

	precisionC~?

recall  �?�9f       r;�j	�8��`�A��*W

accuracy�=?


MAEՊv@


MSE1:�B

lossf�;?

	precision[B~?

recall  �?q"��f       r;�j	����`�Aؚ*W

accuracy��=?


MAEy�u@


MSEXɀB

lossQj;?

	precision-B~?

recall  �?�'�f       r;�j	F��0�`�A��*W

accuracyE>?


MAE�#u@


MSE�f�B

loss@�:?

	precisionT(~?

recall  �?�~f       r;�j	3��t�`�A��*W

accuracyl">?


MAE��t@


MSE�?�B

loss��:?

	precision�'~?

recall  �?���)f       r;�j	�8l��`�Aܡ*W

accuracy9>?


MAEk�t@


MSE��B

lossi:?

	precisionb'~?

recall  �?hM��f       r;�j	qz��`�A��*W

accuracyVT>?


MAEt@


MSE�ZB

loss��9?

	precision�~?

recall  �?Y�f       r;�j	���?�`�A��*W

accuracyo`>?


MAE��s@


MSE�#B

loss�=9?

	precision�'~?

recall  �? m��f       r;�j	�]���`�A�*W

accuracy�l>?


MAE��s@


MSE.�~B

loss�8?

	precisionT(~?

recall  �?mO^f       r;�j	�-^��`�A��*W

accuracyF�>?


MAEg's@


MSE�I~B

loss�n8?

	precision�(~?

recall  �?���.f       r;�j	��"�`�A��*W

accuracy��>?


MAE��r@


MSE��}B

loss�
8?

	precisionE)~?

recall  �?]�xf       r;�j	�m�N�`�A�*W

accuracyC�>?


MAE}Or@


MSEfY}B

loss�7?

	precision�~?

recall  �?�F$f       r;�j	�����`�A��*W

accuracyi�>?


MAE�r@


MSE��|B

loss�E7?

	precision�~?

recall  �?�?��f       r;�j		q��`�A��*W

accuracy��>?


MAE��q@


MSE0�|B

loss$�6?

	precisionQ~?

recall  �?�n�f       r;�j	RbQ�`�A�*W

accuracy�??


MAECq@


MSE-|B

loss�6?

	precision�~?

recall  �?K�TMf       r;�j	&^�`�A��*W

accuracy�??


MAE�q@


MSE/�{B

loss�+6?

	precision�~?

recall  �?N��hf       r;�j	~Ϳ��`�A��*W

accuracy04??


MAE�p@


MSECZ{B

loss��5?

	precision�~?

recall  �?�-�f       r;�j	=����`�A�*W

accuracy�A??


MAE�Yp@


MSE��zB

loss*u5?

	precision�~?

recall  �?P@e�f       r;�j	U�[)�`�A��*W

accuracy}X??


MAE��o@


MSERvzB

lossm5?

	precision�~?

recall  �?��O~f       r;�j	�Ym�`�A��*W

accuracy�y??


MAEk�o@


MSE�?zB

loss��4?

	precision�~?

recall  �?d��f       r;�j	��3��`�A��*W

accuracy�??


MAE[jo@


MSE5�yB

lossn4?

	precision�~?

recall  �?�N�#f       r;�j	�M���`�A��*W

accuracy�??


MAEJSo@


MSEd�yB

loss+4?

	precision�~?

recall  �?���f       r;�j	>��8�`�A��*W

accuracyj�??


MAEs�n@


MSE+yB

losse�3?

	precision�~?

recall  �?Ƅ��f       r;�j	B�]|�`�A��*W

accuracy��??


MAE�`n@


MSEN�xB

lossp3?

	precisionQ~?

recall  �?-�f       r;�j	��!��`�A��*W

accuracy��??


MAE��m@


MSE;xB

loss�3?

	precision�~?

recall  �?��~f       r;�j	����`�A��*W

accuracy
@?


MAE�m@


MSEp�wB

loss�2?

	precision�~?

recall  �?2��f       r;�j	@d�G�`�A��*W

accuracy�3@?


MAEm@


MSE#~wB

loss�y2?

	precision ~?

recall  �?^hf       r;�j	7�v��`�A��*W

accuracy�M@?


MAE��l@


MSE�wB

loss-(2?

	precision��}?

recall  �?��*f       r;�j	"�]��`�A��*W

accuracy�k@?


MAE
$l@


MSE9svB

loss�1?

	precision"�}?

recall  �?ϕ)�f       r;�j	D��`�A��*W

accuracy��@?


MAE?�k@


MSER3vB

loss��1?

	precisionW�}?

recall  �?ki�f       r;�j	��V�`�A��*W

accuracy��@?


MAE��k@


MSE��uB

loss�81?

	precision"�}?

recall  �?�x�f       r;�j	�Y���`�A��*W

accuracy�@?


MAE��j@


MSE�7uB

loss��0?

	precision�~?

recall  �?h�zf       r;�j	_���`�A��*W

accuracy��@?


MAE��j@


MSE�tB

lossN�0?

	precision�~?

recall  �?s��f       r;�j	_L"�`�A��*W

accuracy{�@?


MAEj@


MSE�tB

loss�I0?

	precision)~?

recall  �?I_�f       r;�j	V
f�`�A��*W

accuracy�%A?


MAE5ci@


MSE6wsB

lossb�/?

	precision�(~?

recall  �?l�f       r;�j	�gЩ�`�A��*W

accuracy<A?


MAE1%i@


MSE�WsB

loss��/?

	precisionlC~?

recall  �?0؂f       r;�j	��f��`�A��*W

accuracy�]A?


MAE<�h@


MSE��rB

loss�^/?

	precision5*~?

recall  �?힓�f       r;�j	�L�0�`�A��*W

accuracyA?


MAE��g@


MSEl�qB

lossx/?

	precision5*~?

recall  �? ۩�f       r;�j	y,�t�`�A��*W

accuracy��A?


MAE\�g@


MSE�+rB

lossi�.?

	precision�)~?

recall  �?]�zf       r;�j	<-���`�A��*W

accuracyR�A?


MAE�g@


MSE��qB

loss�u.?

	precision�)~?

recall  �?�6�f       r;�j	)�3��`�A��*W

accuracy	�A?


MAERBg@


MSE�?qB

loss�&.?

	precision5*~?

recall  �?��J#f       r;�j	�x�?�`�A��*W

accuracy��A?


MAE��f@


MSE��pB

loss}�-?

	precisionOD~?

recall  �?�}�f       r;�j	����`�A��*W

accuracy&B?


MAE�Yf@


MSE�lpB

loss��-?

	precision�]~?

recall  �?��d�f       r;�j	�rX��`�A��*W

accuracyf"B?


MAE��e@


MSEBtoB

loss�<-?

	precision0E~?

recall  �?�� �f       r;�j	��1�`�A��*W

accuracy0EB?


MAE7%e@


MSEoB

loss��,?

	precisionE~?

recall  �?ϑ�$f       r;�j	Et�N�`�A��*W

accuracyVWB?


MAE.�d@


MSE��nB

loss��,?

	precision�D~?

recall  �?jaexf       r;�j	%f���`�A�*W

accuracy&}B?


MAE�\d@


MSE�)nB

loss�S,?

	precision]E~?

recall  �?�Ԓ�f       r;�j	X��`�A��*W

accuracy`�B?


MAE�c@


MSEдmB

lossT,?

	precision]E~?

recall  �?���f       r;�j	�O��`�A��*W

accuracy=�B?


MAE�Ic@


MSEHmB

loss��+?

	precision]E~?

recall  �?*�p�f       r;�j	K�\]�`�A�*W

accuracy��B?


MAE�[c@


MSEE.mB

loss�k+?

	precision=_~?

recall  �?�+L�f       r;�j	��)��`�A��*W

accuracy��B?


MAED�b@


MSEL�lB

loss9+?

	precision�^~?

recall  �?/x��f       r;�j	�����`�Ač*W

accuracymC?


MAETb@


MSEj�kB

loss#�*?

	precision=_~?

recall  �?��	&f       r;�j	rc(�`�A��*W

accuracy�DC?


MAEAca@


MSE1'kB

loss�*?

	precision=_~?

recall  �?�־�f       r;�j	<�l�`�A��*W

accuracyiC?


MAEt�`@


MSE�jB

loss03*?

	precision=_~?

recall  �?-莩f       r;�j	˭��`�AȔ*W

accuracyg�C?


MAE�4`@


MSE��iB

loss�)?

	precision�_~?

recall  �?�iA�f       r;�j	}�s��`�A��*W

accuracy�C?


MAE&�_@


MSE+�iB

loss�)?

	precision�_~?

recall  �?��o�f       r;�j	��+7�`�A��*W

accuracy��C?


MAE��_@


MSE�LiB

loss|N)?

	precision�_~?

recall  �?��c�f       r;�j	{�z�`�A̛*W

accuracy��C?


MAE�^@


MSE��hB

loss� )?

	precisiong_~?

recall  �?<��f       r;�j	�7{��`�A��*W

accuracyaD?


MAEȑ^@


MSE�BhB

loss��(?

	precision�_~?

recall  �?�<��f       r;�j	:M�`�A��*W

accuracy8,D?


MAE_�]@


MSE��gB

loss�j(?

	precisiong_~?

recall  �?YYP�f       r;�j	�Q�E�`�AТ*W

accuracy�HD?


MAE
�]@


MSE�3gB

loss�(?

	precision=_~?

recall  �?���f       r;�j	�1���`�A��*W

accuracy;jD?


MAE��\@


MSE�fB

loss��'?

	precision�x~?

recall  �?�g{Jf       r;�j	ym ��`�A��*W

accuracy��D?


MAE�m\@


MSEJ'fB

loss��'?

	precision�x~?

recall  �?�>#f       r;�j	Τ��`�Aԩ*W

accuracy+�D?


MAE�C\@


MSEw�eB

loss-?'?

	precisionIy~?

recall  �?�"Df       r;�j	�DKT�`�A��*W

accuracy��D?


MAE�[@


MSE!ZeB

loss)�&?

	precisionqy~?

recall  �?����f       r;�j	�'ȗ�`�A��*W

accuracy��D?


MAE�_[@


MSE�&eB

loss�&?

	precision�x~?

recall  �?����f       r;�j	�b~��`�Aذ*W

accuracyE?


MAE�Z@


MSE6�dB

loss�f&?

	precisionqy~?

recall  �?Z#mYf       r;�j	�%�`�A��*W

accuracyE?


MAE�Z@


MSE؄dB

loss� &?

	precisionIy~?

recall  �?�$�f       r;�j	���b�`�A��*W

accuracy�(E?


MAE3vZ@


MSE�dB

loss��%?

	precision�y~?

recall  �?�<f       r;�j	��t��`�Aܷ*W

accuracy�EE?


MAE�Z@


MSE��cB

loss��%?

	precision�y~?

recall  �?��f       r;�j	m����`�A��*W

accuracy�TE?


MAE��Y@


MSE�NcB

loss-U%?

	precision�y~?

recall  �?(:��f       r;�j	��w-�`�A��*W

accuracyE?


MAE�-Y@


MSE��bB

loss!%?

	precisionqy~?

recall  �?W��f       r;�j	��q�`�A�*W

accuracyϡE?


MAE��X@


MSE bB

loss�$?

	precisionqy~?

recall  �?i�J�f       r;�j	����`�A��*W

accuracy��E?


MAE�KX@


MSE^�aB

loss.�$?

	precision�y~?

recall  �?�iBf       r;�j	�"_��`�A��*W

accuracy#�E?


MAE}�W@


MSE�haB

loss�U$?

	precision�y~?

recall  �?�i{mf       r;�j	��;�`�A��*W

accuracy6�E?


MAEl�W@


MSE}]aB

loss?$?

	precision�y~?

recall  �?�K�<f       r;�j	,��`�A��*W

accuracyi�E?


MAEE|W@


MSE7�`B

loss��#?

	precision�y~?

recall  �?G�[�f       r;�j	�&��`�A��*W

accuracy�E?


MAEzW@


MSE�H`B

lossS�#?

	precision7z~?

recall  �?/���f       r;�j	i���`�A��*W

accuracy�F?


MAEF�V@


MSE��_B

loss�g#?

	precision^z~?

recall  �?UOh�f       r;�j	�-�J�`�A��*W

accuracys+F?


MAE�kV@


MSE�_B

loss,0#?

	precision}�~?

recall  �?w��Pf       r;�j		D��`�A��*W

accuracy�@F?


MAEyV@


MSEYX_B

loss@�"?

	precision}�~?

recall  �?Yw8`f       r;�j	ڼ���`�A��*W

accuracy�UF?


MAE��U@


MSE�^B

lossz�"?

	precision}�~?

recall  �?�)�Jf       r;�j	(ql�`�A��*W

accuracypfF?


MAE��U@


MSEO�^B

loss��"?

	precision�~?

recall  �?;��Ff       r;�j	���X�`�A��*W

accuracy�xF?


MAEYU@


MSE��^B

loss�Z"?

	precision3�~?

recall  �?�~��f       r;�j	�g`��`�A��*W

accuracy�oF?


MAE�PU@


MSE�U^B

loss�%"?

	precision3�~?

recall  �?���f       r;�j	�����`�A��*W

accuracy��F?


MAE}U@


MSE�^B

loss<�!?

	precision3�~?

recall  �?�:�>f       r;�j	h�#�`�A��*W

accuracyZ�F?


MAED�T@


MSE�]B

loss��!?

	precisionɭ~?

recall  �?���f       r;�j	��(g�`�A��*W

accuracyg�F?


MAEK�T@


MSEJ�]B

lossՑ!?

	precision��~?

recall  �?̭��f       r;�j	�l���`�A��*W

accuracy��F?


MAE�T@


MSE�\B

loss`!?

	precision�~?

recall  �?�d]f       r;�j	g�k��`�A��*W

accuracyJ�F?


MAE�S@


MSE��\B

loss�1!?

	precisiona�~?

recall��?�i%	f       r;�j	;*22�`�A��*W

accuracy��F?


MAE��S@


MSE��\B

lossS!?

	precision��~?

recall��?�C�f       r;�j	o��u�`�A��*W

accuracy��F?


MAETDS@


MSE \B

loss�� ?

	precision�~?

recall��?�&��f       r;�j	�M���`�A��*W

accuracy� G?


MAE� S@


MSE�[B

lossu� ?

	precision��~?

recall��?>���f       r;�j	4����`�A��*W

accuracy�G?


MAE��R@


MSE-�[B

loss�z ?

	precision��~?

recall��?����f       r;�j	~r|@�`�A��*W

accuracy$4G?


MAE+NR@


MSE�[B

loss&Q ?

	precision��~?

recall��?��:�f       r;�j	3Q��`�A��*W

accuracyWLG?


MAE��Q@


MSE��ZB

loss�# ?

	precision��~?

recall��?A(�If       r;�j	{\���`�A��*W

accuracy~^G?


MAEI�Q@


MSE��ZB

lossC�?

	precision��~?

recall��?$��f       r;�j	m,>�`�A��*W

accuracy�mG?


MAE,{Q@


MSED4ZB

loss|�?

	precision��~?

recall��?�m��f       r;�j	N2�N�`�A��*W

accuracy�sG?


MAE�wQ@


MSE�4ZB

loss+�?

	precision��~?

recall��?�gQhf       r;�j	
�v��`�A��*W

accuracyG�G?


MAE�9Q@


MSE[�YB

loss�y?

	precision��~?

recall��?l>"�f       r;�j	�4��`�A��*W

accuracyG�G?


MAE�5Q@


MSE��YB

loss P?

	precision��~?

recall��?�R�f       r;�j	�ӓ�`�A܂*W

accuracy�G?


MAE��P@


MSEZ�YB

loss�&?

	precision��~?

recall��?�ۈf       r;�j	�jS]�`�A��*W

accuracy��G?


MAEֻP@


MSE�LYB

loss��?

	precision��~?

recall��?�jo