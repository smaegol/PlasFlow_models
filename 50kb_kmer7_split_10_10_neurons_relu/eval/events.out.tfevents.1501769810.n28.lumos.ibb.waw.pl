       �K"	  ��`�Abrain.Event:2�>HE�      #��	���`�A"��
m
global_stepVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0	

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: *
dtype0	
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
T0	*
use_locking(
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0	
Y
inputPlaceholder*
dtype0*)
_output_shapes
:�����������*
shape: 
T
outputPlaceholder*
dtype0	*#
_output_shapes
:���������*
shape: 
�
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
valueB"���� @  *
_output_shapes
:*
dtype0
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*)
_output_shapes
:�����������*
T0
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
value	B :*
_output_shapes
: *
dtype0
�
<input_from_feature_columns/input_from_feature_columns/concatIdentity=input_from_feature_columns/input_from_feature_columns/Reshape*)
_output_shapes
:�����������*
T0
�
!hiddenlayer_0/hiddenlayer_0/ShapeShape<input_from_feature_columns/input_from_feature_columns/concat*
_output_shapes
:*
T0
�
"hiddenlayer_0/hiddenlayer_0/unpackUnpack!hiddenlayer_0/hiddenlayer_0/Shape*	
num*

axis *
_output_shapes
: : *
T0
�
hiddenlayer_0/weights/part_0Variable* 
_output_shapes
:
��
*
shared_name *
shape:
��
*
	container *
dtype0
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB" @  
   *
_output_shapes
:*
dtype0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB
 *3���*
_output_shapes
: *
dtype0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB
 *3��<*
_output_shapes
: *
dtype0
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*

