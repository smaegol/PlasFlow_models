       �K"	   ��`�Abrain.Event:2z��5�      ~�?�	�^��`�A"��
m
global_stepVariable*
shape: *
shared_name *
dtype0	*
	container *
_output_shapes
: 

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
use_locking(*
_output_shapes
: *
validate_shape(
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
X
inputPlaceholder*
shape: *
dtype0*(
_output_shapes
:���������� 
T
outputPlaceholder*
shape: *
dtype0	*#
_output_shapes
:���������
�
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*
T0*(
_output_shapes
:���������� 
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
dtype0*
value	B :*
_output_shapes
: 
�
<input_from_feature_columns/input_from_feature_columns/concatIdentity=input_from_feature_columns/input_from_feature_columns/Reshape*
T0*(
_output_shapes
:���������� 
�
!hiddenlayer_0/hiddenlayer_0/ShapeShape<input_from_feature_columns/input_from_feature_columns/concat*
T0*
_output_shapes
:
�
"hiddenlayer_0/hiddenlayer_0/unpackUnpack!hiddenlayer_0/hiddenlayer_0/Shape*

axis *
T0*
_output_shapes
: : *	
num
�
hiddenlayer_0/weights/part_0Variable*
shape:	� 
*
shared_name *
dtype0*
	container *
_output_shapes
:	� 

�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB"   
   *
_output_shapes
:
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB
 *���*
_output_shapes
: 
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB
 *��=*
_output_shapes
: 
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
seed2*
_output_shapes
:	� 
*
T0*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*

seed*
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
:	� 

�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
:	� 

�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
use_locking(*
_output_shapes
:	� 
*
validate_shape(
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
:	� 

n
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
T0*
_output_shapes
:	� 

�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
T0*
transpose_b( *'
_output_shapes
:���������
*
transpose_a( 
�
hiddenlayer_0/biases/part_0Variable*
shape:
*
shared_name *
dtype0*
	container *
_output_shapes
:

�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
dtype0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
valueB
*    *
_output_shapes
:

�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
use_locking(*
_output_shapes
:
*
validate_shape(
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
:

g
hiddenlayer_0/biasesIdentity hiddenlayer_0/biases/part_0/read*
T0*
_output_shapes
:

�
#hiddenlayer_0/hiddenlayer_0/BiasAddBiasAdd"hiddenlayer_0/hiddenlayer_0/MatMulhiddenlayer_0/biases*
T0*
data_formatNHWC*'
_output_shapes
:���������


 hiddenlayer_0/hiddenlayer_0/ReluRelu#hiddenlayer_0/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:���������

W
zero_fraction/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
zero_fraction/EqualEqual hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*
T0*'
_output_shapes
:���������

p
zero_fraction/CastCastzero_fraction/Equal*

SrcT0
*

DstT0*'
_output_shapes
:���������

d
zero_fraction/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
	keep_dims( *
T0*
_output_shapes
: 
x
ScalarSummary/tagsConst*
dtype0*6
value-B+ B%hiddenlayer_0:fraction_of_zero_values*
_output_shapes
: 
g
ScalarSummaryScalarSummaryScalarSummary/tagszero_fraction/Mean*
T0*
_output_shapes
: 
m
HistogramSummary/tagConst*
dtype0*)
value B Bhiddenlayer_0:activation*
_output_shapes
: 
}
HistogramSummaryHistogramSummaryHistogramSummary/tag hiddenlayer_0/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
q
!hiddenlayer_1/hiddenlayer_1/ShapeShape hiddenlayer_0/hiddenlayer_0/Relu*
T0*
_output_shapes
:
�
"hiddenlayer_1/hiddenlayer_1/unpackUnpack!hiddenlayer_1/hiddenlayer_1/Shape*

axis *
T0*
_output_shapes
: : *	
num
�
hiddenlayer_1/weights/part_0Variable*
shape
:

*
shared_name *
dtype0*
	container *
_output_shapes

:


�
=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB"
   
   *
_output_shapes
:
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB
 *�7�*
_output_shapes
: 
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB
 *�7?*
_output_shapes
: 
�
Ehiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
seed2.*
_output_shapes

:

*
T0*
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*

seed*
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_1/weights/part_0/Initializer/random_uniform/max;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes
: 
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes

:


�
7hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes

:


�
#hiddenlayer_1/weights/part_0/AssignAssignhiddenlayer_1/weights/part_07hiddenlayer_1/weights/part_0/Initializer/random_uniform*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
use_locking(*
_output_shapes

:

*
validate_shape(
�
!hiddenlayer_1/weights/part_0/readIdentityhiddenlayer_1/weights/part_0*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes

:


m
hiddenlayer_1/weightsIdentity!hiddenlayer_1/weights/part_0/read*
T0*
_output_shapes

:


�
"hiddenlayer_1/hiddenlayer_1/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reluhiddenlayer_1/weights*
T0*
transpose_b( *'
_output_shapes
:���������
*
transpose_a( 
�
hiddenlayer_1/biases/part_0Variable*
shape:
*
shared_name *
dtype0*
	container *
_output_shapes
:

�
-hiddenlayer_1/biases/part_0/Initializer/zerosConst*
dtype0*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
valueB
*    *
_output_shapes
:

�
"hiddenlayer_1/biases/part_0/AssignAssignhiddenlayer_1/biases/part_0-hiddenlayer_1/biases/part_0/Initializer/zeros*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
use_locking(*
_output_shapes
:
*
validate_shape(
�
 hiddenlayer_1/biases/part_0/readIdentityhiddenlayer_1/biases/part_0*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
_output_shapes
:

g
hiddenlayer_1/biasesIdentity hiddenlayer_1/biases/part_0/read*
T0*
_output_shapes
:

�
#hiddenlayer_1/hiddenlayer_1/BiasAddBiasAdd"hiddenlayer_1/hiddenlayer_1/MatMulhiddenlayer_1/biases*
T0*
data_formatNHWC*'
_output_shapes
:���������


 hiddenlayer_1/hiddenlayer_1/ReluRelu#hiddenlayer_1/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:���������

Y
zero_fraction_1/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
zero_fraction_1/EqualEqual hiddenlayer_1/hiddenlayer_1/Reluzero_fraction_1/zero*
T0*'
_output_shapes
:���������

t
zero_fraction_1/CastCastzero_fraction_1/Equal*

SrcT0
*

DstT0*'
_output_shapes
:���������

f
zero_fraction_1/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
	keep_dims( *
T0*
_output_shapes
: 
z
ScalarSummary_1/tagsConst*
dtype0*6
value-B+ B%hiddenlayer_1:fraction_of_zero_values*
_output_shapes
: 
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
T0*
_output_shapes
: 
o
HistogramSummary_1/tagConst*
dtype0*)
value B Bhiddenlayer_1:activation*
_output_shapes
: 
�
HistogramSummary_1HistogramSummaryHistogramSummary_1/tag hiddenlayer_1/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
k
dnn_logits/dnn_logits/ShapeShape hiddenlayer_1/hiddenlayer_1/Relu*
T0*
_output_shapes
:
}
dnn_logits/dnn_logits/unpackUnpackdnn_logits/dnn_logits/Shape*

axis *
T0*
_output_shapes
: : *	
num
�
dnn_logits/weights/part_0Variable*
shape
:
*
shared_name *
dtype0*
	container *
_output_shapes

:

�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0*
valueB"
      *
_output_shapes
:
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0*
valueB
 *����*
_output_shapes
: 
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0*
valueB
 *���>*
_output_shapes
: 
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*
seed2L*
_output_shapes

:
*
T0*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0*

seed*
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

:

�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*
T0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

:

�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
T0*,
_class"
 loc:@dnn_logits/weights/part_0*
use_locking(*
_output_shapes

:
*
validate_shape(
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*
T0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

:

g
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
T0*
_output_shapes

:

�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_1/hiddenlayer_1/Reludnn_logits/weights*
T0*
transpose_b( *'
_output_shapes
:���������*
transpose_a( 
�
dnn_logits/biases/part_0Variable*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
dtype0*+
_class!
loc:@dnn_logits/biases/part_0*
valueB*    *
_output_shapes
:
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
T0*+
_class!
loc:@dnn_logits/biases/part_0*
use_locking(*
_output_shapes
:*
validate_shape(
�
dnn_logits/biases/part_0/readIdentitydnn_logits/biases/part_0*
T0*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
:
a
dnn_logits/biasesIdentitydnn_logits/biases/part_0/read*
T0*
_output_shapes
:
�
dnn_logits/dnn_logits/BiasAddBiasAdddnn_logits/dnn_logits/MatMuldnn_logits/biases*
T0*
data_formatNHWC*'
_output_shapes
:���������
Y
zero_fraction_2/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
zero_fraction_2/EqualEqualdnn_logits/dnn_logits/BiasAddzero_fraction_2/zero*
T0*'
_output_shapes
:���������
t
zero_fraction_2/CastCastzero_fraction_2/Equal*

SrcT0
*

DstT0*'
_output_shapes
:���������
f
zero_fraction_2/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
{
zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
	keep_dims( *
T0*
_output_shapes
: 
w
ScalarSummary_2/tagsConst*
dtype0*3
value*B( B"dnn_logits:fraction_of_zero_values*
_output_shapes
: 
m
ScalarSummary_2ScalarSummaryScalarSummary_2/tagszero_fraction_2/Mean*
T0*
_output_shapes
: 
l
HistogramSummary_2/tagConst*
dtype0*&
valueB Bdnn_logits:activation*
_output_shapes
: 
~
HistogramSummary_2HistogramSummaryHistogramSummary_2/tagdnn_logits/dnn_logits/BiasAdd*
T0*
_output_shapes
: 
R
zerosConst*
dtype0*
valueB*    *
_output_shapes
:
~
centered_bias_weightVariable*
shape:*
shared_name *
dtype0*
	container *
_output_shapes
:
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
T0*'
_class
loc:@centered_bias_weight*
use_locking(*
_output_shapes
:*
validate_shape(
�
centered_bias_weight/readIdentitycentered_bias_weight*
T0*'
_class
loc:@centered_bias_weight*
_output_shapes
:
`
Reshape/shapeConst*
dtype0*
valueB:
���������*
_output_shapes
:
a
ReshapeReshapecentered_bias_weight/readReshape/shape*
T0*
_output_shapes
:
�
ScalarSummary_3/tagsConst*
dtype0*�
value�B�Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14*
_output_shapes
:
`
ScalarSummary_3ScalarSummaryScalarSummary_3/tagsReshape*
T0*
_output_shapes
: 
�
BiasAddBiasAdddnn_logits/dnn_logits/BiasAddcentered_bias_weight/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
_
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeoutput*
T0	*
_output_shapes
:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsBiasAddoutput*
T0*6
_output_shapes$
":���������:���������*
Tlabels0	
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
	keep_dims( *
T0*
_output_shapes
: 
O

mean/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
l

mean/totalVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
mean/total/AssignAssign
mean/total
mean/zeros*
T0*
_class
loc:@mean/total*
use_locking(*
_output_shapes
: *
validate_shape(
g
mean/total/readIdentity
mean/total*
T0*
_class
loc:@mean/total*
_output_shapes
: 
Q
mean/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
l

mean/countVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
T0*
_class
loc:@mean/count*
use_locking(*
_output_shapes
: *
validate_shape(
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

SrcT0*

DstT0*
_output_shapes
: 
M

mean/ConstConst*
dtype0*
valueB *
_output_shapes
: 
S
mean/SumSumloss
mean/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
T0*
_class
loc:@mean/total*
use_locking( *
_output_shapes
: 
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
T0*
_class
loc:@mean/count*
use_locking( *
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
mean/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
[

mean/valueSelectmean/Greatermean/Divmean/value/e*
T0*
_output_shapes
: 
y
mean/Greater_1/yConst^mean/AssignAdd^mean/AssignAdd_1*
dtype0*
valueB
 *    *
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
mean/update_op/eConst^mean/AssignAdd^mean/AssignAdd_1*
dtype0*
valueB
 *    *
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
:���������
T
ToFloatCastoutput*

SrcT0	*

DstT0*#
_output_shapes
:���������
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
Y
ArgMaxArgMaxBiasAddArgMax/dimension*
T0*#
_output_shapes
:���������
H
subSuboutputArgMax*
T0	*#
_output_shapes
:���������
C
SquareSquaresub*
T0	*#
_output_shapes
:���������
g
mean_squared_error/ToFloatCastSquare*

SrcT0	*

DstT0*#
_output_shapes
:���������
]
mean_squared_error/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
z
mean_squared_error/totalVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
T0*+
_class!
loc:@mean_squared_error/total*
use_locking(*
_output_shapes
: *
validate_shape(
�
mean_squared_error/total/readIdentitymean_squared_error/total*
T0*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: 
_
mean_squared_error/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
z
mean_squared_error/countVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
T0*+
_class!
loc:@mean_squared_error/count*
use_locking(*
_output_shapes
: *
validate_shape(
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

SrcT0*

DstT0*
_output_shapes
: 
b
mean_squared_error/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*
T0*+
_class!
loc:@mean_squared_error/total*
use_locking( *
_output_shapes
: 
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
T0*+
_class!
loc:@mean_squared_error/count*
use_locking( *
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
mean_squared_error/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/Divmean_squared_error/value/e*
T0*
_output_shapes
: 
�
mean_squared_error/Greater_1/yConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
dtype0*
valueB
 *    *
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
mean_squared_error/update_op/eConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_squared_error/update_opSelectmean_squared_error/Greater_1mean_squared_error/Div_1mean_squared_error/update_op/e*
T0*
_output_shapes
: 
_
recall/true_positives/Equal/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 
y
recall/true_positives/EqualEqualoutputrecall/true_positives/Equal/y*
T0	*#
_output_shapes
:���������
a
recall/true_positives/Equal_1/yConst*
dtype0	*
value	B	 R*
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
recall/true_positives/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
}
recall/true_positives/countVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
T0*.
_class$
" loc:@recall/true_positives/count*
use_locking(*
_output_shapes
: *
validate_shape(
�
 recall/true_positives/count/readIdentityrecall/true_positives/count*
T0*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: 
�
recall/true_positives/ToFloatCast recall/true_positives/LogicalAnd*

SrcT0
*

DstT0*#
_output_shapes
:���������
m
recall/true_positives/IdentityIdentity recall/true_positives/count/read*
T0*
_output_shapes
: 
e
recall/true_positives/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
T0*.
_class$
" loc:@recall/true_positives/count*
use_locking( *
_output_shapes
: 
`
recall/false_negatives/Equal/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 
{
recall/false_negatives/EqualEqualoutputrecall/false_negatives/Equal/y*
T0	*#
_output_shapes
:���������
b
 recall/false_negatives/Equal_1/yConst*
dtype0	*
value	B	 R *
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
recall/false_negatives/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
~
recall/false_negatives/countVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
T0*/
_class%
#!loc:@recall/false_negatives/count*
use_locking(*
_output_shapes
: *
validate_shape(
�
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*
T0*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: 
�
recall/false_negatives/ToFloatCast!recall/false_negatives/LogicalAnd*

SrcT0
*

DstT0*#
_output_shapes
:���������
o
recall/false_negatives/IdentityIdentity!recall/false_negatives/count/read*
T0*
_output_shapes
: 
f
recall/false_negatives/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
T0*/
_class%
#!loc:@recall/false_negatives/count*
use_locking( *
_output_shapes
: 
s

recall/addAddrecall/true_positives/Identityrecall/false_negatives/Identity*
T0*
_output_shapes
: 
U
recall/Greater/yConst*
dtype0*
valueB
 *    *
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
recall/value/eConst*
dtype0*
valueB
 *    *
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
recall/Greater_1/yConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
dtype0*
valueB
 *    *
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
recall/update_op/eConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
dtype0*
valueB
 *    *
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

SrcT0
*

DstT0*#
_output_shapes
:���������
S
accuracy/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
p
accuracy/totalVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
T0*!
_class
loc:@accuracy/total*
use_locking(*
_output_shapes
: *
validate_shape(
s
accuracy/total/readIdentityaccuracy/total*
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
U
accuracy/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
p
accuracy/countVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
T0*!
_class
loc:@accuracy/count*
use_locking(*
_output_shapes
: *
validate_shape(
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

SrcT0*

DstT0*
_output_shapes
: 
X
accuracy/ConstConst*
dtype0*
valueB: *
_output_shapes
:
`
accuracy/SumSum	ToFloat_1accuracy/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
T0*!
_class
loc:@accuracy/total*
use_locking( *
_output_shapes
: 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
T0*!
_class
loc:@accuracy/count*
use_locking( *
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
accuracy/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
k
accuracy/valueSelectaccuracy/Greateraccuracy/Divaccuracy/value/e*
T0*
_output_shapes
: 
�
accuracy/Greater_1/yConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
dtype0*
valueB
 *    *
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
accuracy/update_op/eConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
w
accuracy/update_opSelectaccuracy/Greater_1accuracy/Div_1accuracy/update_op/e*
T0*
_output_shapes
: 
J
sub_1SubArgMaxoutput*
T0	*#
_output_shapes
:���������
?
AbsAbssub_1*
T0	*#
_output_shapes
:���������
e
mean_absolute_error/ToFloatCastAbs*

SrcT0	*

DstT0*#
_output_shapes
:���������
^
mean_absolute_error/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
{
mean_absolute_error/totalVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
T0*,
_class"
 loc:@mean_absolute_error/total*
use_locking(*
_output_shapes
: *
validate_shape(
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*
T0*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: 
`
mean_absolute_error/zeros_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
{
mean_absolute_error/countVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
T0*,
_class"
 loc:@mean_absolute_error/count*
use_locking(*
_output_shapes
: *
validate_shape(
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

SrcT0*

DstT0*
_output_shapes
: 
c
mean_absolute_error/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*
T0*,
_class"
 loc:@mean_absolute_error/total*
use_locking( *
_output_shapes
: 
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
T0*,
_class"
 loc:@mean_absolute_error/count*
use_locking( *
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
mean_absolute_error/value/eConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_absolute_error/valueSelectmean_absolute_error/Greatermean_absolute_error/Divmean_absolute_error/value/e*
T0*
_output_shapes
: 
�
mean_absolute_error/Greater_1/yConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
dtype0*
valueB
 *    *
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
mean_absolute_error/update_op/eConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
dtype0*
valueB
 *    *
_output_shapes
: 
�
mean_absolute_error/update_opSelectmean_absolute_error/Greater_1mean_absolute_error/Div_1mean_absolute_error/update_op/e*
T0*
_output_shapes
: 
b
 precision/true_positives/Equal/yConst*
dtype0	*
value	B	 R*
_output_shapes
: 

precision/true_positives/EqualEqualoutput precision/true_positives/Equal/y*
T0	*#
_output_shapes
:���������
d
"precision/true_positives/Equal_1/yConst*
dtype0	*
value	B	 R*
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
precision/true_positives/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
precision/true_positives/countVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
T0*1
_class'
%#loc:@precision/true_positives/count*
use_locking(*
_output_shapes
: *
validate_shape(
�
#precision/true_positives/count/readIdentityprecision/true_positives/count*
T0*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: 
�
 precision/true_positives/ToFloatCast#precision/true_positives/LogicalAnd*

SrcT0
*

DstT0*#
_output_shapes
:���������
s
!precision/true_positives/IdentityIdentity#precision/true_positives/count/read*
T0*
_output_shapes
: 
h
precision/true_positives/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
T0*1
_class'
%#loc:@precision/true_positives/count*
use_locking( *
_output_shapes
: 
c
!precision/false_positives/Equal/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
�
precision/false_positives/EqualEqualoutput!precision/false_positives/Equal/y*
T0	*#
_output_shapes
:���������
e
#precision/false_positives/Equal_1/yConst*
dtype0	*
value	B	 R*
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
precision/false_positives/zerosConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
precision/false_positives/countVariable*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
T0*2
_class(
&$loc:@precision/false_positives/count*
use_locking(*
_output_shapes
: *
validate_shape(
�
$precision/false_positives/count/readIdentityprecision/false_positives/count*
T0*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: 
�
!precision/false_positives/ToFloatCast$precision/false_positives/LogicalAnd*

SrcT0
*

DstT0*#
_output_shapes
:���������
u
"precision/false_positives/IdentityIdentity$precision/false_positives/count/read*
T0*
_output_shapes
: 
i
precision/false_positives/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
T0*2
_class(
&$loc:@precision/false_positives/count*
use_locking( *
_output_shapes
: 
|
precision/addAdd!precision/true_positives/Identity"precision/false_positives/Identity*
T0*
_output_shapes
: 
X
precision/Greater/yConst*
dtype0*
valueB
 *    *
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
precision/value/eConst*
dtype0*
valueB
 *    *
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
precision/Greater_1/yConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
dtype0*
valueB
 *    *
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
precision/update_op/eConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
dtype0*
valueB
 *    *
_output_shapes
: 
{
precision/update_opSelectprecision/Greater_1precision/Div_1precision/update_op/e*
T0*
_output_shapes
: 
�

group_depsNoOp^mean_squared_error/update_op^mean_absolute_error/update_op^precision/update_op^mean/update_op^recall/update_op^accuracy/update_op
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save/save/tensor_namesConst*
dtype0*�
value�B�Bcentered_bias_weightBdnn_logits/biasesBdnn_logits/weightsBglobal_stepBhiddenlayer_0/biasesBhiddenlayer_0/weightsBhiddenlayer_1/biasesBhiddenlayer_1/weights*
_output_shapes
:
�
save/save/shapes_and_slicesConst*
dtype0*i
value`B^B B15 0,15B10 15 0,10:0,15B B10 0,10B4096 10 0,4096:0,10B10 0,10B10 10 0,10:0,10*
_output_shapes
:
�
	save/save
SaveSlices
save/Constsave/save/tensor_namessave/save/shapes_and_slicescentered_bias_weightdnn_logits/biases/part_0/readdnn_logits/weights/part_0/readglobal_step hiddenlayer_0/biases/part_0/read!hiddenlayer_0/weights/part_0/read hiddenlayer_1/biases/part_0/read!hiddenlayer_1/weights/part_0/read*
T

2	
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
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
T0*'
_class
loc:@centered_bias_weight*
use_locking(*
_output_shapes
:*
validate_shape(
r
 save/restore_slice_1/tensor_nameConst*
dtype0*"
valueB Bdnn_logits/biases*
_output_shapes
: 
l
$save/restore_slice_1/shape_and_sliceConst*
dtype0*
valueB B15 0,15*
_output_shapes
: 
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
T0*+
_class!
loc:@dnn_logits/biases/part_0*
use_locking(*
_output_shapes
:*
validate_shape(
s
 save/restore_slice_2/tensor_nameConst*
dtype0*#
valueB Bdnn_logits/weights*
_output_shapes
: 
t
$save/restore_slice_2/shape_and_sliceConst*
dtype0* 
valueB B10 15 0,10:0,15*
_output_shapes
: 
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
T0*,
_class"
 loc:@dnn_logits/weights/part_0*
use_locking(*
_output_shapes

:
*
validate_shape(
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
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
dt0	*
_output_shapes
:*
preferred_shard���������
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
T0	*
_class
loc:@global_step*
use_locking(*
_output_shapes
: *
validate_shape(
u
 save/restore_slice_4/tensor_nameConst*
dtype0*%
valueB Bhiddenlayer_0/biases*
_output_shapes
: 
l
$save/restore_slice_4/shape_and_sliceConst*
dtype0*
valueB B10 0,10*
_output_shapes
: 
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
use_locking(*
_output_shapes
:
*
validate_shape(
v
 save/restore_slice_5/tensor_nameConst*
dtype0*&
valueB Bhiddenlayer_0/weights*
_output_shapes
: 
x
$save/restore_slice_5/shape_and_sliceConst*
dtype0*$
valueB B4096 10 0,4096:0,10*
_output_shapes
: 
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
use_locking(*
_output_shapes
:	� 
*
validate_shape(
u
 save/restore_slice_6/tensor_nameConst*
dtype0*%
valueB Bhiddenlayer_1/biases*
_output_shapes
: 
l
$save/restore_slice_6/shape_and_sliceConst*
dtype0*
valueB B10 0,10*
_output_shapes
: 
�
save/restore_slice_6RestoreSlice
save/Const save/restore_slice_6/tensor_name$save/restore_slice_6/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_6Assignhiddenlayer_1/biases/part_0save/restore_slice_6*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
use_locking(*
_output_shapes
:
*
validate_shape(
v
 save/restore_slice_7/tensor_nameConst*
dtype0*&
valueB Bhiddenlayer_1/weights*
_output_shapes
: 
t
$save/restore_slice_7/shape_and_sliceConst*
dtype0* 
valueB B10 10 0,10:0,10*
_output_shapes
: 
�
save/restore_slice_7RestoreSlice
save/Const save/restore_slice_7/tensor_name$save/restore_slice_7/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_7Assignhiddenlayer_1/weights/part_0save/restore_slice_7*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
use_locking(*
_output_shapes

:

*
validate_shape(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
�
initNoOp^mean/total/Assign^mean/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign^accuracy/total/Assign^accuracy/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign
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
IsVariableInitialized_3IsVariableInitializedhiddenlayer_1/weights/part_0*
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes
: 
�
IsVariableInitialized_4IsVariableInitializedhiddenlayer_1/biases/part_0*
dtype0*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
_output_shapes
: 
�
IsVariableInitialized_5IsVariableInitializeddnn_logits/weights/part_0*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
: 
�
IsVariableInitialized_6IsVariableInitializeddnn_logits/biases/part_0*
dtype0*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
: 
�
IsVariableInitialized_7IsVariableInitializedcentered_bias_weight*
dtype0*'
_class
loc:@centered_bias_weight*
_output_shapes
: 
�
IsVariableInitialized_8IsVariableInitialized
mean/total*
dtype0*
_class
loc:@mean/total*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitialized
mean/count*
dtype0*
_class
loc:@mean/count*
_output_shapes
: 
�
IsVariableInitialized_10IsVariableInitializedmean_squared_error/total*
dtype0*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: 
�
IsVariableInitialized_11IsVariableInitializedmean_squared_error/count*
dtype0*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: 
�
IsVariableInitialized_12IsVariableInitializedrecall/true_positives/count*
dtype0*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedrecall/false_negatives/count*
dtype0*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: 
�
IsVariableInitialized_14IsVariableInitializedaccuracy/total*
dtype0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedaccuracy/count*
dtype0*!
_class
loc:@accuracy/count*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedmean_absolute_error/total*
dtype0*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedmean_absolute_error/count*
dtype0*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: 
�
IsVariableInitialized_18IsVariableInitializedprecision/true_positives/count*
dtype0*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: 
�
IsVariableInitialized_19IsVariableInitializedprecision/false_positives/count*
dtype0*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: 
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17IsVariableInitialized_18IsVariableInitialized_19*
N*
T0
*

axis *
_output_shapes
:
:

LogicalNot
LogicalNotpack*
_output_shapes
:
�
Const_1Const*
dtype0*�
value�B�Bglobal_stepBhiddenlayer_0/weights/part_0Bhiddenlayer_0/biases/part_0Bhiddenlayer_1/weights/part_0Bhiddenlayer_1/biases/part_0Bdnn_logits/weights/part_0Bdnn_logits/biases/part_0Bcentered_bias_weightB
mean/totalB
mean/countBmean_squared_error/totalBmean_squared_error/countBrecall/true_positives/countBrecall/false_negatives/countBaccuracy/totalBaccuracy/countBmean_absolute_error/totalBmean_absolute_error/countBprecision/true_positives/countBprecision/false_positives/count*
_output_shapes
:
[
$report_uninitialized_variables/ShapeShapeConst_1*
T0*
_output_shapes
:
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
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
T0*
Index0*
_output_shapes
: 
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
%report_uninitialized_variables/concatConcat0report_uninitialized_variables/concat/concat_dim.report_uninitialized_variables/concat/values_0$report_uninitialized_variables/Slice*
N*
T0*
_output_shapes
:
�
&report_uninitialized_variables/ReshapeReshapeConst_1%report_uninitialized_variables/concat*
T0*
_output_shapes
:
�
.report_uninitialized_variables/Reshape_1/shapeConst*
dtype0*
valueB:
���������*
_output_shapes
:
�
(report_uninitialized_variables/Reshape_1Reshape
LogicalNot.report_uninitialized_variables/Reshape_1/shape*
T0
*
_output_shapes
:
�
$report_uninitialized_variables/WhereWhere(report_uninitialized_variables/Reshape_1*'
_output_shapes
:���������
�
&report_uninitialized_variables/SqueezeSqueeze$report_uninitialized_variables/Where*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*
Tparams0*
validate_indices(*
Tindices0	*#
_output_shapes
:���������"
�U�e       ��Zi	�x��`�A�*W


MSE�1B


MAE��n@

	precision    

loss�L�?

recall    

accuracy�<�>`�2e       ��Zi	����`�A�*W


MSE9�A


MAEs�A@

	precision    

loss�X�?

recall    

accuracy�X?�I[e       ��Zi	�;X�`�A�*W


MSEz�A


MAEI#@

	precision    

lossrx�?

recall    

accuracy� ?ZWBe       ��Zi	���`�A�	*W


MSE�oA


MAE���?

	precision    

lossp�o?

recall    

accuracy<E/?�5�te       ��Zi	9k�4�`�A�*W


MSE�RA


MAE���?

	precision  �?

loss~<V?

recall%I?

accuracyA�7?�"��e       ��Zi	ahOL�`�A�*W


MSE��6A


MAE&��?

	precision  �?

lossJvC?

recall�.:?

accuracy�d=?:�o;e       ��Zi	�8�c�`�A�*W


MSEH�#A


MAE�<�?

	precision  �?

loss95?

recall��Y?

accuracy�4B?S1��e       ��Zi	���{�`�A�*W


MSEKTA


MAEz��?

	precision  �?

loss�D*?

recall��^?

accuracyO�D?���Le       ��Zi	mtZ��`�A�*W


MSE1A


MAE�s�?

	precision  �?

loss��!?

recall��l?

accuracy�,H?��Te       ��Zi	����`�A�*W


MSE�gA


MAE�Ԟ?

	precision  �?

loss��?

recallj�q?

accuracy��K?A÷e       ��Zi	�����`�A�*W


MSE��A


MAE���?

	precision  �?

loss�4?

recall#,w?

accuracy1�M?3J��e       ��Zi	d�x��`�A�*W


MSE��A


MAE���?

	precision  �?

loss��?

recall>x?

accuracy��N?�}�e       ��Zi	���`�A�*W


MSEΦA


MAE���?

	precision  �?

loss��?

recall��x?

accuracyTP?�\<�e       ��Zi	���	�`�A� *W


MSE�"A


MAEp�?

	precision  �?

loss�W	?

recall`,y?

accuracy�|Q?��7ae       ��Zi	�li!�`�A�#*W


MSEL�A


MAE�?

	precision  �?

loss҈?

recall܄y?

accuracy�IR?�ae       ��Zi	5�'9�`�A�%*W


MSE���@


MAEm�?

	precision  �?

loss��?

recall��|?

accuracy.S?�?e       ��Zi	��P�`�A�'*W


MSE!��@


MAEJ��?

	precision  �?

lossΫ?

recall��y?

accuracy�S?���e       ��Zi		�h�`�A�**W


MSEk��@


MAEB �?

	precision  �?

loss�S�>

recallmz?

accuracye4T?%���e       ��Zi	��@��`�A�,*W


MSE0��@


MAE�F�?

	precision  �?

loss5��>

recall�.z?

accuracy��T?�;�Me       ��Zi	����`�A�.*W


MSE]L�@


MAE+)�?

	precision  �?

lossL�>

recall�/}?

accuracy�sU?��e       ��Zi	�9���`�A�1*W


MSEh��@


MAE��?

	precision  �?

lossy@�>

recall�F}?

accuracy�V?��m�e       ��Zi	�AT��`�A�3*W


MSE�9�@


MAE'�z?

	precision  �?

loss��>

recall_\}?

accuracy�W?�PD�e       ��Zi	��`�A�5*W


MSE�O�@


MAE�kv?

	precision  �?

loss��>

recall�p}?

accuracy��W?H1B9e       ��Zi	F7���`�A�8*W


MSE��@


MAE�Wq?

	precision  �?

loss�f�>

recall}}}?

accuracy�MX?l��e       ��Zi	{4S�`�A�:*W


MSE7|�@


MAE�yq?

	precision  �?

loss��>

recall��}?

accuracy��X?}��%e       ��Zi	JG
&�`�A�<*W


MSE�J�@


MAE��q?

	precision  �?

lossA��>

recallى}?

accuracyY�X?-��we       ��Zi	 �=�`�A�?*W


MSE��@


MAEQo?

	precision  �?

loss��>

recall��}?

accuracy Y?���Oe       ��Zi	�
oU�`�A�A*W


MSE(.�@


MAE-Zl?

	precision  �?

loss�)�>

recall��}?

accuracy�Y?,��*e       ��Zi	�W'm�`�A�C*W


MSE�7�@


MAE��j?

	precision  �?

lossr��>

recall8�}?

accuracyL�Y?�اVe       ��Zi	X�Ȅ�`�A�F*W


MSE�H�@


MAEjk?

	precision  �?

lossɒ�>

recall��}?

accuracyL�Y?6��!e       ��Zi	� s��`�A�H*W


MSE��@


MAE,�j?

	precision  �?

loss&(�>

recall��}?

accuracy��Y?���e       ��Zi	h���`�A�K*W


MSE�q�@


MAEk?

	precision  �?

loss�h�>

recall۶}?

accuracyL�Y?v���e       ��Zi	����`�A�M*W


MSE��@


MAE^i?

	precision  �?

lossW}�>

recall	�}?

accuracyS!Z?-L�e       ��Zi	0
{��`�A�O*W


MSE`G�@


MAEch?

	precision  �?

loss���>

recall۶}?

accuracy*qZ?&���e       ��Zi	��!��`�A�R*W


MSE�@


MAEֻd?

	precision  �?

lossp�>

recall�}?

accuracyo[?���e       ��Zi	����`�A�T*W


MSE�b�@


MAE��c?

	precision  �?

loss7��>

recall	�}?

accuracyw>[?���e       ��Zi	�1�*�`�A�V*W


MSEjW�@


MAE�d?

	precision  �?

loss���>

recall	�}?

accuracyw>[?

e       ��Zi	,�2B�`�A�Y*W


MSE}��@


MAE�1b?

	precision  �?

loss11�>

recall�}?

accuracy�[?���}e       ��Zi	���Y�`�A�[*W


MSE���@


MAEV_?

	precision  �?

loss���>

recall	�}?

accuracy�\?�a��e       ��Zi	X��q�`�A�]*W


MSE	s�@


MAE��]?

	precision  �?

loss���>

recall�}?

accuracy2P\?ح�e       ��Zi	�Vd��`�A�`*W


MSE4��@


MAEG�\?

	precision  �?

loss�8�>

recall�}?

accuracy�D\?����e       ��Zi	����`�A�b*W


MSER��@


MAEo[?

	precision  �?

loss���>

recall�}?

accuracy9�\?��e       ��Zi	\-ܸ�`�A�d*W


MSE��@


MAE7=Y?

	precision  �?

loss���>

recall	�}?

accuracy�\?�7XUe       ��Zi	x����`�A�g*W


MSEV�@


MAEa�X?

	precision  �?

lossX��>

recall�}?

accuracyw�\?<��e       ��Zi	L�&��`�A�i*W


MSE��@


MAEh&Y?

	precision  �?

loss;x�>

recall�}?

accuracy�\?�b�^e       ��Zi	�G���`�A�k*W


MSE9��@


MAEYX?

	precision  �?

loss���>

recall�}?

accuracyG�\?�-Oe       ��Zi	�]�`�A�n*W


MSE�w�@


MAE��V?

	precision  �?

loss���>

recall�}?

accuracyN4]?<!�We       ��Zi	s�/�`�A�p*W


MSE���@


MAE�,Z?

	precision  �?

loss��>

recall	�}?

accuracy�\?\�}]e       ��Zi	�}�F�`�A�r*W


MSE���@


MAEFU[?

	precision  �?

loss��>

recall	�}?

accuracy��\?��v6e       ��Zi	��O^�`�A�u*W


MSE$��@


MAE�_?

	precision  �?

loss���>

recall	�}?

accuracy��[?�Ak]e       ��Zi	���u�`�A�w*W


MSEX;�@


MAE�WV?

	precision  �?

loss���>

recall��}?

accuracyN4]?��e       ��Zi	/>���`�A�y*W


MSEW��@


MAE4KT?

	precision  �?

loss�u�>

recall��}?

accuracy��]?��ee       ��Zi	��K��`�A�|*W


MSE:8�@


MAE��P?

	precision  �?

loss!S�>

recall��}?

accuracy�^?��Ke       ��Zi	Ǽ��`�A�~*W


MSE,��@


MAE�(T?

	precision  �?

losso`�>

recall��}?

accuracy��]?�b��f       r;�j	�O���`�A�*W


MSE��@


MAE�Mj?

	precision  �?

losssZ�>

recall8�}?

accuracy��Z?#ǔf       r;�j	 |i��`�A��*W


MSE�@�@


MAE��P?

	precision  �?

loss���>

recallG�}?

accuracy�^?�~oLf       r;�j	��$�`�A̅*W


MSE��@


MAE:8Q?

	precision  �?

loss��>

recall��}?

accuracyc�]?�X[f       r;�j	W��`�A��*W


MSEc��@


MAE%�P?

	precision  �?

loss6��>

recall��}?

accuracy�^?q��f       r;�j	~3�`�A��*W


MSE^�@


MAE@�O?

	precision  �?

loss�i�>

recallG�}?

accuracy:/^?p���f       r;�j	'�*K�`�AЌ*W


MSE�'�@


MAE�CQ?

	precision  �?

lossQ�>

recalla�}?

accuracyj^?3ğ�f       r;�j	B�b�`�A��*W


MSEgw�@


MAEBS?

	precision  �?

loss��>

recalla�}?

accuracy3�]?��_�f       r;�j	SC�z�`�A��*W


MSE�V�@


MAEy9S?

	precision  �?

loss�8�>

recall��}?

accuracy��]?�RpVf       r;�j	��4��`�Aԓ*W


MSE�
�@


MAE��[?

	precision  �?

loss�R�>

recall0�}?

accuracy��\?
�sf       r;�j	�n٩�`�A��*W


MSER��@


MAE�}\?

	precision  �?

loss ��>

recall|�}?

accuracyw�\?C�;f       r;�j	�i���`�A��*W


MSEp��@


MAE�xT?

	precision  �?

loss���>

recall��}?

accuracy��]?=ȗf       r;�j	Fx.��`�Aؚ*W


MSE��@


MAE�rS?

	precision  �?

loss���>

recall��}?

accuracy3�]?��2qf       r;�j	n����`�A��*W


MSE���@


MAECcV?

	precision  �?

lossD��>

recall��}?

accuracy��]?�p4f       r;�j	늉�`�A��*W


MSE�+�@


MAEa�M?

	precision  �?

loss�>

recalla�}?

accuracyH�^?K���f       r;�j	P�& �`�Aܡ*W


MSE���@


MAE�O?

	precision  �?

loss���>

recall��}?

accuracy�\^?Π��f       r;�j	���7�`�A��*W


MSE��@


MAE�jP?

	precision  �?

loss��>

recalla�}?

accuracy:/^?��8�f       r;�j	��wO�`�A��*W


MSEu��@


MAE��P?

	precision  �?

lossu��>

recall��}?

accuracy�#^?��7f       r;�j	�6g�`�A�*W


MSE��@


MAE��P?

	precision  �?

lossɤ�>

recall��}?

accuracy^?S��f       r;�j	v%�~�`�A��*W


MSE��@


MAEUvP?

	precision  �?

loss��>

recall��}?

accuracy:/^?��\f       r;�j	�����`�A��*W


MSEh�@


MAE�Q?

	precision  �?

loss$�>

recalla�}?

accuracy�^?d ;ff       r;�j	��=��`�A�*W


MSE���@


MAEXhU?

	precision  �?

loss ��>

recalla�}?

accuracy��]?����f       r;�j	�����`�A��*W


MSEd�@


MAE�?T?

	precision  �?

loss�%�>

recalla�}?

accuracy,�]?x .$f       r;�j	�����`�A��*W


MSE��@


MAEı]?

	precision  �?

loss�*�>

recall0�}?

accuracy	�\?�y�f       r;�j	��8��`�A�*W


MSE|��@


MAE��Q?

	precision  �?

loss�Y�>

recalla�}?

accuracyj^?��ښf       r;�j	���`�A��*W


MSE��@


MAE�wR?

	precision  �?

loss��>

recalla�}?

accuracy3�]?Ս)^f       r;�j	�be$�`�A��*W


MSE1��@


MAE̙R?

	precision  �?

lossƐ�>

recalla�}?

accuracyc�]?r��8f       r;�j	�<�`�A�*W


MSE\��@


MAE�wR?

	precision  �?

loss���>

recalla�}?

accuracy��]?hr^/f       r;�j	Q:�S�`�A��*W


MSE�M�@


MAEJ�T?

	precision  �?

loss�0�>

recall��}?

accuracy,�]?1�Pf       r;�j	U�yk�`�A��*W


MSE�j�@


MAE�S?

	precision  �?

loss���>

recalla�}?

accuracy�^?}
f       r;�j	�@��`�A��*W


MSEz��@


MAE�0W?

	precision  �?

lossf��>

recall0�}?

accuracy%�]?��oJf       r;�j	�����`�A��*W


MSE�V�@


MAE��R?

	precision  �?

lossh�>

recalla�}?

accuracy�:^?9M�	f       r;�j	�i��`�A��*W


MSE'v�@


MAE�`?

	precision  �?

loss??

recall0�}?

accuracyir\?j6�f       r;�j	�B��`�A��*W


MSE:A�@


MAE�wR?

	precision  �?

loss3��>

recalla�}?

accuracyqQ^?w�׉f       r;�j	|	���`�A��*W


MSE"��@


MAE@�v?

	precision  �?

loss8�?

recall|�}?

accuracy�jY?��A�f       r;�j	ʨv��`�A��*W


MSEֻ�@


MAE4�R?

	precision  �?

loss�4�>

recallG�}?

accuracyqQ^?k��Kf       r;�j	q1+�`�A��*W


MSE���@


MAE;�R?

	precision  �?

loss(9�>

recall��}?

accuracy	F^?��~f       r;�j	U2�(�`�A��*W


MSE���@


MAE�Q?

	precision  �?

lossqL�>

recall��}?

accuracyAh^?P�	�f       r;�j	�]o@�`�A��*W


MSE�o�@


MAE�Q?

	precision  �?

lossBa�>

recall��}?

accuracyAh^?���f       r;�j	��X�`�A��*W


MSE��@


MAE�,Q?

	precision  �?

loss�~�>

recall��}?

accuracy�s^?�ק�f       r;�j	��o�`�A��*W


MSE���@


MAE,�P?

	precision  �?

loss�I ?

recallG�}?

accuracy^?�7��f       r;�j	�n��`�A��*W


MSE���@


MAE+ O?

	precision  �?

loss�� ?

recallG�}?

accuracy��^?߆f       r;�j	����`�A��*W


MSE���@


MAEN=P?

	precision  �?

loss�l?

recallG�}?

accuracy^?��f       r;�j	�jԶ�`�A��*W


MSE���@


MAEQ?

	precision  �?

loss�?

recallG�}?

accuracy�\^?��:�f       r;�j	�����`�A��*W


MSE��@


MAE�|Q?

	precision  �?

loss��?

recallG�}?

accuracy	F^?�(H�f       r;�j	�jH��`�A��*W


MSE���@


MAE�'R?

	precision  �?

loss�\?

recall��}?

accuracy�:^?b}Uf       r;�j	�;���`�A��*W


MSE�V�@


MAE̙R?

	precision  �?

loss�?

recall��}?

accuracy�#^?�z2�f       r;�j	�Þ�`�A��*W


MSEf��@


MAE&�S?

	precision  �?

loss�?

recalla�}?

accuracy^?[�Of       r;�j	d�Z-�`�A��*W


MSEsy�@


MAEgS?

	precision  �?

lossg\?

recall��}?

accuracyj^?�E.�f       r;�j	J9	E�`�A��*W


MSE�.�@


MAE(%W?

	precision  �?

loss�?

recalla�}?

accuracy��]?v�mnf       r;�j	}��\�`�A��*W


MSEgJ�@


MAE�DS?

	precision  �?

loss�P?

recall��}?

accuracyj^?���f       r;�j	�ft�`�A��*W


MSE��@


MAEAh^?

	precision  �?

loss�d
?

recall0�}?

accuracy��\?A�*f       r;�j	�-��`�A��*W


MSE�>�@


MAEd�R?

	precision  �?

loss�?

recallG�}?

accuracy	F^?/���f       r;�j	?E���`�A��*W


MSE�U�@


MAE�Y?

	precision  �?

loss�w	?

recall��}?

accuracy�V]?޵Af       r;�j	�yT��`�A��*W


MSE�F�@


MAEVR?

	precision  �?

lossW�?

recalla�}?

accuracy	F^?,ypf       r;�j	[���`�A��*W


MSEjE�@


MAE8�Z?

	precision  �?

loss�L?

recall��}?

accuracy�?]?�7�Wf       r;�j	�����`�A�*W


MSE�+�@


MAE��Q?

	precision  �?

loss>y	?

recall��}?

accuracyqQ^?��f       r;�j	y#Q�`�A��*W


MSEz��@


MAE>vY?

	precision  �?

loss�)?

