       �K"	  ��Jp�Abrain.Event:2��@�g�      �� @	�	�Jp�A"ڴ
m
global_stepVariable*
_output_shapes
: *
shape: *
	container *
dtype0	*
shared_name 

global_step/Initializer/zerosConst*
_output_shapes
: *
value	B	 R *
dtype0	*
_class
loc:@global_step
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_output_shapes
: *
T0	*
_class
loc:@global_step*
use_locking(
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
X
inputPlaceholder*(
_output_shapes
:����������*
shape: *
dtype0
T
outputPlaceholder*#
_output_shapes
:���������*
shape: *
dtype0	
�
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
_output_shapes
:*
valueB"����   *
dtype0
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*(
_output_shapes
:����������*
T0
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
_output_shapes
: *
value	B :*
dtype0
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
: : *
T0*	
num*

axis 
�
hiddenlayer_0/weights/part_0Variable*
_output_shapes
:	�*
shape:	�*
	container *
dtype0*
shared_name 
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *,B��*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *,B�=*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
dtype0*

seed**
_output_shapes
:	�*
T0*
seed2*/
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
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	�*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
use_locking(
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
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
transpose_a( *
T0*'
_output_shapes
:���������*
transpose_b( 
�
hiddenlayer_0/biases/part_0Variable*
_output_shapes
:*
shape:*
	container *
dtype0*
shared_name 
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
dtype0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
validate_shape(*
_output_shapes
:*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
use_locking(
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
zero_fraction/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
zero_fraction/EqualEqual hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*'
_output_shapes
:���������*
T0
p
zero_fraction/CastCastzero_fraction/Equal*'
_output_shapes
:���������*

SrcT0
*

DstT0
d
zero_fraction/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
_output_shapes
: *
	keep_dims( *
T0
x
ScalarSummary/tagsConst*
_output_shapes
: *6
value-B+ B%hiddenlayer_0:fraction_of_zero_values*
dtype0
g
ScalarSummaryScalarSummaryScalarSummary/tagszero_fraction/Mean*
_output_shapes
: *
T0
m
HistogramSummary/tagConst*
_output_shapes
: *)
value B Bhiddenlayer_0:activation*
dtype0
}
HistogramSummaryHistogramSummaryHistogramSummary/tag hiddenlayer_0/hiddenlayer_0/Relu*
_output_shapes
: *
T0
q
!hiddenlayer_1/hiddenlayer_1/ShapeShape hiddenlayer_0/hiddenlayer_0/Relu*
_output_shapes
:*
T0
�
"hiddenlayer_1/hiddenlayer_1/unpackUnpack!hiddenlayer_1/hiddenlayer_1/Shape*
_output_shapes
: : *
T0*	
num*

axis 
�
hiddenlayer_1/weights/part_0Variable*
_output_shapes

:*
shape
:*
	container *
dtype0*
shared_name 
�
=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *�Kƾ*
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *�K�>*
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
Ehiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
dtype0*

seed**
_output_shapes

:*
T0*
seed2.*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_1/weights/part_0/Initializer/random_uniform/max;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*
_output_shapes

:*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
7hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
_output_shapes

:*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
#hiddenlayer_1/weights/part_0/AssignAssignhiddenlayer_1/weights/part_07hiddenlayer_1/weights/part_0/Initializer/random_uniform*
validate_shape(*
_output_shapes

:*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
use_locking(
�
!hiddenlayer_1/weights/part_0/readIdentityhiddenlayer_1/weights/part_0*
_output_shapes

:*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
m
hiddenlayer_1/weightsIdentity!hiddenlayer_1/weights/part_0/read*
_output_shapes

:*
T0
�
"hiddenlayer_1/hiddenlayer_1/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reluhiddenlayer_1/weights*
transpose_a( *
T0*'
_output_shapes
:���������*
transpose_b( 
�
hiddenlayer_1/biases/part_0Variable*
_output_shapes
:*
shape:*
	container *
dtype0*
shared_name 
�
-hiddenlayer_1/biases/part_0/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
dtype0*.
_class$
" loc:@hiddenlayer_1/biases/part_0
�
"hiddenlayer_1/biases/part_0/AssignAssignhiddenlayer_1/biases/part_0-hiddenlayer_1/biases/part_0/Initializer/zeros*
validate_shape(*
_output_shapes
:*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
use_locking(
�
 hiddenlayer_1/biases/part_0/readIdentityhiddenlayer_1/biases/part_0*
_output_shapes
:*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0
g
hiddenlayer_1/biasesIdentity hiddenlayer_1/biases/part_0/read*
_output_shapes
:*
T0
�
#hiddenlayer_1/hiddenlayer_1/BiasAddBiasAdd"hiddenlayer_1/hiddenlayer_1/MatMulhiddenlayer_1/biases*'
_output_shapes
:���������*
T0*
data_formatNHWC

 hiddenlayer_1/hiddenlayer_1/ReluRelu#hiddenlayer_1/hiddenlayer_1/BiasAdd*'
_output_shapes
:���������*
T0
Y
zero_fraction_1/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
zero_fraction_1/EqualEqual hiddenlayer_1/hiddenlayer_1/Reluzero_fraction_1/zero*'
_output_shapes
:���������*
T0
t
zero_fraction_1/CastCastzero_fraction_1/Equal*'
_output_shapes
:���������*

SrcT0
*

DstT0
f
zero_fraction_1/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
_output_shapes
: *
	keep_dims( *
T0
z
ScalarSummary_1/tagsConst*
_output_shapes
: *6
value-B+ B%hiddenlayer_1:fraction_of_zero_values*
dtype0
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
_output_shapes
: *
T0
o
HistogramSummary_1/tagConst*
_output_shapes
: *)
value B Bhiddenlayer_1:activation*
dtype0
�
HistogramSummary_1HistogramSummaryHistogramSummary_1/tag hiddenlayer_1/hiddenlayer_1/Relu*
_output_shapes
: *
T0
k
dnn_logits/dnn_logits/ShapeShape hiddenlayer_1/hiddenlayer_1/Relu*
_output_shapes
:*
T0
}
dnn_logits/dnn_logits/unpackUnpackdnn_logits/dnn_logits/Shape*
_output_shapes
: : *
T0*	
num*

axis 
�
dnn_logits/weights/part_0Variable*
_output_shapes

: *
shape
: *
	container *
dtype0*
shared_name 
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"       *
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *�ꭾ*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *��>*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*
dtype0*

seed**
_output_shapes

: *
T0*
seed2L*,
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
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
validate_shape(*
_output_shapes

: *
T0*,
_class"
 loc:@dnn_logits/weights/part_0*
use_locking(
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
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_1/hiddenlayer_1/Reludnn_logits/weights*
transpose_a( *
T0*'
_output_shapes
:��������� *
transpose_b( 
�
dnn_logits/biases/part_0Variable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
_output_shapes
: *
valueB *    *
dtype0*+
_class!
loc:@dnn_logits/biases/part_0
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
validate_shape(*
_output_shapes
: *
T0*+
_class!
loc:@dnn_logits/biases/part_0*
use_locking(
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
zero_fraction_2/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
zero_fraction_2/EqualEqualdnn_logits/dnn_logits/BiasAddzero_fraction_2/zero*'
_output_shapes
:��������� *
T0
t
zero_fraction_2/CastCastzero_fraction_2/Equal*'
_output_shapes
:��������� *

SrcT0
*

DstT0
f
zero_fraction_2/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
{
zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
_output_shapes
: *
	keep_dims( *
T0
w
ScalarSummary_2/tagsConst*
_output_shapes
: *3
value*B( B"dnn_logits:fraction_of_zero_values*
dtype0
m
ScalarSummary_2ScalarSummaryScalarSummary_2/tagszero_fraction_2/Mean*
_output_shapes
: *
T0
l
HistogramSummary_2/tagConst*
_output_shapes
: *&
valueB Bdnn_logits:activation*
dtype0
~
HistogramSummary_2HistogramSummaryHistogramSummary_2/tagdnn_logits/dnn_logits/BiasAdd*
_output_shapes
: *
T0
R
zerosConst*
_output_shapes
: *
valueB *    *
dtype0
~
centered_bias_weightVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
validate_shape(*
_output_shapes
: *
T0*'
_class
loc:@centered_bias_weight*
use_locking(
�
centered_bias_weight/readIdentitycentered_bias_weight*
_output_shapes
: *
T0*'
_class
loc:@centered_bias_weight
`
Reshape/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
a
ReshapeReshapecentered_bias_weight/readReshape/shape*
_output_shapes
: *
T0
�
ScalarSummary_3/tagsConst*
_output_shapes
: *�
value�B� Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14Bcentered_bias_15Bcentered_bias_16Bcentered_bias_17Bcentered_bias_18Bcentered_bias_19Bcentered_bias_20Bcentered_bias_21Bcentered_bias_22Bcentered_bias_23Bcentered_bias_24Bcentered_bias_25Bcentered_bias_26Bcentered_bias_27Bcentered_bias_28Bcentered_bias_29Bcentered_bias_30Bcentered_bias_31*
dtype0
`
ScalarSummary_3ScalarSummaryScalarSummary_3/tagsReshape*
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
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsBiasAddoutput*
Tlabels0	*
T0*6
_output_shapes$
":���������:��������� 
O
ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
_output_shapes
: *
	keep_dims( *
T0
O

mean/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
l

mean/totalVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
mean/total/AssignAssign
mean/total
mean/zeros*
validate_shape(*
_output_shapes
: *
T0*
_class
loc:@mean/total*
use_locking(
g
mean/total/readIdentity
mean/total*
_output_shapes
: *
T0*
_class
loc:@mean/total
Q
mean/zeros_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
l

mean/countVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
validate_shape(*
_output_shapes
: *
T0*
_class
loc:@mean/count*
use_locking(
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
mean/ToFloat_1Cast	mean/Size*
_output_shapes
: *

SrcT0*

DstT0
M

mean/ConstConst*
_output_shapes
: *
valueB *
dtype0
S
mean/SumSumloss
mean/Const*
_output_shapes
: *
	keep_dims( *
T0
�
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
_output_shapes
: *
T0*
_class
loc:@mean/total*
use_locking( 
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
_output_shapes
: *
T0*
_class
loc:@mean/count*
use_locking( 
S
mean/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
mean/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
[

mean/valueSelectmean/Greatermean/Divmean/value/e*
_output_shapes
: *
T0
y
mean/Greater_1/yConst^mean/AssignAdd^mean/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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
mean/update_op/eConst^mean/AssignAdd^mean/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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

SrcT0	*

DstT0
R
ArgMax/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
Y
ArgMaxArgMaxBiasAddArgMax/dimension*#
_output_shapes
:���������*
T0
H
subSuboutputArgMax*#
_output_shapes
:���������*
T0	
C
SquareSquaresub*#
_output_shapes
:���������*
T0	
g
mean_squared_error/ToFloatCastSquare*#
_output_shapes
:���������*

SrcT0	*

DstT0
]
mean_squared_error/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
z
mean_squared_error/totalVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
validate_shape(*
_output_shapes
: *
T0*+
_class!
loc:@mean_squared_error/total*
use_locking(
�
mean_squared_error/total/readIdentitymean_squared_error/total*
_output_shapes
: *
T0*+
_class!
loc:@mean_squared_error/total
_
mean_squared_error/zeros_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
z
mean_squared_error/countVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
validate_shape(*
_output_shapes
: *
T0*+
_class!
loc:@mean_squared_error/count*
use_locking(
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
mean_squared_error/ToFloat_1Castmean_squared_error/Size*
_output_shapes
: *

SrcT0*

DstT0
b
mean_squared_error/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
_output_shapes
: *
	keep_dims( *
T0
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*
_output_shapes
: *
T0*+
_class!
loc:@mean_squared_error/total*
use_locking( 
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
_output_shapes
: *
T0*+
_class!
loc:@mean_squared_error/count*
use_locking( 
a
mean_squared_error/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
mean_squared_error/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/Divmean_squared_error/value/e*
_output_shapes
: *
T0
�
mean_squared_error/Greater_1/yConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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
mean_squared_error/update_op/eConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
�
mean_squared_error/update_opSelectmean_squared_error/Greater_1mean_squared_error/Div_1mean_squared_error/update_op/e*
_output_shapes
: *
T0
_
recall/true_positives/Equal/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
y
recall/true_positives/EqualEqualoutputrecall/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
a
recall/true_positives/Equal_1/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
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
recall/true_positives/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
}
recall/true_positives/countVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
validate_shape(*
_output_shapes
: *
T0*.
_class$
" loc:@recall/true_positives/count*
use_locking(
�
 recall/true_positives/count/readIdentityrecall/true_positives/count*
_output_shapes
: *
T0*.
_class$
" loc:@recall/true_positives/count
�
recall/true_positives/ToFloatCast recall/true_positives/LogicalAnd*#
_output_shapes
:���������*

SrcT0
*

DstT0
m
recall/true_positives/IdentityIdentity recall/true_positives/count/read*
_output_shapes
: *
T0
e
recall/true_positives/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
_output_shapes
: *
	keep_dims( *
T0
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
_output_shapes
: *
T0*.
_class$
" loc:@recall/true_positives/count*
use_locking( 
`
recall/false_negatives/Equal/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
{
recall/false_negatives/EqualEqualoutputrecall/false_negatives/Equal/y*#
_output_shapes
:���������*
T0	
b
 recall/false_negatives/Equal_1/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
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
recall/false_negatives/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
~
recall/false_negatives/countVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
validate_shape(*
_output_shapes
: *
T0*/
_class%
#!loc:@recall/false_negatives/count*
use_locking(
�
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*
_output_shapes
: *
T0*/
_class%
#!loc:@recall/false_negatives/count
�
recall/false_negatives/ToFloatCast!recall/false_negatives/LogicalAnd*#
_output_shapes
:���������*

SrcT0
*

DstT0
o
recall/false_negatives/IdentityIdentity!recall/false_negatives/count/read*
_output_shapes
: *
T0
f
recall/false_negatives/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
_output_shapes
: *
	keep_dims( *
T0
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
_output_shapes
: *
T0*/
_class%
#!loc:@recall/false_negatives/count*
use_locking( 
s

recall/addAddrecall/true_positives/Identityrecall/false_negatives/Identity*
_output_shapes
: *
T0
U
recall/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
recall/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
recall/Greater_1/yConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
_output_shapes
: *
valueB
 *    *
dtype0
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
recall/update_op/eConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
_output_shapes
: *
valueB
 *    *
dtype0
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

SrcT0
*

DstT0
S
accuracy/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
p
accuracy/totalVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
validate_shape(*
_output_shapes
: *
T0*!
_class
loc:@accuracy/total*
use_locking(
s
accuracy/total/readIdentityaccuracy/total*
_output_shapes
: *
T0*!
_class
loc:@accuracy/total
U
accuracy/zeros_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
p
accuracy/countVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
validate_shape(*
_output_shapes
: *
T0*!
_class
loc:@accuracy/count*
use_locking(
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
accuracy/ToFloat_1Castaccuracy/Size*
_output_shapes
: *

SrcT0*

DstT0
X
accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0
`
accuracy/SumSum	ToFloat_1accuracy/Const*
_output_shapes
: *
	keep_dims( *
T0
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
_output_shapes
: *
T0*!
_class
loc:@accuracy/total*
use_locking( 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
_output_shapes
: *
T0*!
_class
loc:@accuracy/count*
use_locking( 
W
accuracy/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
accuracy/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
k
accuracy/valueSelectaccuracy/Greateraccuracy/Divaccuracy/value/e*
_output_shapes
: *
T0
�
accuracy/Greater_1/yConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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
accuracy/update_op/eConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
w
accuracy/update_opSelectaccuracy/Greater_1accuracy/Div_1accuracy/update_op/e*
_output_shapes
: *
T0
b
 precision/true_positives/Equal/yConst*
_output_shapes
: *
value	B	 R*
dtype0	

precision/true_positives/EqualEqualoutput precision/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
d
"precision/true_positives/Equal_1/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
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
precision/true_positives/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
precision/true_positives/countVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
validate_shape(*
_output_shapes
: *
T0*1
_class'
%#loc:@precision/true_positives/count*
use_locking(
�
#precision/true_positives/count/readIdentityprecision/true_positives/count*
_output_shapes
: *
T0*1
_class'
%#loc:@precision/true_positives/count
�
 precision/true_positives/ToFloatCast#precision/true_positives/LogicalAnd*#
_output_shapes
:���������*

SrcT0
*

DstT0
s
!precision/true_positives/IdentityIdentity#precision/true_positives/count/read*
_output_shapes
: *
T0
h
precision/true_positives/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
_output_shapes
: *
	keep_dims( *
T0
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
_output_shapes
: *
T0*1
_class'
%#loc:@precision/true_positives/count*
use_locking( 
c
!precision/false_positives/Equal/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
�
precision/false_positives/EqualEqualoutput!precision/false_positives/Equal/y*#
_output_shapes
:���������*
T0	
e
#precision/false_positives/Equal_1/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
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
precision/false_positives/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
precision/false_positives/countVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
validate_shape(*
_output_shapes
: *
T0*2
_class(
&$loc:@precision/false_positives/count*
use_locking(
�
$precision/false_positives/count/readIdentityprecision/false_positives/count*
_output_shapes
: *
T0*2
_class(
&$loc:@precision/false_positives/count
�
!precision/false_positives/ToFloatCast$precision/false_positives/LogicalAnd*#
_output_shapes
:���������*

SrcT0
*

DstT0
u
"precision/false_positives/IdentityIdentity$precision/false_positives/count/read*
_output_shapes
: *
T0
i
precision/false_positives/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
_output_shapes
: *
	keep_dims( *
T0
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
_output_shapes
: *
T0*2
_class(
&$loc:@precision/false_positives/count*
use_locking( 
|
precision/addAdd!precision/true_positives/Identity"precision/false_positives/Identity*
_output_shapes
: *
T0
X
precision/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
precision/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
precision/Greater_1/yConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
_output_shapes
: *
valueB
 *    *
dtype0
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
precision/update_op/eConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
_output_shapes
: *
valueB
 *    *
dtype0
{
precision/update_opSelectprecision/Greater_1precision/Div_1precision/update_op/e*
_output_shapes
: *
T0
J
sub_1SubArgMaxoutput*#
_output_shapes
:���������*
T0	
?
AbsAbssub_1*#
_output_shapes
:���������*
T0	
e
mean_absolute_error/ToFloatCastAbs*#
_output_shapes
:���������*

SrcT0	*

DstT0
^
mean_absolute_error/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
{
mean_absolute_error/totalVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
validate_shape(*
_output_shapes
: *
T0*,
_class"
 loc:@mean_absolute_error/total*
use_locking(
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*
_output_shapes
: *
T0*,
_class"
 loc:@mean_absolute_error/total
`
mean_absolute_error/zeros_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
{
mean_absolute_error/countVariable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
validate_shape(*
_output_shapes
: *
T0*,
_class"
 loc:@mean_absolute_error/count*
use_locking(
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
mean_absolute_error/ToFloat_1Castmean_absolute_error/Size*
_output_shapes
: *

SrcT0*

DstT0
c
mean_absolute_error/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
_output_shapes
: *
	keep_dims( *
T0
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*
_output_shapes
: *
T0*,
_class"
 loc:@mean_absolute_error/total*
use_locking( 
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
_output_shapes
: *
T0*,
_class"
 loc:@mean_absolute_error/count*
use_locking( 
b
mean_absolute_error/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
mean_absolute_error/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
mean_absolute_error/valueSelectmean_absolute_error/Greatermean_absolute_error/Divmean_absolute_error/value/e*
_output_shapes
: *
T0
�
mean_absolute_error/Greater_1/yConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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
mean_absolute_error/update_op/eConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
�
mean_absolute_error/update_opSelectmean_absolute_error/Greater_1mean_absolute_error/Div_1mean_absolute_error/update_op/e*
_output_shapes
: *
T0
�

group_depsNoOp^mean/update_op^recall/update_op^accuracy/update_op^mean_squared_error/update_op^mean_absolute_error/update_op^precision/update_op
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
�
save/save/tensor_namesConst*
_output_shapes
:*�
value�B�Bcentered_bias_weightBdnn_logits/biasesBdnn_logits/weightsBglobal_stepBhiddenlayer_0/biasesBhiddenlayer_0/weightsBhiddenlayer_1/biasesBhiddenlayer_1/weights*
dtype0
�
save/save/shapes_and_slicesConst*
_output_shapes
:*i
value`B^B B32 0,32B20 32 0,20:0,32B B20 0,20B1024 20 0,1024:0,20B20 0,20B20 20 0,20:0,20*
dtype0
�
	save/save
SaveSlices
save/Constsave/save/tensor_namessave/save/shapes_and_slicescentered_bias_weightdnn_logits/biases/part_0/readdnn_logits/weights/part_0/readglobal_step hiddenlayer_0/biases/part_0/read!hiddenlayer_0/weights/part_0/read hiddenlayer_1/biases/part_0/read!hiddenlayer_1/weights/part_0/read*
T

2	
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
save/restore_slice/tensor_nameConst*
_output_shapes
: *%
valueB Bcentered_bias_weight*
dtype0
c
"save/restore_slice/shape_and_sliceConst*
_output_shapes
: *
valueB B *
dtype0
�
save/restore_sliceRestoreSlice
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
validate_shape(*
_output_shapes
: *
T0*'
_class
loc:@centered_bias_weight*
use_locking(
r
 save/restore_slice_1/tensor_nameConst*
_output_shapes
: *"
valueB Bdnn_logits/biases*
dtype0
l
$save/restore_slice_1/shape_and_sliceConst*
_output_shapes
: *
valueB B32 0,32*
dtype0
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
validate_shape(*
_output_shapes
: *
T0*+
_class!
loc:@dnn_logits/biases/part_0*
use_locking(
s
 save/restore_slice_2/tensor_nameConst*
_output_shapes
: *#
valueB Bdnn_logits/weights*
dtype0
t
$save/restore_slice_2/shape_and_sliceConst*
_output_shapes
: * 
valueB B20 32 0,20:0,32*
dtype0
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
validate_shape(*
_output_shapes

: *
T0*,
_class"
 loc:@dnn_logits/weights/part_0*
use_locking(
l
 save/restore_slice_3/tensor_nameConst*
_output_shapes
: *
valueB Bglobal_step*
dtype0
e
$save/restore_slice_3/shape_and_sliceConst*
_output_shapes
: *
valueB B *
dtype0
�
save/restore_slice_3RestoreSlice
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
preferred_shard���������*
dt0	*
_output_shapes
:
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
validate_shape(*
_output_shapes
: *
T0	*
_class
loc:@global_step*
use_locking(
u
 save/restore_slice_4/tensor_nameConst*
_output_shapes
: *%
valueB Bhiddenlayer_0/biases*
dtype0
l
$save/restore_slice_4/shape_and_sliceConst*
_output_shapes
: *
valueB B20 0,20*
dtype0
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
validate_shape(*
_output_shapes
:*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
use_locking(
v
 save/restore_slice_5/tensor_nameConst*
_output_shapes
: *&
valueB Bhiddenlayer_0/weights*
dtype0
x
$save/restore_slice_5/shape_and_sliceConst*
_output_shapes
: *$
valueB B1024 20 0,1024:0,20*
dtype0
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
validate_shape(*
_output_shapes
:	�*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
use_locking(
u
 save/restore_slice_6/tensor_nameConst*
_output_shapes
: *%
valueB Bhiddenlayer_1/biases*
dtype0
l
$save/restore_slice_6/shape_and_sliceConst*
_output_shapes
: *
valueB B20 0,20*
dtype0
�
save/restore_slice_6RestoreSlice
save/Const save/restore_slice_6/tensor_name$save/restore_slice_6/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_6Assignhiddenlayer_1/biases/part_0save/restore_slice_6*
validate_shape(*
_output_shapes
:*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
use_locking(
v
 save/restore_slice_7/tensor_nameConst*
_output_shapes
: *&
valueB Bhiddenlayer_1/weights*
dtype0
t
$save/restore_slice_7/shape_and_sliceConst*
_output_shapes
: * 
valueB B20 20 0,20:0,20*
dtype0
�
save/restore_slice_7RestoreSlice
save/Const save/restore_slice_7/tensor_name$save/restore_slice_7/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_7Assignhiddenlayer_1/weights/part_0save/restore_slice_7*
validate_shape(*
_output_shapes

:*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
use_locking(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
�
initNoOp^mean/total/Assign^mean/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign^accuracy/total/Assign^accuracy/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign

init_all_tablesNoOp
-
group_deps_1NoOp^init^init_all_tables
�
IsVariableInitializedIsVariableInitializedglobal_step*
_output_shapes
: *
dtype0	*
_class
loc:@global_step
�
IsVariableInitialized_1IsVariableInitializedhiddenlayer_0/weights/part_0*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
IsVariableInitialized_2IsVariableInitializedhiddenlayer_0/biases/part_0*
_output_shapes
: *
dtype0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
IsVariableInitialized_3IsVariableInitializedhiddenlayer_1/weights/part_0*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
IsVariableInitialized_4IsVariableInitializedhiddenlayer_1/biases/part_0*
_output_shapes
: *
dtype0*.
_class$
" loc:@hiddenlayer_1/biases/part_0
�
IsVariableInitialized_5IsVariableInitializeddnn_logits/weights/part_0*
_output_shapes
: *
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
IsVariableInitialized_6IsVariableInitializeddnn_logits/biases/part_0*
_output_shapes
: *
dtype0*+
_class!
loc:@dnn_logits/biases/part_0
�
IsVariableInitialized_7IsVariableInitializedcentered_bias_weight*
_output_shapes
: *
dtype0*'
_class
loc:@centered_bias_weight
�
IsVariableInitialized_8IsVariableInitialized
mean/total*
_output_shapes
: *
dtype0*
_class
loc:@mean/total
�
IsVariableInitialized_9IsVariableInitialized
mean/count*
_output_shapes
: *
dtype0*
_class
loc:@mean/count
�
IsVariableInitialized_10IsVariableInitializedmean_squared_error/total*
_output_shapes
: *
dtype0*+
_class!
loc:@mean_squared_error/total
�
IsVariableInitialized_11IsVariableInitializedmean_squared_error/count*
_output_shapes
: *
dtype0*+
_class!
loc:@mean_squared_error/count
�
IsVariableInitialized_12IsVariableInitializedrecall/true_positives/count*
_output_shapes
: *
dtype0*.
_class$
" loc:@recall/true_positives/count
�
IsVariableInitialized_13IsVariableInitializedrecall/false_negatives/count*
_output_shapes
: *
dtype0*/
_class%
#!loc:@recall/false_negatives/count
�
IsVariableInitialized_14IsVariableInitializedaccuracy/total*
_output_shapes
: *
dtype0*!
_class
loc:@accuracy/total
�
IsVariableInitialized_15IsVariableInitializedaccuracy/count*
_output_shapes
: *
dtype0*!
_class
loc:@accuracy/count
�
IsVariableInitialized_16IsVariableInitializedprecision/true_positives/count*
_output_shapes
: *
dtype0*1
_class'
%#loc:@precision/true_positives/count
�
IsVariableInitialized_17IsVariableInitializedprecision/false_positives/count*
_output_shapes
: *
dtype0*2
_class(
&$loc:@precision/false_positives/count
�
IsVariableInitialized_18IsVariableInitializedmean_absolute_error/total*
_output_shapes
: *
dtype0*,
_class"
 loc:@mean_absolute_error/total
�
IsVariableInitialized_19IsVariableInitializedmean_absolute_error/count*
_output_shapes
: *
dtype0*,
_class"
 loc:@mean_absolute_error/count
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17IsVariableInitialized_18IsVariableInitialized_19*
_output_shapes
:*
T0
*
N*

axis 
:

LogicalNot
LogicalNotpack*
_output_shapes
:
�
Const_1Const*
_output_shapes
:*�
value�B�Bglobal_stepBhiddenlayer_0/weights/part_0Bhiddenlayer_0/biases/part_0Bhiddenlayer_1/weights/part_0Bhiddenlayer_1/biases/part_0Bdnn_logits/weights/part_0Bdnn_logits/biases/part_0Bcentered_bias_weightB
mean/totalB
mean/countBmean_squared_error/totalBmean_squared_error/countBrecall/true_positives/countBrecall/false_negatives/countBaccuracy/totalBaccuracy/countBprecision/true_positives/countBprecision/false_positives/countBmean_absolute_error/totalBmean_absolute_error/count*
dtype0
[
$report_uninitialized_variables/ShapeShapeConst_1*
_output_shapes
:*
T0
t
*report_uninitialized_variables/Slice/beginConst*
_output_shapes
:*
valueB:*
dtype0
|
)report_uninitialized_variables/Slice/sizeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
_output_shapes
: *
T0*
Index0
r
0report_uninitialized_variables/concat/concat_dimConst*
_output_shapes
: *
value	B : *
dtype0
�
.report_uninitialized_variables/concat/values_0Const*
_output_shapes
:*
valueB:
���������*
dtype0
�
%report_uninitialized_variables/concatConcat0report_uninitialized_variables/concat/concat_dim.report_uninitialized_variables/concat/values_0$report_uninitialized_variables/Slice*
_output_shapes
:*
T0*
N
�
&report_uninitialized_variables/ReshapeReshapeConst_1%report_uninitialized_variables/concat*
_output_shapes
:*
T0
�
.report_uninitialized_variables/Reshape_1/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
(report_uninitialized_variables/Reshape_1Reshape
LogicalNot.report_uninitialized_variables/Reshape_1/shape*
_output_shapes
:*
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
:���������*
Tindices0	*
Tparams0*
validate_indices("
RJ�e       ��Zi	M#�Jp�A�*W

loss�n�?

recall  �?

accuracy�K�>


MSEa�C


MAE�P�@

	precision  �?���e       ��Zi	c��Jp�A�*W

loss�C�?

recall  �?

accuracy�X?


MSESh�B


MAE
��@

	precision��?hJ�e       ��Zi	MT�$Kp�A�*W

lossod�?

recall  �?

accuracy��?


MSE��B


MAEQ_�@

	precision�S?�ue       ��Zi	
pFkKp�A�	*W

loss}��?

recall  �?

accuracy�2?


MSEҹ�B


MAEz4�@

	precisionz�~?�Q)e       ��Zi	F/s�Kp�A�*W

loss�n�?

recall  �?

accuracy�� ?


MSE+�B


MAE���@

	precision��~?ڦ�e       ��Zi	E���Kp�A�*W

lossl9�?

recall  �?

accuracy�%?


MSEi
�B


MAE��@

	precision�<~?�O��e       ��Zi	#F
>Lp�A�*W

lossW��?

recall  �?

accuracyR�'?


MSEa2�B


MAE[e�@

	precisionl�}?�w1�e       ��Zi	r�Lp�A�*W

loss�~?

recall  �?

accuracy46*?


MSEW-�B


MAE���@

	precision��}?oH\e       ��Zi	J���Lp�A�*W

loss}�x?

recall  �?

accuracy,?


MSE0�B


MAEyg�@

	precision�p}?9��e       ��Zi	a$Mp�A�*W

loss8�r?

recall  �?

accuracy�I.?


MSE��B


MAE�?�@

	precision�R}?�|n�e       ��Zi	��OWMp�A�*W

loss�Zm?

recall  �?

accuracyy 0?


MSEИB


MAE=�@

	precision�5}?�/g�e       ��Zi	�k�Mp�A�*W

loss�^h?

recall  �?

accuracy!�1?


MSES��B


MAE}�@

	precision/I}?��f�e       ��Zi	����Mp�A�*W

lossזc?

recall  �?

accuracy3?


MSE3T�B


MAE<Ì@

	precision�&}?�,8�e       ��Zi	T&Np�A� *W

lossl_?

recall  �?

accuracy4?


MSE�D�B


MAE�@

	precision�}?V��1e       ��Zi	��jNp�A�#*W

loss0�[?

recall  �?

accuracy85?


MSE@��B


MAE��@

	precision�1}?D��|e       ��Zi	0;ҮNp�A�%*W

loss,JX?

recall  �?

accuracy>6?


MSE�C�B


MAE�\�@

	precision�,}?ɗ�e       ��Zi	�#�Np�A�'*W

lossJ#U?

recall  �?

accuracy_7?


MSEo�B


MAE%��@

	precisionBF}?�l�Le       ��Zi	�i7Op�A�**W

loss7=R?

recall  �?

accuracy]�7?


MSE46�B


MAE�l�@

	precisionq]}?Xf��e       ��Zi	]˃{Op�A�,*W

loss{�O?

recall  �?

accuracygv8?


MSEN��B


MAE&#�@

	precisionj*}?���e       ��Zi	W���Op�A�.*W

loss:�L?

recall  �?

accuracy79?


MSE��B


MAEsN�@

	precision�[}?'V&e       ��Zi			�Pp�A�1*W

loss�mJ?

recall  �?

accuracy{�9?


MSE���B


MAE�Հ@

	precision\�}?��Ye       ��Zi	�8�GPp�A�3*W

lossb	H?

recall  �?

accuracyY�:?


MSE�e�B


MAE�n@

	precisionJt}?����e       ��Zi	�	�Pp�A�5*W

loss'�E?

recall  �?

accuracy#+;?


MSE�`�B


MAE�_}@

	precision�s}?�}G@e       ��Zi	a%�Pp�A�8*W

loss��C?

recall  �?

accuracyw�;?


MSE�M�B


MAE0{@

	precision�t}?qp6e       ��Zi	�aQp�A�:*W

loss�A?

recall  �?

accuracywD<?


MSE��B


MAEoy@

	precision��}?ūD<e       ��Zi	�?�XQp�A�<*W

loss�5@?

recall  �?

accuracy.�<?


MSEa'�B


MAE�+w@

	precision	�}?�HHLe       ��Zi	���Qp�A�?*W

loss�>?

recall  �?

accuracy.P=?


MSE��B


MAE�Ju@

	precisionb�}?��Z�e       ��Zi	����Qp�A�A*W

lossL=?

recall  �?

accuracy��=?


MSE�=}B


MAE�r@

	precision�~?��|�e       ��Zi	���$Rp�A�C*W

loss��;?

recall  �?

accuracy|f>?


MSE��zB


MAE�p@

	precision�*~?߈�e       ��Zi	�K�hRp�A�F*W

loss�c:?

recall  �?

accuracy��>?


MSEQ�xB


MAE� o@

	precision!D~?��Ce       ��Zi	/Q��Rp�A�H*W

loss�>9?

recall  �?

accuracy%??


MSE�wB


MAEb{m@

	precision�C~?�Y��e       ��Zi	�:��Rp�A�K*W

lossS�7?

recall  �?

accuracy�??


MSEC�uB


MAE�#l@

	precision�B~?4Q#e       ��Zi	D~�4Sp�A�M*W

loss��6?

recall\�?

accuracy.�??


MSE5�sB


MAE
�j@

	precision?C~?L���e       ��Zi	��xSp�A�O*W

loss�5?

recallb�?

accuracy�V@?


MSE{rB


MAE'�h@

	precisionlC~?�/�be       ��Zi	Q��Sp�A�R*W

loss��4?

recallW�?

accuracy��@?


MSEU_qB


MAE�h@

	precisionC~?���e       ��Zi	[�� Tp�A�T*W

loss��3?

recallg�?

accuracy�@?


MSE�pB


MAE�Og@

	precision�C~?!DR-e       ��Zi	��ETp�A�V*W

loss�3?

recall}�?

accuracyGA?


MSE�KoB


MAE߿e@

	precisionOD~?�V�Ie       ��Zi	�~%�Tp�A�Y*W

loss�/2?

recall[�?

accuracyL�A?


MSE�nB


MAExd@

	precision�^~?>p�e       ��Zi	�&I�Tp�A�[*W

loss�{1?

recall|�?

accuracy�A?


MSE�lB


MAE��c@

	precisiong_~?F�e       ��Zi	��qUp�A�]*W

loss|�0?

recall��?

accuracy��A?


MSElB


MAEW�b@

	precision�~?bFe       ��Zi	��xUUp�A�`*W

loss6�/?

recall��?

accuracy�B?


MSEǄkB


MAExb@

	precisionz�~?X�&$e       ��Zi	Ꞅ�Up�A�b*W

loss6/?

recall��?

accuracy�IB?


MSED�jB


MAEY�a@

	precisionz�~?HU	�e       ��Zi	D7n�Up�A�d*W

loss~z.?

recallO�?

accuracy�lB?


MSEGjB


MAE?Da@

	precision�~?�f�e       ��Zi	Ժ!Vp�A�g*W

loss��-?

recall/�?

accuracyM�B?


MSE��iB


MAER�`@

	precision��~?�Fj�e       ��Zi	?�eeVp�A�i*W

lossk0-?

recall/�?

accuracy��B?


MSE�iB


MAEs`@

	precision��~?ӗKe       ��Zi	]�Vp�A�k*W

lossB�,?

recallo�?

accuracy�B?


MSE�{hB


MAEG�_@

	precisionN�~?��	Ee       ��Zi	�F�Vp�A�n*W

losso�+?

recallÖ?

accuracyp�B?


MSE,iB


MAE�`@

	precisionM�~?�be       ��Zi	;��0Wp�A�p*W

lossqU+?

recall�?

accuracy�C?


MSE�9hB


MAE�D_@

	precision�~?��|�e       ��Zi	�<�tWp�A�r*W

lossO�*?

recall}?

accuracy�GC?


MSE�gB


MAE�^@

	precision��~?g�&Oe       ��Zi	?��Wp�A�u*W

loss�:*?

recall1}?

accuracy�yC?


MSE��fB


MAE[�]@

	precision��~?F�'e       ��Zi	6���Wp�A�w*W

loss��)?

recall�|?

accuracy�C?


MSE��eB


MAE]@

	precision�~?0Z�%e       ��Zi	D`/AXp�A�y*W

lossa)?

recall�|?

accuracy��C?


MSE	�eB


MAEr�\@

	precision,�~?�<@e       ��Zi	¼M�Xp�A�|*W

loss��(?

recall�}?

accuracy��C?


MSEQudB


MAE��[@

	precision��~?�X%�e       ��Zi	;�l�Xp�A�~*W

loss�(?

recall�|?

accuracyE2D?


MSE��dB


MAE8y[@

	precision��~?�zszf       r;�j	���Yp�A�*W

loss��'?

recall�|?

accuracy�9D?


MSE��cB


MAE�[@

	precisiona�~?���Uf       r;�j	���QYp�A��*W

loss<'?

recall�|?

accuracy�nD?


MSE��cB


MAEݶZ@

	precision��~?��f       r;�j	2��Yp�A̅*W

loss�&?

recallY}?

accuracy2�D?


MSE��bB


MAE<�Y@

	precision6�~?�Bf       r;�j	�c��Yp�A��*W

loss?[&?

recall�}?

accuracy�D?


MSE�bB


MAEp7Y@

	precision��~?�JZpf       r;�j	�~AZp�A��*W

loss8�%?

recall�}?

accuracy\�D?


MSE��aB


MAE��X@

	precision��~?��
|f       r;�j	*�8bZp�AЌ*W

loss>{%?

recallK}?

accuracyE?


MSE��aB


MAE8�X@

	precision�~?���jf       r;�j	�[:�Zp�A��*W

loss+�$?

recallb?

accuracy�%E?


MSE��aB


MAE2�X@

	precision:�~?-2KXf       r;�j	"�2�Zp�A��*W

loss�$?

recallf}?

accuracy�HE?


MSE��`B


MAEN�W@

	precisionQ�~?���f       r;�j	�\�-[p�Aԓ*W

loss`T$?

recallGc?

accuracy�ZE?


MSE��`B


MAE��W@

	precision6�~??i�f       r;�j	g�q[p�A��*W

loss1�#?

recallc?

accuracy�rE?


MSE!^`B


MAE%mW@

	precision��~?d&!=f       r;�j	�ɵ[p�A��*W

lossw�#?

recallc?

accuracy,�E?


MSEw�_B


MAEW@

	precision��~?�B��f       r;�j	����[p�Aؚ*W

lossX#?

recall�c?

accuracyY�E?


MSE=j_B


MAEW�V@

	precision��~?�f       r;�j	���=\p�A��*W

loss�"?

recall�H?

accuracy��E?


MSE��^B


MAE��U@

	precision��~?��Sf       r;�j	���\p�A��*W

lossM�"?

recall�H?

accuracyi�E?


MSEvS^B


MAE��U@

	precision��~?�G�cf       r;�j	��\p�Aܡ*W

lossqC"?

recall�I?

accuracy�F?


MSE�g]B


MAE*�T@

	precision��~?<W�f       r;�j	0 <
]p�A��*W

loss��!?

recall`I?

accuracy�1F?


MSE��\B


MAEPRT@

	precisionz�~?ŧ`f       r;�j	�<N]p�A��*W

lossj�!?

recallsI?

accuracyjcF?


MSE\B


MAEb�S@

	precision��~?���Bf       r;�j	I�U�]p�A�*W

loss�S!?

recall`I?

accuracy��F?


MSEE[B


MAE��R@

	precisionz�~?4���f       r;�j	�	_�]p�A��*W

loss6!?

recall`I?

accuracy
�F?


MSE_�ZB


MAE`XR@

	precisionz�~?��Yf       r;�j	p�|^p�A��*W

loss�� ?

recall(I?

accuracyD�F?


MSEߋZB


MAE2$R@

	precision"�~?��#f       r;�j	���^^p�A�*W

loss\t ?

recall(I?

accuracy��F?


MSE�_ZB


MAE��Q@

	precision"�~?$�.of       r;�j	���^p�A��*W

loss�9 ?

recallNI?

accuracy��F?


MSEC+ZB


MAE�Q@

	precision]�~?F��f       r;�j	�6��^p�A��*W

lossO�?

recall'c?

accuracy� G?


MSE^�YB


MAETQ@

	precision�~?S�=�f       r;�j	��+_p�A�*W

loss��?

recallGc?

accuracy'�F?


MSEZB


MAE�Q@

	precision?�~??Þ�f       r;�j	��n_p�A��*W

loss,k?

recall�b?

accuracy�G?


MSE)�YB


MAE�JQ@

	precision��~?�J�f       r;�j	n��_p�A��*W

loss�7?

recallc?

accuracyDCG?


MSE�YB


MAE�P@

	precision��~?�GZ�f       r;�j	�Vr�_p�A�*W

loss�?

recallc?

accuracycG?


MSEާXB


MAE1P@

	precision��~?�ɑf       r;�j	��;`p�A��*W

loss@�?

recall�b?

accuracy�gG?


MSE��XB


MAE�_P@

	precisionU�~?���Jf       r;�j	�<��`p�A��*W

losse�?

recall�b?

accuracy�jG?


MSE|�XB


MAE�P@

	precision��~?6Z�f       r;�j	Rw�`p�A��*W

loss�?

recallb?

accuracyT�G?


MSE��XB


MAEP@

	precision:�~?���f       r;�j	V�	ap�A��*W

loss��?

recall�|?

accuracy�G?


MSE�XB


MAE�mO@

	precision��~?��#f       r;�j	�xNap�A��*W

lossv�?

recall�|?

accuracy��G?


MSE�WB


MAE8CO@

	precision,�~? ���f       r;�j	 ��ap�A��*W

loss-�?

recall#}?

accuracyȽG?


MSE3IWB


MAE��N@

	precision��~?{��f       r;�j	��|�ap�A��*W

lossds?

recall}?

accuracy��G?


MSE+WB


MAE�N@

	precision��~?�՗�f       r;�j	��bp�A��*W

loss�F?

recall�|?

accuracy�G?


MSEP�VB


MAE?sN@

	precision|�~?X���f       r;�j	B��`bp�A��*W

loss��?

recall�|?

accuracy��G?


MSEK,WB


MAEV�N@

	precision��~?�Vs;f       r;�j	��{�bp�A��*W

loss��?

recallL|?

accuracy�H?


MSE"�VB


MAE5_N@

	precision�~?��f       r;�j	�XY�bp�A��*W

loss�?

recall�|?

accuracy�H?


MSE5VB


MAE�N@

	precision�~?	���f       r;�j	3�/cp�A��*W

lossL�?

recall�|?

accuracy+)H?


MSE1�UB


MAE@�M@

	precision�~?����f       r;�j	;wscp�A��*W

loss2?

recall1|?

accuracy�<H?


MSEo*VB


MAE��M@

	precision��~?����f       r;�j	����cp�A��*W

loss0?

recall>|?

accuracy�HH?


MSEVB


MAEK�M@

	precision�~?����f       r;�j	�l�cp�A��*W

loss�
?

recall�|?

accuracy�wH?


MSE�TB


MAE�kL@

	precision��~?�މ5f       r;�j	ؔ>?dp�A��*W

lossF�?

recall�|?

accuracy�H?


MSE ,TB


MAE�L@

	precision��~?A�f       r;�j	A�H�dp�A��*W

loss��?

recall�|?

accuracy�H?


MSETB


MAE�L@

	precisionF�~?����f       r;�j	�ll�dp�A��*W

loss�x?

recallt|?

accuracy_�H?


MSEֲSB


MAE��K@

	precisionp�~?���f       r;�j	�ːep�A��*W

loss�W?

recall�|?

accuracy�H?


MSE26SB


MAEt K@

	precision��~?��f|f       r;�j	 �Oep�A��*W

lossD7?

recall�|?

accuracy/�H?


MSE�RB


MAE�J@

	precision��~?��6f       r;�j	�~��ep�A��*W

loss`�?

recall�|?

accuracyB�H?


MSEY~SB


MAE�'K@

	precision��~?����f       r;�j	U��ep�A��*W

lossW�?

recall�|?

accuracy��H?


MSE��RB


MAEҵJ@

	precision�?Y
*nf       r;�j	�K�fp�A��*W

loss3�?

recall|?

accuracy	I?


MSEH�RB


MAEٸJ@

	precision�?[�ݽf       r;�j	��`fp�A��*W

loss�?

recall�|?

accuracy��H?


MSE7�RB


MAEr�J@

	precision.?����f       r;�j	��fp�A��*W

loss��?

recall�|?

accuracy��H?


MSEe�RB


MAEV�J@

	precision�.?�1>9f       r;�j	CI�fp�A��*W

lossv6?

recall|?

accuracy�1I?


MSE�nRB


MAE�2J@

	precision0-?�c��f       r;�j	am,gp�A��*W

lossK?

recall1|?

accuracyf6I?


MSEC.RB


MAEe	J@

	precision\-?���f       r;�j	�݌pgp�A��*W

loss$&?

recall�|?

accuracyBI?


MSE�dQB


MAEȂI@

	precision�.?�;Kf       r;�j	Q넴gp�A�*W

loss9?

recall�|?

accuracy�7I?


MSEs�QB


MAEQ�I@

	precisiont.?��H�f       r;�j	�=��gp�A��*W

loss�?

recall�{?

accuracycqI?


MSE�hQB


MAE�=I@

	precision-?�i�Hf       r;�j	/��<hp�A��*W

lossT�?

recall�|?

accuracys<I?


MSE�TQB


MAE�I@

	precisiont.?�lf       r;�j	C`{�hp�A�*W

loss[�?

recall�|?

accuracy�KI?


MSEnQB


MAE�JI@

	precision.?Ϊ�ef       r;�j	{,��hp�A��*W

loss�{?

recall�|?

accuracy<_I?


MSED�PB


MAE#I@

	precision"H?v��f       r;�j	�|{ip�Ač*W

loss!3?

recall6�?

accuracy`�I?


MSEE{PB


MAE�bH@

	precisionG?9g�f       r;�j	�ÄLip�A��*W

loss�2?

recall��?

accuracy��I?


MSE��PB


MAE��H@

	precision�G?��[sf       r;�j	�Đip�A��*W

loss ?

recall��?

accuracy�uI?


MSE��PB


MAE��H@

	precision�G?�F�Bf       r;�j	�F��ip�AȔ*W

loss�?

recallÖ?

accuracy�uI?


MSE~�PB


MAE��H@

	precisionH? b�f       r;�j	kjjp�A��*W

loss��?

recall��?

accuracy��I?


MSE�APB


MAE�zH@

	precision�G?�2IZf       r;�j	*6&]jp�A��*W

loss;�?

recallW�?

accuracy��I?


MSEY�OB


MAE�G@

	precisionQG?GEX_f       r;�j	�I(�jp�A̛*W

loss�?

recall�?

accuracyy�I?


MSE��OB


MAE��G@

	precision"H?�n��f       r;�j	E�T�jp�A��*W

losslw?

recall�?

accuracy��I?


MSE5~OB


MAE��G@

	precision�G?���f       r;�j	MAv)kp�A��*W

loss�F?

recall��?

accuracy��I?


MSE��OB


MAE
�G@

	precision+G?�p�f       r;�j	��mkp�AТ*W

loss"w?

recallS�?

accuracy�I?


MSE�.OB


MAEg�G@

	precision�H?�z�kf       r;�j	M�ޱkp�A��*W

loss�)?

recall��?

accuracy��I?


MSE OB


MAE�MG@

	precision�G? ��f       r;�j	l��kp�A��*W

loss8�?

recallg�?

accuracy��I?


MSE��OB


MAE�xG@

	precision�F?�9y�f       r;�j	��9lp�Aԩ*W

loss�?

recall#�?

accuracy��I?


MSE�NB


MAE[G@

	precisionGH?|�`f       r;�j	��~lp�A��*W

loss��?

recall�?

accuracyJ�I?


MSE�NB


MAE�&G@

	precision�G?�BySf       r;�j	�^��lp�A��*W

loss{�?

recall�?

accuracy��I?


MSE��NB


MAEF5G@

	precision�G?�%��f       r;�j	��mp�Aذ*W

lossK}?

recall��?

accuracy�&J?


MSE�BNB


MAE	cF@

	precision�F?g&�f       r;�j	���Imp�A��*W

loss5�?

recall;�?

accuracy}�I?


MSEg�MB


MAE<�F@

	precision�H?B���f       r;�j	I�;�mp�A��*W

loss�O?

recall��?

accuracy�J?


MSE�DNB


MAE1�F@

	precisionG?���Af       r;�j	�(=�mp�Aܷ*W

lossn??

recall��?

accuracy�&J?


MSE��MB


MAEnGF@

	precisionG?�}�f       r;�j	�cUnp�A��*W

loss�6?

recallڰ?

accuracy�&J?


MSE?�MB


MAE�FF@

	precision�G?I��lf       r;�j	%FZnp�A��*W

lossv?

recall��?

accuracy�2J?


MSEx�MB


MAE(&F@

	precisionG?_��f       r;�j	KO�np�A�*W

loss��?

recall��?

accuracy?J?


MSE�MB


MAE/�E@

	precision�F?dW �f       r;�j	�J�np�A��*W

lossg�?

recall��?

accuracy6J?


MSE�oMB


MAE^F@

	precision+G?�b�f       r;�j	�c&op�A��*W

lossO�?

recall�?

accuracy<J?


MSE:`MB


MAE�E@

	precision+G?���f       r;�j	mxjjop�A��*W

loss��?

recall1�?

accuracyBJ?


MSE^MMB


MAE��E@

	precision�G?~�f       r;�j	�=��op�A��*W

lossdt?

recall��?

accuracy]`J?


MSE�uMB


MAE��E@

	precisionlF?�k<f       r;�j	���op�A��*W

loss��?

recall1�?

accuracy�CJ?


MSErMB


MAE�E@

	precision�G?EO�hf       r;�j	��6pp�A��*W

loss�l?

recall&�?

accuracy*HJ?


MSEmOMB


MAE#�E@

	precisiondG?~SX�f       r;�j	�s�zpp�A��*W

loss�/?

recall��?

accuracy�XJ?


MSE�oMB


MAEj�E@

	precision�F?J��f       r;�j	�н�pp�A��*W

loss�?

recall��?

accuracy'�J?


MSE��LB


MAE�4E@

	precisionF?����f       r;�j	�ڥqp�A��*W

loss��?

recall��?

accuracy��J?


MSE�LB


MAE�7E@

	precision2F?��y�f       r;�j	_�Fqp�A��*W

lossw�?

recall�?

accuracy}J?


MSE�LB


MAEL'E@

	precision�F?���nf       r;�j	"�g�qp�A��*W

loss�?

recallG�?

accuracy<J?


MSE�GMB


MAE�E@

	precision�G?Tk$�f       r;�j	r ��qp�A��*W

lossΞ?

recall��?

accuracyT�J?


MSE��LB


MAEWE@

	precisionF?E9�f       r;�j	���rp�A��*W

loss��?

recall�?

accuracy qJ?


MSE��LB


MAEKTE@

	precisionG?� �Qf       r;�j	K �Vrp�A��*W

lossZ�?

recall�?

accuracypiJ?


MSE��LB


MAE�[E@

	precision>G?��~�f       r;�j	HN�rp�A��*W

loss3Z?

recall��?

accuracy��J?


MSE�9LB


MAE�dD@

	precision�F?��-?f       r;�j	l��rp�A��*W

loss�?

recallW�?

accuracy�OJ?


MSE��LB


MAE
�E@

	precisionH?���(f       r;�j	]#sp�A��*W

loss�0?

recall��?

accuracy��J?


MSEY'LB


MAE�D@

	precision�F?�M�f       r;�j	�Igsp�A��*W

loss�;?

recall�?

accuracyʓJ?


MSE�^LB


MAE��D@

	precision>G?�\��f       r;�j	��]�sp�A��*W

loss�?

recall��?

accuracy�J?


MSE.�KB


MAE\LD@

	precision�F?�|*f       r;�j	����sp�A��*W

loss� ?

recall��?

accuracyĐJ?


MSE'5LB


MAE@�D@

	precisiondG?ɵzGf       r;�j	�ܼ3tp�A��*W

loss��?

recallF�?

accuracyq�J?


MSEc�KB


MAES�C@

	precisionEF?#^��f       r;�j	��wtp�A��*W

loss��?

recall��?

accuracy*�J?


MSE7�KB


MAE�#D@

	precisionG?߆!f       r;�j	a�tp�A��*W

loss��?

recallg�?

accuracyW�J?


MSEm�KB


MAE��C@

	precision�F?RiR�f       r;�j	�: up�A��*W

loss��?

recall�?

accuracy��J?


MSE��KB


MAElD@

	precision�G?�#�f       r;�j	�'Dup�A��*W

lossq?

recall�?

accuracy�J?


MSE�KB


MAE|�C@

	precision�E?�ZJ�f       r;�j	%B܇up�A��*W

loss��?

recall��?

accuracy�J?


MSE�LB


MAE�D@

	precisionQG?���Xf       r;�j	�Sc�up�A��*W

lossgx?

recall��?

accuracy��J?


MSE֌KB


MAE�C@

	precisionG?�}f       r;�j	��@vp�A��*W

loss8(?

recall-�?

accuracy�K?


MSE�7KB


MAE9C@

	precisionJE?qE0gf       r;�j	lTZSvp�A܂*W

loss�d?

recallɰ?

accuracy�J?


MSE�`KB


MAErD@

	precisionwG?��g�f       r;�j	�RZ�vp�A��*W

loss�;?

recall��?

accuracy��J?


MSE�KB


MAE�C@

	precisionQG?�;u