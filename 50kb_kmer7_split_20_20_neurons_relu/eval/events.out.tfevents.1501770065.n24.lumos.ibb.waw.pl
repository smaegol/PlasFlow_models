       �K"	  @T�`�Abrain.Event:2K�.�E�      #��	�cT�`�A"��
m
global_stepVariable*
_output_shapes
: *
shape: *
shared_name *
dtype0	*
	container 

global_step/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@global_step*
value	B	 R *
dtype0	
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_output_shapes
: *
_class
loc:@global_step*
use_locking(*
validate_shape(
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
Y
inputPlaceholder*)
_output_shapes
:�����������*
dtype0*
shape: 
T
outputPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape: 
�
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
_output_shapes
:*
valueB"���� @  *
dtype0
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*
T0*)
_output_shapes
:�����������
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
_output_shapes
: *
value	B :*
dtype0
�
<input_from_feature_columns/input_from_feature_columns/concatIdentity=input_from_feature_columns/input_from_feature_columns/Reshape*
T0*)
_output_shapes
:�����������
�
!hiddenlayer_0/hiddenlayer_0/ShapeShape<input_from_feature_columns/input_from_feature_columns/concat*
T0*
_output_shapes
:
�
"hiddenlayer_0/hiddenlayer_0/unpackUnpack!hiddenlayer_0/hiddenlayer_0/Shape*
T0*

axis *
_output_shapes
: : *	
num
�
hiddenlayer_0/weights/part_0Variable* 
_output_shapes
:
��*
shape:
��*
shared_name *
dtype0*
	container 
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB" @     *
dtype0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB
 *����*
dtype0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB
 *���<*
dtype0
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
T0* 
_output_shapes
:
��*