recall��}?

accuracy�a]?�f       r;�j	����`�A��*W


MSE��@


MAE��Q?

	precision  �?

lossk�
?

recall��}?

accuracy	F^? ��f       r;�j	ꌍ1�`�A�*W


MSElI�@


MAEtLV?

	precision  �?

loss�^?

recalla�}?

accuracy��]?Xl��f       r;�j	݃2I�`�A��*W


MSEW��@


MAE̙R?

	precision  �?

loss#>?

recalla�}?

accuracy:/^?����f       r;�j	���`�`�Ač*W


MSE���@


MAE��U?

	precision  �?

loss��?

recalla�}?

accuracy��]?�=of       r;�j	#�x�`�A��*W


MSE�o�@


MAE��Q?

	precision  �?

loss�7?

recalla�}?

accuracy:/^?���f       r;�j	
/I��`�A��*W


MSE�z�@


MAE_�U?

	precision  �?

loss�?

recalla�}?

accuracy��]?���Xf       r;�j	8*���`�AȔ*W


MSE���@


MAE��Q?

	precision  �?

losso]?

recall��}?

accuracy:/^?D��f       r;�j	�����`�A��*W


MSEL��@


MAE�#U?

	precision  �?

loss��?

recalla�}?

accuracy��]?���_f       r;�j	��H��`�A��*W


