       �K"	   ��`�Abrain.Event:2�.�̓�      o���	+��`�A"��
m
global_stepVariable*
dtype0	*
_output_shapes
: *
	container *
shape: *
shared_name 

global_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
_class
loc:@global_step*
T0	*
validate_shape(*
use_locking(
j
global_step/readIdentityglobal_step*
_output_shapes
: *
_class
loc:@global_step*
T0	
X
inputPlaceholder*
dtype0*(
_output_shapes
:����������*
shape: 
T
outputPlaceholder*
dtype0	*#
_output_shapes
:���������*
shape: 
�
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"����   
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*(
_output_shapes
:����������*
T0
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
dtype0*
_output_shapes
: *
value	B :
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
"hiddenlayer_0/hiddenlayer_0/unpackUnpack!hiddenlayer_0/hiddenlayer_0/Shape*
_output_shapes
: : *	
num*
T0*

axis 
�
hiddenlayer_0/weights/part_0Variable*
dtype0*
_output_shapes
:	�*
	container *
shape:	�*
shared_name 
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB"      
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB
 *,���
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB
 *,��=
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
seed2*

seed**
_output_shapes
:	�*
T0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_0/weights/part_0/Initializer/random_uniform/max;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*
_output_shapes
:	�*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
_output_shapes
:	�*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
_output_shapes
:	�*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0*
validate_shape(*
use_locking(
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
_output_shapes
:	�*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0
n
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
_output_shapes
:	�*
T0
�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
transpose_a( *
transpose_b( *'
_output_shapes
:���������*
T0
�
hiddenlayer_0/biases/part_0Variable*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
valueB*    
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
T0*
validate_shape(*
use_locking(
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
T0
g
hiddenlayer_0/biasesIdentity hiddenlayer_0/biases/part_0/read*
_output_shapes
:*
T0
�
#hiddenlayer_0/hiddenlayer_0/BiasAddBiasAdd"hiddenlayer_0/hiddenlayer_0/MatMulhiddenlayer_0/biases*'
_output_shapes
:���������*
T0*
data_formatNHWC

 hiddenlayer_0/hiddenlayer_0/ReluRelu#hiddenlayer_0/hiddenlayer_0/BiasAdd*'
_output_shapes
:���������*
T0
W
zero_fraction/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
zero_fraction/EqualEqual hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*'
_output_shapes
:���������*
T0
p
zero_fraction/CastCastzero_fraction/Equal*'
_output_shapes
:���������*

DstT0*

SrcT0

d
zero_fraction/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
_output_shapes
: *
T0*
	keep_dims( 
x
ScalarSummary/tagsConst*
dtype0*
_output_shapes
: *6
value-B+ B%hiddenlayer_0:fraction_of_zero_values
g
ScalarSummaryScalarSummaryScalarSummary/tagszero_fraction/Mean*
_output_shapes
: *
T0
m
HistogramSummary/tagConst*
dtype0*
_output_shapes
: *)
value B Bhiddenlayer_0:activation
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
dnn_logits/dnn_logits/unpackUnpackdnn_logits/dnn_logits/Shape*
_output_shapes
: : *	
num*
T0*

axis 
�
dnn_logits/weights/part_0Variable*
dtype0*
_output_shapes

: *
	container *
shape
: *
shared_name 
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@dnn_logits/weights/part_0*
valueB"       
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
valueB
 *�F��
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
valueB
 *�F�>
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0*
seed2.*

seed**
_output_shapes

: *
T0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/subSub8dnn_logits/weights/part_0/Initializer/random_uniform/max8dnn_logits/weights/part_0/Initializer/random_uniform/min*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
T0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/mulMulBdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn_logits/weights/part_0/Initializer/random_uniform/sub*
_output_shapes

: *,
_class"
 loc:@dnn_logits/weights/part_0*
T0
�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*
_output_shapes

: *,
_class"
 loc:@dnn_logits/weights/part_0*
T0
�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
_output_shapes

: *,
_class"
 loc:@dnn_logits/weights/part_0*
T0*
validate_shape(*
use_locking(
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*
_output_shapes

: *,
_class"
 loc:@dnn_logits/weights/part_0*
T0
g
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
_output_shapes

: *
T0
�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reludnn_logits/weights*
transpose_a( *
transpose_b( *'
_output_shapes
:��������� *
T0
�
dnn_logits/biases/part_0Variable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
: *+
_class!
loc:@dnn_logits/biases/part_0*
valueB *    
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
_output_shapes
: *+
_class!
loc:@dnn_logits/biases/part_0*
T0*
validate_shape(*
use_locking(
�
dnn_logits/biases/part_0/readIdentitydnn_logits/biases/part_0*
_output_shapes
: *+
_class!
loc:@dnn_logits/biases/part_0*
T0
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
dtype0*
_output_shapes
: *
valueB
 *    
�
zero_fraction_1/EqualEqualdnn_logits/dnn_logits/BiasAddzero_fraction_1/zero*'
_output_shapes
:��������� *
T0
t
zero_fraction_1/CastCastzero_fraction_1/Equal*'
_output_shapes
:��������� *

DstT0*

SrcT0

f
zero_fraction_1/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
_output_shapes
: *
T0*
	keep_dims( 
w
ScalarSummary_1/tagsConst*
dtype0*
_output_shapes
: *3
value*B( B"dnn_logits:fraction_of_zero_values
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
_output_shapes
: *
T0
l
HistogramSummary_1/tagConst*
dtype0*
_output_shapes
: *&
valueB Bdnn_logits:activation
~
HistogramSummary_1HistogramSummaryHistogramSummary_1/tagdnn_logits/dnn_logits/BiasAdd*
_output_shapes
: *
T0
R
zerosConst*
dtype0*
_output_shapes
: *
valueB *    
~
centered_bias_weightVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
_output_shapes
: *'
_class
loc:@centered_bias_weight*
T0*
validate_shape(*
use_locking(
�
centered_bias_weight/readIdentitycentered_bias_weight*
_output_shapes
: *'
_class
loc:@centered_bias_weight*
T0
`
Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
a
ReshapeReshapecentered_bias_weight/readReshape/shape*
_output_shapes
: *
T0
�
ScalarSummary_2/tagsConst*
dtype0*
_output_shapes
: *�
value�B� Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14Bcentered_bias_15Bcentered_bias_16Bcentered_bias_17Bcentered_bias_18Bcentered_bias_19Bcentered_bias_20Bcentered_bias_21Bcentered_bias_22Bcentered_bias_23Bcentered_bias_24Bcentered_bias_25Bcentered_bias_26Bcentered_bias_27Bcentered_bias_28Bcentered_bias_29Bcentered_bias_30Bcentered_bias_31
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
":���������:��������� *
Tlabels0	*
T0
O
ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
_output_shapes
: *
T0*
	keep_dims( 
O

mean/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
l

mean/totalVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
mean/total/AssignAssign
mean/total
mean/zeros*
_output_shapes
: *
_class
loc:@mean/total*
T0*
validate_shape(*
use_locking(
g
mean/total/readIdentity
mean/total*
_output_shapes
: *
_class
loc:@mean/total*
T0
Q
mean/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
l

mean/countVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
_output_shapes
: *
_class
loc:@mean/count*
T0*
validate_shape(*
use_locking(
g
mean/count/readIdentity
mean/count*
_output_shapes
: *
_class
loc:@mean/count*
T0
8
	mean/SizeSizeloss*
_output_shapes
: *
T0
Q
mean/ToFloat_1Cast	mean/Size*
_output_shapes
: *

DstT0*

SrcT0
M

mean/ConstConst*
dtype0*
_output_shapes
: *
valueB 
S
mean/SumSumloss
mean/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
_output_shapes
: *
_class
loc:@mean/total*
T0*
use_locking( 
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
_output_shapes
: *
_class
loc:@mean/count*
T0*
use_locking( 
S
mean/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
[

mean/valueSelectmean/Greatermean/Divmean/value/e*
_output_shapes
: *
T0
y
mean/Greater_1/yConst^mean/AssignAdd^mean/AssignAdd_1*
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
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
ToFloatCastoutput*#
_output_shapes
:���������*

DstT0*

SrcT0	
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
Y
ArgMaxArgMaxBiasAddArgMax/dimension*#
_output_shapes
:���������*
T0
b
 precision/true_positives/Equal/yConst*
dtype0	*
_output_shapes
: *
value	B	 R

precision/true_positives/EqualEqualoutput precision/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
d
"precision/true_positives/Equal_1/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
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
dtype0*
_output_shapes
: *
valueB
 *    
�
precision/true_positives/countVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count*
T0*
validate_shape(*
use_locking(
�
#precision/true_positives/count/readIdentityprecision/true_positives/count*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count*
T0
�
 precision/true_positives/ToFloatCast#precision/true_positives/LogicalAnd*#
_output_shapes
:���������*

DstT0*

SrcT0

s
!precision/true_positives/IdentityIdentity#precision/true_positives/count/read*
_output_shapes
: *
T0
h
precision/true_positives/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count*
T0*
use_locking( 
c
!precision/false_positives/Equal/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
precision/false_positives/EqualEqualoutput!precision/false_positives/Equal/y*#
_output_shapes
:���������*
T0	
e
#precision/false_positives/Equal_1/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
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
dtype0*
_output_shapes
: *
valueB
 *    
�
precision/false_positives/countVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count*
T0*
validate_shape(*
use_locking(
�
$precision/false_positives/count/readIdentityprecision/false_positives/count*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count*
T0
�
!precision/false_positives/ToFloatCast$precision/false_positives/LogicalAnd*#
_output_shapes
:���������*

DstT0*

SrcT0

u
"precision/false_positives/IdentityIdentity$precision/false_positives/count/read*
_output_shapes
: *
T0
i
precision/false_positives/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count*
T0*
use_locking( 
|
precision/addAdd!precision/true_positives/Identity"precision/false_positives/Identity*
_output_shapes
: *
T0
X
precision/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
{
precision/update_opSelectprecision/Greater_1precision/Div_1precision/update_op/e*
_output_shapes
: *
T0
_
recall/true_positives/Equal/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
y
recall/true_positives/EqualEqualoutputrecall/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
a
recall/true_positives/Equal_1/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
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
dtype0*
_output_shapes
: *
valueB
 *    
}
recall/true_positives/countVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count*
T0*
validate_shape(*
use_locking(
�
 recall/true_positives/count/readIdentityrecall/true_positives/count*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count*
T0
�
recall/true_positives/ToFloatCast recall/true_positives/LogicalAnd*#
_output_shapes
:���������*

DstT0*

SrcT0

m
recall/true_positives/IdentityIdentity recall/true_positives/count/read*
_output_shapes
: *
T0
e
recall/true_positives/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count*
T0*
use_locking( 
`
recall/false_negatives/Equal/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
{
recall/false_negatives/EqualEqualoutputrecall/false_negatives/Equal/y*#
_output_shapes
:���������*
T0	
b
 recall/false_negatives/Equal_1/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
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
dtype0*
_output_shapes
: *
valueB
 *    
~
recall/false_negatives/countVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count*
T0*
validate_shape(*
use_locking(
�
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count*
T0
�
recall/false_negatives/ToFloatCast!recall/false_negatives/LogicalAnd*#
_output_shapes
:���������*

DstT0*

SrcT0

o
recall/false_negatives/IdentityIdentity!recall/false_negatives/count/read*
_output_shapes
: *
T0
f
recall/false_negatives/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count*
T0*
use_locking( 
s

recall/addAddrecall/true_positives/Identityrecall/false_negatives/Identity*
_output_shapes
: *
T0
U
recall/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
o
recall/update_opSelectrecall/Greater_1recall/Div_1recall/update_op/e*
_output_shapes
: *
T0
L
EqualEqualArgMaxoutput*#
_output_shapes
:���������*
T0	
U
	ToFloat_1CastEqual*#
_output_shapes
:���������*

DstT0*

SrcT0

S
accuracy/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
p
accuracy/totalVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
_output_shapes
: *!
_class
loc:@accuracy/total*
T0*
validate_shape(*
use_locking(
s
accuracy/total/readIdentityaccuracy/total*
_output_shapes
: *!
_class
loc:@accuracy/total*
T0
U
accuracy/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
p
accuracy/countVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
_output_shapes
: *!
_class
loc:@accuracy/count*
T0*
validate_shape(*
use_locking(
s
accuracy/count/readIdentityaccuracy/count*
_output_shapes
: *!
_class
loc:@accuracy/count*
T0
A
accuracy/SizeSize	ToFloat_1*
_output_shapes
: *
T0
Y
accuracy/ToFloat_1Castaccuracy/Size*
_output_shapes
: *

DstT0*

SrcT0
X
accuracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
`
accuracy/SumSum	ToFloat_1accuracy/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
_output_shapes
: *!
_class
loc:@accuracy/total*
T0*
use_locking( 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
_output_shapes
: *!
_class
loc:@accuracy/count*
T0*
use_locking( 
W
accuracy/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
k
accuracy/valueSelectaccuracy/Greateraccuracy/Divaccuracy/value/e*
_output_shapes
: *
T0
�
accuracy/Greater_1/yConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
w
accuracy/update_opSelectaccuracy/Greater_1accuracy/Div_1accuracy/update_op/e*
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
mean_absolute_error/ToFloatCastAbs*#
_output_shapes
:���������*

DstT0*

SrcT0	
^
mean_absolute_error/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
{
mean_absolute_error/totalVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total*
T0*
validate_shape(*
use_locking(
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total*
T0
`
mean_absolute_error/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
{
mean_absolute_error/countVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count*
T0*
validate_shape(*
use_locking(
�
mean_absolute_error/count/readIdentitymean_absolute_error/count*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count*
T0
^
mean_absolute_error/SizeSizemean_absolute_error/ToFloat*
_output_shapes
: *
T0
o
mean_absolute_error/ToFloat_1Castmean_absolute_error/Size*
_output_shapes
: *

DstT0*

SrcT0
c
mean_absolute_error/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total*
T0*
use_locking( 
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count*
T0*
use_locking( 
b
mean_absolute_error/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
�
mean_absolute_error/valueSelectmean_absolute_error/Greatermean_absolute_error/Divmean_absolute_error/value/e*
_output_shapes
: *
T0
�
mean_absolute_error/Greater_1/yConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
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
mean_squared_error/ToFloatCastSquare*#
_output_shapes
:���������*

DstT0*

SrcT0	
]
mean_squared_error/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
z
mean_squared_error/totalVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total*
T0*
validate_shape(*
use_locking(
�
mean_squared_error/total/readIdentitymean_squared_error/total*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total*
T0
_
mean_squared_error/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
z
mean_squared_error/countVariable*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count*
T0*
validate_shape(*
use_locking(
�
mean_squared_error/count/readIdentitymean_squared_error/count*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count*
T0
\
mean_squared_error/SizeSizemean_squared_error/ToFloat*
_output_shapes
: *
T0
m
mean_squared_error/ToFloat_1Castmean_squared_error/Size*
_output_shapes
: *

DstT0*

SrcT0
b
mean_squared_error/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total*
T0*
use_locking( 
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count*
T0*
use_locking( 
a
mean_squared_error/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
�
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/Divmean_squared_error/value/e*
_output_shapes
: *
T0
�
mean_squared_error/Greater_1/yConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
dtype0*
_output_shapes
: *
valueB
 *    
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
dtype0*
_output_shapes
: *
valueB
 *    
�
mean_squared_error/update_opSelectmean_squared_error/Greater_1mean_squared_error/Div_1mean_squared_error/update_op/e*
_output_shapes
: *
T0
�

group_depsNoOp^recall/update_op^mean/update_op^mean_squared_error/update_op^precision/update_op^mean_absolute_error/update_op^accuracy/update_op
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save/save/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�BBcentered_bias_weightBdnn_logits/biasesBdnn_logits/weightsBglobal_stepBhiddenlayer_0/biasesBhiddenlayer_0/weights
�
save/save/shapes_and_slicesConst*
dtype0*
_output_shapes
:*O
valueFBDB B32 0,32B30 32 0,30:0,32B B30 0,30B1024 30 0,1024:0,30
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
: *
_class
loc:@save/Const*
T0
s
save/restore_slice/tensor_nameConst*
dtype0*
_output_shapes
: *%
valueB Bcentered_bias_weight
c
"save/restore_slice/shape_and_sliceConst*
dtype0*
_output_shapes
: *
valueB B 
�
save/restore_sliceRestoreSlice
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
_output_shapes
: *'
_class
loc:@centered_bias_weight*
T0*
validate_shape(*
use_locking(
r
 save/restore_slice_1/tensor_nameConst*
dtype0*
_output_shapes
: *"
valueB Bdnn_logits/biases
l
$save/restore_slice_1/shape_and_sliceConst*
dtype0*
_output_shapes
: *
valueB B32 0,32
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
_output_shapes
: *+
_class!
loc:@dnn_logits/biases/part_0*
T0*
validate_shape(*
use_locking(
s
 save/restore_slice_2/tensor_nameConst*
dtype0*
_output_shapes
: *#
valueB Bdnn_logits/weights
t
$save/restore_slice_2/shape_and_sliceConst*
dtype0*
_output_shapes
: * 
valueB B30 32 0,30:0,32
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
_output_shapes

: *,
_class"
 loc:@dnn_logits/weights/part_0*
T0*
validate_shape(*
use_locking(
l
 save/restore_slice_3/tensor_nameConst*
dtype0*
_output_shapes
: *
valueB Bglobal_step
e
$save/restore_slice_3/shape_and_sliceConst*
dtype0*
_output_shapes
: *
valueB B 
�
save/restore_slice_3RestoreSlice
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
dt0	*
_output_shapes
:*
preferred_shard���������
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
_output_shapes
: *
_class
loc:@global_step*
T0	*
validate_shape(*
use_locking(
u
 save/restore_slice_4/tensor_nameConst*
dtype0*
_output_shapes
: *%
valueB Bhiddenlayer_0/biases
l
$save/restore_slice_4/shape_and_sliceConst*
dtype0*
_output_shapes
: *
valueB B30 0,30
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
T0*
validate_shape(*
use_locking(
v
 save/restore_slice_5/tensor_nameConst*
dtype0*
_output_shapes
: *&
valueB Bhiddenlayer_0/weights
x
$save/restore_slice_5/shape_and_sliceConst*
dtype0*
_output_shapes
: *$
valueB B1024 30 0,1024:0,30
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
_output_shapes
:	�*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0*
validate_shape(*
use_locking(
v
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5
�
initNoOp^mean/total/Assign^mean/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign^accuracy/total/Assign^accuracy/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign
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
IsVariableInitialized_8IsVariableInitializedprecision/true_positives/count*
dtype0*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitializedprecision/false_positives/count*
dtype0*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: 
�
IsVariableInitialized_10IsVariableInitializedrecall/true_positives/count*
dtype0*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: 
�
IsVariableInitialized_11IsVariableInitializedrecall/false_negatives/count*
dtype0*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: 
�
IsVariableInitialized_12IsVariableInitializedaccuracy/total*
dtype0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedaccuracy/count*
dtype0*!
_class
loc:@accuracy/count*
_output_shapes
: 
�
IsVariableInitialized_14IsVariableInitializedmean_absolute_error/total*
dtype0*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedmean_absolute_error/count*
dtype0*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedmean_squared_error/total*
dtype0*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedmean_squared_error/count*
dtype0*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: 
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17*
_output_shapes
:*
N*
T0
*

axis 
:

LogicalNot
LogicalNotpack*
_output_shapes
:
�
Const_1Const*
dtype0*
_output_shapes
:*�
value�B�Bglobal_stepBhiddenlayer_0/weights/part_0Bhiddenlayer_0/biases/part_0Bdnn_logits/weights/part_0Bdnn_logits/biases/part_0Bcentered_bias_weightB
mean/totalB
mean/countBprecision/true_positives/countBprecision/false_positives/countBrecall/true_positives/countBrecall/false_negatives/countBaccuracy/totalBaccuracy/countBmean_absolute_error/totalBmean_absolute_error/countBmean_squared_error/totalBmean_squared_error/count
[
$report_uninitialized_variables/ShapeShapeConst_1*
_output_shapes
:*
T0
t
*report_uninitialized_variables/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB:
|
)report_uninitialized_variables/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
_output_shapes
: *
Index0*
T0
r
0report_uninitialized_variables/concat/concat_dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
.report_uninitialized_variables/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB:
���������
�
%report_uninitialized_variables/concatConcat0report_uninitialized_variables/concat/concat_dim.report_uninitialized_variables/concat/values_0$report_uninitialized_variables/Slice*
_output_shapes
:*
N*
T0
�
&report_uninitialized_variables/ReshapeReshapeConst_1%report_uninitialized_variables/concat*
_output_shapes
:*
T0
�
.report_uninitialized_variables/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
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
:���������*
T0	*
squeeze_dims

�
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*#
_output_shapes
:���������*
validate_indices(*
Tindices0	*
Tparams0"
ܾ�e       ��Zi	B��`�A�*W

recall    

lossp��?


MSEMr&C

	precision    


MAE�\A

accuracyPH�>��be       ��Zi	����`�A�*W

recall  �?

lossU�?


MSE��C

	precision  �?


MAES�@

accuracy��?'��Be       ��Zi	��2�`�A�*W

recall  �?

loss��?


MSEdf�B

	precision  �?


MAER��@

accuracy�?��e       ��Zi	��y�`�A�	*W

recall  �?

loss諩?


MSE��B

	precision��?


MAE]�@

accuracy}�?x�H�e       ��Zi	=a���`�A�*W

recall  �?

loss�6�?


MSEC��B

	precisionZ�?


MAEN��@

accuracy��?	t��e       ��Zi	%b��`�A�*W

recall  �?

loss䦜?


MSEUZ�B

	precision=�?


MAEN��@

accuracy�2?~�v:e       ��Zi	St�N�`�A�*W

recall  �?

loss��?


MSEҢ�B

	precisiono�?


MAE0�@

accuracy؆?I��ke       ��Zi	�|���`�A�*W

recall  �?

loss�&�?


MSE��B

	precision��?


MAE�Q�@

accuracy��?��<{e       ��Zi	�U��`�A�*W

recall  �?

lossG��?


MSE�\�B

	precision@�?


MAE���@

accuracys�?t��Ze       ��Zi	1OA�`�A�*W

recall  �?

loss�C�?


MSE�ǱB

	precision;R?


MAEI�@

accuracy_S!?g���e       ��Zi	�J`�`�A�*W

recall  �?

loss�%�?


MSEQ9�B

	precisionmR?


MAE��@

accuracy~�#?��~�e       ��Zi	>7s��`�A�*W

recall  �?

loss�4�?


MSE$�B

	precisionLR?


MAED��@

accuracy��%?�r��e       ��Zi	Q���`�A�*W

recall  �?

lossp�?


MSE���B

	precision9?


MAE�i�@

accuracy�-(?,o3e       ��Zi	+r,�`�A� *W

recall  �?

lossRہ?


MSE��B

	precision�?


MAE��@

accuracyG?*?� =�e       ��Zi	�\p�`�A�#*W

recall  �?

loss��~?


MSE�1�B

	precision�?


MAE8�@

accuracy�,?���e       ��Zi	R@s��`�A�%*W

recall  �?

loss��z?


MSE�/�B

	precision�~?


MAEB�@

accuracyv-?����e       ��Zi	'
���`�A�'*W

recall  �?

loss�qv?


MSEZ��B

	precision��~?


MAE;W�@

accuracy(�.?ٗ�e       ��Zi	8�<�`�A�**W

recall  �?

loss��r?


MSE%��B

	precision��~?


MAE|�@

accuracy��/?D6v�e       ��Zi	6����`�A�,*W

recall  �?

lossv4o?


MSE��B

	precisionı~?


MAE�<�@

accuracy*	1?��@�e       ��Zi	�z���`�A�.*W

recall  �?

loss>�k?


MSE�̖B

	precision��~?


MAEZ�@

accuracy��1?���e       ��Zi	X]��`�A�1*W

recall  �?

loss��h?


MSEG�B

	precision~�~?


MAE+R�@

accuracy��2?���e       ��Zi	�R�L�`�A�3*W

recall  �?

lossf?


MSE�B

	precision5�~?


MAEZ:�@

accuracyO�3?H���e       ��Zi	����`�A�5*W

recall  �?

loss�yc?


MSE�\�B

	precisionK{~?


MAE�؊@

accuracy�4?$DX�e       ��Zi	�����`�A�8*W

recall  �?

loss��`?


MSEF;�B

	precisionK{~?


MAEr��@

accuracy$�5? �e       ��Zi	����`�A�:*W

recall  �?

lossW�^?


MSEfΎB

	precision${~?


MAE��@

accuracyBE6?}}�(e       ��Zi	��\�`�A�<*W

recall  �?

lossz\?


MSE���B

	precisionqy~?


MAE�I�@

accuracy7?��ʎe       ��Zi	����`�A�?*W

recall  �?

lossbZ?


MSEr�B

	precision�x~?


MAE�t�@

accuracy�7?fb�e       ��Zi	���`�A�A*W

recall  �?

lossjoX?


MSE{��B

	precision�v~?


MAE���@

accuracy�8?�]:6e       ��Zi	@�(�`�A�C*W

recall  �?

lossĐV?


MSEh��B

	precision]~?


MAE�ƃ@

accuracy
�8?�M+e       ��Zi	9�l�`�A�F*W

recall  �?

loss�T?


MSE�+�B

	precision�[~?


MAElD�@

accuracy��8?Vg�he       ��Zi	����`�A�H*W

recall  �?

loss5"S?


MSE���B

	precision�Z~?


MAE���@

accuracy;9?�e��e       ��Zi	����`�A�K*W

recall  �?

lossL�Q?


MSE�g�B

	precision�&~?


MAEͬ�@

accuracy�9?�?:�e       ��Zi	��8�`�A�M*W

recall  �?

loss�P?


MSE��B

	precision�~?


MAEo�@

accuracy�:?Q�˴e       ��Zi	|DB|�`�A�O*W

recall  �?

lossM�N?


MSEa�B

	precisionb'~?


MAE���@

accuracy�o:?s>e       ��Zi	��3��`�A�R*W

recall  �?

loss*1M?


MSE�B

	precision�&~?


MAE�,�@

accuracy"�:?��\�e       ��Zi	�q�`�A�T*W

recall  �?

loss��K?


MSEEc�B

	precision ~?


MAE<g@

accuracy3�:?o�<e       ��Zi	�H�`�A�V*W

recall  �?

loss�J?


MSE��B

	precision�~?


MAEC~@

accuracypO;?^SN�e       ��Zi	}q+��`�A�Y*W

recall  �?

lossK_I?


MSEx;�B

	precision ~?


MAE�<}@

accuracyz�;?:�>e       ��Zi	(E���`�A�[*W

recall  �?

loss�1H?


MSE��B

	precision&~?


MAE@|@

accuracy��;?�Ģ�e       ��Zi	d���`�A�]*W

recall  �?

loss�G?


MSE�̃B

	precisionc@~?


MAE��z@

accuracyI<?F�<e       ��Zi	k�W�`�A�`*W

recall  �?

loss��E?


MSE���B

	precision|%~?


MAE	 z@

accuracy{�<?܇'�e       ��Zi	� ƛ�`�A�b*W

recall  �?

loss+�D?


MSE�ԂB

	precision�%~?


MAE��x@

accuracy!�<?6P��e       ��Zi	,����`�A�d*W

recall  �?

loss|�C?


MSE�I�B

	precisionS~?


MAE�w@

accuracy�=?�H)�e       ��Zi	�#�`�A�g*W

recall  �?

loss4C?


MSE���B

	precisionV�}?


MAEB�v@

accuracy�B=?��e       ��Zi	zig�`�A�i*W

recall  �?

losszB?


MSE<D�B

	precisionV�}?


MAE�$v@

accuracy�o=?����e       ��Zi	kj~��`�A�k*W

recall  �?

loss�/A?


MSE ؀B

	precision
~?


MAEkvu@

accuracyE�=?x�<e       ��Zi	'dK��`�A�n*W

recall  �?

loss�R@?


MSE�P�B

	precision	~?


MAE�t@

accuracy��=?q,e       ��Zi	�[3�`�A�p*W

recall  �?

lossF}??


MSE� �B

	precision�	~?


MAE��s@

accuracy�>?�D�6e       ��Zi	!�Uw�`�A�r*W

recall  �?

loss��>?


MSE�~B

	precision�	~?


MAEF�r@

accuracy�R>?�D%e       ��Zi	߶2��`�A�u*W

recall  �?

loss �=?


MSE��}B

	precision|�}?


MAE��q@

accuracyf�>?Z��e       ��Zi	kQ��`�A�w*W

recall  �?

loss�#=?


MSEm�|B

	precision��}?


MAE��p@

accuracy��>?vj�e       ��Zi	��.C�`�A�y*W

recall  �?

loss)g<?


MSEQ|B

	precision��}?


MAE5Jp@

accuracy� ??�j�e       ��Zi	� (��`�A�|*W

recall  �?

lossj�;?


MSEs{B

	precision��}?


MAE�o@

accuracy�&??�c�e       ��Zi	��W��`�A�~*W

recall  �?

loss�:?


MSEނzB

	precision�}?


MAE�n@

accuracy]??_��9f       r;�j	^�D�`�A�*W

recall  �?

loss�R:?


MSE��yB

	precisionE�}?


MAEs8n@

accuracym�??]��}f       r;�j	@(S�`�A��*W

recall  �?

loss��9?


MSE�yB

	precision��}?


MAE�m@

accuracy*�??w�8f       r;�j	�����`�A̅*W

recall  �?

loss'9?


MSE�gyB

	precision��}?


MAE;�m@

accuracy��??q��f       r;�j	�����`�A��*W

recall  �?

loss?h8?


MSEMdxB

	precision��}?


MAE��l@

accuracy��??i��?f       r;�j	0�`�A��*W

recall  �?

loss�7?


MSE@!xB

	precision��}?


MAET�l@

accuracy�
@?k��f       r;�j	���b�`�AЌ*W

recall  �?

loss.57?


MSE�wB

	precision��}?


MAEF�k@

accuracyK2@?}ߜ�f       r;�j	�Vئ�`�A��*W

recall  �?

loss�6?


MSE��vB

	precision�~?


MAE,3k@

accuracyX@?R�@�f       r;�j	�Z���`�A��*W

recall  �?

loss�6?


MSE��uB

	precisionM	~?


MAEb�j@

accuracy�z@?;���f       r;�j	�u�.�`�Aԓ*W

recall  �?

loss�5?


MSE�vB

	precision}~?


MAEǨj@

accuracy�@?F��f       r;�j	��r�`�A��*W

recall  �?

loss�4?


MSEEuB

	precision	~?


MAE�i@

accuracy^�@?��f       r;�j	�����`�A��*W

recall  �?

loss�o4?


MSE��tB

	precision	~?


MAE4�i@

accuracy��@?!df       r;�j	#[���`�Aؚ*W

recall  �?

loss��3?


MSE�tB

	precision
~?


MAE��h@

accuracy�A?0�9�f       r;�j	u�>�`�A��*W

recall  �?

loss=h3?


MSE�KsB

	precision�
~?


MAE�+h@

accuracy�.A?)�v�f       r;�j	�Lt��`�A��*W

recall  �?

loss��2?


MSE�5sB

	precision�
~?


MAE�h@

accuracyDA?��f       r;�j	�a��`�Aܡ*W

recall  �?

loss�j2?


MSEݶrB

	precision�
~?


MAE|�g@

accuracy�fA?zG�]f       r;�j	��
�`�A��*W

recall  �?

lossu�1?


MSE �qB

	precision�
~?


MAEz�f@

accuracy9�A?5�f       r;�j	�jN�`�A��*W

recall  �?

lossut1?


MSEn%qB

	precisionS~?


MAE�Bf@

accuracy�A?�W�Wf       r;�j	�6��`�A�*W

recall  �?

loss��0?


MSEG�pB

	precision�
~?


MAE��e@

accuracy"�A?ێU f       r;�j	��.��`�A��*W

recall  �?

loss��0?


MSE_jpB

	precision|%~?


MAEӌe@

accuracyo�A?7,��f       r;�j	�:�`�A��*W

recall  �?

loss90?


MSE�\pB

	precision%~?


MAE%he@

accuracy�A?���f       r;�j	kO�]�`�A�*W

recall  �?

loss_�/?


MSE�oB

	precision%~?


MAE�e@

accuracy�B?�N�f       r;�j	Rޡ�`�A��*W

recall  �?

loss�./?


MSE3oB

	precision�
~?


MAE��d@

accuracy�.B?��RKf       r;�j	 ����`�A��*W

recall  �?

loss+�.?


MSE;�nB

	precision�
~?


MAEe�c@

accuracyi`B?�u�f       r;�j	!��)�`�A�*W

recall  �?

loss�R.?


MSE�!nB

	precision�
~?


MAE�Fc@

accuracyM�B?xoӼf       r;�j	��m�`�A��*W

recall  �?

loss��-?


MSE4�mB

	precision�
~?


MAE�b@

accuracy#�B?./k�f       r;�j	�ٯ��`�A��*W

recall  �?

losst|-?


MSEp�lB

	precision~?


MAE&*b@

accuracy��B?) ٰf       r;�j	9���`�A�*W

recall  �?

loss�-?


MSE�blB

	precision@~?


MAE9�a@

accuracy�C?�:�f       r;�j	��9�`�A��*W

recall  �?

loss��,?


MSE��kB

	precision�%~?


MAE��`@

accuracy7:C?�2�f       r;�j	���}�`�A��*W

recall��?

loss�D,?


MSEP�jB

	precision?&~?


MAE�L`@

accuracy`C?0i��f       r;�j	O���`�A��*W

recall��?

loss��+?


MSE[jB

	precision�@~?


MAEO�_@

accuracyN�C?���f       r;�j	\l^�`�A��*W

recall��?

lossg{+?


MSE�~iB

	precision�@~?


MAE)8_@

accuracy��C?GC�6f       r;�j	R^OI�`�A��*W

recall��?

lossN+?


MSEU�hB

	precision�'~?


MAE�^@

accuracy��C?A��f       r;�j	�T��`�A��*W

recall��?

loss`�*?


MSE�BhB

	precision�A~?


MAE*8^@

accuracy��C?�f       r;�j	�&I��`�A��*W

recall��?

lossNQ*?


MSEn�gB

	precision�A~?


MAEo�]@

accuracytD?u��Zf       r;�j	3�`�A��*W

recall��?

loss��)?


MSE��fB

	precision B~?


MAE��\@

accuracyK5D?�}.�f       r;�j	sY�`�A��*W

recall��?

lossC�)?


MSE'fB

	precisionvA~?


MAE�2\@

accuracyBmD?��$�f       r;�j	�����`�A��*W

recall��?

loss�4)?


MSE�@eB

	precision�A~?


MAE]l[@

accuracy��D?e�:)f       r;�j	"����`�A��*W

recall��?

loss��(?


MSE��dB

	precisionvA~?


MAE�	[@

accuracy�D?S%!f       r;�j	��$�`�A��*W

recall��?

loss�}(?


MSE��dB

	precisionA~?


MAE	�Z@

accuracy��D?U7�!f       r;�j	�L�h�`�A��*W

recall��?

loss�%(?


MSE�BdB

	precisiond[~?


MAE4IZ@

accuracy��D?�4�f       r;�j	����`�A��*W

recall��?

lossl�'?


MSE��cB

	precision9[~?


MAEv�Y@

accuracyE?OCޣf       r;�j	��f��`�A��*W

recall��?

loss�s'?


MSE�lcB

	precision�[~?


MAE�kY@

accuracyl6E?KAf       r;�j	�44�`�A��*W

recall��?

loss�'?


MSE+�bB

	precision�[~?


MAEHY@

accuracy�QE?����f       r;�j	�Rx�`�A��*W

recall��?

loss.�&?


MSE��bB

	precision�[~?


MAE1�X@

accuracy<\E?���wf       r;�j	1���`�A��*W

recall��?

lossmt&?


MSEFYbB

	precision�[~?


MAE�qX@

accuracy�xE?#Mf       r;�j	��' �`�A��*W

recall��?

loss�!&?


MSE��aB

	precision�[~?


MAEX@

accuracy,�E?�C,f       r;�j	B�@D�`�A��*W

recall��?

loss��%?


MSE��`B

	precisiong\~?


MAEy:W@

accuracy��E?���:f       r;�j	�D��`�A��*W

recall��?

loss�{%?


MSE�`B

	precisiong\~?


MAE[�V@

accuracy��E?P%4f       r;�j	5C��`�A��*W

recall��?

loss�+%?


MSEq`B

	precision�\~?


MAE9�V@

accuracy��E?8��f       r;�j	��=�`�A��*W

recall��?

loss��$?


MSE��_B

	precision�\~?


MAEBV@

accuracy�F?�4�f       r;�j	��IT�`�A��*W

recall��?

loss�$?


MSEv�_B

	precision�B~?


MAE@ V@

accuracy�F?�tKf       r;�j	��:��`�A��*W

recall��?

lossC<$?


MSE+-_B

	precision�]~?


MAE�vU@

accuracy0HF?�O�f       r;�j	n�U��`�A��*W

recall��?

loss_�#?


MSE݉^B

	precision>^~?


MAE��T@

accuracy�jF?�;Zif       r;�j	&cX �`�A��*W

recall��?

loss��#?


MSE��]B

	precision�^~?


MAE}gT@

accuracyÍF?js��f       r;�j	H�<d�`�A��*W

recall��?

loss�R#?


MSE�]B

	precision�^~?


MAE�T@

accuracyg�F?��Ʒf       r;�j	'7D��`�A�*W

recall��?

losse#?


MSE�N]B

	precision�x~?


MAE��S@

accuracy�F?�3׺f       r;�j	�����`�A��*W

recall��?

loss�"?


MSEB�\B

	precision�x~?


MAE�^S@

accuracy]�F?��Lf       r;�j	���/�`�A��*W

recall��?

loss�q"?


MSE@~\B

	precision�x~?


MAE�S@

accuracy��F?��<!f       r;�j	��t�`�A�*W

recall��?

loss{("?


MSE��[B

	precision�x~?


MAE��R@

accuracyGG?i��1f       r;�j	�7 ��`�A��*W

recall��?

losso�!?


MSEF�[B

	precision�x~?


MAE�YR@

accuracy�G?3�f       r;�j	����`�Ač*W

recall��?

lossj�!?


MSEmG[B

	precision�x~?


MAEU�Q@

accuracy1G?qYK�f       r;�j	���?�`�A��*W

recall��?

loss@Q!?


MSE��ZB

	precision�x~?


MAEyrQ@

accuracydRG?��>�f       r;�j	�B��`�A��*W

recall��?

loss�
!?


MSEUQZB

	precision�x~?


MAE�Q@

accuracylG?^cM&f       r;�j	�!#��`�AȔ*W

recall��?

loss� ?


MSE�
ZB

	precision�x~?


MAEw�P@

accuracy4xG?�4f       r;�j	�Y3�`�A��*W

recall��?

lossۃ ?


MSEF�YB

	precision�x~?


MAE
�P@

accuracyn�G?�ȥ�f       r;�j	�GTP�`�A��*W

recall��?

loss�< ?


MSE��YB

	precision�x~?


MAE�fP@

accuracy�G?|,�lf       r;�j	�H��`�A̛*W

recall��?

loss
�?


MSEz8YB

	precision�x~?


MAEOP@

accuracy��G?�Fu3f       r;�j	�~��`�A��*W

recall��?

loss��?


MSE��XB

	precision�x~?


MAEĲO@

accuracy��G?�]�mf       r;�j	�Ƿ�`�A��*W

recall��?

lossuv?


MSE!�XB

	precisionZx~?


MAE��O@

accuracy��G?�*m�f       r;�j	��'a�`�AТ*W

recall��?

lossr5?


MSE�XB

	precision2x~?


MAE�nO@

accuracy��G?�%��f       r;�j	O�^��`�A��*W

recall��?

lossn�?


MSE �WB

	precision�x~?


MAE�N@

accuracy�H?d�f�f       r;�j	k�W��`�A��*W

recall��?

loss��?


MSE(bWB

	precision��~?


MAE�N@

accuracy�H?�v�Tf       r;�j	|�-�`�Aԩ*W

recall��?

loss�u?


MSE�rWB

	precisiono�~?


MAE��N@

accuracy{H?��r�f       r;�j	�"�q�`�A��*W

recall��?

loss�8?


MSE��VB

	precision*�~?


MAE�N@

accuracyK8H?0N f       r;�j	��N��`�A��*W

recall��?

loss��?


MSEUVB

	precision��~?


MAE5�M@

accuracy�NH?��Y@f       r;�j	����`�Aذ*W

recall��?

loss��?


MSE�	VB

	precision��~?


MAE�xM@

accuracy"aH?̡zf       r;�j	��P>�`�A��*W

recall��?

lossۀ?


MSE�xUB

	precision��~?


MAE�L@

accuracy�H?t���f       r;�j	{����`�A��*W

recall��?

loss�E?


MSEvgUB

	precision��~?


MAE��L@

accuracyu�H?ɆR�f       r;�j	����`�Aܷ*W

recall��?

loss�?


MSE-UB

	precision��~?


MAEšL@

accuracy��H?�f       r;�j	hF�`�A��*W

recall��?

loss��?


MSEU�TB

	precision��~?


MAE7�L@

accuracy��H?$W��f       r;�j	*�dO�`�A��*W

recall��?

loss�?


MSE�ATB

	precision��~?


MAEz�K@

accuracy��H?	-��f       r;�j	B����`�A�*W

recall��?

loss�Z?


MSE�SB

	precision��~?


MAE��K@

accuracy"�H?�* �f       r;�j	4>���`�A��*W

recall��?

lossa"?


MSE|SB

	precision��~?


MAE\3K@

accuracyb�H?o��f       r;�j	�:��`�A��*W

recall��?

loss!�?


MSELSB

	precision��~?


MAE�K@

accuracy|I?�ɾ�f       r;�j	��`�`�A��*W

recall��?

loss��?


MSE��RB

	precision�?


MAE��J@

accuracy?$I?P�Jf       r;�j	����`�A��*W

recall��?

loss0~?


MSE��RB

	precision�?


MAE��J@

accuracy�(I?^���f       r;�j	�R)��`�A��*W

recall��?

loss�E?


MSEiPRB

	precision�?


MAE�;J@

accuracys<I?��f�f       r;�j	�^,�`�A��*W

recall��?

lossx?


MSEHRB

	precision�?


MAE�2J@

accuracyBI?~ꇓf       r;�j	xup�`�A��*W

recall��?

loss8�?


MSE�!RB

	precision�?


MAE�J@

accuracyPI?2�ff       r;�j	և���`�A��*W

recall��?

lossP�?


MSE��QB

	precision?


MAE��I@

accuracy�iI?��f       r;�j	�����`�A��*W

recall��?

loss�s?


MSEZ�QB

	precision�?


MAEX�I@

accuracycqI?�}�f       r;�j	��=�`�A��*W

recall��?

loss�??


MSE�QB

	precision�?


MAE,I@

accuracy��I?$䀺f       r;�j	�;&��`�A��*W

recall��?

loss:?


MSEnHQB

	precisions?


MAE}PI@

accuracy�I?���f       r;�j	�]��`�A��*W

recall��?

loss��?


MSE�PB

	precisions?


MAE��H@

accuracyM�I?�{�Kf       r;�j	�'�	�`�A��*W

recall��?

loss��?


MSE{�OB

	precision�?


MAE�NH@

accuracy��I?5@�f       r;�j	�1�M�`�A��*W

recall��?

lossyy?


MSE��OB

	precision�?


MAE>2H@

accuracy��I?-8��f       r;�j	n�A��`�A��*W

recall��?

loss�E?


MSE�#OB

	precision�?


MAE�G@

accuracy��I?�&Ǫf       r;�j	=�=��`�A��*W

recall��?

loss�?


MSEOB

	precision�?


MAE��G@

accuracy��I?벚f       r;�j	֡|�`�A��*W

recall��?

loss��?


MSEc�NB

	precision?


MAE7jG@

accuracyj�I?{�'�f       r;�j	�;�^�`�A��*W

recall��?

lossn�?


MSE, OB

	precision	/?


MAE}G@

accuracy��I?㶲�f       r;�j	�謁�`�A��*W

recall��?

loss��?


MSE�NB

	precision	/?


MAEsJG@

accuracy��I?i��`f       r;�j	���`�A��*W

recall��?

loss	J?


MSE��NB

	precision�.?


MAE�KG@

accuracy��I?#�f       r;�j	F�*�`�A��*W

recall��?

loss?


MSEW�MB

	precisionI/?


MAEO�F@

accuracy� J?0U��f       r;�j	+�o�`�A��*W

recall��?

loss	�?


MSE"MB

	precisionI/?


MAE��E@

accuracy�FJ?�V��f       r;�j	����`�A��*W

recall��?

loss�?


MSEw�LB

	precisiont/?


MAE��E@

accuracy�dJ?NU��f       r;�j	-�C��`�A��*W

recall��?

lossm{?


MSE�}LB

	precision4/?


MAE�PE@

accuracy�mJ?4S��f       r;�j	w/�;�`�A��*W

recall��?

loss�N?


MSEޗLB

	precision	/?


MAE�RE@

accuracy�uJ?��Wf       r;�j	�`�A��*W

recall��?

lossP!?


MSE�LB

	precision	/?


MAE�GE@

accuracy}J?H�^f       r;�j	mԸ��`�A��*W

recall��?

loss��?


MSEXqLB

	precision�.?


MAE6E@

accuracy��J?or[f       r;�j	eQ��`�A��*W

recall��?

loss�?


MSE(!LB

	precision�.?


MAE�D@

accuracyG�J?�.[f       r;�j	��&L�`�A܂*W

recall��?

loss��?


MSEk�KB

	precision	/?


MAE��D@

accuracya�J?���Qf       r;�j	���`�A��*W

recall��?

lossYw?


MSE|�KB

	precision/?


MAE��D@

accuracy�J?\s1