seed**/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
seed2*
dtype0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_0/weights/part_0/Initializer/random_uniform/max;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*
T0* 
_output_shapes
:
��*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0* 
_output_shapes
:
��*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
T0* 
_output_shapes
:
��*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
use_locking(*
validate_shape(
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
T0* 
_output_shapes
:
��*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
o
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
T0* 
_output_shapes
:
��
�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b( 
�
hiddenlayer_0/biases/part_0Variable*
_output_shapes
:*
shape:*
shared_name *
dtype0*
	container 
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
valueB*    *
dtype0
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
use_locking(*
validate_shape(
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*
T0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0
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
zero_fraction/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
zero_fraction/EqualEqual hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*
T0*'
_output_shapes
:���������
p
zero_fraction/CastCastzero_fraction/Equal*

DstT0*'
_output_shapes
:���������*

SrcT0

d
zero_fraction/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
	keep_dims( *
T0*
_output_shapes
: 
x
ScalarSummary/tagsConst*
_output_shapes
: *6
value-B+ B%hiddenlayer_0:fraction_of_zero_values*
dtype0
g
ScalarSummaryScalarSummaryScalarSummary/tagszero_fraction/Mean*
T0*
_output_shapes
: 
m
HistogramSummary/tagConst*
_output_shapes
: *)
value B Bhiddenlayer_0:activation*
dtype0
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
"hiddenlayer_1/hiddenlayer_1/unpackUnpack!hiddenlayer_1/hiddenlayer_1/Shape*
T0*

axis *
_output_shapes
: : *	
num
�
hiddenlayer_1/weights/part_0Variable*
_output_shapes

:*
shape
:*
shared_name *
dtype0*
	container 
�
=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB"      *
dtype0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB
 *�Kƾ*
dtype0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB
 *�K�>*
dtype0
�
Ehiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
T0*
_output_shapes

:*

seed**/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
seed2.*
dtype0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_1/weights/part_0/Initializer/random_uniform/max;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
7hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
#hiddenlayer_1/weights/part_0/AssignAssignhiddenlayer_1/weights/part_07hiddenlayer_1/weights/part_0/Initializer/random_uniform*
T0*
_output_shapes

:*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
use_locking(*
validate_shape(
�
!hiddenlayer_1/weights/part_0/readIdentityhiddenlayer_1/weights/part_0*
T0*
_output_shapes

:*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
m
hiddenlayer_1/weightsIdentity!hiddenlayer_1/weights/part_0/read*
T0*
_output_shapes

:
�
"hiddenlayer_1/hiddenlayer_1/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reluhiddenlayer_1/weights*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b( 
�
hiddenlayer_1/biases/part_0Variable*
_output_shapes
:*
shape:*
shared_name *
dtype0*
	container 
�
-hiddenlayer_1/biases/part_0/Initializer/zerosConst*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
valueB*    *
dtype0
�
"hiddenlayer_1/biases/part_0/AssignAssignhiddenlayer_1/biases/part_0-hiddenlayer_1/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
use_locking(*
validate_shape(
�
 hiddenlayer_1/biases/part_0/readIdentityhiddenlayer_1/biases/part_0*
T0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_1/biases/part_0
g
hiddenlayer_1/biasesIdentity hiddenlayer_1/biases/part_0/read*
T0*
_output_shapes
:
�
#hiddenlayer_1/hiddenlayer_1/BiasAddBiasAdd"hiddenlayer_1/hiddenlayer_1/MatMulhiddenlayer_1/biases*
T0*
data_formatNHWC*'
_output_shapes
:���������

 hiddenlayer_1/hiddenlayer_1/ReluRelu#hiddenlayer_1/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:���������
Y
zero_fraction_1/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
zero_fraction_1/EqualEqual hiddenlayer_1/hiddenlayer_1/Reluzero_fraction_1/zero*
T0*'
_output_shapes
:���������
t
zero_fraction_1/CastCastzero_fraction_1/Equal*

DstT0*'
_output_shapes
:���������*

SrcT0

f
zero_fraction_1/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
	keep_dims( *
T0*
_output_shapes
: 
z
ScalarSummary_1/tagsConst*
_output_shapes
: *6
value-B+ B%hiddenlayer_1:fraction_of_zero_values*
dtype0
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
T0*
_output_shapes
: 
o
HistogramSummary_1/tagConst*
_output_shapes
: *)
value B Bhiddenlayer_1:activation*
dtype0
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
dnn_logits/dnn_logits/unpackUnpackdnn_logits/dnn_logits/Shape*
T0*

axis *
_output_shapes
: : *	
num
�
dnn_logits/weights/part_0Variable*
_output_shapes

:*
shape
:*
shared_name *
dtype0*
	container 
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*,
_class"
 loc:@dnn_logits/weights/part_0*
valueB"      *
dtype0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
valueB
 *��Ӿ*
dtype0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
valueB
 *���>*
dtype0
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*
T0*
_output_shapes

:*

seed**,
_class"
 loc:@dnn_logits/weights/part_0*
seed2L*
dtype0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/subSub8dnn_logits/weights/part_0/Initializer/random_uniform/max8dnn_logits/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/mulMulBdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn_logits/weights/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:*,
_class"
 loc:@dnn_logits/weights/part_0
�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:*,
_class"
 loc:@dnn_logits/weights/part_0
�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
T0*
_output_shapes

:*,
_class"
 loc:@dnn_logits/weights/part_0*
use_locking(*
validate_shape(
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*
T0*
_output_shapes

:*,
_class"
 loc:@dnn_logits/weights/part_0
g
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
T0*
_output_shapes

:
�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_1/hiddenlayer_1/Reludnn_logits/weights*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b( 
�
dnn_logits/biases/part_0Variable*
_output_shapes
:*
shape:*
shared_name *
dtype0*
	container 
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
_output_shapes
:*+
_class!
loc:@dnn_logits/biases/part_0*
valueB*    *
dtype0
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
T0*
_output_shapes
:*+
_class!
loc:@dnn_logits/biases/part_0*
use_locking(*
validate_shape(
�
dnn_logits/biases/part_0/readIdentitydnn_logits/biases/part_0*
T0*
_output_shapes
:*+
_class!
loc:@dnn_logits/biases/part_0
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
zero_fraction_2/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
zero_fraction_2/EqualEqualdnn_logits/dnn_logits/BiasAddzero_fraction_2/zero*
T0*'
_output_shapes
:���������
t
zero_fraction_2/CastCastzero_fraction_2/Equal*

DstT0*'
_output_shapes
:���������*

SrcT0

f
zero_fraction_2/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
{
zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
	keep_dims( *
T0*
_output_shapes
: 
w
ScalarSummary_2/tagsConst*
_output_shapes
: *3
value*B( B"dnn_logits:fraction_of_zero_values*
dtype0
m
ScalarSummary_2ScalarSummaryScalarSummary_2/tagszero_fraction_2/Mean*
T0*
_output_shapes
: 
l
HistogramSummary_2/tagConst*
_output_shapes
: *&
valueB Bdnn_logits:activation*
dtype0
~
HistogramSummary_2HistogramSummaryHistogramSummary_2/tagdnn_logits/dnn_logits/BiasAdd*
T0*
_output_shapes
: 
R
zerosConst*
_output_shapes
:*
valueB*    *
dtype0
~
centered_bias_weightVariable*
_output_shapes
:*
shape:*
shared_name *
dtype0*
	container 
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
T0*
_output_shapes
:*'
_class
loc:@centered_bias_weight*
use_locking(*
validate_shape(
�
centered_bias_weight/readIdentitycentered_bias_weight*
T0*
_output_shapes
:*'
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
ReshapeReshapecentered_bias_weight/readReshape/shape*
T0*
_output_shapes
:
�
ScalarSummary_3/tagsConst*
_output_shapes
:*�
value�B�Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14*
dtype0
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
ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
	keep_dims( *
T0*
_output_shapes
: 
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
shape: *
shared_name *
dtype0*
	container 
�
mean/total/AssignAssign
mean/total
mean/zeros*
T0*
_output_shapes
: *
_class
loc:@mean/total*
use_locking(*
validate_shape(
g
mean/total/readIdentity
mean/total*
T0*
_output_shapes
: *
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
shape: *
shared_name *
dtype0*
	container 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
T0*
_output_shapes
: *
_class
loc:@mean/count*
use_locking(*
validate_shape(
g
mean/count/readIdentity
mean/count*
T0*
_output_shapes
: *
_class
loc:@mean/count
8
	mean/SizeSizeloss*
T0*
_output_shapes
: 
Q
mean/ToFloat_1Cast	mean/Size*

DstT0*
_output_shapes
: *

SrcT0
M

mean/ConstConst*
_output_shapes
: *
valueB *
dtype0
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
T0*
_output_shapes
: *
_class
loc:@mean/total*
use_locking( 
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
T0*
_output_shapes
: *
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
mean/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
[

mean/valueSelectmean/Greatermean/Divmean/value/e*
T0*
_output_shapes
: 
y
mean/Greater_1/yConst^mean/AssignAdd^mean/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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
mean/update_op/eConst^mean/AssignAdd^mean/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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

DstT0*#
_output_shapes
:���������*

SrcT0	
R
ArgMax/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
Y
ArgMaxArgMaxBiasAddArgMax/dimension*
T0*#
_output_shapes
:���������
b
 precision/true_positives/Equal/yConst*
_output_shapes
: *
value	B	 R*
dtype0	

precision/true_positives/EqualEqualoutput precision/true_positives/Equal/y*
T0	*#
_output_shapes
:���������
d
"precision/true_positives/Equal_1/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
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
shape: *
shared_name *
dtype0*
	container 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
T0*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count*
use_locking(*
validate_shape(
�
#precision/true_positives/count/readIdentityprecision/true_positives/count*
T0*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count
�
 precision/true_positives/ToFloatCast#precision/true_positives/LogicalAnd*

DstT0*#
_output_shapes
:���������*

SrcT0

s
!precision/true_positives/IdentityIdentity#precision/true_positives/count/read*
T0*
_output_shapes
: 
h
precision/true_positives/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
T0*
_output_shapes
: *1
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
precision/false_positives/EqualEqualoutput!precision/false_positives/Equal/y*
T0	*#
_output_shapes
:���������
e
#precision/false_positives/Equal_1/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
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
shape: *
shared_name *
dtype0*
	container 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
T0*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count*
use_locking(*
validate_shape(
�
$precision/false_positives/count/readIdentityprecision/false_positives/count*
T0*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count
�
!precision/false_positives/ToFloatCast$precision/false_positives/LogicalAnd*

DstT0*#
_output_shapes
:���������*

SrcT0

u
"precision/false_positives/IdentityIdentity$precision/false_positives/count/read*
T0*
_output_shapes
: 
i
precision/false_positives/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
T0*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count*
use_locking( 
|
precision/addAdd!precision/true_positives/Identity"precision/false_positives/Identity*
T0*
_output_shapes
: 
X
precision/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
precision/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
precision/Greater_1/yConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
_output_shapes
: *
valueB
 *    *
dtype0
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
precision/update_op/eConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
_output_shapes
: *
valueB
 *    *
dtype0
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

DstT0*#
_output_shapes
:���������*

SrcT0	
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
shape: *
shared_name *
dtype0*
	container 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
T0*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total*
use_locking(*
validate_shape(
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*
T0*
_output_shapes
: *,
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
shape: *
shared_name *
dtype0*
	container 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
T0*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count*
use_locking(*
validate_shape(
�
mean_absolute_error/count/readIdentitymean_absolute_error/count*
T0*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count
^
mean_absolute_error/SizeSizemean_absolute_error/ToFloat*
T0*
_output_shapes
: 
o
mean_absolute_error/ToFloat_1Castmean_absolute_error/Size*

DstT0*
_output_shapes
: *

SrcT0
c
mean_absolute_error/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*
T0*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total*
use_locking( 
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
T0*
_output_shapes
: *,
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
mean_absolute_error/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
mean_absolute_error/valueSelectmean_absolute_error/Greatermean_absolute_error/Divmean_absolute_error/value/e*
T0*
_output_shapes
: 
�
mean_absolute_error/Greater_1/yConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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
mean_absolute_error/update_op/eConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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

DstT0*#
_output_shapes
:���������*

SrcT0	
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
shape: *
shared_name *
dtype0*
	container 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
T0*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total*
use_locking(*
validate_shape(
�
mean_squared_error/total/readIdentitymean_squared_error/total*
T0*
_output_shapes
: *+
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
shape: *
shared_name *
dtype0*
	container 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
T0*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count*
use_locking(*
validate_shape(
�
mean_squared_error/count/readIdentitymean_squared_error/count*
T0*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count
\
mean_squared_error/SizeSizemean_squared_error/ToFloat*
T0*
_output_shapes
: 
m
mean_squared_error/ToFloat_1Castmean_squared_error/Size*

DstT0*
_output_shapes
: *

SrcT0
b
mean_squared_error/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*
T0*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total*
use_locking( 
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
T0*
_output_shapes
: *+
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
mean_squared_error/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/Divmean_squared_error/value/e*
T0*
_output_shapes
: 
�
mean_squared_error/Greater_1/yConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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
mean_squared_error/update_op/eConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
�
mean_squared_error/update_opSelectmean_squared_error/Greater_1mean_squared_error/Div_1mean_squared_error/update_op/e*
T0*
_output_shapes
: 
_
recall/true_positives/Equal/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
y
recall/true_positives/EqualEqualoutputrecall/true_positives/Equal/y*
T0	*#
_output_shapes
:���������
a
recall/true_positives/Equal_1/yConst*
_output_shapes
: *
value	B	 R*
dtype0	
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
shape: *
shared_name *
dtype0*
	container 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
T0*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count*
use_locking(*
validate_shape(
�
 recall/true_positives/count/readIdentityrecall/true_positives/count*
T0*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count
�
recall/true_positives/ToFloatCast recall/true_positives/LogicalAnd*

DstT0*#
_output_shapes
:���������*

SrcT0

m
recall/true_positives/IdentityIdentity recall/true_positives/count/read*
T0*
_output_shapes
: 
e
recall/true_positives/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
T0*
_output_shapes
: *.
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
recall/false_negatives/EqualEqualoutputrecall/false_negatives/Equal/y*
T0	*#
_output_shapes
:���������
b
 recall/false_negatives/Equal_1/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
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
shape: *
shared_name *
dtype0*
	container 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
T0*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count*
use_locking(*
validate_shape(
�
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*
T0*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count
�
recall/false_negatives/ToFloatCast!recall/false_negatives/LogicalAnd*

DstT0*#
_output_shapes
:���������*

SrcT0

o
recall/false_negatives/IdentityIdentity!recall/false_negatives/count/read*
T0*
_output_shapes
: 
f
recall/false_negatives/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
T0*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count*
use_locking( 
s

recall/addAddrecall/true_positives/Identityrecall/false_negatives/Identity*
T0*
_output_shapes
: 
U
recall/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
recall/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
recall/Greater_1/yConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
_output_shapes
: *
valueB
 *    *
dtype0
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
recall/update_op/eConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
_output_shapes
: *
valueB
 *    *
dtype0
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

DstT0*#
_output_shapes
:���������*

SrcT0

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
shape: *
shared_name *
dtype0*
	container 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
T0*
_output_shapes
: *!
_class
loc:@accuracy/total*
use_locking(*
validate_shape(
s
accuracy/total/readIdentityaccuracy/total*
T0*
_output_shapes
: *!
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
shape: *
shared_name *
dtype0*
	container 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
T0*
_output_shapes
: *!
_class
loc:@accuracy/count*
use_locking(*
validate_shape(
s
accuracy/count/readIdentityaccuracy/count*
T0*
_output_shapes
: *!
_class
loc:@accuracy/count
A
accuracy/SizeSize	ToFloat_1*
T0*
_output_shapes
: 
Y
accuracy/ToFloat_1Castaccuracy/Size*

DstT0*
_output_shapes
: *

SrcT0
X
accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0
`
accuracy/SumSum	ToFloat_1accuracy/Const*
	keep_dims( *
T0*
_output_shapes
: 
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
T0*
_output_shapes
: *!
_class
loc:@accuracy/total*
use_locking( 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
T0*
_output_shapes
: *!
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
accuracy/value/eConst*
_output_shapes
: *
valueB
 *    *
dtype0
k
accuracy/valueSelectaccuracy/Greateraccuracy/Divaccuracy/value/e*
T0*
_output_shapes
: 
�
accuracy/Greater_1/yConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
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
accuracy/update_op/eConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
_output_shapes
: *
valueB
 *    *
dtype0
w
accuracy/update_opSelectaccuracy/Greater_1accuracy/Div_1accuracy/update_op/e*
T0*
_output_shapes
: 
�

group_depsNoOp^mean/update_op^precision/update_op^recall/update_op^mean_absolute_error/update_op^accuracy/update_op^mean_squared_error/update_op
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
:*k
valuebB`B B15 0,15B20 15 0,20:0,15B B20 0,20B16384 20 0,16384:0,20B20 0,20B20 20 0,20:0,20*
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
^save/save*
T0*
_output_shapes
: *
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
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
T0*
_output_shapes
:*'
_class
loc:@centered_bias_weight*
use_locking(*
validate_shape(
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
valueB B15 0,15*
dtype0
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
T0*
_output_shapes
:*+
_class!
loc:@dnn_logits/biases/part_0*
use_locking(*
validate_shape(
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
valueB B20 15 0,20:0,15*
dtype0
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
T0*
_output_shapes

:*,
_class"
 loc:@dnn_logits/weights/part_0*
use_locking(*
validate_shape(
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
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
_output_shapes
:*
dt0	*
preferred_shard���������
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
T0	*
_output_shapes
: *
_class
loc:@global_step*
use_locking(*
validate_shape(
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
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
T0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
use_locking(*
validate_shape(
v
 save/restore_slice_5/tensor_nameConst*
_output_shapes
: *&
valueB Bhiddenlayer_0/weights*
dtype0
z
$save/restore_slice_5/shape_and_sliceConst*
_output_shapes
: *&
valueB B16384 20 0,16384:0,20*
dtype0
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
T0* 
_output_shapes
:
��*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
use_locking(*
validate_shape(
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
save/Const save/restore_slice_6/tensor_name$save/restore_slice_6/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_6Assignhiddenlayer_1/biases/part_0save/restore_slice_6*
T0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
use_locking(*
validate_shape(
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
save/Const save/restore_slice_7/tensor_name$save/restore_slice_7/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_7Assignhiddenlayer_1/weights/part_0save/restore_slice_7*
T0*
_output_shapes

:*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
use_locking(*
validate_shape(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
�
initNoOp^mean/total/Assign^mean/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign^accuracy/total/Assign^accuracy/count/Assign

init_all_tablesNoOp
-
group_deps_1NoOp^init^init_all_tables
�
IsVariableInitializedIsVariableInitializedglobal_step*
_output_shapes
: *
_class
loc:@global_step*
dtype0	
�
IsVariableInitialized_1IsVariableInitializedhiddenlayer_0/weights/part_0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
dtype0
�
IsVariableInitialized_2IsVariableInitializedhiddenlayer_0/biases/part_0*
_output_shapes
: *.
_class$
" loc:@hiddenlayer_0/biases/part_0*
dtype0
�
IsVariableInitialized_3IsVariableInitializedhiddenlayer_1/weights/part_0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_1/weights/part_0*
dtype0
�
IsVariableInitialized_4IsVariableInitializedhiddenlayer_1/biases/part_0*
_output_shapes
: *.
_class$
" loc:@hiddenlayer_1/biases/part_0*
dtype0
�
IsVariableInitialized_5IsVariableInitializeddnn_logits/weights/part_0*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
dtype0
�
IsVariableInitialized_6IsVariableInitializeddnn_logits/biases/part_0*
_output_shapes
: *+
_class!
loc:@dnn_logits/biases/part_0*
dtype0
�
IsVariableInitialized_7IsVariableInitializedcentered_bias_weight*
_output_shapes
: *'
_class
loc:@centered_bias_weight*
dtype0
�
IsVariableInitialized_8IsVariableInitialized
mean/total*
_output_shapes
: *
_class
loc:@mean/total*
dtype0
�
IsVariableInitialized_9IsVariableInitialized
mean/count*
_output_shapes
: *
_class
loc:@mean/count*
dtype0
�
IsVariableInitialized_10IsVariableInitializedprecision/true_positives/count*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count*
dtype0
�
IsVariableInitialized_11IsVariableInitializedprecision/false_positives/count*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count*
dtype0
�
IsVariableInitialized_12IsVariableInitializedmean_absolute_error/total*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total*
dtype0
�
IsVariableInitialized_13IsVariableInitializedmean_absolute_error/count*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count*
dtype0
�
IsVariableInitialized_14IsVariableInitializedmean_squared_error/total*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total*
dtype0
�
IsVariableInitialized_15IsVariableInitializedmean_squared_error/count*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count*
dtype0
�
IsVariableInitialized_16IsVariableInitializedrecall/true_positives/count*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count*
dtype0
�
IsVariableInitialized_17IsVariableInitializedrecall/false_negatives/count*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count*
dtype0
�
IsVariableInitialized_18IsVariableInitializedaccuracy/total*
_output_shapes
: *!
_class
loc:@accuracy/total*
dtype0
�
IsVariableInitialized_19IsVariableInitializedaccuracy/count*
_output_shapes
: *!
_class
loc:@accuracy/count*
dtype0
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17IsVariableInitialized_18IsVariableInitialized_19*
T0
*
_output_shapes
:*
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
mean/countBprecision/true_positives/countBprecision/false_positives/countBmean_absolute_error/totalBmean_absolute_error/countBmean_squared_error/totalBmean_squared_error/countBrecall/true_positives/countBrecall/false_negatives/countBaccuracy/totalBaccuracy/count*
dtype0
[
$report_uninitialized_variables/ShapeShapeConst_1*
T0*
_output_shapes
:
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
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
T0*
_output_shapes
: *
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
%report_uninitialized_variables/concatConcat0report_uninitialized_variables/concat/concat_dim.report_uninitialized_variables/concat/values_0$report_uninitialized_variables/Slice*
T0*
N*
_output_shapes
:
�
&report_uninitialized_variables/ReshapeReshapeConst_1%report_uninitialized_variables/concat*
T0*
_output_shapes
:
�
.report_uninitialized_variables/Reshape_1/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
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
&report_uninitialized_variables/SqueezeSqueeze$report_uninitialized_variables/Where*
T0	*#
_output_shapes
:���������*
squeeze_dims

�
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*
Tindices0	*#
_output_shapes
:���������*
Tparams0*
validate_indices("
G`U9e       ��Zi	I'cT�`�A�*W

loss��?

	precision    

recall    


MAENXi@

accuracy¤�>


MSE�+�A�1�?e       ��Zi	צ��`�A�*W

loss���?

	precision    

recall    


MAE�N@

accuracy~J?


MSE���A|-�Je       ��Zi	XIS��`�A�*W

loss\=q?

	precision    

recall    


MAE�5�?

accuracy��,?


MSE�iAi�&�e       ��Zi	Ů@�`�A�	*W

loss,�O?

	precision    

recall    


MAE�
�?

accuracy��9?


MSE�*@A��*e       ��Zi	m����`�A�*W

loss�d7?

	precision    

recall    


MAEL�?

accuracy�C?


MSE�"AA��We       ��Zi	J���`�A�*W

lossm]%?

	precision  �?

recall   ?


MAE�[�?

accuracy�eH?


MSEz�A���e       ��Zi	AD>��`�A�*W

loss�?

	precision  �?

recall|p?


MAE6��?

accuracy��M?


MSE-l
A�E�Ce       ��Zi	����`�A�*W

lossW�?

	precision8�{?

recall  �?


MAE#A�?

accuracy��Q?


MSE��AS��Te       ��Zi	��ܜ�`�A�*W

lossF=?

	precision  �?

recall  �?


MAEB�?

accuracy��S?


MSEO��@���Ke       ��Zi	2�T!�`�A�*W

loss.y�>

	precision  �?

recall  �?


MAE�-�?

accuracy<*V?


MSEL�@�r>e       ��Zi	��T��`�A�*W

loss�w�>

	precision  �?

recall�7}?


MAEZu?

accuracy�X?


MSE�L�@⾨�e       ��Zi	b +�`�A�*W

loss|p�>

	precision  �?

recall!w}?


MAEp�i?

accuracy�Z?


MSEY�@^���e       ��Zi	"E��`�A�*W

lossV��>

	precision  �?

recall8�}?


MAEV_?

accuracy��[?


MSE)��@`(�De       ��Zi	04�`�A� *W

lossO�?

	precision  �?

recall  �?


MAE�{�?

accuracyg�J?


MSEӓ-A���)e       ��Zi	��r��`�A�#*W

loss��>

	precision  �?

recall��}?


MAE]C?

accuracy�y_?


MSE�o�@����e       ��Zi	Q�=�`�A�%*W

loss���>

	precision  �?

recall��}?


MAE�nD?

accuracy�n_?


MSE��@���e       ��Zi	�����`�A�'*W

lossv��>

	precision  �?

recall��}?


MAE��3?

accuracyz�a?


MSESi�@=~e       ��Zi	��E�`�A�**W

loss���>

	precision  �?

recall��}?


MAE$�4?

accuracy�b?


MSE���@Wese       ��Zi	���`�A�,*W

lossS^�>

	precision  �?

recall��}?


MAE��0?

accuracy.�b?


MSE*V�@�9��e       ��Zi	Y�BN�`�A�.*W

loss��>

	precision  �?

recall  ~?


MAE��/?

accuracyǣb?


MSE���@1��e       ��Zi	�}���`�A�1*W

loss�>

	precision  �?

recall  ~?


MAE�L)?

accuracy��c?


MSEݣ�@�w�e       ��Zi	�mdW�`�A�3*W

lossk��?

	precision  �?

recall��|?


MAE!0@

accuracy?


MSE�E�A6���e       ��Zi	�i���`�A�5*W

lossnY�>

	precision  �?

recall  ~?


MAED$?

accuracy/Ud?


MSEO�@5��Be       ��Zi	�*p`�`�A�8*W

loss$��>

	precision  �?

recall��}?


MAE`%?

accuracy`>d?


MSEkЕ@qxhee       ��Zi	����`�A�:*W

loss ��>

	precision  �?

recall��}?


MAE��#?

accuracy�kd?


MSE�x�@#1�we       ��Zi	]��i�`�A�<*W

loss��>

	precision  �?

recall��}?


MAE(I#?

accuracygwd?


MSE���@7~��e       ��Zi	v�.��`�A�?*W

loss�Ԧ>

	precision  �?

recall��}?


MAE�B"?

accuracy�d?


MSE���@���e       ��Zi	�
�r�`�A�A*W

lossP7�>

	precision  �?

recall��}?


MAE� ?

accuracy��d?


MSE���@�Oe       ��Zi	����`�A�C*W

loss.��>

	precision  �?

recall��}?


MAE�?

accuracy�e?


MSEPS�@���e       ��Zi	)��z�`�A�F*W

lossWd�>

	precision  �?

recall��}?


MAE??

accuracyZ�e?


MSEk�@˩�e       ��Zi	h����`�A�H*W

loss�'�>

	precision  �?

recall��}?


MAEM�?

accuracya�e?


MSE��@99�=e       ��Zi	!v���`�A�K*W

loss(<�>

	precision  �?

recall  ~?


MAE��?

accuracy f?


MSE�=�@Ռ e       ��Zi	!r��`�A�M*W

loss�d�>

	precision  �?

recall  ~?


MAE`?

accuracyKf?


MSE���@ܪ� e       ��Zi	{�;��`�A�O*W

loss���>

	precision  �?

recall  ~?


MAEM?

accuracy�af?


MSE�Չ@{���e       ��Zi	sO��`�A�R*W

lossJ��>

	precision  �?

recall  ~?


MAE��?

accuracy�f?


MSER��@��/�e       ��Zi	���`�A�T*W

losslQ�>

	precision  �?

recall  ~?


MAE��?

accuracy}�f?


MSE-H�@��?�e       ��Zi	���`�A�V*W

loss��>

	precision  �?

recall  ~?


MAEI#?

accuracy��f?


MSE���@Kp|e       ��Zi	���`�A�Y*W

loss�-�>

	precision  �?

recall  �?


MAE4x?

accuracy�#g?


MSEk��@Ym�e       ��Zi	"/!�`�A�[*W

lossٲ�>

	precision  �?

recall  �?


MAE4x?

accuracy#/g?


MSE}Ȇ@���e       ��Zi	3�c��`�A�]*W

lossJF�>

	precision  �?

recall  �?


MAE4x?

accuracy�\g?


MSE#/�@'��e       ��Zi	4�)�`�A�`*W

loss>Ө>

	precision  �?

recall  �?


MAE��?

accuracy�sg?


MSE�F�@ �:de       ��Zi	��.��`�A�b*W

lossOm�>

	precision  �?

recall  �?


MAE��?

accuracy�sg?


MSE���@�5�1e       ��Zi	�8�2�`�A�d*W

loss��>

	precision  �?

recall  �?


MAE4x?

accuracy�\g?


MSE�4�@_<f�e       ��Zi	�F��`�A�g*W

lossF��>

	precision  �?

recall  �?


MAE�?

accuracy�sg?


MSE |�@���e       ��Zi	�Y�;�`�A�i*W

loss�c�>

	precision  �?

recall  �?


MAE�?

accuracyZQg?


MSE�h�@O�߲e       ��Zi	�I��`�A�k*W

loss`�>

	precision  �?

recall  �?


MAE�?

accuracy*hg?


MSE��@�be       ��Zi	iV�D�`�A�n*W

loss��>

	precision  �?

recall  �?


MAEB�?

accuracy*hg?


MSEs��@�]��e       ��Zi	X�[��`�A�p*W

loss�g�>

	precision  �?

recall  �?


MAE��?

accuracyZQg?


MSER{�@&6�e       ��Zi	1��M�`�A�r*W

loss��>

	precision  �?

recall  �?


MAEI#?

accuracy�\g?


MSE�ʇ@�?��e       ��Zi	x���`�A�u*W

loss̮>

	precision  �?

recall  �?


MAEz?

accuracy�\g?


MSER��@��e       ��Zi	|!1V�`�A�w*W

lossrt�>

	precision  �?

recall  �?


MAE�?

accuracy*hg?


MSE�t�@��
e       ��Zi	�c���`�A�y*W

lossD)�>

	precision  �?

recall  �?


MAE��?

accuracya�g?


MSE�w�@��e�e       ��Zi	��1_�`�A�|*W

loss}ذ>

	precision  �?

recall  �?


MAEk�?

accuracyɕg?


MSE��@a11�e       ��Zi	Q�^��`�A�~*W

loss���>

	precision  �?

recall  �?


MAE;�?

accuracyɕg?


MSE��@%�0�f       r;�j	+_�g�`�A�*W

loss�8�>

	precision  �?

recall  �?


MAE�?

accuracya�g?


MSE���@��6f       r;�j	O�2��`�A��*W

loss��>

	precision  �?

recall  �?


MAE�J?

accuracy��g?


MSE*h�@�Kf       r;�j	�vqp�`�A̅*W

loss9��>

	precision  �?

recall  �?


MAE�3?

accuracy�g?


MSEvb�@�pq�f       r;�j	R��`�A��*W

loss�C�>

	precision  �?

recall  �?


MAE�?

accuracy�g?


MSEvb�@}��&f       r;�j	[�.y�`�A��*W

lossi�>

	precision  �?

recall  �?


MAE4x?

accuracy��g?


MSE���@,��f       r;�j	�Mu��`�AЌ*W

lossw��>

	precision  �?

recall  �?


MAE��?

accuracy1�g?


MSE"��@�gFf       r;�j	I0Ձ�`�A��*W

loss D�>

	precision  �?

recall  �?


MAE��?

accuracyi�g?


MSES�@4`�f       r;�j	&&D�`�A��*W

loss�>

	precision  �?

recall  �?


MAEV�?

accuracyi�g?


MSEC�@\��f       r;�j	�H���`�Aԓ*W

loss㑷>

	precision  �?

recall  �?


MAE��?

accuracy1�g?


MSE�9�@���f       r;�j		��`�A��*W

loss�4�>

	precision  �?

recall  �?


MAE�l?

accuracy�g?


MSE�Շ@+ļ�f       r;�j	����`�A��*W

loss4ݸ>

	precision  �?

recall  �?


MAE4x?

accuracy�g?


MSET�@�� #f       r;�j	y�:�`�Aؚ*W

loss`~�>

	precision  �?

recall  �?


MAE��?

accuracy��g?


MSE��@���f       r;�j	����`�A��*W

loss��>

	precision  �?

recall  �?


MAE�?

accuracy��g?


MSEW�@j�(f       r;�j	5��`�A��*W

loss���>

	precision  �?

recall  �?


MAEV�?

accuracy�g?


MSE?@�@��pf       r;�j	�Z���`�Aܡ*W

lossU�>

	precision  �?

recall  �?


MAE�J?

accuracy��g?


MSE}��@��pf       r;�j	o�'�`�A��*W

loss���>

	precision  �?

recall  �?


MAE�J?

accuracy��g?


MSE}��@'`�.f       r;�j	7���`�A��*W

loss4��>

	precision  �?

recall  �?


MAE�J?

accuracy��g?


MSE}��@��f       r;�j	�Nr0�`�A�*W

lossR�>

	precision  �?

recall  �?


MAEV�?

accuracy�g?


MSE?@�@�5f       r;�j	�g��`�A��*W

lossD��>

	precision  �?

recall  �?


MAEV�?

accuracy�g?


MSE?@�@�w�lf       r;�j	9�I9�`�A��*W

loss C�>

	precision  �?

recall  �?


MAE��?

accuracyi�g?


MSEc��@���
f       r;�j	�֚��`�A�*W

loss�Ѿ>

	precision  �?

recall  �?


MAE��?

accuracyi�g?


MSEc��@�)f       r;�j	�;�A�`�A��*W

loss�a�>

	precision  �?

recall  �?


MAE��?

accuracyi�g?


MSEc��@�o f       r;�j	�q:��`�A��*W

loss&�>

	precision  �?

recall  �?


MAE��?

accuracyi�g?


MSEc��@#��f       r;�j	���J�`�A�*W

loss�~�>

	precision  �?

recall  �?


MAEV�?

accuracy�g?


MSE?@�@�)�~f       r;�j	(����`�A��*W

loss1�>

	precision  �?

recall  �?


MAE��?

accuracyi�g?


MSE�:�@C{��f       r;�j	��R�`�A��*W

loss��>

	precision  �?

recall  �?


MAE�3?

accuracy�g?


MSEɕ�@ñ<�f       r;�j	c�2��`�A�*W

loss��>

	precision  �?

recall  �?


MAE�3?

accuracy�g?


MSEɕ�@�ܜ8f       r;�j	�-�[�`�A��*W

lossN��>

	precision  �?

recall  �?


MAE��?

accuracyi�g?


MSE�:�@���%f       r;�j	E�]��`�A��*W

loss��>

	precision  �?

recall  �?


MAEO�?

accuracyi�g?


MSE�@ǩ �f       r;�j	�e�`�A��*W

loss��>

	precision  �?

recall  �?


MAEda?

accuracy��g?


MSE���@bt�Mf       r;�j	��V��`�A��*W

loss
"�>

	precision  �?

recall  �?


MAE�l?

accuracy1�g?


MSE��@�w�Pf       r;�j	s��m�`�A��*W

loss���>

	precision  �?

recall  �?


MAE�3?

accuracyɕg?


MSE^�@�I�f       r;�j	L���`�A��*W

lossv�>

	precision  �?

recall  �?


MAE�3?

accuracyɕg?


MSE^�@K��f       r;�j	Dɿv�`�A��*W

loss!��>

	precision  �?

recall  �?


MAE��?

accuracyɕg?


MSE/^�@�Pr�f       r;�j	����`�A��*W

loss�>

	precision  �?

recall  �?


MAEW�?

accuracy�~g?


MSE���@%f       r;�j	��B�`�A��*W

loss��>

	precision  �?

recall  �?


MAE:?

accuracya�g?


MSE|+�@�1��f       r;�j	#*��`�A��*W

lossA	�>

	precision  �?

recall  �?


MAE:?

accuracya�g?


MSE|+�@��z|f       r;�j	>p��`�A��*W

lossÁ�>

	precision  �?

recall  �?


MAE�?

accuracyɕg?


MSE�ć@����f       r;�j	LxP
�`�A��*W

loss���>

	precision  �?

recall  �?


MAE�U?

accuracy1�g?


MSED6�@��P�f       r;�j	ԕ��`�A��*W

lossj�>

	precision  �?

recall  �?


MAE�l?

accuracy1�g?


MSE{X�@]Q(f       r;�j	LX��`�A��*W

lossc��>

	precision  �?

recall  �?


MAE�l?

accuracy1�g?


MSE{X�@ml/f       r;�j	��/��`�A��*W

loss-K�>

	precision  �?

recall  �?


MAE��?

accuracyɕg?


MSEW��@��0f       r;�j	H���`�A��*W

loss��>

	precision  �?

recall  �?


MAE-??

accuracy�g?


MSE:J�@�)��f       r;�j	\R���`�A��*W

loss�)�>

	precision  �?

recall  �?


MAE-??

accuracy�g?


MSE:J�@���f       r;�j	�B �`�A��*W

loss��>

	precision  �?

recall  �?


MAE-??

accuracy�g?


MSE:J�@t��f       r;�j	$4���`�A��*W

lossF�>

	precision  �?

recall  �?


MAE](?

accuracyi�g?


MSE�D�@Sdcf       r;�j	��e' a�A��*W

lossLo�>

	precision  �?

recall  �?


MAE�?

accuracy��g?


MSEG�@��(�f       r;�j	��̪ a�A��*W

loss���>

	precision  �?

recall  �?


MAE�?

accuracy��g?


MSEG�@+��f       r;�j	Ad.a�A��*W

loss�C�>

	precision  �?

recall  �?


MAE�?

accuracy��g?


MSEG�@��If       r;�j	"�a�A��*W

loss���>

	precision  �?

recall  �?


MAE�?

accuracy��g?


MSEG�@�ɵf       r;�j	�j�5a�A��*W

loss��>

	precision  �?

recall  �?


MAE[?

accuracy��g?


MSEU��@�Le�f       r;�j	�]�a�A��*W

lossw�>

	precision  �?

recall  �?


MAE�O?

accuracy�g?


MSE膆@�>>f       r;�j	�\�<a�A��*W

loss���>

	precision  �?

recall  �?


MAE�O?

accuracy�g?


MSE膆@?"��f       r;�j	�/�a�A��*W

loss�@�>

	precision  �?

recall  �?


MAE��?

accuracy��g?


MSE�̆@2�`df       r;�j	݉�Ca�A��*W

loss̢�>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE(�@U��Lf       r;�j	�>�a�A�*W

loss�>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE(�@y��f       r;�j	�G�Ja�A��*W

loss�b�>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE(�@<1��f       r;�j	*�6�a�A��*W

loss-��>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE(�@z��df       r;�j	�*�Qa�A�*W

loss�!�>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE(�@S�\@f       r;�j	7In�a�A��*W

loss�~�>

	precision  �?

recall  �?


MAE&?

accuracy��g?


MSEo)�@�B˘f       r;�j	�@�Xa�Ač*W

loss��>

	precision  �?

recall  �?


MAE�?

accuracy��g?


MSED6�@�!=�f       r;�j	]r��a�A��*W

loss�:�>

	precision  �?

recall  �?


MAE�?

accuracy��g?


MSED6�@F��if       r;�j	7��`a�A��*W

lossX��>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE�0�@�z(of       r;�j	o�m�a�AȔ*W

loss���>

	precision  �?

recall  �?


MAEV�?

accuracy��g?


MSE#/�@e�[f       r;�j	���g	a�A��*W

lossLG�>

	precision  �?

recall  �?


MAEV�?

accuracy��g?


MSE#/�@�תf       r;�j	���	a�A��*W

loss]��>

	precision  �?

recall  �?


MAEV�?

accuracy��g?


MSE#/�@�VC�f       r;�j	#��o
a�A̛*W

loss���>

	precision  �?

recall  �?


MAE�?

accuracy�g?


MSE���@I�f       r;�j	 ��
a�A��*W

loss	Q�>

	precision  �?

recall  �?


MAE��?

accuracy��g?


MSE�A�@+���f       r;�j	��Awa�A��*W

loss���>

	precision  �?

recall  �?


MAE�J?

accuracy��g?


MSE}��@��z�f       r;�j	Y�a�AТ*W

loss���>

	precision  �?

recall  �?


MAE�J?

accuracy��g?


MSE}��@IT2�f       r;�j	o�i~a�A��*W

loss,P�>

	precision  �?

recall  �?


MAE�J?

accuracy��g?


MSE}��@���	f       r;�j	�i�a�A��*W

lossQ��>

	precision  �?

recall  �?


MAEӥ?

accuracy8�g?


MSE���@��S�f       r;�j	O
0�a�Aԩ*W

loss���>

	precision  �?

recall  �?


MAEӥ?

accuracy8�g?


MSE���@�
Xf       r;�j	��a�A��*W

loss�J�>

	precision  �?

recall  �?


MAEk�?

accuracy8�g?


MSE�@�itf       r;�j	>
ьa�A��*W

loss��>

	precision  �?

recall  �?


MAE4x?

accuracy��g?


MSE8ڇ@	 h�f       r;�j	��Ta�Aذ*W

loss���>

	precision  �?

recall  �?


MAE4x?

accuracy��g?


MSE8ڇ@L}�tf       r;�j	��Гa�A��*W

loss5>�>

	precision  �?

recall  �?


MAE4x?

accuracy��g?


MSE8ڇ@c���f       r;�j	>X�a�A��*W

lossڏ�>

	precision  �?

recall  �?


MAE4x?

accuracy��g?


MSE8ڇ@h&�f       r;�j	<p�a�Aܷ*W

loss���>

	precision  �?

recall  �?


MAE4x?

accuracy��g?


MSE8ڇ@h���f       r;�j	U4a�A��*W

loss�+�>

	precision  �?

recall  �?


MAE4x?

accuracy��g?


MSE8ڇ@��[f       r;�j	�vڡa�A��*W

loss�y�>

	precision  �?

recall  �?


MAE4x?

accuracy��g?


MSE8ڇ@`W��f       r;�j	�z�%a�A�*W

loss���>

	precision  �?

recall  �?


MAE4x?

accuracy��g?


MSE8ڇ@��
�f       r;�j	�n�a�A��*W

lossA�>

	precision  �?

recall  �?


MAEs�?

accuracy8�g?


MSEw5�@a�Kf       r;�j	�V�,a�A��*W

loss�`�>

	precision  �?

recall  �?


MAE:?

accuracy��g?


MSE�@��Wf       r;�j	#*T�a�A��*W

loss���>

	precision  �?

recall  �?


MAE:?

accuracy��g?


MSE�@�4�sf       r;�j	��3a�A��*W

lossQ��>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE�M�@��f       r;�j	s�S�a�A��*W

loss�@�>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE�M�@�хCf       r;�j	�@�:a�A��*W

loss��>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE�M�@��68f       r;�j	#i��a�A��*W

loss���>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE�M�@��(�f       r;�j	���Aa�A��*W

loss��>

	precision  �?

recall  �?


MAE��?

accuracy8�g?


MSE�M�@#��f       r;�j	@'3�a�A��*W

loss�c�>

	precision  �?

recall  �?


MAE�.?

accuracy��g?


MSE���@z��[f       r;�j	;�Ha�A��*W

loss\��>

	precision  �?

recall  �?


MAE�.?

accuracy��g?


MSE���@O��?f       r;�j	��*�a�A��*W

loss���>

	precision  �?

recall  �?


MAE�.?

accuracy��g?


MSE���@�EXf       r;�j	�LvOa�A��*W

loss�9�>

	precision  �?

recall  �?


MAE�.?

accuracy��g?


MSE���@U �f       r;�j	c*��a�A��*W

lossN�>

	precision  �?

recall  �?


MAEs�?

accuracy8�g?


MSEw5�@��f       r;�j	�ۼVa�A��*W

loss,��>

	precision  �?

recall  �?


MAEk�?

accuracy��g?


MSE��@	��f       r;�j	�p��a�A��*W

loss
�>

	precision  �?

recall  �?


MAEk�?

accuracy��g?


MSE��@�P��f       r;�j	�.$^a�A��*W

loss�M�>

	precision  �?

recall  �?


MAEB�?

accuracy8�g?


MSE�W�@��;f       r;�j	�|��a�A��*W

loss��>

	precision  �?

recall  �?


MAEB�?

accuracy8�g?


MSE�W�@)u��f       r;�j	m��da�A��*W

loss���>

	precision  �?

recall  �?


MAEz?

accuracy��g?


MSE缈@�>�f       r;�j	/9q�a�A��*W

loss+�>

	precision  �?

recall  �?


MAEz?

accuracy��g?


MSE缈@F2{f       r;�j	HFIla�A��*W

loss�Z�>

	precision  �?

recall  �?


MAEz?

accuracy��g?


MSE缈@�C�f       r;�j	�ʝ�a�A��*W

lossz��>

	precision  �?

recall  �?


MAE�?

accuracy��g?


MSE.��@���>f       r;�j	��ta�A��*W

loss)��>

	precision  �?

recall  �?


MAE�g?

accuracy8�g?


MSE
�@�N�5f       r;�j	B^��a�A��*W

loss��>

	precision  �?

recall  �?


MAE�g?

accuracy8�g?


MSE
�@���f       r;�j	�bV|a�A��*W

loss�a�>

	precision  �?

recall  �?


MAE�g?

accuracy8�g?


MSE
�@�9y�f       r;�j	)�  a�A��*W

loss���>

	precision  �?

recall  �?


MAE�g?

accuracy8�g?


MSE
�@|���f       r;�j	�ު�a�A��*W

loss��>

	precision  �?

recall  �?


MAE�g?

accuracy8�g?


MSE
�@@�f       r;�j	�W: a�A��*W

loss!�>

	precision  �?

recall  �?


MAE�g?

accuracy8�g?


MSE
�@���f       r;�j	�u�� a�A��*W

loss�`�>

	precision  �?

recall  �?


MAE�g?

accuracy8�g?


MSE
�@�!�]f       r;�j	k��!a�A܂*W

loss���>

	precision  �?

recall  �?


MAE s?

accuracy8�g?


MSEQ�@�V�f       r;�j	��!a�A��*W

lossa��>

	precision  �?

recall  �?


MAE s?

accuracy8�g?


MSEQ�@.�!