MSE�I�@


MAEd�R?

	precision  �?

lossB�?

recalla�}?

accuracy�#^?Y4f       r;�j	F����`�A̛*W


MSEe�@


MAEtLV?

	precision  �?

loss@?

recalla�}?

accuracy��]?.Kf       r;�j	�|��`�A��*W


MSE���@


MAE�R?

	precision  �?

loss�?

recalla�}?

accuracyj^?�D�f       r;�j	�Z�`�A��*W


MSE
4�@


MAE��U?

	precision  �?

lossWr?

recalla�}?

accuracyı]?�T ]f       r;�j	{�6�`�AТ*W


MSE���@


MAE�T?

	precision  �?

losstN?

recalla�}?

accuracy��]?��z�f       r;�j	hx�M�`�A��*W


MSEӷ�@


MAEg�W?

	precision  �?

loss�?

recall  �?

accuracy��]?Ήt�f       r;�j	1�te�`�A��*W


MSE���@


MAE^�S?

	precision  �?

loss\�?

recall  �?

accuracy��]?�1��f       r;�j	@�)}�`�Aԩ*W


MSE5��@


MAER�V?

	precision  �?

loss{?

recall  �?

accuracy\�]?���f       r;�j	`��`�A��*W


MSE���@


MAEJ�T?

	precision  �?