seed** 
_output_shapes
:
��
*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
seed2*
dtype0*
T0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_0/weights/part_0/Initializer/random_uniform/max;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
: *
T0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*/
_class%
#!loc:@hiddenlayer_0/weights/part_0* 
_output_shapes
:
��
*
T0
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*/
_class%
#!loc:@hiddenlayer_0/weights/part_0* 
_output_shapes
:
��
*
T0
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
validate_shape(* 
_output_shapes
:
��
*
T0*
use_locking(
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0* 
_output_shapes
:
��
*
T0
o
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read* 
_output_shapes
:
��
*
T0
�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
transpose_a( *
transpose_b( *'
_output_shapes
:���������
*
T0
�
hiddenlayer_0/biases/part_0Variable*
_output_shapes
:
*
shared_name *
shape:
*
	container *
dtype0
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
valueB
*    *
_output_shapes
:
*
dtype0
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
validate_shape(*
_output_shapes
:
*
T0*
use_locking(
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
:
*
T0
g
hiddenlayer_0/biasesIdentity hiddenlayer_0/biases/part_0/read*
_output_shapes
:
*
T0
�
#hiddenlayer_0/hiddenlayer_0/BiasAddBiasAdd"hiddenlayer_0/hiddenlayer_0/MatMulhiddenlayer_0/biases*'
_output_shapes
:���������
*
T0*
data_formatNHWC

 hiddenlayer_0/hiddenlayer_0/ReluRelu#hiddenlayer_0/hiddenlayer_0/BiasAdd*'
_output_shapes
:���������
*
T0
W
zero_fraction/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
�
zero_fraction/EqualEqual hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*'
_output_shapes
:���������
*
T0
p
zero_fraction/CastCastzero_fraction/Equal*

SrcT0
*'
_output_shapes
:���������
*

DstT0
d
zero_fraction/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
	keep_dims( *
_output_shapes
: *
T0
x
ScalarSummary/tagsConst*6
value-B+ B%hiddenlayer_0:fraction_of_zero_values*
_output_shapes
: *
dtype0
g
ScalarSummaryScalarSummaryScalarSummary/tagszero_fraction/Mean*
_output_shapes
: *
T0
m
HistogramSummary/tagConst*)
value B Bhiddenlayer_0:activation*
_output_shapes
: *
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
"hiddenlayer_1/hiddenlayer_1/unpackUnpack!hiddenlayer_1/hiddenlayer_1/Shape*	
num*

axis *
_output_shapes
: : *
T0
�
hiddenlayer_1/weights/part_0Variable*
_output_shapes

:

*
shared_name *
shape
:

*
	container *
dtype0
�
=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB"
   
   *
_output_shapes
:*
dtype0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB
 *�7�*
_output_shapes
: *
dtype0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB
 *�7?*
_output_shapes
: *
dtype0
�
Ehiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*

seed**
_output_shapes

:

*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
seed2.*
dtype0*
T0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_1/weights/part_0/Initializer/random_uniform/max;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes
: *
T0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes

:

*
T0
�
7hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes

:

*
T0
�
#hiddenlayer_1/weights/part_0/AssignAssignhiddenlayer_1/weights/part_07hiddenlayer_1/weights/part_0/Initializer/random_uniform*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
validate_shape(*
_output_shapes

:

*
T0*
use_locking(
�
!hiddenlayer_1/weights/part_0/readIdentityhiddenlayer_1/weights/part_0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes

:

*
T0
m
hiddenlayer_1/weightsIdentity!hiddenlayer_1/weights/part_0/read*
_output_shapes

:

*
T0
�
"hiddenlayer_1/hiddenlayer_1/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reluhiddenlayer_1/weights*
transpose_a( *
transpose_b( *'
_output_shapes
:���������
*
T0
�
hiddenlayer_1/biases/part_0Variable*
_output_shapes
:
*
shared_name *
shape:
*
	container *
dtype0
�
-hiddenlayer_1/biases/part_0/Initializer/zerosConst*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
valueB
*    *
_output_shapes
:
*
dtype0
�
"hiddenlayer_1/biases/part_0/AssignAssignhiddenlayer_1/biases/part_0-hiddenlayer_1/biases/part_0/Initializer/zeros*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
validate_shape(*
_output_shapes
:
*
T0*
use_locking(
�
 hiddenlayer_1/biases/part_0/readIdentityhiddenlayer_1/biases/part_0*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
_output_shapes
:
*
T0
g
hiddenlayer_1/biasesIdentity hiddenlayer_1/biases/part_0/read*
_output_shapes
:
*
T0
�
#hiddenlayer_1/hiddenlayer_1/BiasAddBiasAdd"hiddenlayer_1/hiddenlayer_1/MatMulhiddenlayer_1/biases*'
_output_shapes
:���������
*
T0*
data_formatNHWC

 hiddenlayer_1/hiddenlayer_1/ReluRelu#hiddenlayer_1/hiddenlayer_1/BiasAdd*'
_output_shapes
:���������
*
T0
Y
zero_fraction_1/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
�
zero_fraction_1/EqualEqual hiddenlayer_1/hiddenlayer_1/Reluzero_fraction_1/zero*'
_output_shapes
:���������
*
T0
t
zero_fraction_1/CastCastzero_fraction_1/Equal*

SrcT0
*'
_output_shapes
:���������
*

DstT0
f
zero_fraction_1/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
	keep_dims( *
_output_shapes
: *
T0
z
ScalarSummary_1/tagsConst*6
value-B+ B%hiddenlayer_1:fraction_of_zero_values*
_output_shapes
: *
dtype0
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
_output_shapes
: *
T0
o
HistogramSummary_1/tagConst*)
value B Bhiddenlayer_1:activation*
_output_shapes
: *
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
dnn_logits/dnn_logits/unpackUnpackdnn_logits/dnn_logits/Shape*	
num*

axis *
_output_shapes
: : *
T0
�
dnn_logits/weights/part_0Variable*
_output_shapes

:
*
shared_name *
shape
:
*
	container *
dtype0
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*,
_class"
 loc:@dnn_logits/weights/part_0*
valueB"
      *
_output_shapes
:*
dtype0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*,
_class"
 loc:@dnn_logits/weights/part_0*
valueB
 *����*
_output_shapes
: *
dtype0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*,
_class"
 loc:@dnn_logits/weights/part_0*
valueB
 *���>*
_output_shapes
: *
dtype0
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*

seed**
_output_shapes

:
*,
_class"
 loc:@dnn_logits/weights/part_0*
seed2L*
dtype0*
T0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/subSub8dnn_logits/weights/part_0/Initializer/random_uniform/max8dnn_logits/weights/part_0/Initializer/random_uniform/min*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
: *
T0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/mulMulBdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn_logits/weights/part_0/Initializer/random_uniform/sub*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

:
*
T0
�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

:
*
T0
�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*,
_class"
 loc:@dnn_logits/weights/part_0*
validate_shape(*
_output_shapes

:
*
T0*
use_locking(
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

:
*
T0
g
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
_output_shapes

:
*
T0
�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_1/hiddenlayer_1/Reludnn_logits/weights*
transpose_a( *
transpose_b( *'
_output_shapes
:���������*
T0
�
dnn_logits/biases/part_0Variable*
_output_shapes
:*
shared_name *
shape:*
	container *
dtype0
�
*dnn_logits/biases/part_0/Initializer/zerosConst*+
_class!
loc:@dnn_logits/biases/part_0*
valueB*    *
_output_shapes
:*
dtype0
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*+
_class!
loc:@dnn_logits/biases/part_0*
validate_shape(*
_output_shapes
:*
T0*
use_locking(
�
dnn_logits/biases/part_0/readIdentitydnn_logits/biases/part_0*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
:*
T0
a
dnn_logits/biasesIdentitydnn_logits/biases/part_0/read*
_output_shapes
:*
T0
�
dnn_logits/dnn_logits/BiasAddBiasAdddnn_logits/dnn_logits/MatMuldnn_logits/biases*'
_output_shapes
:���������*
T0*
data_formatNHWC
Y
zero_fraction_2/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0
�
zero_fraction_2/EqualEqualdnn_logits/dnn_logits/BiasAddzero_fraction_2/zero*'
_output_shapes
:���������*
T0
t
zero_fraction_2/CastCastzero_fraction_2/Equal*

SrcT0
*'
_output_shapes
:���������*

DstT0
f
zero_fraction_2/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
{
zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
	keep_dims( *
_output_shapes
: *
T0
w
ScalarSummary_2/tagsConst*3
value*B( B"dnn_logits:fraction_of_zero_values*
_output_shapes
: *
dtype0
m
ScalarSummary_2ScalarSummaryScalarSummary_2/tagszero_fraction_2/Mean*
_output_shapes
: *
T0
l
HistogramSummary_2/tagConst*&
valueB Bdnn_logits:activation*
_output_shapes
: *
dtype0
~
HistogramSummary_2HistogramSummaryHistogramSummary_2/tagdnn_logits/dnn_logits/BiasAdd*
_output_shapes
: *
T0
R
zerosConst*
valueB*    *
_output_shapes
:*
dtype0
~
centered_bias_weightVariable*
_output_shapes
:*
shared_name *
shape:*
	container *
dtype0
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*'
_class
loc:@centered_bias_weight*
validate_shape(*
_output_shapes
:*
T0*
use_locking(
�
centered_bias_weight/readIdentitycentered_bias_weight*'
_class
loc:@centered_bias_weight*
_output_shapes
:*
T0
`
Reshape/shapeConst*
valueB:
���������*
_output_shapes
:*
dtype0
a
ReshapeReshapecentered_bias_weight/readReshape/shape*
_output_shapes
:*
T0
�
ScalarSummary_3/tagsConst*�
value�B�Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14*
_output_shapes
:*
dtype0
`
ScalarSummary_3ScalarSummaryScalarSummary_3/tagsReshape*
_output_shapes
: *
T0
�
BiasAddBiasAdddnn_logits/dnn_logits/BiasAddcentered_bias_weight/read*'
_output_shapes
:���������*
T0*
data_formatNHWC
_
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeoutput*
_output_shapes
:*
T0	
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsBiasAddoutput*
Tlabels0	*6
_output_shapes$
":���������:���������*
T0
O
ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
	keep_dims( *
_output_shapes
: *
T0
O

mean/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0
l

mean/totalVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
mean/total/AssignAssign
mean/total
mean/zeros*
_class
loc:@mean/total*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
g
mean/total/readIdentity
mean/total*
_class
loc:@mean/total*
_output_shapes
: *
T0
Q
mean/zeros_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
l

mean/countVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
mean/count/AssignAssign
mean/countmean/zeros_1*
_class
loc:@mean/count*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
g
mean/count/readIdentity
mean/count*
_class
loc:@mean/count*
_output_shapes
: *
T0
8
	mean/SizeSizeloss*
_output_shapes
: *
T0
Q
mean/ToFloat_1Cast	mean/Size*

SrcT0*
_output_shapes
: *

DstT0
M

mean/ConstConst*
valueB *
_output_shapes
: *
dtype0
S
mean/SumSumloss
mean/Const*
	keep_dims( *
_output_shapes
: *
T0
�
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
_class
loc:@mean/total*
_output_shapes
: *
T0*
use_locking( 
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
_class
loc:@mean/count*
_output_shapes
: *
T0*
use_locking( 
S
mean/Greater/yConst*
valueB
 *    *
_output_shapes
: *
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
mean/value/eConst*
valueB
 *    *
_output_shapes
: *
dtype0
[

mean/valueSelectmean/Greatermean/Divmean/value/e*
_output_shapes
: *
T0
y
mean/Greater_1/yConst^mean/AssignAdd^mean/AssignAdd_1*
valueB
 *    *
_output_shapes
: *
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
mean/update_op/eConst^mean/AssignAdd^mean/AssignAdd_1*
valueB
 *    *
_output_shapes
: *
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
:���������*
T0
T
ToFloatCastoutput*

SrcT0	*#
_output_shapes
:���������*

DstT0
R
ArgMax/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
Y
ArgMaxArgMaxBiasAddArgMax/dimension*#
_output_shapes
:���������*
T0
b
 precision/true_positives/Equal/yConst*
value	B	 R*
_output_shapes
: *
dtype0	

precision/true_positives/EqualEqualoutput precision/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
d
"precision/true_positives/Equal_1/yConst*
value	B	 R*
_output_shapes
: *
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
precision/true_positives/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0
�
precision/true_positives/countVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*1
_class'
%#loc:@precision/true_positives/count*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
�
#precision/true_positives/count/readIdentityprecision/true_positives/count*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: *
T0
�
 precision/true_positives/ToFloatCast#precision/true_positives/LogicalAnd*

SrcT0
*#
_output_shapes
:���������*

DstT0
s
!precision/true_positives/IdentityIdentity#precision/true_positives/count/read*
_output_shapes
: *
T0
h
precision/true_positives/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
	keep_dims( *
_output_shapes
: *
T0
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: *
T0*
use_locking( 
c
!precision/false_positives/Equal/yConst*
value	B	 R *
_output_shapes
: *
dtype0	
�
precision/false_positives/EqualEqualoutput!precision/false_positives/Equal/y*#
_output_shapes
:���������*
T0	
e
#precision/false_positives/Equal_1/yConst*
value	B	 R*
_output_shapes
: *
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
precision/false_positives/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0
�
precision/false_positives/countVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*2
_class(
&$loc:@precision/false_positives/count*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
�
$precision/false_positives/count/readIdentityprecision/false_positives/count*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: *
T0
�
!precision/false_positives/ToFloatCast$precision/false_positives/LogicalAnd*

SrcT0
*#
_output_shapes
:���������*

DstT0
u
"precision/false_positives/IdentityIdentity$precision/false_positives/count/read*
_output_shapes
: *
T0
i
precision/false_positives/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
	keep_dims( *
_output_shapes
: *
T0
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: *
T0*
use_locking( 
|
precision/addAdd!precision/true_positives/Identity"precision/false_positives/Identity*
_output_shapes
: *
T0
X
precision/Greater/yConst*
valueB
 *    *
_output_shapes
: *
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
precision/value/eConst*
valueB
 *    *
_output_shapes
: *
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
precision/Greater_1/yConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
valueB
 *    *
_output_shapes
: *
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
precision/update_op/eConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
valueB
 *    *
_output_shapes
: *
dtype0
{
precision/update_opSelectprecision/Greater_1precision/Div_1precision/update_op/e*
_output_shapes
: *
T0
L
EqualEqualArgMaxoutput*#
_output_shapes
:���������*
T0	
U
	ToFloat_1CastEqual*

SrcT0
*#
_output_shapes
:���������*

DstT0
S
accuracy/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0
p
accuracy/totalVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*!
_class
loc:@accuracy/total*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
s
accuracy/total/readIdentityaccuracy/total*!
_class
loc:@accuracy/total*
_output_shapes
: *
T0
U
accuracy/zeros_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
p
accuracy/countVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*!
_class
loc:@accuracy/count*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
s
accuracy/count/readIdentityaccuracy/count*!
_class
loc:@accuracy/count*
_output_shapes
: *
T0
A
accuracy/SizeSize	ToFloat_1*
_output_shapes
: *
T0
Y
accuracy/ToFloat_1Castaccuracy/Size*

SrcT0*
_output_shapes
: *

DstT0
X
accuracy/ConstConst*
valueB: *
_output_shapes
:*
dtype0
`
accuracy/SumSum	ToFloat_1accuracy/Const*
	keep_dims( *
_output_shapes
: *
T0
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*!
_class
loc:@accuracy/total*
_output_shapes
: *
T0*
use_locking( 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*!
_class
loc:@accuracy/count*
_output_shapes
: *
T0*
use_locking( 
W
accuracy/Greater/yConst*
valueB
 *    *
_output_shapes
: *
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
accuracy/value/eConst*
valueB
 *    *
_output_shapes
: *
dtype0
k
accuracy/valueSelectaccuracy/Greateraccuracy/Divaccuracy/value/e*
_output_shapes
: *
T0
�
accuracy/Greater_1/yConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
valueB
 *    *
_output_shapes
: *
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
accuracy/update_op/eConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
valueB
 *    *
_output_shapes
: *
dtype0
w
accuracy/update_opSelectaccuracy/Greater_1accuracy/Div_1accuracy/update_op/e*
_output_shapes
: *
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
mean_squared_error/ToFloatCastSquare*

SrcT0	*#
_output_shapes
:���������*

DstT0
]
mean_squared_error/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0
z
mean_squared_error/totalVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*+
_class!
loc:@mean_squared_error/total*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
�
mean_squared_error/total/readIdentitymean_squared_error/total*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: *
T0
_
mean_squared_error/zeros_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
z
mean_squared_error/countVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*+
_class!
loc:@mean_squared_error/count*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
�
mean_squared_error/count/readIdentitymean_squared_error/count*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: *
T0
\
mean_squared_error/SizeSizemean_squared_error/ToFloat*
_output_shapes
: *
T0
m
mean_squared_error/ToFloat_1Castmean_squared_error/Size*

SrcT0*
_output_shapes
: *

DstT0
b
mean_squared_error/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
	keep_dims( *
_output_shapes
: *
T0
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: *
T0*
use_locking( 
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: *
T0*
use_locking( 
a
mean_squared_error/Greater/yConst*
valueB
 *    *
_output_shapes
: *
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
mean_squared_error/value/eConst*
valueB
 *    *
_output_shapes
: *
dtype0
�
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/Divmean_squared_error/value/e*
_output_shapes
: *
T0
�
mean_squared_error/Greater_1/yConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
valueB
 *    *
_output_shapes
: *
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
mean_squared_error/update_op/eConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
valueB
 *    *
_output_shapes
: *
dtype0
�
mean_squared_error/update_opSelectmean_squared_error/Greater_1mean_squared_error/Div_1mean_squared_error/update_op/e*
_output_shapes
: *
T0
_
recall/true_positives/Equal/yConst*
value	B	 R*
_output_shapes
: *
dtype0	
y
recall/true_positives/EqualEqualoutputrecall/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
a
recall/true_positives/Equal_1/yConst*
value	B	 R*
_output_shapes
: *
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
recall/true_positives/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0
}
recall/true_positives/countVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*.
_class$
" loc:@recall/true_positives/count*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
�
 recall/true_positives/count/readIdentityrecall/true_positives/count*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: *
T0
�
recall/true_positives/ToFloatCast recall/true_positives/LogicalAnd*

SrcT0
*#
_output_shapes
:���������*

DstT0
m
recall/true_positives/IdentityIdentity recall/true_positives/count/read*
_output_shapes
: *
T0
e
recall/true_positives/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
	keep_dims( *
_output_shapes
: *
T0
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: *
T0*
use_locking( 
`
recall/false_negatives/Equal/yConst*
value	B	 R*
_output_shapes
: *
dtype0	
{
recall/false_negatives/EqualEqualoutputrecall/false_negatives/Equal/y*#
_output_shapes
:���������*
T0	
b
 recall/false_negatives/Equal_1/yConst*
value	B	 R *
_output_shapes
: *
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
recall/false_negatives/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0
~
recall/false_negatives/countVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*/
_class%
#!loc:@recall/false_negatives/count*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
�
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: *
T0
�
recall/false_negatives/ToFloatCast!recall/false_negatives/LogicalAnd*

SrcT0
*#
_output_shapes
:���������*

DstT0
o
recall/false_negatives/IdentityIdentity!recall/false_negatives/count/read*
_output_shapes
: *
T0
f
recall/false_negatives/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
	keep_dims( *
_output_shapes
: *
T0
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: *
T0*
use_locking( 
s

recall/addAddrecall/true_positives/Identityrecall/false_negatives/Identity*
_output_shapes
: *
T0
U
recall/Greater/yConst*
valueB
 *    *
_output_shapes
: *
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
recall/value/eConst*
valueB
 *    *
_output_shapes
: *
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
recall/Greater_1/yConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
valueB
 *    *
_output_shapes
: *
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
recall/update_op/eConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
valueB
 *    *
_output_shapes
: *
dtype0
o
recall/update_opSelectrecall/Greater_1recall/Div_1recall/update_op/e*
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
mean_absolute_error/ToFloatCastAbs*

SrcT0	*#
_output_shapes
:���������*

DstT0
^
mean_absolute_error/zerosConst*
valueB
 *    *
_output_shapes
: *
dtype0
{
mean_absolute_error/totalVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*,
_class"
 loc:@mean_absolute_error/total*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: *
T0
`
mean_absolute_error/zeros_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
{
mean_absolute_error/countVariable*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*,
_class"
 loc:@mean_absolute_error/count*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
�
mean_absolute_error/count/readIdentitymean_absolute_error/count*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: *
T0
^
mean_absolute_error/SizeSizemean_absolute_error/ToFloat*
_output_shapes
: *
T0
o
mean_absolute_error/ToFloat_1Castmean_absolute_error/Size*

SrcT0*
_output_shapes
: *

DstT0
c
mean_absolute_error/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
	keep_dims( *
_output_shapes
: *
T0
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: *
T0*
use_locking( 
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: *
T0*
use_locking( 
b
mean_absolute_error/Greater/yConst*
valueB
 *    *
_output_shapes
: *
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
mean_absolute_error/value/eConst*
valueB
 *    *
_output_shapes
: *
dtype0
�
mean_absolute_error/valueSelectmean_absolute_error/Greatermean_absolute_error/Divmean_absolute_error/value/e*
_output_shapes
: *
T0
�
mean_absolute_error/Greater_1/yConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
valueB
 *    *
_output_shapes
: *
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
mean_absolute_error/update_op/eConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
valueB
 *    *
_output_shapes
: *
dtype0
�
mean_absolute_error/update_opSelectmean_absolute_error/Greater_1mean_absolute_error/Div_1mean_absolute_error/update_op/e*
_output_shapes
: *
T0
�

group_depsNoOp^precision/update_op^accuracy/update_op^mean_absolute_error/update_op^mean/update_op^mean_squared_error/update_op^recall/update_op
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0
�
save/save/tensor_namesConst*�
value�B�Bcentered_bias_weightBdnn_logits/biasesBdnn_logits/weightsBglobal_stepBhiddenlayer_0/biasesBhiddenlayer_0/weightsBhiddenlayer_1/biasesBhiddenlayer_1/weights*
_output_shapes
:*
dtype0
�
save/save/shapes_and_slicesConst*k
valuebB`B B15 0,15B10 15 0,10:0,15B B10 0,10B16384 10 0,16384:0,10B10 0,10B10 10 0,10:0,10*
_output_shapes
:*
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
^save/save*
_class
loc:@save/Const*
_output_shapes
: *
T0
s
save/restore_slice/tensor_nameConst*%
valueB Bcentered_bias_weight*
_output_shapes
: *
dtype0
c
"save/restore_slice/shape_and_sliceConst*
valueB B *
_output_shapes
: *
dtype0
�
save/restore_sliceRestoreSlice
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/AssignAssigncentered_bias_weightsave/restore_slice*'
_class
loc:@centered_bias_weight*
validate_shape(*
_output_shapes
:*
T0*
use_locking(
r
 save/restore_slice_1/tensor_nameConst*"
valueB Bdnn_logits/biases*
_output_shapes
: *
dtype0
l
$save/restore_slice_1/shape_and_sliceConst*
valueB B15 0,15*
_output_shapes
: *
dtype0
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*+
_class!
loc:@dnn_logits/biases/part_0*
validate_shape(*
_output_shapes
:*
T0*
use_locking(
s
 save/restore_slice_2/tensor_nameConst*#
valueB Bdnn_logits/weights*
_output_shapes
: *
dtype0
t
$save/restore_slice_2/shape_and_sliceConst* 
valueB B10 15 0,10:0,15*
_output_shapes
: *
dtype0
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*,
_class"
 loc:@dnn_logits/weights/part_0*
validate_shape(*
_output_shapes

:
*
T0*
use_locking(
l
 save/restore_slice_3/tensor_nameConst*
valueB Bglobal_step*
_output_shapes
: *
dtype0
e
$save/restore_slice_3/shape_and_sliceConst*
valueB B *
_output_shapes
: *
dtype0
�
save/restore_slice_3RestoreSlice
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
dt0	*
preferred_shard���������*
_output_shapes
:
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
T0	*
use_locking(
u
 save/restore_slice_4/tensor_nameConst*%
valueB Bhiddenlayer_0/biases*
_output_shapes
: *
dtype0
l
$save/restore_slice_4/shape_and_sliceConst*
valueB B10 0,10*
_output_shapes
: *
dtype0
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
validate_shape(*
_output_shapes
:
*
T0*
use_locking(
v
 save/restore_slice_5/tensor_nameConst*&
valueB Bhiddenlayer_0/weights*
_output_shapes
: *
dtype0
z
$save/restore_slice_5/shape_and_sliceConst*&
valueB B16384 10 0,16384:0,10*
_output_shapes
: *
dtype0
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
validate_shape(* 
_output_shapes
:
��
*
T0*
use_locking(
u
 save/restore_slice_6/tensor_nameConst*%
valueB Bhiddenlayer_1/biases*
_output_shapes
: *
dtype0
l
$save/restore_slice_6/shape_and_sliceConst*
valueB B10 0,10*
_output_shapes
: *
dtype0
�
save/restore_slice_6RestoreSlice
save/Const save/restore_slice_6/tensor_name$save/restore_slice_6/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_6Assignhiddenlayer_1/biases/part_0save/restore_slice_6*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
validate_shape(*
_output_shapes
:
*
T0*
use_locking(
v
 save/restore_slice_7/tensor_nameConst*&
valueB Bhiddenlayer_1/weights*
_output_shapes
: *
dtype0
t
$save/restore_slice_7/shape_and_sliceConst* 
valueB B10 10 0,10:0,10*
_output_shapes
: *
dtype0
�
save/restore_slice_7RestoreSlice
save/Const save/restore_slice_7/tensor_name$save/restore_slice_7/shape_and_slice*
dt0*
preferred_shard���������*
_output_shapes
:
�
save/Assign_7Assignhiddenlayer_1/weights/part_0save/restore_slice_7*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
validate_shape(*
_output_shapes

:

*
T0*
use_locking(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
�
initNoOp^mean/total/Assign^mean/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign^accuracy/total/Assign^accuracy/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign
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
IsVariableInitialized_3IsVariableInitializedhiddenlayer_1/weights/part_0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_4IsVariableInitializedhiddenlayer_1/biases/part_0*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_5IsVariableInitializeddnn_logits/weights/part_0*,
_class"
 loc:@dnn_logits/weights/part_0*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_6IsVariableInitializeddnn_logits/biases/part_0*+
_class!
loc:@dnn_logits/biases/part_0*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_7IsVariableInitializedcentered_bias_weight*'
_class
loc:@centered_bias_weight*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_8IsVariableInitialized
mean/total*
_class
loc:@mean/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitialized
mean/count*
_class
loc:@mean/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_10IsVariableInitializedprecision/true_positives/count*1
_class'
%#loc:@precision/true_positives/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_11IsVariableInitializedprecision/false_positives/count*2
_class(
&$loc:@precision/false_positives/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_12IsVariableInitializedaccuracy/total*!
_class
loc:@accuracy/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedaccuracy/count*!
_class
loc:@accuracy/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_14IsVariableInitializedmean_squared_error/total*+
_class!
loc:@mean_squared_error/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedmean_squared_error/count*+
_class!
loc:@mean_squared_error/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedrecall/true_positives/count*.
_class$
" loc:@recall/true_positives/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedrecall/false_negatives/count*/
_class%
#!loc:@recall/false_negatives/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_18IsVariableInitializedmean_absolute_error/total*,
_class"
 loc:@mean_absolute_error/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_19IsVariableInitializedmean_absolute_error/count*,
_class"
 loc:@mean_absolute_error/count*
dtype0*
_output_shapes
: 
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17IsVariableInitialized_18IsVariableInitialized_19*
_output_shapes
:*

axis *
N*
T0

:

LogicalNot
LogicalNotpack*
_output_shapes
:
�
Const_1Const*�
value�B�Bglobal_stepBhiddenlayer_0/weights/part_0Bhiddenlayer_0/biases/part_0Bhiddenlayer_1/weights/part_0Bhiddenlayer_1/biases/part_0Bdnn_logits/weights/part_0Bdnn_logits/biases/part_0Bcentered_bias_weightB
mean/totalB
mean/countBprecision/true_positives/countBprecision/false_positives/countBaccuracy/totalBaccuracy/countBmean_squared_error/totalBmean_squared_error/countBrecall/true_positives/countBrecall/false_negatives/countBmean_absolute_error/totalBmean_absolute_error/count*
_output_shapes
:*
dtype0
[
$report_uninitialized_variables/ShapeShapeConst_1*
_output_shapes
:*
T0
t
*report_uninitialized_variables/Slice/beginConst*
valueB:*
_output_shapes
:*
dtype0
|
)report_uninitialized_variables/Slice/sizeConst*
valueB:
���������*
_output_shapes
:*
dtype0
�
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
_output_shapes
: *
Index0*
T0
r
0report_uninitialized_variables/concat/concat_dimConst*
value	B : *
_output_shapes
: *
dtype0
�
.report_uninitialized_variables/concat/values_0Const*
valueB:
���������*
_output_shapes
:*
dtype0
�
%report_uninitialized_variables/concatConcat0report_uninitialized_variables/concat/concat_dim.report_uninitialized_variables/concat/values_0$report_uninitialized_variables/Slice*
_output_shapes
:*
N*
T0
�
&report_uninitialized_variables/ReshapeReshapeConst_1%report_uninitialized_variables/concat*
_output_shapes
:*
T0
�
.report_uninitialized_variables/Reshape_1/shapeConst*
valueB:
���������*
_output_shapes
:*
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
:���������*
squeeze_dims
*
T0	
�
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*#
_output_shapes
:���������*
Tparams0*
Tindices0	*
validate_indices("
���e       ��Zi	C2��`�A�*W

	precision    

accuracy(
�>


MAE�3n@

loss���?


MSEίB

recall    �7	we       ��Zi	ӑ]��`�A�*W

	precision    

accuracy�?


MAE�3@

loss���?


MSE®A

recall    �Ƿe       ��Zi	J�p�`�A�*W

	precision    

accuracyu�%?


MAEu�@

loss�~?


MSE�e�A

recall    S Q	e       ��Zi	iY֣�`�A�	*W

	precision    

accuracy��4?


MAEe+�?

loss�]?


MSE�:NA

recall    F?�te       ��Zi	�[F(�`�A�*W

	precision  �?

accuracy�{=?


MAE}��?

loss�E?


MSEc0A

recall  �>O?��e       ��Zi	Q�7��`�A�*W

	precision  �?

accuracy]C?


MAE�ҭ?

loss<V4?


MSE�A

recall  `?�&�e       ��Zi	��1�`�A�*W

	precision  �?

accuracyB�G?


MAEY�?

loss�(?


MSEJA

recall�Nl?�	�e       ��Zi	R����`�A�*W

	precision  �?

accuracy�xK?


MAE�?

loss�?


MSE`5	A

recall�(q?�?@�e       ��Zi	��M8�`�A�*W

	precision  �?

accuracy��M?


MAE[	�?

loss�?


MSE�� A

recall�n?�7l3e       ��Zi	�[��`�A�*W

	precision  �?

accuracy�,Q?


MAE��?

loss�?


MSE���@

recall=�s?���7e       ��Zi	��>�`�A�*W

	precision  �?

accuracygS?


MAE2b�?

loss#
?


MSE:�@

recall#,w?P$e       ��Zi	��G��`�A�*W

	precision  �?

accuracyU?


MAEJ�{?

loss�?


MSE�H�@

recall�Oz?�l1e       ��Zi	�юE�`�A�*W

	precision  �?

accuracy�RW?


MAE��k?

loss���>


MSE��@

recallUU}?��$�e       ��Zi	9��`�A� *W

	precision  �?

accuracy)�X?


MAE`>d?

loss���>


MSEqQ�@

recallj}?���Ne       ��Zi	��L�`�A�#*W

	precision  �?

accuracy�
Z?


MAEw�\?

loss`P�>


MSEi��@

recall��}?���-e       ��Zi	��T��`�A�%*W

	precision  �?

accuracy�'[?


MAE��W?

loss���>


MSEN�@

recall��}?ު�e       ��Zi	��S�`�A�'*W

	precision  �?

accuracy�[?


MAEz�T?

lossb��>


MSE1��@

recall8�}?C�e       ��Zi	����`�A�**W

	precision  �?

accuracyg\?


MAE�WM?

lossݳ�>


MSE�M�@

recall�}?=�}e       ��Zi	��Z�`�A�,*W

	precision  �?

accuracy��]?


MAE�C?

loss�C�>


MSEh�@

recall��}?Z�Qe       ��Zi	����`�A�.*W

	precision  �?

accuracyqQ^?


MAE�mB?

loss���>


MSE��@

recall��}?4�e       ��Zi	�*3`�`�A�1*W

	precision  �?

accuracyAh^?


MAE�4B?

loss���>


MSE��@

recall��}?��b�e       ��Zi	⫷��`�A�3*W

	precision  �?

accuracyAh^?


MAEw�B?

losse��>


MSEm԰@

recall��}?lD1�e       ��Zi		�:g�`�A�5*W

	precision  �?

accuracy�^?


MAE�>?

loss06�>


MSE��@

recallG�}?��*e       ��Zi	�{���`�A�8*W

	precision  �?

accuracyV_?


MAEX =?

lossd�>


MSE��@

recall��}?�`�e       ��Zi	P�tn�`�A�:*W

	precision  �?

accuracy�n_?


MAE�h:?

loss���>


MSE���@

recall��}?�le       ��Zi	��+��`�A�<*W

	precision  �?

accuracy�y_?


MAE-$:?

lossB��>


MSE�y�@

recallG�}?�n��e       ��Zi	���u�`�A�?*W

	precision  �?

accuracy��_?


MAE:�8?

loss���>


MSE�w�@

recallG�}?@���e       ��Zi	����`�A�A*W

	precision  �?

accuracy�_?


MAE:�8?

loss���>


MSEA��@

recall��}?e��e       ��Zi	?i}�`�A�C*W

	precision  �?

accuracy3?


MAES`�?

lossν�?


MSEZusA

recall  �?7��Xe       ��Zi	�L� �`�A�F*W

	precision  �?

accuracyy0`?


MAE�=5?

loss��>


MSE��@

recallG�}?����e       ��Zi	�a��`�A�H*W

	precision  �?

accuracyy0`?


MAE�7?

loss�u�>


MSE|��@

recall��}?���e       ��Zi	��'�`�A�K*W

	precision  �?

accuracy^`?


MAE�C6?

loss���>


MSE2k�@

recall��}?5�ne       ��Zi	�{��`�A�M*W

	precision  �?

accuracy%`?


MAE	a7?

loss���>


MSEZ~�@

recall��}?tҊ�e       ��Zi	�4U�`�A�O*W

	precision  �?

accuracyB`?


MAE�7?

loss\�>


MSE��@

recall��}?��bye       ��Zi	�)��`�A�R*W

	precision  �?

accuracy�`?


MAE�U7?

loss�&�>


MSE-�@

recall��}?���ve       ��Zi	�u��`�A�T*W

	precision  �?

accuracy�`?


MAE��8?

loss��>


MSEg��@

recall��}?�8�e       ��Zi	�7���`�A�V*W

	precision  �?

accuracyy0`?


MAEql7?

losst��>


MSE�q�@

recall��}?8qe       ��Zi	��9�`�A�Y*W

	precision  �?

accuracy�`?


MAE:�8?

loss
��>


MSEu�@

recall��}?}���e       ��Zi	����`�A�[*W

	precision  �?

accuracy�`?


MAE� 8?

loss��>


MSEB�@

recall��}?٣y�e       ��Zi	z��&�`�A�]*W

	precision  �?

accuracy�;`?


MAE�q6?

lossi��>


MSE�)�@

recall��}?[�?�e       ��Zi	x���`�A�`*W

	precision  �?

accuracy�R`?


MAE�q6?

loss@��>


MSEC��@

recall��}?��e       ��Zi	��.�`�A�b*W

	precision  �?

accuracyIG`?


MAE�7?

loss�>


MSE�^�@

recall��}?%�Re       ��Zi	D�w��`�A�d*W

	precision  �?

accuracyP�`?


MAEј5?

loss
,�>


MSEYؤ@

recalla�}?T�)�e       ��Zi	9�W6�`�A�g*W

	precision  �?

accuracy��`?


MAEј5?

loss�M�>


MSEu�@

recalla�}?St%e       ��Zi	�tq��`�A�i*W

	precision  �?

accuracy��`?


MAE�B4?

loss�s�>


MSE�s�@

recall��}?ۯZe       ��Zi	�=�`�A�k*W

	precision  �?

accuracy^�`?


MAES<3?

loss���>


MSEZ��@

recall��}?�v�e       ��Zi	;R��`�A�n*W

	precision  �?

accuracy.	a?


MAEu�2?

lossd��>


MSE���@

recalla�}?�0#�e       ��Zi	%vC�`�A�p*W

	precision  �?

accuracy�a?


MAE`2?

loss,��>


MSE�a�@

recalla�}?��~:e       ��Zi	����`�A�r*W

	precision  �?

accuracy�a?


MAE�*2?

loss�*�>


MSE�|�@

recall��}?BU�e       ��Zi	�|�I�`�A�u*W

	precision  �?

accuracye+a?


MAE��1?

loss�Z�>


MSE��@

recall��}?�_#|e       ��Zi	�q���`�A�w*W

	precision  �?

accuracy�Ma?


MAE�Q1?

loss,��>


MSE��@

recall��}?3��e       ��Zi	A�P�`�A�y*W

	precision  �?

accuracy�Ma?


MAEt1?

loss׻�>


MSEt�@

recalla�}?�p�e       ��Zi	.e��`�A�|*W

	precision  �?

accuracy5Ba?


MAE�h1?

loss���>


MSE� �@

recalla�}?�kUWe       ��Zi		vqV�`�A�~*W

	precision  �?

accuracylda?


MAE��0?

lossM%�>


MSE�7�@

recalla�}?I,Tdf       r;�j	�v���`�A�*W

	precision  �?

accuracy�Ma?


MAE=�0?

loss_S�>


MSET�@

recall��}?�!�f       r;�j	��\�`�A��*W

	precision  �?

accuracy�6a?


MAE�1?

lossK��>


MSE�ߠ@

recall��}?��S�f       r;�j	��B��`�A̅*W

	precision  �?

accuracy�a?


MAE02?

loss;��>


MSE�M�@

recall��}?b@�f       r;�j	"4�c�`�A��*W

	precision  �?

accuracye+a?


MAE��1?

loss��>


MSE� �@

recall��}?A�f       r;�j	W����`�A��*W

	precision  �?

accuracy5Ba?


MAE��0?

loss��>


MSE���@

recall��}?]B,�f       r;�j	iYxj�`�AЌ*W

	precision  �?

accuracy�6a?


MAE�1?

loss�)�>


MSE��@

recall��}?N�S�f       r;�j	`}��`�A��*W

	precision  �?

accuracy�6a?


MAE�1?

loss)O�>


MSEw�@

recallG�}?O��f       r;�j	��q�`�A��*W

	precision  �?

accuracy�6a?


MAE;1?

loss�n�>


MSE��@

recallG�}?'��f       r;�j	����`�Aԓ*W

	precision  �?

accuracy�Ma?


MAE_b0?

lossے�>


MSE�M�@

recallG�}?�C�f       r;�j	C�y�`�A��*W

	precision  �?

accuracylda?


MAE��0?

loss���>


MSEu��@

recallG�}?��	�f       r;�j	�D���`�A��*W

	precision  �?

accuracy�oa?


MAE��0?

loss��>


MSEO��@

recallG�}?��5�f       r;�j	�6���`�Aؚ*W

	precision  �?

accuracyۨa?


MAEm./?

loss��>


MSE7|�@

recall  �?�Xf       r;�j	���`�A��*W

	precision  �?

accuracyۨa?


MAE\/?

loss���>


MSE���@

recall  �?'�Lf       r;�j	»��`�A��*W

	precision  �?

accuracyz�a?


MAE�>.?

lossz�>


MSE���@

recall  �?�~��f       r;�j	#ӊ�`�Aܡ*W

	precision  �?

accuracy��a?


MAE�3.?

loss��>


MSE,��@

recall  �?��f       r;�j	�K��`�A��*W

	precision  �?

accuracyJ�a?


MAEӓ-?

loss��>


MSE~�@

recall  �?&�vf       r;�j	����`�A��*W

	precision  �?

accuracy��a?


MAE�-?

loss�#�>


MSE�x�@

recall  �?I��f       r;�j	����`�A�*W

	precision  �?

accuracyJ�a?


MAEӓ-?

loss�'�>


MSE~�@

recall  �? ��f       r;�j	i��`�A��*W

	precision  �?

accuracyz�a?


MAEPJ.?

loss�+�>


MSE�ӝ@

recall  �?*��ef       r;�j	��?��`�A��*W

	precision  �?

accuracyb?


MAEl�-?

loss�)�>


MSE�8�@

recall  �?�u��f       r;�j	�-�"�`�A�*W

	precision  �?

accuracy�b?


MAE}-?

loss'�>


MSE(7�@

recall  �?��f       r;�j	>�.��`�A��*W

	precision  �?

accuracy�b?


MAE�!-?

loss+�>


MSE�ۜ@

recall  �?N �f       r;�j	{��)�`�A��*W

	precision  �?

accuracyQ&b?


MAE^-?

loss�>


MSE}ڜ@

recall  �?#�f       r;�j	 #���`�A�*W

	precision  �?

accuracy�1b?


MAE&�,?

loss��>


MSE�͜@

recall  �?&%�f       r;�j	��0�`�A��*W

	precision  �?

accuracy =b?


MAE��,?

lossI��>


MSEU��@

recall  �?Z��f       r;�j	��n��`�A��*W

	precision  �?

accuracy�Hb?


MAEyT,?

lossp ?


MSE?�@

recall  �?{BDf       r;�j	4L�7�`�A�*W

	precision  �?

accuracy�1b?


MAE��,?

loss<� ?


MSEǑ�@

recall  �?ck��f       r;�j	�<��`�A��*W

	precision  �?

accuracy =b?


MAEr,?

loss}X?


MSE�ܛ@

recall  �?��#f       r;�j	�s>�`�A��*W

	precision  �?

accuracy�1b?


MAEHk,?

loss�?


MSE�"�@

recall  �?�ُf       r;�j	�T���`�A��*W

	precision  �?

accuracy�Hb?


MAE
,?

loss�9?


MSEJۛ@

recall  �?��/f       r;�j	�ͼD�`�A��*W

	precision  �?

accuracy�Sb?


MAE̴+?

loss��?


MSE��@

recall  �?%�X;f       r;�j	�"��`�A��*W

	precision  �?

accuracy�Sb?


MAE̴+?

loss�?


MSE��@

recall  �?��Q�f       r;�j	�?K�`�A��*W

	precision  �?

accuracyX_b?


MAE�Y+?

loss��?


MSE�$�@

recall  �?�|[�f       r;�j	ۜ��`�A��*W

	precision  �?

accuracyX_b?


MAE�B+?

loss_�?


MSE��@

recall  �?Q*��f       r;�j	���Q�`�A��*W

	precision  �?

accuracy�jb?


MAE��*?

loss[X?


MSE�͚@

recall  �?��Ԡf       r;�j	�����`�A��*W

	precision  �?

accuracy�jb?


MAE��*?

loss��?


MSE�͚@

recall  �?����f       r;�j	t��W�`�A��*W

	precision  �?

accuracyX_b?


MAE� +?

loss(?


MSE��@

recall  �?Kj�`f       r;�j	��^��`�A��*W

	precision  �?

accuracy�jb?


MAEH�*?

lossr�?


MSEg��@

recall  �?p^�#f       r;�j	>o�^�`�A��*W

	precision  �?

accuracyX_b?


MAE� +?

lossE�?


MSE��@

recall  �?��f       r;�j	\�x��`�A��*W

	precision  �?

accuracy'vb?


MAEx�*?

loss�U?


MSE���@

recall  �?���f       r;�j	ma�e�`�A��*W

	precision  �?

accuracy'vb?


MAEx�*?

loss��?


MSE���@

recall  �?�(��f       r;�j	њ��`�A��*W

	precision  �?

accuracy'vb?


MAEx�*?

loss�?


MSE���@

recall  �?8�Z�f       r;�j	܂Om�`�A��*W

	precision  �?

accuracy'vb?


MAEx�*?

loss�y?


MSE���@

recall  �?���#f       r;�j	>��`�A��*W

	precision  �?

accuracyX_b?


MAE�++?

loss|�?


MSE��@

recall  �?3r��f       r;�j	��u�`�A��*W

	precision  �?

accuracyX_b?


MAE�++?

loss�5?


MSE��@

recall  �?�
B5f       r;�j	�:p��`�A��*W

	precision  �?

accuracy�jb?


MAE�*?

lossY�?


MSE,��@

recall  �?^�΍f       r;�j	_8}�`�A��*W

	precision  �?

accuracy�Sb?


MAE��+?

loss�?


MSE�j�@

recall  �?�[Cf       r;�j	_�  a�A��*W

	precision  �?

accuracy�Sb?


MAE��+?

lossI	?


MSE�j�@

recall  �?���f       r;�j	g��� a�A��*W

	precision  �?

accuracy�Sb?


MAE��+?

loss/�	?


MSE�j�@

recall  �?��Zf       r;�j	x,�a�A��*W

	precision  �?

accuracy�Sb?


MAE��+?

loss��	?


MSE�j�@

recall  �?a*�f       r;�j	��e�a�A��*W

	precision  �?

accuracy�Hb?


MAE��+?

loss�S
?


MSE�ś@

recall  �?vKCf       r;�j	�Fa�A��*W

	precision  �?

accuracyQ&b?


MAE��,?

lossK�
?


MSE�}�@

recall  �?���f       r;�j	(���a�A��*W

	precision  �?

accuracy�1b?


MAE��,?

loss��
?


MSE���@

recall  �?+2,f       r;�j	�ZNa�A��*W

	precision  �?

accuracy�1b?


MAE�,?

lossqS?


MSECu�@

recall  �?��X`f       r;�j	-70�a�A��*W

	precision  �?

accuracy�1b?


MAE�,?

loss��?


MSECu�@

recall  �?LLf       r;�j	�B�a�A�*W

	precision  �?

accuracy =b?


MAE�&,?

loss��?


MSE�@

recall  �?�1�f       r;�j	ʏ�a�A��*W

	precision  �?

accuracy =b?


MAE�&,?

loss�L?


MSE�@

recall  �?y��&f       r;�j	o��%a�A��*W

	precision  �?

accuracy =b?


MAE�&,?

loss�?


MSE�@

recall  �?�� �f       r;�j	�M�a�A�*W

	precision  �?

accuracy�Hb?


MAE:�+?

loss��?


MSE5�@

recall  �?z��f       r;�j	���,a�A��*W

	precision  �?

accuracy�Hb?


MAE:�+?

loss�=?


MSE5�@

recall  �?�Gf       r;�j	f�L�a�Ač*W

	precision  �?

accuracy�Hb?


MAE��+?

loss��?


MSE��@

recall  �?��wf       r;�j	�G�3a�A��*W

	precision  �?

accuracy =b?


MAE
,?

loss�?


MSE���@

recall  �?L���f       r;�j	$-6�a�A��*W

	precision  �?

accuracy =b?


MAE
,?

loss�'?


MSE���@

recall  �?�ff       r;�j	��v:a�AȔ*W

	precision  �?

accuracy�Hb?


MAEk�+?

loss#t?


MSEQ�@

recall  �?ə Bf       r;�j	�%��a�A��*W

	precision  �?

accuracy�Sb?


MAE,�+?

loss��?


MSE��@

recall  �?ळ�f       r;�j	�KA	a�A��*W

	precision  �?

accuracy�Sb?


MAE�{+?

loss�
?


MSE���@

recall  �?�Jnf       r;�j	�Y�	a�A̛*W

	precision  �?

accuracy�Sb?


MAE�{+?

loss�T?


MSE���@

recall  �?�̻�f       r;�j	��tG
a�A��*W

	precision  �?

accuracy�Sb?


MAE�{+?

lossB�?


MSE���@

recall  �?���f       r;�j	n� �
a�A��*W

	precision  �?

accuracy�Hb?


MAEd�+?

lossz�?


MSE�ߛ@

recall  �?��?f       r;�j	0R�La�AТ*W

	precision  �?

accuracy�Hb?


MAEd�+?

lossw.?


MSE�ߛ@

recall  �?�Ú�f       r;�j	�XI�a�A��*W

	precision  �?

accuracy�Hb?


MAEd�+?

loss�u?


MSE�ߛ@

recall  �?�2:<f       r;�j	�xSa�A��*W

	precision  �?

accuracy�Hb?


MAEd�+?

lossǼ?


MSE�ߛ@

recall  �?ޙ�f       r;�j	����a�Aԩ*W

	precision  �?

accuracy�Hb?


MAEd�+?

loss�?


MSE�ߛ@

recall  �?��
tf       r;�j	Ǟ+Za�A��*W

	precision  �?

accuracy�Hb?


MAEd�+?

loss�G?


MSE�ߛ@

recall  �?���f       r;�j	&ԩ�a�A��*W

	precision  �?

accuracy�Hb?


MAEd�+?

loss��?


MSE�ߛ@

recall  �?	
]f       r;�j	R�aa�Aذ*W

	precision  �?

accuracy =b?


MAE�,?

loss?�?


MSE�:�@

recall  �?��X�f       r;�j	���a�A��*W

	precision  �?

accuracy�Hb?


MAEd�+?

loss�?


MSE�ߛ@

recall  �?�ye�f       r;�j	�ha�A��*W

	precision  �?

accuracy�Sb?


MAE%N+?

loss�V?


MSER��@

recall  �?�Y>Kf       r;�j	��V�a�Aܷ*W

	precision  �?

accuracy�Sb?


MAE%N+?

loss��?


MSER��@

recall  �?V�<�f       r;�j	$�Poa�A��*W

	precision  �?

accuracy�Sb?


MAE%N+?

loss��?


MSER��@

recall  �?�O�f       r;�j	�9Y�a�A��*W

	precision  �?

accuracy�Sb?


MAE%N+?

loss?


MSER��@

recall  �?�R��f       r;�j	�wa�A�*W

	precision  �?

accuracy�Hb?


MAEd�+?

loss�\?


MSE�ߛ@

recall  �?���Hf       r;�j	g��a�A��*W

	precision  �?

accuracy�Hb?


MAEd�+?

lossA�?


MSE�ߛ@

recall  �?�&kf       r;�j	�}a�A��*W

	precision  �?

accuracy�Hb?


MAEd�+?

loss��?


MSE�ߛ@

recall  �?�IWwf       r;�j	���a�A��*W

	precision  �?

accuracy�Hb?


MAEd�+?

loss�?


MSE�ߛ@

recall  �?��<1f       r;�j	�Tֆa�A��*W

	precision  �?

accuracy =b?


MAE̴+?

losseY?


MSE���@

recall  �?6T�f       r;�j	Np9
a�A��*W

	precision  �?

accuracy =b?


MAE̴+?

loss��?


MSE���@

recall  �?F@�f       r;�j	N:�a�A��*W

	precision  �?

accuracy�1b?


MAE
,?

loss��?


MSE<<�@

recall  �?���f       r;�j	��a�A��*W

	precision  �?

accuracy�1b?


MAE
,?

loss�?


MSE<<�@

recall  �?X�f       r;�j	�R�a�A��*W

	precision  �?

accuracy =b?


MAE�,?

loss�L?


MSE�:�@

recall  �?�Ԅ�f       r;�j	va�A��*W

	precision  �?

accuracy�1b?


MAEHk,?

loss̈?


MSEJ��@

recall  �?����f       r;�j	�?�a�A��*W

	precision  �?

accuracy�1b?


MAEHk,?

loss��?


MSEJ��@

recall  �?pr��f       r;�j	�}� a�A��*W

	precision  �?

accuracy�1b?


MAEHk,?

loss��?


MSEJ��@

recall  �?�#�f       r;�j	M@��a�A��*W

	precision  �?

accuracy�1b?


MAEHk,?

loss9?


MSEJ��@

recall  �?`��Xf       r;�j	ݾ�&a�A��*W

	precision  �?

accuracy�1b?


MAEHk,?

loss)s?


MSEJ��@

recall  �?�Nr�f       r;�j	ǩa�A��*W

	precision  �?

accuracy�1b?


MAEHk,?

lossp�?


MSEJ��@

recall  �?u=Xhf       r;�j	��:-a�A��*W

	precision  �?

accuracy�1b?


MAEHk,?

lossY�?


MSEJ��@

recall  �?��'3f       r;�j	/�a�A��*W

	precision  �?

accuracy�1b?


MAE�_,?

loss�?


MSEv��@

recall  �?�T{
f       r;�j	n��4a�A��*W

	precision  �?

accuracy�1b?


MAE�,?

loss0V?


MSE��@

recall  �?2^�f       r;�j	$k7�a�A��*W

	precision  �?

accuracy�1b?


MAE�,?

loss�?


MSE��@

recall  �?�c�f       r;�j	�=�;a�A��*W

	precision  �?

accuracy�1b?


MAE�,?

loss��?


MSE��@

recall  �?4>m�f       r;�j	eװ�a�A��*W

	precision  �?

accuracy�1b?


MAE�,?

loss��?


MSE��@

recall  �?��t�f       r;�j	d��Ba�A��*W

	precision  �?

accuracy�1b?


MAE�,?

loss2?


MSE��@

recall  �?�z��f       r;�j	S�a�a�A��*W

	precision  �?

accuracy�1b?


MAE�,?

lossLh?


MSE��@

recall  �?\���f       r;�j	?��Ia�A��*W

	precision  �?

accuracy�1b?


MAE�,?

loss�?


MSE��@

recall  �?�=�f       r;�j	@�=�a�A��*W

	precision  �?

accuracy =b?


MAE��,?

loss��?


MSE�@

recall  �?���	f       r;�j	j�Qa�A��*W

	precision  �?

accuracy�Hb?


MAE�_,?

loss�?


MSE;̜@

recall  �?�dwf       r;�j	��a�A��*W

	precision  �?

accuracy�Hb?


MAE�_,?

loss�;?


MSE;̜@

recall  �?yX�f       r;�j	O��Xa�A��*W

	precision  �?

accuracyX_b?


MAE3�+?

loss	p?


MSE�=�@

recall  �?�n�f       r;�j	&J[�a�A��*W

	precision  �?

accuracyX_b?


MAE3�+?

lossx�?


MSE�=�@

recall  �?2n�f       r;�j	���_ a�A܂*W

	precision  �?

accuracyX_b?


MAE3�+?

loss��?


MSE�=�@

recall  �?kgf       r;�j	�~"� a�A��*W

	precision  �?

accuracyX_b?


MAE3�+?

loss
?


MSE�=�@

recall  �?�p��