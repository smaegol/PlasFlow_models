       �K"	  @��`�Abrain.Event:2ZI��5�      ~�?�	�$c��`�A"��
m
global_stepVariable*
shape: *
	container *
dtype0	*
shared_name *
_output_shapes
: 

global_step/Initializer/zerosConst*
value	B	 R *
_output_shapes
: *
dtype0	*
_class
loc:@global_step
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_output_shapes
: *
T0	*
use_locking(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
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
valueB"����   *
dtype0*
_output_shapes
:
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*
T0*(
_output_shapes
:���������� 
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
value	B :*
dtype0*
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
num*
_output_shapes
: : *
T0*

axis 
�
hiddenlayer_0/weights/part_0Variable*
shape:	� *
	container *
dtype0*
shared_name *
_output_shapes
:	� 
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *�b�*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *�b=*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
seed2*
dtype0*
T0*

seed**
_output_shapes
:	� */
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
:	� *
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
_output_shapes
:	� *
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	� *
T0*
use_locking(*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
_output_shapes
:	� *
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
n
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
T0*
_output_shapes
:	� 
�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������
�
hiddenlayer_0/biases/part_0Variable*
shape:*
	container *
dtype0*
shared_name *
_output_shapes
:
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*
_output_shapes
:*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
g
hiddenlayer_0/biasesIdentity hiddenlayer_0/biases/part_0/read*
T0*
_output_shapes
:
�
#hiddenlayer_0/hiddenlayer_0/BiasAddBiasAdd"hiddenlayer_0/hiddenlayer_0/MatMulhiddenlayer_0/biases*
data_formatNHWC*
T0*'
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
zero_fraction/CastCastzero_fraction/Equal*'
_output_shapes
:���������*

DstT0*

SrcT0

d
zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
	keep_dims( *
T0*
_output_shapes
: 
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
q
!hiddenlayer_1/hiddenlayer_1/ShapeShape hiddenlayer_0/hiddenlayer_0/Relu*
T0*
_output_shapes
:
�
"hiddenlayer_1/hiddenlayer_1/unpackUnpack!hiddenlayer_1/hiddenlayer_1/Shape*	
num*
_output_shapes
: : *
T0*

axis 
�
hiddenlayer_1/weights/part_0Variable*
shape
:*
	container *
dtype0*
shared_name *
_output_shapes

:
�
=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *�Kƾ*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *�K�>*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
Ehiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
seed2.*
dtype0*
T0*

seed**
_output_shapes

:*/
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
T0*
use_locking(*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
!hiddenlayer_1/weights/part_0/readIdentityhiddenlayer_1/weights/part_0*
_output_shapes

:*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
m
hiddenlayer_1/weightsIdentity!hiddenlayer_1/weights/part_0/read*
T0*
_output_shapes

:
�
"hiddenlayer_1/hiddenlayer_1/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reluhiddenlayer_1/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������
�
hiddenlayer_1/biases/part_0Variable*
shape:*
	container *
dtype0*
shared_name *
_output_shapes
:
�
-hiddenlayer_1/biases/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*.
_class$
" loc:@hiddenlayer_1/biases/part_0
�
"hiddenlayer_1/biases/part_0/AssignAssignhiddenlayer_1/biases/part_0-hiddenlayer_1/biases/part_0/Initializer/zeros*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*.
_class$
" loc:@hiddenlayer_1/biases/part_0
�
 hiddenlayer_1/biases/part_0/readIdentityhiddenlayer_1/biases/part_0*
_output_shapes
:*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0
g
hiddenlayer_1/biasesIdentity hiddenlayer_1/biases/part_0/read*
T0*
_output_shapes
:
�
#hiddenlayer_1/hiddenlayer_1/BiasAddBiasAdd"hiddenlayer_1/hiddenlayer_1/MatMulhiddenlayer_1/biases*
data_formatNHWC*
T0*'
_output_shapes
:���������

 hiddenlayer_1/hiddenlayer_1/ReluRelu#hiddenlayer_1/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:���������
Y
zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
zero_fraction_1/EqualEqual hiddenlayer_1/hiddenlayer_1/Reluzero_fraction_1/zero*
T0*'
_output_shapes
:���������
t
zero_fraction_1/CastCastzero_fraction_1/Equal*'
_output_shapes
:���������*

DstT0*

SrcT0

f
zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
	keep_dims( *
T0*
_output_shapes
: 
z
ScalarSummary_1/tagsConst*6
value-B+ B%hiddenlayer_1:fraction_of_zero_values*
dtype0*
_output_shapes
: 
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
T0*
_output_shapes
: 
o
HistogramSummary_1/tagConst*)
value B Bhiddenlayer_1:activation*
dtype0*
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
num*
_output_shapes
: : *
T0*

axis 
�
dnn_logits/weights/part_0Variable*
shape
:*
	container *
dtype0*
shared_name *
_output_shapes

:
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *��Ӿ*
_output_shapes
: *
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *���>*
_output_shapes
: *
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*
seed2L*
dtype0*
T0*

seed**
_output_shapes

:*,
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

:*
T0*,
_class"
 loc:@dnn_logits/weights/part_0
�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*
_output_shapes

:*
T0*,
_class"
 loc:@dnn_logits/weights/part_0
�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
validate_shape(*
_output_shapes

:*
T0*
use_locking(*,
_class"
 loc:@dnn_logits/weights/part_0
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*
_output_shapes

:*
T0*,
_class"
 loc:@dnn_logits/weights/part_0
g
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
T0*
_output_shapes

:
�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_1/hiddenlayer_1/Reludnn_logits/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:���������
�
dnn_logits/biases/part_0Variable*
shape:*
	container *
dtype0*
shared_name *
_output_shapes
:
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*+
_class!
loc:@dnn_logits/biases/part_0
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*+
_class!
loc:@dnn_logits/biases/part_0
�
dnn_logits/biases/part_0/readIdentitydnn_logits/biases/part_0*
_output_shapes
:*
T0*+
_class!
loc:@dnn_logits/biases/part_0
a
dnn_logits/biasesIdentitydnn_logits/biases/part_0/read*
T0*
_output_shapes
:
�
dnn_logits/dnn_logits/BiasAddBiasAdddnn_logits/dnn_logits/MatMuldnn_logits/biases*
data_formatNHWC*
T0*'
_output_shapes
:���������
Y
zero_fraction_2/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
zero_fraction_2/EqualEqualdnn_logits/dnn_logits/BiasAddzero_fraction_2/zero*
T0*'
_output_shapes
:���������
t
zero_fraction_2/CastCastzero_fraction_2/Equal*'
_output_shapes
:���������*

DstT0*

SrcT0

f
zero_fraction_2/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
{
zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
	keep_dims( *
T0*
_output_shapes
: 
w
ScalarSummary_2/tagsConst*3
value*B( B"dnn_logits:fraction_of_zero_values*
dtype0*
_output_shapes
: 
m
ScalarSummary_2ScalarSummaryScalarSummary_2/tagszero_fraction_2/Mean*
T0*
_output_shapes
: 
l
HistogramSummary_2/tagConst*&
valueB Bdnn_logits:activation*
dtype0*
_output_shapes
: 
~
HistogramSummary_2HistogramSummaryHistogramSummary_2/tagdnn_logits/dnn_logits/BiasAdd*
T0*
_output_shapes
: 
R
zerosConst*
valueB*    *
dtype0*
_output_shapes
:
~
centered_bias_weightVariable*
shape:*
	container *
dtype0*
shared_name *
_output_shapes
:
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*'
_class
loc:@centered_bias_weight
�
centered_bias_weight/readIdentitycentered_bias_weight*
_output_shapes
:*
T0*'
_class
loc:@centered_bias_weight
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
:
�
ScalarSummary_3/tagsConst*�
value�B�Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14*
dtype0*
_output_shapes
:
`
ScalarSummary_3ScalarSummaryScalarSummary_3/tagsReshape*
T0*
_output_shapes
: 
�
BiasAddBiasAdddnn_logits/dnn_logits/BiasAddcentered_bias_weight/read*
data_formatNHWC*
T0*'
_output_shapes
:���������
_
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeoutput*
T0	*
_output_shapes
:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsBiasAddoutput*
Tlabels0	*
T0*6
_output_shapes$
":���������:���������
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
	keep_dims( *
T0*
_output_shapes
: 
O

mean/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l

mean/totalVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
mean/total/AssignAssign
mean/total
mean/zeros*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*
_class
loc:@mean/total
g
mean/total/readIdentity
mean/total*
_output_shapes
: *
T0*
_class
loc:@mean/total
Q
mean/zeros_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
l

mean/countVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*
_class
loc:@mean/count
g
mean/count/readIdentity
mean/count*
_output_shapes
: *
T0*
_class
loc:@mean/count
8
	mean/SizeSizeloss*
T0*
_output_shapes
: 
Q
mean/ToFloat_1Cast	mean/Size*
_output_shapes
: *

DstT0*

SrcT0
M

mean/ConstConst*
valueB *
dtype0*
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
mean/totalmean/Sum*
_output_shapes
: *
T0*
use_locking( *
_class
loc:@mean/total
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
_output_shapes
: *
T0*
use_locking( *
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
:���������
T
ToFloatCastoutput*#
_output_shapes
:���������*

DstT0*

SrcT0	
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
mean_squared_error/ToFloatCastSquare*#
_output_shapes
:���������*

DstT0*

SrcT0	
]
mean_squared_error/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
mean_squared_error/totalVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*+
_class!
loc:@mean_squared_error/total
�
mean_squared_error/total/readIdentitymean_squared_error/total*
_output_shapes
: *
T0*+
_class!
loc:@mean_squared_error/total
_
mean_squared_error/zeros_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
z
mean_squared_error/countVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*+
_class!
loc:@mean_squared_error/count
�
mean_squared_error/count/readIdentitymean_squared_error/count*
_output_shapes
: *
T0*+
_class!
loc:@mean_squared_error/count
\
mean_squared_error/SizeSizemean_squared_error/ToFloat*
T0*
_output_shapes
: 
m
mean_squared_error/ToFloat_1Castmean_squared_error/Size*
_output_shapes
: *

DstT0*

SrcT0
b
mean_squared_error/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*
_output_shapes
: *
T0*
use_locking( *+
_class!
loc:@mean_squared_error/total
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
_output_shapes
: *
T0*
use_locking( *+
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
recall/true_positives/countVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*.
_class$
" loc:@recall/true_positives/count
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

DstT0*

SrcT0

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
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
_output_shapes
: *
T0*
use_locking( *.
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
recall/false_negatives/countVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*/
_class%
#!loc:@recall/false_negatives/count
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

DstT0*

SrcT0

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
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
_output_shapes
: *
T0*
use_locking( */
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
mean_absolute_error/ToFloatCastAbs*#
_output_shapes
:���������*

DstT0*

SrcT0	
^
mean_absolute_error/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
{
mean_absolute_error/totalVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*,
_class"
 loc:@mean_absolute_error/total
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*
_output_shapes
: *
T0*,
_class"
 loc:@mean_absolute_error/total
`
mean_absolute_error/zeros_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
{
mean_absolute_error/countVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*,
_class"
 loc:@mean_absolute_error/count
�
mean_absolute_error/count/readIdentitymean_absolute_error/count*
_output_shapes
: *
T0*,
_class"
 loc:@mean_absolute_error/count
^
mean_absolute_error/SizeSizemean_absolute_error/ToFloat*
T0*
_output_shapes
: 
o
mean_absolute_error/ToFloat_1Castmean_absolute_error/Size*
_output_shapes
: *

DstT0*

SrcT0
c
mean_absolute_error/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*
_output_shapes
: *
T0*
use_locking( *,
_class"
 loc:@mean_absolute_error/total
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
_output_shapes
: *
T0*
use_locking( *,
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
L
EqualEqualArgMaxoutput*
T0	*#
_output_shapes
:���������
U
	ToFloat_1CastEqual*#
_output_shapes
:���������*

DstT0*

SrcT0

S
accuracy/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
accuracy/totalVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*!
_class
loc:@accuracy/total
s
accuracy/total/readIdentityaccuracy/total*
_output_shapes
: *
T0*!
_class
loc:@accuracy/total
U
accuracy/zeros_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
p
accuracy/countVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*!
_class
loc:@accuracy/count
s
accuracy/count/readIdentityaccuracy/count*
_output_shapes
: *
T0*!
_class
loc:@accuracy/count
A
accuracy/SizeSize	ToFloat_1*
T0*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*
_output_shapes
: *

DstT0*

SrcT0
X
accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
`
accuracy/SumSum	ToFloat_1accuracy/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
_output_shapes
: *
T0*
use_locking( *!
_class
loc:@accuracy/total
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
_output_shapes
: *
T0*
use_locking( *!
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
precision/true_positives/countVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*1
_class'
%#loc:@precision/true_positives/count
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

DstT0*

SrcT0

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
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
_output_shapes
: *
T0*
use_locking( *1
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
precision/false_positives/countVariable*
shape: *
	container *
dtype0*
shared_name *
_output_shapes
: 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
validate_shape(*
_output_shapes
: *
T0*
use_locking(*2
_class(
&$loc:@precision/false_positives/count
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

DstT0*

SrcT0

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
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
_output_shapes
: *
T0*
use_locking( *2
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
�

group_depsNoOp^mean/update_op^mean_squared_error/update_op^accuracy/update_op^precision/update_op^mean_absolute_error/update_op^recall/update_op
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/save/tensor_namesConst*�
value�B�Bcentered_bias_weightBdnn_logits/biasesBdnn_logits/weightsBglobal_stepBhiddenlayer_0/biasesBhiddenlayer_0/weightsBhiddenlayer_1/biasesBhiddenlayer_1/weights*
dtype0*
_output_shapes
:
�
save/save/shapes_and_slicesConst*i
value`B^B B15 0,15B20 15 0,20:0,15B B20 0,20B4096 20 0,4096:0,20B20 0,20B20 20 0,20:0,20*
dtype0*
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
^save/save*
_output_shapes
: *
T0*
_class
loc:@save/Const
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
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*'
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
valueB B15 0,15*
dtype0*
_output_shapes
: 
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*+
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
valueB B20 15 0,20:0,15*
dtype0*
_output_shapes
: 
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
validate_shape(*
_output_shapes

:*
T0*
use_locking(*,
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
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
dt0	*
preferred_shard���������*
_output_shapes
:
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
validate_shape(*
_output_shapes
: *
T0	*
use_locking(*
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
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*.
_class$
" loc:@hiddenlayer_0/biases/part_0
v
 save/restore_slice_5/tensor_nameConst*&
valueB Bhiddenlayer_0/weights*
dtype0*
_output_shapes
: 
x
$save/restore_slice_5/shape_and_sliceConst*$
valueB B4096 20 0,4096:0,20*
dtype0*
_output_shapes
: 
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
validate_shape(*
_output_shapes
:	� *
T0*
use_locking(*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
u
 save/restore_slice_6/tensor_nameConst*%
valueB Bhiddenlayer_1/biases*
dtype0*
_output_shapes
: 
l
$save/restore_slice_6/shape_and_sliceConst*
valueB B20 0,20*
dtype0*
_output_shapes
: 
�
save/restore_slice_6RestoreSlice
save/Const save/restore_slice_6/tensor_name$save/restore_slice_6/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_6Assignhiddenlayer_1/biases/part_0save/restore_slice_6*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*.
_class$
" loc:@hiddenlayer_1/biases/part_0
v
 save/restore_slice_7/tensor_nameConst*&
valueB Bhiddenlayer_1/weights*
dtype0*
_output_shapes
: 
t
$save/restore_slice_7/shape_and_sliceConst* 
valueB B20 20 0,20:0,20*
dtype0*
_output_shapes
: 
�
save/restore_slice_7RestoreSlice
save/Const save/restore_slice_7/tensor_name$save/restore_slice_7/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_7Assignhiddenlayer_1/weights/part_0save/restore_slice_7*
validate_shape(*
_output_shapes

:*
T0*
use_locking(*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
�
initNoOp^mean/total/Assign^mean/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign^accuracy/total/Assign^accuracy/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign
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
IsVariableInitialized_14IsVariableInitializedmean_absolute_error/total*
_output_shapes
: *
dtype0*,
_class"
 loc:@mean_absolute_error/total
�
IsVariableInitialized_15IsVariableInitializedmean_absolute_error/count*
_output_shapes
: *
dtype0*,
_class"
 loc:@mean_absolute_error/count
�
IsVariableInitialized_16IsVariableInitializedaccuracy/total*
_output_shapes
: *
dtype0*!
_class
loc:@accuracy/total
�
IsVariableInitialized_17IsVariableInitializedaccuracy/count*
_output_shapes
: *
dtype0*!
_class
loc:@accuracy/count
�
IsVariableInitialized_18IsVariableInitializedprecision/true_positives/count*
_output_shapes
: *
dtype0*1
_class'
%#loc:@precision/true_positives/count
�
IsVariableInitialized_19IsVariableInitializedprecision/false_positives/count*
_output_shapes
: *
dtype0*2
_class(
&$loc:@precision/false_positives/count
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17IsVariableInitialized_18IsVariableInitialized_19*

axis *
N*
T0
*
_output_shapes
:
:

LogicalNot
LogicalNotpack*
_output_shapes
:
�
Const_1Const*�
value�B�Bglobal_stepBhiddenlayer_0/weights/part_0Bhiddenlayer_0/biases/part_0Bhiddenlayer_1/weights/part_0Bhiddenlayer_1/biases/part_0Bdnn_logits/weights/part_0Bdnn_logits/biases/part_0Bcentered_bias_weightB
mean/totalB
mean/countBmean_squared_error/totalBmean_squared_error/countBrecall/true_positives/countBrecall/false_negatives/countBmean_absolute_error/totalBmean_absolute_error/countBaccuracy/totalBaccuracy/countBprecision/true_positives/countBprecision/false_positives/count*
dtype0*
_output_shapes
:
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
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
Index0*
T0*
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
�:^�e       ��Zi	u>c��`�A�*W

lossW��?


MSE�&B

	precision    

accuracy�7�>

recall    


MAE۟n@sG�e       ��Zi	�[���`�A�*W

loss@��?


MSE���A

	precision    

accuracy��?

recall    


MAE��3@6�s<e       ��Zi	Z]���`�A�*W

loss
u�?


MSE�-�A

	precision    

accuracy�<!?

recall    


MAE}�@�(Fe       ��Zi	���`�A�	*W

loss�ol?


MSEgSpA

	precision    

accuracy^�.?

recall    


MAE/p�?��_�e       ��Zi	�N0�`�A�*W

loss�DR?


MSEP�SA

	precision    

accuracy�|6?

recall    


MAE�o�?wK�@e       ��Zi	<ǍH�`�A�*W

loss�T??


MSE��=A

	precision  �?

accuracy��=?

recall  �?


MAE|4�?���We       ��Zi	��`�`�A�*W

loss)�1?


MSEi�0A

	precision  �?

accuracy}�A?

recall  �?


MAE���?��ne       ��Zi	��(y�`�A�*W

lossh�'?


MSE�)A

	precision  �?

accuracy��D?

recall  �?


MAE�̶?@��e       ��Zi	i�|��`�A�*W

loss�?


MSE�A

	precision  �?

accuracyB�G?

recall  �?


MAE��?�gR�e       ��Zi	����`�A�*W

lossl?


MSE��A

	precision  �?

accuracy�?K?

recall  �?


MAE��?o,p:e       ��Zi	�|���`�A�*W

loss�^?


MSE��A

	precision  �?

accuracy�nM?

recall  �?


MAE�[�??�2e       ��Zi	��(��`�A�*W

loss�?


MSE��A

	precision  �?

accuracy+ O?

recall  �?


MAE`G�?���ne       ��Zi	V�r��`�A�*W

loss9
?


MSE��A

	precision  �?

accuracy��P?

recall  �?


MAE:�?��e       ��Zi	�M�
�`�A� *W

lossY)?


MSE� A

	precision  �?

accuracy�wR?

recall  �?


MAEa��?�dde       ��Zi	��"�`�A�#*W

lossmz?


MSE���@

	precision  �?

accuracy�T?

recall  �?


MAE5��?�� �e       ��Zi	��:�`�A�%*W

lossK9�>


MSE���@

	precision  �?

accuracy�\U?

recall  �?


MAE��?�I��e       ��Zi	��GS�`�A�'*W

loss���>


MSE��@

	precision  �?

accuracy�5V?

recall  �?


MAE$Â?�x	�e       ��Zi	�̆k�`�A�**W

lossrT�>


MSE�M�@

	precision  �?

accuracy��W?

recall  �?


MAE��??�he       ��Zi	s�ʃ�`�A�,*W

loss�K�>


MSE��@

	precision  �?

accuracy�MX?

recall  �?


MAE��|?�e       ��Zi	����`�A�.*W

loss�y�>


MSE�n�@

	precision  �?

accuracyh&Y?

recall  �?


MAE
4x?���e       ��Zi	�aI��`�A�1*W

loss�U�>


MSE���@

	precision  �?

accuracy�Z?

recall  �?


MAEGr?�(�e       ��Zi	d]���`�A�3*W

loss��>


MSE�<�@

	precision  �?

accuracy��Z?

recall  �?


MAE��o?����e       ��Zi	�����`�A�5*W

loss� �>


MSE�$�@

	precision  �?

accuracy�'[?

recall  �?


MAE��k?��6Ce       ��Zi	�$��`�A�8*W

loss���>


MSE���@

	precision  �?

accuracy�[?

recall  �?


MAE��h?jk�e       ��Zi	ӿ\�`�A�:*W

loss�>


MSE���@

	precision  �?

accuracy��[?

recall  �?


MAE f?M޳e       ��Zi	!�-�`�A�<*W

loss�V�>


MSEAD�@

	precision  �?

accuracyir\?

recall  �?


MAE_�b?��՛e       ��Zi	�@�E�`�A�?*W

loss&��>


MSEf��@

	precision  �?

accuracy��\?

recall  �?


MAE��`?J�BPe       ��Zi	� ^�`�A�A*W

loss���>


MSE�p�@

	precision  �?

accuracy�(]?

recall  �?


MAEj^?�~e       ��Zi	�+=v�`�A�C*W

loss?��>


MSE���@

	precision  �?

accuracyı]?

recall  �?


MAEo[?����e       ��Zi	Ɵq��`�A�F*W

loss�$�>


MSE�>�@

	precision  �?

accuracy3�]?

recall  �?


MAEY�X?q-�2e       ��Zi	�]���`�A�H*W

loss�x�>


MSE��@

	precision  �?

accuracyqQ^?

recall  �?


MAE�WV?|)#e       ��Zi	�=߾�`�A�K*W

loss�j�>


MSE"��@

	precision  �?

accuracy��^?

recall  �?


MAE�T?fӉ�e       ��Zi	��P��`�A�M*W

loss�l�>


MSE��@

	precision  �?

accuracy�\^?

recall  �?


MAEtLV?�C�e       ��Zi	2t���`�A�O*W

loss^��>


MSE�p�@

	precision  �?

accuracy̐_?

recall  �?


MAE��N?���e       ��Zi	���`�A�R*W

loss���>


MSE"��@

	precision  �?

accuracy̐_?

recall  �?


MAE�O?Y���e       ��Zi	�c �`�A�T*W

loss�;�>


MSE;��@

	precision  �?

accuracyy0`?

recall  �?


MAEbK?���e       ��Zi	��_8�`�A�V*W

loss�'�>


MSE�`�@

	precision  �?

accuracyy0`?

recall  �?


MAE|4K?�he       ��Zi	�K�P�`�A�Y*W

loss�]�>


MSE1}�@

	precision  �?

accuracy�t`?

recall  �?


MAEJI? �n�e       ��Zi	O] i�`�A�[*W

losst��>


MSE-Z�@

	precision  �?

accuracy�t`?

recall  �?


MAE!�I?y��e       ��Zi	�f��`�A�]*W

loss"H�>


MSE�ú@

	precision  �?

accuracy&�`?

recall  �?


MAE OH?���e       ��Zi	Y/���`�A�`*W

lossMm�>


MSE�G�@

	precision  �?

accuracy�`?

recall  �?


MAE�`I?�W��e       ��Zi	����`�A�b*W

loss��>


MSEz�@

	precision  �?

accuracy�oa?

recall  �?


MAE��C?J!��e       ��Zi	�����`�A�d*W

lossV��>


MSE>�@

	precision  �?

accuracy�`?

recall  �?


MAE�I?i"�me       ��Zi	�E��`�A�g*W

loss��>


MSE5�@

	precision  �?

accuracyۨa?

recall  �?


MAE�?B?��:�e       ��Zi	���`�A�i*W

lossz��>


MSE�o�@

	precision  �?

accuracy��`?

recall  �?


MAE�G?�R'e       ��Zi	�|��`�A�k*W

loss���>


MSEt�@

	precision  �?

accuracyC�a?

recall  �?


MAE��??Y�Ĭe       ��Zi	͋+�`�A�n*W

loss ��>


MSE��@

	precision  �?

accuracyW�`?

recall  �?


MAE<3I?\�Xe       ��Zi	�W6C�`�A�p*W

loss���>


MSE�	�@

	precision  �?

accuracy =b?

recall  �?


MAE�*;?��6�e       ��Zi	��[�`�A�r*W

loss��>


MSE�x�@

	precision  �?

accuracyX_b?

recall  �?


MAE��9?˹��e       ��Zi	��t�`�A�u*W

loss�kC?


MSEFA

	precision  �?

accuracy4�E?

recall  �?


MAE[6�??���e       ��Zi	�D��`�A�w*W

loss��>


MSE���@

	precision  �?

accuracyX_b?

recall  �?


MAEeF:?�q�e       ��Zi	�h���`�A�y*W

loss.޽>


MSE���@

	precision  �?

accuracy'vb?

recall  �?


MAEO�7?�=E�e       ��Zi	�����`�A�|*W

lossH:�>


MSEu�@

	precision  �?

accuracy��b?

recall  �?


MAE$�6?�1�e       ��Zi	X8���`�A�~*W

lossۿ>


MSE��@

	precision  �?

accuracy��b?

recall  �?


MAE�
6?~wIKf       r;�j	E�4��`�A�*W

loss��>


MSE�q�@

	precision  �?

accuracy =b?

recall  �?


MAE�c;?����f       r;�j	LMg�`�A��*W

lossj�>


MSE���@

	precision  �?

accuracy��b?

recall  �?


MAEH�7?u\��f       r;�j	V���`�A̅*W

loss�ͻ>


MSE�n�@

	precision  �?

accuracy�b?

recall  �?


MAE[5?��$f       r;�j	�U�5�`�A��*W

loss#��>


MSE8�@

	precision  �?

accuracy��b?

recall  �?


MAE̫8?ޯ�f       r;�j	y�N�`�A��*W

lossP*�>


MSE]:�@

	precision  �?

accuracyǣb?

recall  �?


MAE��7?��f       r;�j	�&if�`�AЌ*W

loss��>


MSEƩ@

	precision  �?

accuracy��b?

recall  �?


MAE�U7?�q@9f       r;�j	�Ǜ~�`�A��*W

loss�E�>


MSE	j�@

	precision  �?

accuracyf�b?

recall  �?


MAE� 8?��q`f       r;�j	2֖�`�A��*W

lossϾ�>


MSE���@

	precision  �?

accuracy��b?

recall  �?


MAEV.8?) ��f       r;�j	][��`�Aԓ*W

loss���>


MSEC�@

	precision  �?

accuracy5�b?

recall  �?


MAE2k5?ٗ7�f       r;�j	��:��`�A��*W

loss�<�>


MSE+�@

	precision  �?

accuracy��b?

recall  �?


MAE�7?,��0f       r;�j	�`���`�A��*W

lossiھ>


MSE|��@

	precision  �?

accuracy��b?

recall  �?


MAE(7?j�H�f       r;�j	�g���`�Aؚ*W

lossb6�>


MSE��@

	precision  �?

accuracy.�b?

recall  �?


MAEO�7?�*�f       r;�j	�~@�`�A��*W

loss+i�>


MSE�ڨ@

	precision  �?

accuracyf�b?

recall  �?


MAE��6?k�b�f       r;�j	8<z(�`�A��*W

loss���>


MSE�p�@

	precision  �?

accuracyf�b?

recall  �?


MAE�U7?a��ef       r;�j	�ɱ@�`�Aܡ*W

lossJ�>


MSE�ĩ@

	precision  �?

accuracy��b?

recall  �?


MAEj37?���f       r;�j	�X�`�A��*W

loss�n�>


MSE�U�@

	precision  �?

accuracy'vb?

recall  �?


MAEt:?
��4f       r;�j	��2q�`�A��*W

lossJ"�>


MSE%{�@

	precision  �?

accuracy��b?

recall  �?


MAE��8?/��Xf       r;�j	ڡ_��`�A�*W

loss�
�>


MSE��@

	precision  �?

accuracyǣb?

recall  �?


MAE
9?��UHf       r;�j	�܊��`�A��*W

loss�D�>


MSE%N�@

	precision  �?

accuracyǣb?

recall  �?


MAE�8?b̕uf       r;�j	(Z���`�A��*W

lossaC�>


MSE���@

	precision  �?

accuracy�c?

recall  �?


MAE@�5?ZS"kf       r;�j	�T���`�A�*W

lossv��>


MSEo�@

	precision  �?

accuracy��b?

recall  �?


MAE]g8?m<@�f       r;�j	0���`�A��*W

loss}i�>


MSEݣ�@

	precision  �?

accuracy��b?

recall  �?


MAE�U7?�e�xf       r;�j	�@�`�A��*W

loss���>


MSE=�@

	precision  �?

accuracyQ&b?

recall  �?


MAE��;?���f       r;�j	TB��`�A�*W

loss8_�>


MSE̇�@

	precision  �?

accuracy =b?

recall  �?


MAEI;?�5 Af       r;�j	�2�`�A��*W

loss_�>


MSE��@

	precision  �?

accuracy�jb?

recall  �?


MAE��9?��<nf       r;�j	o:�J�`�A��*W

loss	��>


MSE�y�@

	precision  �?

accuracy_�b?

recall  �?


MAE]g8?�>f       r;�j	��c�`�A�*W

loss�k�>


MSE_��@

	precision  �?

accuracy�jb?

recall  �?


MAE��9?Kbn�f       r;�j	OZ{�`�A��*W

loss�@�>


MSE���@

	precision  �?

accuracy�jb?

recall  �?


MAE�/:?ȃ�f       r;�j	�����`�A��*W

loss:��>


MSE^�@

	precision  �?

accuracyǣb?

recall  �?


MAE̫8?�JVQf       r;�j	����`�A��*W

loss�[�>


MSE�_�@

	precision  �?

accuracy��b?

recall  �?


MAE��9?E��f       r;�j	�m	��`�A��*W

loss>T�>


MSE��@

	precision  �?

accuracy�jb?

recall  �?


MAE��9?�q��f       r;�j	��C��`�A��*W

loss+�>


MSE,��@

	precision  �?

accuracy��b?

recall  �?


MAE��8?��Q�f       r;�j	Ht���`�A��*W

loss"}�>


MSEpث@

	precision  �?

accuracy��b?

recall  �?


MAE�9?#��f       r;�j	���`�A��*W

loss	C�>


MSEyT�@

	precision  �?

accuracyǣb?

recall  �?


MAE�V9?���hf       r;�j	�~%�`�A��*W

loss�'�>


MSE��@

	precision  �?

accuracy.�b?

recall  �?


MAE3�8?�=�f       r;�j	�
J=�`�A��*W

lossO&�>


MSE�t�@

	precision  �?

accuracy��b?

recall  �?


MAE~86?C13nf       r;�j	���U�`�A��*W

loss���>


MSE�@

	precision  �?

accuracy��b?

recall  �?


MAE� 8?�XH�f       r;�j	�	n�`�A��*W

lossw��>


MSE��@

	precision  �?

accuracyf�b?

recall  �?


MAE��7?5���f       r;�j	��F��`�A��*W

loss��>


MSEN+�@

	precision  �?

accuracy5�b?

recall  �?


MAEj37?͈uf       r;�j	�nw��`�A��*W

loss\l�>


MSE@

	precision  �?

accuracy��b?

recall  �?


MAE�7?����f       r;�j	�ڬ��`�A��*W

loss`�>


MSE�_�@

	precision  �?

accuracyǣb?

recall  �?


MAE�V9?��jf       r;�j	�����`�A��*W

lossR�>


MSE�@

	precision  �?

accuracyǣb?

recall  �?


MAE
9?ܫf       r;�j	v(1��`�A��*W

loss<R�>


MSE!+�@

	precision  �?

accuracy.�b?

recall  �?


MAE
9?S�f       r;�j	7Xs��`�A��*W

loss�p�>


MSE�@

	precision  �?

accuracy��b?

recall  �?


MAE��9?��f       r;�j	J���`�A��*W

loss�H�>


MSEUm�@

	precision  �?

accuracy��b?

recall  �?


MAE�:?x5_jf       r;�j	��/�`�A��*W

loss!C�>


MSE_��@

	precision  �?

accuracyǣb?

recall  �?


MAE
9?�Mj�f       r;�j	ӋH�`�A��*W

loss���>


MSE�!�@

	precision  �?

accuracy_�b?

recall  �?


MAEP�9?��5Yf       r;�j	�^`�`�A��*W

lossc��>


MSE"��@

	precision  �?

accuracy��b?

recall  �?


MAEV.8?׬��f       r;�j	觛x�`�A��*W

loss��>


MSE蘬@

	precision  �?

accuracyǣb?

recall  �?


MAEA)9?l8��f       r;�j	����`�A��*W

loss��>


MSE��@

	precision  �?

accuracy8c?

recall  �?


MAEp�5?P�R4f       r;�j	*���`�A��*W

loss���>


MSE([�@

	precision  �?

accuracy�b?

recall  �?


MAE~86?o��f       r;�j	dXN��`�A��*W

lossF��>


MSE;é@

	precision  �?

accuracy�b?

recall  �?


MAEU�6?
[�f       r;�j	IX���`�A��*W

loss1��>


MSE(.�@

	precision  �?

accuracy�b?

recall  �?


MAE+�6?6*�f       r;�j	�����`�A��*W

lossJ��>


MSE(.�@

	precision  �?

accuracy�b?

recall  �?


MAE+�6?I�cf       r;�j	Y
�`�A��*W

lossFD�>


MSE�w�@

	precision  �?

accuracy�c?

recall  �?


MAE�!6?�x#�f       r;�j	��\"�`�A�*W

loss��>


MSE0�@

	precision  �?

accuracy��b?

recall  �?


MAE�9?���f       r;�j	��:�`�A��*W

loss���>


MSEm�@

	precision  �?

accuracy=!c?

recall  �?


MAEp�5?��~Mf       r;�j	���R�`�A��*W

lossD�>


MSE��@

	precision  �?

accuracy'vb?

recall  �?


MAEt:?�D��f       r;�j	<S�j�`�A�*W

loss/�>


MSEı�@

	precision  �?

accuracy�jb?

recall  �?


MAEԊ:?���f       r;�j	:��`�A��*W

loss�>�>


MSE�O�@

	precision  �?

accuracy�b?

recall  �?


MAE�
6?��f       r;�j	�[���`�Ač*W

loss��>


MSEض�@

	precision  �?

accuracy_�b?

recall  �?


MAEy9?��
�f       r;�j	>����`�A��*W

loss���>


MSE"e�@

	precision  �?

accuracy�b?

recall  �?


MAE-6?[Y9�f       r;�j	�E	��`�A��*W

loss�Z�>


MSE�ͬ@

	precision  �?

accuracy��b?

recall  �?


MAE�9?#� f       r;�j	�B��`�AȔ*W

lossإ�>


MSE%N�@

	precision  �?

accuracy.�b?

recall  �?


MAEV.8?b-��f       r;�j	�&���`�A��*W

loss��>


MSEJ۫@

	precision  �?

accuracyǣb?

recall  �?


MAE̫8? D��f       r;�j	se��`�A��*W

loss՟�>


MSEI�@

	precision  �?

accuracy_�b?

recall  �?


MAEr9?���5f       r;�j	�!%-�`�A̛*W

lossk �>


MSE7F�@

	precision  �?

accuracy��b?

recall  �?


MAEd�8?ƯK�f       r;�j	ZfqE�`�A��*W

loss�H�>


MSE㢬@

	precision  �?

accuracy_�b?

recall  �?


MAEIb9??�PVf       r;�j	�N�]�`�A��*W

lossZ��>


MSEv��@

	precision  �?

accuracyǣb?

recall  �?


MAE�V9?���f       r;�j	>|v�`�AТ*W

loss ��>


MSE7F�@

	precision  �?

accuracy.�b?

recall  �?


MAE��8?����f       r;�j	�?��`�A��*W

loss��>


MSE㢬@

	precision  �?

accuracy_�b?

recall  �?


MAEIb9?��cof       r;�j	��y��`�A��*W

lossV1�>


MSEz��@

	precision  �?

accuracy��b?

recall  �?


MAE�Q:?�.��f       r;�j	x���`�Aԩ*W

loss���>


MSEz��@

	precision  �?

accuracy��b?

recall  �?


MAE�Q:?��:�f       r;�j	a���`�A��*W

loss���>


MSE�U�@

	precision  �?

accuracy'vb?

recall  �?


MAE�:?�2jf       r;�j	�2A��`�A��*W

loss��>


MSEGέ@

	precision  �?

accuracy��b?

recall  �?


MAE�:?��yf       r;�j	0��`�Aذ*W

lossZy�>


MSE���@

	precision  �?

accuracy�jb?

recall  �?


MAE��:?��	�f       r;�j	U+��`�A��*W

loss�<�>


MSEĄ�@

	precision  �?

accuracy'vb?

recall  �?


MAEs�:?5�>f       r;�j	���7�`�A��*W

loss��>


MSEbo�@

	precision  �?

accuracy'vb?

recall  �?


MAE�:?��~f       r;�j	-tP�`�Aܷ*W

loss��>


MSE�P�@

	precision  �?

accuracyX_b?

recall  �?


MAEXz;?U�f       r;�j	$�Jh�`�A��*W

lossM��>


MSE	s�@

	precision  �?

accuracy_�b?

recall  �?


MAE��9?�+ff       r;�j	��~��`�A��*W

loss��>


MSE�8�@

	precision  �?

accuracy_�b?

recall  �?


MAE�m9?��+�f       r;�j	N�ʘ�`�A�*W

lossi]�>


MSE���@

	precision  �?

accuracy'vb?

recall  �?


MAE&�9?�>�f       r;�j	�a��`�A��*W

loss�/�>


MSE%��@

	precision  �?

accuracy'vb?

recall  �?


MAEW�9?��!f       r;�j	�JA��`�A��*W

loss���>


MSEI>�@

	precision  �?

accuracy��b?

recall  �?


MAE��9?0ŏ�f       r;�j	�Â��`�A��*W

loss���>


MSE ��@

	precision  �?

accuracy��b?

recall  �?


MAE��9?��f       r;�j	-ǿ��`�A��*W

loss��>


MSEB�@

	precision  �?

accuracy��b?

recall  �?


MAE�m9?���f       r;�j	%/��`�A��*W

losscj�>


MSEp��@

	precision  �?

accuracy��b?

recall  �?


MAE�9?�9�f       r;�j	��(*�`�A��*W

loss:�>


MSE�u�@

	precision  �?

accuracy'vb?

recall  �?


MAEW�9?��z�f       r;�j	]mB�`�A��*W

loss/�>


MSE���@

	precision  �?

accuracy��b?

recall  �?


MAEA)9?�Pa�f       r;�j	N��Z�`�A��*W

loss���>


MSEV
�@

	precision  �?

accuracy_�b?

recall  �?


MAE�r8?�͗f       r;�j	"�r�`�A��*W

loss��>


MSE�b�@

	precision  �?

accuracyǣb?

recall  �?


MAE3�8?��J�f       r;�j	�F���`�A��*W

loss�j�>


MSE�&�@

	precision  �?

accuracyǣb?

recall  �?


MAE�r8?����f       r;�j	k?6��`�A��*W

loss@B�>


MSE�Q�@

	precision  �?

accuracyǣb?

recall  �?


MAE��8?�*2f       r;�j	��|��`�A��*W

loss��>


MSE<<�@

	precision  �?

accuracyǣb?

recall  �?


MAE,~8?>�f       r;�j	d`���`�A��*W

loss0��>


MSE.ʫ@

	precision  �?

accuracyǣb?

recall  �?


MAE�"8?�_��f       r;�j	��&��`�A��*W

loss���>


MSE.ʫ@

	precision  �?

accuracyǣb?

recall  �?


MAE�"8?�5 �f       r;�j	��a�`�A��*W

loss�m�>


MSE��@

	precision  �?

accuracy��b?

recall  �?


MAEql7?k�f       r;�j	���`�A��*W

lossz ?


MSEw>�@

	precision  �?

accuracy��b?

recall  �?


MAEA�7?X�f       r;�j	��5�`�A��*W

lossPy ?


MSE��@

	precision  �?

accuracyf�b?

recall  �?


MAE�7?���"f       r;�j	�=M�`�A��*W

loss�� ?


MSE���@

	precision  �?

accuracy��b?

recall  �?


MAE\�6?���{f       r;�j	Anle�`�A��*W

loss�B?


MSEh̪@

	precision  �?

accuracyf�b?

recall  �?


MAE37?#K!�f       r;�j	gȩ}�`�A��*W

loss֢?


MSE�T�@

	precision  �?

accuracy��b?

recall  �?


MAE�q6?�:v�f       r;�j	�9��`�A��*W

loss?


MSE��@

	precision  �?

accuracy��b?

recall  �?


MAE$�6?mz܎f       r;�j	�=6��`�A��*W

lossf?


MSE�=�@

	precision  �?

accuracy�b?

recall  �?


MAE�C6?��f       r;�j	w��`�A��*W

loss��?


MSE�ު@

	precision  �?

accuracy5�b?

recall  �?


MAE��6?�>� f       r;�j	HV���`�A��*W

loss}*?


MSE��@

	precision  �?

accuracym
c?

recall  �?


MAE��5?�i�f       r;�j	b�!��`�A��*W

lossD�?


MSE��@

	precision  �?

accuracym
c?

recall  �?


MAE��5?���f       r;�j	�W�`�A��*W

loss��?


MSEt(�@

	precision  �?

accuracy�b?

recall  �?


MAE~86?��f�f       r;�j	3�~'�`�A��*W

lossmJ?


MSE�)�@

	precision  �?

accuracy��b?

recall  �?


MAE�C6?H�uf       r;�j	/h�?�`�A��*W

loss|�?


MSEԊ�@

	precision  �?

accuracy��b?

recall  �?


MAE��6?��y�f       r;�j	^�W�`�A܂*W

loss�?


MSE��@

	precision  �?

accuracy��b?

recall  �?


MAEG6?�ߺ�f       r;�j	�74p�`�A��*W

loss.e?


MSE��@

	precision  �?

accuracy��b?

recall  �?


MAE�
6?�6z,