loss��?

recall  �?

accuracy��]?q�\�f       r;�j	ݸ���`�A��*W


MSEJ�@


MAE�W?

	precision  �?

loss�?

recall  �?

accuracy\�]?�A��f       r;�j		/-��`�Aذ*W


MSE6��@


MAE��T?

	precision  �?

loss��?

recall  �?

accuracy��]?�rF�f       r;�j	����`�A��*W


MSEJ�@


MAE�W?

	precision  �?

lossߌ?

recall  �?

accuracy\�]?ԧsf       r;�j	����`�A��*W


MSEa��@


MAE��V?

	precision  �?

loss��?

recall  �?

accuracy��]?4Zf       r;�j	!�>�`�Aܷ*W


MSE�@


MAE�:U?

	precision  �?

lossU�?

recall  �?

accuracy,�]?��U�f       r;�j	�9�"�`�A��*W


MSE&�@


MAEYW?

	precision  �?

loss�?

recall  �?

accuracy��]?���f       r;�j	]�:�`�A��*W


MSE�y�@


MAEtLV?

	precision  �?

loss�?

recall  �?

accuracy\�]?��iIf       r;�j	h�:R�`�A�*W


MSE50�@


MAE�dX?

	precision  �?

lossg?

recall  �?

accuracy��]?anu�f       r;�j	���i�`�A��*W


MSE^�@


MAE��V?

	precision  �?

loss�Z?

recall  �?

accuracyı]?8+�f       r;�j	�����`�A��*W


MSE�g�@


MAE��X?

	precision  �?

loss��?

recall  �?

accuracy��]?�v�pf       r;�j	�W^��`�A��*W


MSE�e�@


MAE�W?

	precision  �?

lossڧ?

recall  �?

accuracy��]?o��f       r;�j	
d��`�A��*W


MSE�x�@


MAE��X?

	precision  �?

loss�?

recall  �?

accuracy%�]?�`
f       r;�j	�o���`�A��*W


MSE�l�@


MAE��W?

	precision  �?

loss�??

recall  �?

accuracy��]?4���f       r;�j	�i��`�A��*W


MSEt^�@


MAEo_Y?

	precision  �?

loss�p?

recall  �?

accuracy�x]?�'��f       r;�j	 e��`�A��*W


MSE~w�@


MAE"�X?

	precision  �?

loss��?

recall  �?

accuracy��]?��#�f       r;�j	ó�`�A��*W


MSE���@


MAEa�X?

	precision  �?

loss�i?

recall  �?

accuracy%�]?�a�f       r;�j	#AM'�`�A��*W


MSE��@


MAE΋W?

	precision  �?

lossT�?

recall  �?

accuracyı]?c~�&f       r;�j	�)�>�`�A��*W


MSE]p�@


MAEYX?

	precision  �?

loss)� ?

recall  �?

accuracy\�]?r��f       r;�j	��V�`�A��*W


MSE���@


MAEa�X?

	precision  �?

loss�]!?

recall  �?

accuracy��]?_��f       r;�j	]�On�`�A��*W


MSE�D�@


MAE�HY?

	precision  �?

loss��!?

recall  �?

accuracy%�]?�S�?f       r;�j	a$��`�A��*W


MSE���@


MAE�
Z?

	precision  �?

loss�"?

recall  �?

accuracy�a]?�}f       r;�j	�#���`�A��*W


MSE��@


MAEY�X?

	precision  �?

loss�~#?

recall  �?

accuracy\�]?&��f       r;�j	�����`�A��*W


MSEqH�@


MAEKBX?

	precision  �?

loss}�#?

recall  �?

accuracy\�]?t�+�f       r;�j	N�N��`�A��*W


MSE]p�@


MAEKBX?

	precision  �?

loss�$$?

recall  �?

accuracy\�]?�� �f       r;�j	��&��`�A��*W


MSE���@


MAEY�X?

	precision  �?

loss8%?

recall  �?

accuracy��]?_H�f       r;�j	_W���`�A��*W


MSE�&�@


MAEh&Y?

	precision  �?

loss��%?

recall  �?

accuracy%�]?���f       r;�j	߬��`�A��*W


MSE���@


MAE��X?

	precision  �?

loss,b&?

recall  �?

accuracy��]?n���f       r;�j	}�L,�`�A��*W


MSE�{�@


MAEYX?

	precision  �?

loss��&?

recall  �?

accuracy��]?��O�f       r;�j	8�D�`�A��*W


MSE��@


MAE��Y?

	precision  �?

lossH�'?

recall  �?

accuracy�x]?{&f       r;�j	3 �[�`�A��*W


MSE7F�@


MAEh&Y?

	precision  �?

loss�W(?

recall  �?

accuracy%�]?^5=f       r;�j	��js�`�A��*W


MSEu��@


MAEY�X?

	precision  �?

loss�)?

recall  �?

accuracy��]?���Tf       r;�j	s���`�A��*W


MSE��@


MAEY�X?

	precision  �?

loss��)?

recall  �?

accuracy%�]?(�6�f       r;�j	��â�`�A��*W


MSEk��@


MAE)�X?

	precision  �?

loss��*?

recall  �?

accuracy%�]?���f       r;�j	��p��`�A��*W


MSEC��@


MAE"�X?

	precision  �?

lossh+?

recall  �?

accuracy��]?�q�Lf       r;�j	|7��`�A��*W


MSE[ �@


MAEa�X?

	precision  �?

loss]�+?

recall  �?

accuracy%�]?j���f       r;�j	;X���`�A��*W


MSEt^�@


MAE>vY?

	precision  �?

loss0,?

recall  �?

accuracy�a]?a;�f       r;�j	���`�A܂*W


MSE���@


MAE��X?

	precision  �?

loss�,?

recall  �?

accuracy%�]?����f       r;�j	1�`�A��*W


MSE�X�@


MAE>vY?

	precision  �?

lossAt-?

recall  �?

accuracy�a]?-�yJ