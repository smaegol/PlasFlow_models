       �K"	  @�`�Abrain.Event:2��o�      �4�	�W�`�A"��
m
global_stepVariable*
	container *
shared_name *
dtype0	*
_output_shapes
: *
shape: 

global_step/Initializer/zerosConst*
value	B	 R *
dtype0	*
_output_shapes
: *
_class
loc:@global_step
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
validate_shape(*
T0	*
_output_shapes
: *
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0	
W
inputPlaceholder*
dtype0*'
_output_shapes
:���������@*
shape: 
T
outputPlaceholder*
dtype0	*#
_output_shapes
:���������*
shape: 
�
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
valueB"����@   *
dtype0*
_output_shapes
:
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*'
_output_shapes
:���������@*
T0
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
<input_from_feature_columns/input_from_feature_columns/concatIdentity=input_from_feature_columns/input_from_feature_columns/Reshape*'
_output_shapes
:���������@*
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
: : *

axis *
T0
�
hiddenlayer_0/weights/part_0Variable*
	container *
shared_name *
dtype0*
_output_shapes

:@*
shape
:@
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *�Z��*
dtype0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *�Z�>*
dtype0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*

seed**
dtype0*
_output_shapes

:@*
seed2
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
_output_shapes

:@*
T0
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes

:@*
T0
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes

:@*
T0
m
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
_output_shapes

:@*
T0
�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
transpose_b( *'
_output_shapes
:���������*
T0*
transpose_a( 
�
hiddenlayer_0/biases/part_0Variable*
	container *
shared_name *
dtype0*
_output_shapes
:*
shape:
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
:*
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
zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
zero_fraction/EqualEqual hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*'
_output_shapes
:���������*
T0
p
zero_fraction/CastCastzero_fraction/Equal*

SrcT0
*'
_output_shapes
:���������*

DstT0
d
zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
	keep_dims( *
_output_shapes
: *
T0
x
ScalarSummary/tagsConst*6
value-B+ B%hiddenlayer_0:fraction_of_zero_values*
dtype0*
_output_shapes
: 
g
ScalarSummaryScalarSummaryScalarSummary/tagszero_fraction/Mean*
_output_shapes
: *
T0
m
HistogramSummary/tagConst*)
value B Bhiddenlayer_0:activation*
dtype0*
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
: : *

axis *
T0
�
dnn_logits/weights/part_0Variable*
	container *
shared_name *
dtype0*
_output_shapes

: *
shape
: 
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"       *
dtype0*
_output_shapes
:*,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *�F��*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *�F�>*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@dnn_logits/weights/part_0*

seed**
dtype0*
_output_shapes

: *
seed2.
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

: *
T0
�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

: *
T0
�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*
_output_shapes

: *,
_class"
 loc:@dnn_logits/weights/part_0
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

: *
T0
g
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
_output_shapes

: *
T0
�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reludnn_logits/weights*
transpose_b( *'
_output_shapes
:��������� *
T0*
transpose_a( 
�
dnn_logits/biases/part_0Variable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
valueB *    *
dtype0*
_output_shapes
: *+
_class!
loc:@dnn_logits/biases/part_0
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *+
_class!
loc:@dnn_logits/biases/part_0
�
dnn_logits/biases/part_0/readIdentitydnn_logits/biases/part_0*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
: *
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
zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
zero_fraction_1/EqualEqualdnn_logits/dnn_logits/BiasAddzero_fraction_1/zero*'
_output_shapes
:��������� *
T0
t
zero_fraction_1/CastCastzero_fraction_1/Equal*

SrcT0
*'
_output_shapes
:��������� *

DstT0
f
zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
	keep_dims( *
_output_shapes
: *
T0
w
ScalarSummary_1/tagsConst*3
value*B( B"dnn_logits:fraction_of_zero_values*
dtype0*
_output_shapes
: 
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
_output_shapes
: *
T0
l
HistogramSummary_1/tagConst*&
valueB Bdnn_logits:activation*
dtype0*
_output_shapes
: 
~
HistogramSummary_1HistogramSummaryHistogramSummary_1/tagdnn_logits/dnn_logits/BiasAdd*
_output_shapes
: *
T0
R
zerosConst*
valueB *    *
dtype0*
_output_shapes
: 
~
centered_bias_weightVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *'
_class
loc:@centered_bias_weight
�
centered_bias_weight/readIdentitycentered_bias_weight*'
_class
loc:@centered_bias_weight*
_output_shapes
: *
T0
`
Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
a
ReshapeReshapecentered_bias_weight/readReshape/shape*
_output_shapes
: *
T0
�
ScalarSummary_2/tagsConst*�
value�B� Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14Bcentered_bias_15Bcentered_bias_16Bcentered_bias_17Bcentered_bias_18Bcentered_bias_19Bcentered_bias_20Bcentered_bias_21Bcentered_bias_22Bcentered_bias_23Bcentered_bias_24Bcentered_bias_25Bcentered_bias_26Bcentered_bias_27Bcentered_bias_28Bcentered_bias_29Bcentered_bias_30Bcentered_bias_31*
dtype0*
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
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsBiasAddoutput*
Tlabels0	*6
_output_shapes$
":���������:��������� *
T0
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
	keep_dims( *
_output_shapes
: *
T0
O

mean/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
l

mean/totalVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
mean/total/AssignAssign
mean/total
mean/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@mean/total
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
 *    *
dtype0*
_output_shapes
: 
l

mean/countVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@mean/count
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
valueB *
dtype0*
_output_shapes
: 
S
mean/SumSumloss
mean/Const*
	keep_dims( *
_output_shapes
: *
T0
�
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
use_locking( *
_output_shapes
: *
T0*
_class
loc:@mean/total
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
use_locking( *
_output_shapes
: *
T0*
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
 *    *
dtype0*
_output_shapes
: 
[

mean/valueSelectmean/Greatermean/Divmean/value/e*
_output_shapes
: *
T0
y
mean/Greater_1/yConst^mean/AssignAdd^mean/AssignAdd_1*
valueB
 *    *
dtype0*
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
mean/update_op/eConst^mean/AssignAdd^mean/AssignAdd_1*
valueB
 *    *
dtype0*
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

SrcT0	*#
_output_shapes
:���������*

DstT0
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
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
mean_squared_error/ToFloatCastSquare*

SrcT0	*#
_output_shapes
:���������*

DstT0
]
mean_squared_error/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
mean_squared_error/totalVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total
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
 *    *
dtype0*
_output_shapes
: 
z
mean_squared_error/countVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count
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
valueB: *
dtype0*
_output_shapes
:
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
	keep_dims( *
_output_shapes
: *
T0
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*
use_locking( *
_output_shapes
: *
T0*+
_class!
loc:@mean_squared_error/total
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
use_locking( *
_output_shapes
: *
T0*+
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
 *    *
dtype0*
_output_shapes
: 
�
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/Divmean_squared_error/value/e*
_output_shapes
: *
T0
�
mean_squared_error/Greater_1/yConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
valueB
 *    *
dtype0*
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
mean_squared_error/update_op/eConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_squared_error/update_opSelectmean_squared_error/Greater_1mean_squared_error/Div_1mean_squared_error/update_op/e*
_output_shapes
: *
T0
b
 precision/true_positives/Equal/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 

precision/true_positives/EqualEqualoutput precision/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
d
"precision/true_positives/Equal_1/yConst*
value	B	 R*
dtype0	*
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
precision/true_positives/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
precision/true_positives/countVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count
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
valueB: *
dtype0*
_output_shapes
:
�
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
	keep_dims( *
_output_shapes
: *
T0
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
use_locking( *
_output_shapes
: *
T0*1
_class'
%#loc:@precision/true_positives/count
c
!precision/false_positives/Equal/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
precision/false_positives/EqualEqualoutput!precision/false_positives/Equal/y*#
_output_shapes
:���������*
T0	
e
#precision/false_positives/Equal_1/yConst*
value	B	 R*
dtype0	*
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
precision/false_positives/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
precision/false_positives/countVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count
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
valueB: *
dtype0*
_output_shapes
:
�
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
	keep_dims( *
_output_shapes
: *
T0
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
use_locking( *
_output_shapes
: *
T0*2
_class(
&$loc:@precision/false_positives/count
|
precision/addAdd!precision/true_positives/Identity"precision/false_positives/Identity*
_output_shapes
: *
T0
X
precision/Greater/yConst*
valueB
 *    *
dtype0*
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
precision/value/eConst*
valueB
 *    *
dtype0*
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
precision/Greater_1/yConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
valueB
 *    *
dtype0*
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
precision/update_op/eConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
valueB
 *    *
dtype0*
_output_shapes
: 
{
precision/update_opSelectprecision/Greater_1precision/Div_1precision/update_op/e*
_output_shapes
: *
T0
_
recall/true_positives/Equal/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
y
recall/true_positives/EqualEqualoutputrecall/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
a
recall/true_positives/Equal_1/yConst*
value	B	 R*
dtype0	*
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
recall/true_positives/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
}
recall/true_positives/countVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count
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
valueB: *
dtype0*
_output_shapes
:
�
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
	keep_dims( *
_output_shapes
: *
T0
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
use_locking( *
_output_shapes
: *
T0*.
_class$
" loc:@recall/true_positives/count
`
recall/false_negatives/Equal/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
{
recall/false_negatives/EqualEqualoutputrecall/false_negatives/Equal/y*#
_output_shapes
:���������*
T0	
b
 recall/false_negatives/Equal_1/yConst*
value	B	 R *
dtype0	*
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
recall/false_negatives/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
~
recall/false_negatives/countVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count
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
valueB: *
dtype0*
_output_shapes
:
�
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
	keep_dims( *
_output_shapes
: *
T0
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
use_locking( *
_output_shapes
: *
T0*/
_class%
#!loc:@recall/false_negatives/count
s

recall/addAddrecall/true_positives/Identityrecall/false_negatives/Identity*
_output_shapes
: *
T0
U
recall/Greater/yConst*
valueB
 *    *
dtype0*
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
recall/value/eConst*
valueB
 *    *
dtype0*
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
recall/Greater_1/yConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
valueB
 *    *
dtype0*
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
recall/update_op/eConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
valueB
 *    *
dtype0*
_output_shapes
: 
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
	ToFloat_1CastEqual*

SrcT0
*#
_output_shapes
:���������*

DstT0
S
accuracy/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
p
accuracy/totalVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *!
_class
loc:@accuracy/total
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
 *    *
dtype0*
_output_shapes
: 
p
accuracy/countVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *!
_class
loc:@accuracy/count
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
valueB: *
dtype0*
_output_shapes
:
`
accuracy/SumSum	ToFloat_1accuracy/Const*
	keep_dims( *
_output_shapes
: *
T0
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
use_locking( *
_output_shapes
: *
T0*!
_class
loc:@accuracy/total
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
use_locking( *
_output_shapes
: *
T0*!
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
 *    *
dtype0*
_output_shapes
: 
k
accuracy/valueSelectaccuracy/Greateraccuracy/Divaccuracy/value/e*
_output_shapes
: *
T0
�
accuracy/Greater_1/yConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
valueB
 *    *
dtype0*
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
accuracy/update_op/eConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
w
accuracy/update_opSelectaccuracy/Greater_1accuracy/Div_1accuracy/update_op/e*
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
 *    *
dtype0*
_output_shapes
: 
{
mean_absolute_error/totalVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total
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
 *    *
dtype0*
_output_shapes
: 
{
mean_absolute_error/countVariable*
	container *
shared_name *
dtype0*
_output_shapes
: *
shape: 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count
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
valueB: *
dtype0*
_output_shapes
:
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
	keep_dims( *
_output_shapes
: *
T0
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*
use_locking( *
_output_shapes
: *
T0*,
_class"
 loc:@mean_absolute_error/total
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
use_locking( *
_output_shapes
: *
T0*,
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
 *    *
dtype0*
_output_shapes
: 
�
mean_absolute_error/valueSelectmean_absolute_error/Greatermean_absolute_error/Divmean_absolute_error/value/e*
_output_shapes
: *
T0
�
mean_absolute_error/Greater_1/yConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
valueB
 *    *
dtype0*
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
mean_absolute_error/update_op/eConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
valueB
 *    *
dtype0*
_output_shapes
: 
�
mean_absolute_error/update_opSelectmean_absolute_error/Greater_1mean_absolute_error/Div_1mean_absolute_error/update_op/e*
_output_shapes
: *
T0
�

group_depsNoOp^precision/update_op^recall/update_op^mean/update_op^mean_squared_error/update_op^accuracy/update_op^mean_absolute_error/update_op
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
valueBB@B B32 0,32B30 32 0,30:0,32B B30 0,30B64 30 0,64:0,30*
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
^save/save*
_class
loc:@save/Const*
_output_shapes
: *
T0
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
dt0*
_output_shapes
:*
preferred_shard���������
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *'
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
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *+
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
valueB B30 32 0,30:0,32*
dtype0*
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
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
use_locking(*
validate_shape(*
T0*
_output_shapes

: *,
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
dt0	*
_output_shapes
:*
preferred_shard���������
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
use_locking(*
validate_shape(*
T0	*
_output_shapes
: *
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
valueB B30 0,30*
dtype0*
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
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*.
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
valueB B64 30 0,64:0,30*
dtype0*
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
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
v
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5
�
initNoOp^mean/total/Assign^mean/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign^accuracy/total/Assign^accuracy/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign
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
IsVariableInitialized_8IsVariableInitializedmean_squared_error/total*+
_class!
loc:@mean_squared_error/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_9IsVariableInitializedmean_squared_error/count*+
_class!
loc:@mean_squared_error/count*
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
IsVariableInitialized_12IsVariableInitializedrecall/true_positives/count*.
_class$
" loc:@recall/true_positives/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_13IsVariableInitializedrecall/false_negatives/count*/
_class%
#!loc:@recall/false_negatives/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_14IsVariableInitializedaccuracy/total*!
_class
loc:@accuracy/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_15IsVariableInitializedaccuracy/count*!
_class
loc:@accuracy/count*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_16IsVariableInitializedmean_absolute_error/total*,
_class"
 loc:@mean_absolute_error/total*
dtype0*
_output_shapes
: 
�
IsVariableInitialized_17IsVariableInitializedmean_absolute_error/count*,
_class"
 loc:@mean_absolute_error/count*
dtype0*
_output_shapes
: 
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17*
N*
_output_shapes
:*

axis *
T0

:

LogicalNot
LogicalNotpack*
_output_shapes
:
�
Const_1Const*�
value�B�Bglobal_stepBhiddenlayer_0/weights/part_0Bhiddenlayer_0/biases/part_0Bdnn_logits/weights/part_0Bdnn_logits/biases/part_0Bcentered_bias_weightB
mean/totalB
mean/countBmean_squared_error/totalBmean_squared_error/countBprecision/true_positives/countBprecision/false_positives/countBrecall/true_positives/countBrecall/false_negatives/countBaccuracy/totalBaccuracy/countBmean_absolute_error/totalBmean_absolute_error/count*
dtype0*
_output_shapes
:
[
$report_uninitialized_variables/ShapeShapeConst_1*
_output_shapes
:*
T0
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
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
_output_shapes
: *
T0*
Index0
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
valueB:
���������*
dtype0*
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
:���������*
T0	*
squeeze_dims

�
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*
Tparams0*
Tindices0	*#
_output_shapes
:���������*
validate_indices("
�lye       ��Zi	0�W�`�A�*W

	precision    

recall    

loss<X�?


MSE�Q'C

accuracyW��>


MAE��A�+��e       ��Zi	�3�`�A�*W

	precision  �?

recall  �?

loss���?


MSEC

accuracy���>


MAE��@�ce       ��Zi	t#�U�`�A�*W

	precision  �?

recall  �?

lossa��?


MSE#�C

accuracy��?


MAED�@��~e       ��Zi	�r�w�`�A�	*W

	precision  �?

recall  �?

loss3׷?


MSE2�C

accuracy��?


MAEΨ�@ɬ��e       ��Zi	-#A��`�A�*W

	precision��?

recall  �?

loss0E�?


MSE���B

accuracy�
?


MAE5a�@HA'�e       ��Zi	H1���`�A�*W

	precision��?

recall  �?

losskG�?


MSE"1�B

accuracy��?


MAE"�@p7��e       ��Zi	M=��`�A�*W

	precision��?

recall  �?

lossU��?


MSE��B

accuracyii?


MAE�Y�@K�e       ��Zi	��`�A�*W

	precision+�?

recall  �?

loss�ݥ?


MSEF�B

accuracy�?


MAE�x�@Z�G�e       ��Zi	�pJ#�`�A�*W

	precision��?

recall  �?

lossǫ�?


MSE�h�B

accuracy$�?


MAE@��@~u<�e       ��Zi	�{�E�`�A�*W

	precision��?

recall  �?

loss�١?


MSE֨�B

accuracy?�?


MAE��@�8(e       ��Zi	��g�`�A�*W

	precision�}?

recall  �?

loss@F�?


MSEL�B

accuracy��?


MAE&�@�[��e       ��Zi	��;��`�A�*W

	precision{~?

recall  �?

loss+ݞ?


MSE�&�B

accuracy��?


MAE���@e��e       ��Zi	Bv��`�A�*W

	precision�~?

recall  �?

loss��?


MSELz�B

accuracy��?


MAE�5�@6P�e       ��Zi	�����`�A� *W

	precision�~?

recall  �?

loss9Z�?


MSEB�B

accuracy��?


MAE*�@��LHe       ��Zi	~��`�A�#*W

	precision�~?

recall  �?

loss�/�?


MSE�B�B

accuracyPc?


MAE�{�@�xGe       ��Zi	dkR�`�A�%*W

	precision��?

recall  �?

loss�?


MSE�	�B

accuracyt)?


MAE:V�@9�P�e       ��Zi	��5�`�A�'*W

	precision��?

recall  �?

loss��?


MSE<��B

accuracy��?


MAE2a�@Gx��e       ��Zi	f��W�`�A�**W

	precision	�?

recall  �?

loss�ė?


MSE��B

accuracy�k?


MAE`*�@:��e       ��Zi	mt�y�`�A�,*W

	precision��?

recall  �?

loss��?


MSE���B

accuracy��?


MAEkE�@{�N�e       ��Zi	J�4��`�A�.*W

	precision2?

recall  �?

lossy��?


MSE��B

accuracyCn?


MAE��@�L�e       ��Zi	-���`�A�1*W

	precision�~?

recall  �?

lossj�?


MSE���B

accuracy��?


MAE�@�
�e       ��Zi	?���`�A�3*W

	precision�~?

recall  �?

loss�R�?


MSE��B

accuracya�?


MAE ͷ@���e       ��Zi	�	�`�A�5*W

	precision�~?

recall  �?

loss?�?


MSE���B

accuracyda?


MAEBk�@~
�e       ��Zi	n<C%�`�A�8*W

	precision{~?

recall  �?

lossb/�?


MSEI�B

accuracyrY?


MAES�@�H[e       ��Zi	��G�`�A�:*W

	precisionX�?

recall  �?

lossn%�?


MSE���B

accuracy?


MAE���@�!y e       ��Zi	��i�`�A�<*W

	precision�?

recall  �?

loss2"�?


MSE#V�B

accuracy��?


MAE_9�@1�ˢe       ��Zi	�=/��`�A�?*W

	precisionŗ?

recall  �?

loss&�?


MSE�`�B

accuracy�?


MAES��@q3�e       ��Zi	�ay��`�A�A*W

	precision��?

recall  �?

loss2�?


MSE��B

accuracyu ?


MAEQ)�@�$�(e       ��Zi	�w���`�A�C*W

	precisionO�?

recall  �?

losskF�?


MSE�*�B

accuracy,;!?


MAEӿ�@��	�e       ��Zi	h)��`�A�F*W

	precision�?

recall  �?

lossc�?


MSE��B

accuracyY�!?


MAE���@2�\�e       ��Zi	�yz�`�A�H*W

	precisionٖ?

recall  �?

loss���?


MSE��B

accuracy�W"?


MAE�˫@�`�7e       ��Zi	��7�`�A�K*W

	precision�?

recall  �?

loss���?


MSE��B

accuracyW�"?


MAEd��@2&le       ��Zi	ěZ�`�A�M*W

	precision��?

recall  �?

loss-�?


MSE ̵B

accuracy��#?


MAE㭩@5��e       ��Zi	��s|�`�A�O*W

	precision��?

recall  �?

loss�*�?


MSE,��B

accuracyN $?


MAE矨@6?��e       ��Zi	Ѳ̞�`�A�R*W

	precisiong�?

recall  �?

loss�p�?


MSE��B

accuracy5�$?


MAE��@�īJe       ��Zi	X�.��`�A�T*W

	precisionF�?

recall  �?

loss���?


MSEV��B

accuracy"�$?


MAE-��@�.�e       ��Zi	Qj���`�A�V*W

	precision��?

recall  �?

loss�?


MSE±B

accuracy�e%?


MAE5�@n��e       ��Zi	.Q��`�A�Y*W

	precisionu�?

recall  �?

lossn�?


MSE�˰B

accuracy�%?


MAEZL�@�`N�e       ��Zi	��(�`�A�[*W

	precisionj�?

recall  �?

loss*τ?


MSED��B

accuracy *&?


MAET��@S+�e       ��Zi	k`J�`�A�]*W

	precisionY�?

recall  �?

lossr5�?


MSEE!�B

accuracy�&?


MAE��@���xe       ��Zi	l��l�`�A�`*W

	precisionC�?

recall  �?

loss���?


MSE���B

accuracy��&?


MAEnc�@����e       ��Zi	�
���`�A�b*W

	precision!�?

recall  �?

lossx�?


MSEX�B

accuracy�'?


MAE3��@��e       ��Zi	\4��`�A�d*W

	precision
�?

recall  �?

lossh��?


MSE^�B

accuracy��'?


MAE--�@���se       ��Zi	4���`�A�g*W

	precision��?

recall  �?

loss�?


MSE�ˬB

accuracy�'?


MAE;١@�0ue       ��Zi	a����`�A�i*W

	precision��?

recall  �?

loss���?


MSE�G�B

accuracyx�'?


MAE�h�@�^�e       ��Zi	�:<�`�A�k*W

	precision��?

recall  �?

loss1�?


MSE���B

accuracy?X(?


MAE���@���e       ��Zi	��:�`�A�n*W

	precision��?

recall  �?

loss	��?


MSE��B

accuracyb�(?


MAE�+�@?��e       ��Zi	���\�`�A�p*W

	precisiont�?

recall  �?

loss1!�?


MSET�B

accuracy_�(?


MAEѥ�@?�Ege       ��Zi	|cF�`�A�r*W

	precisionQx?

recall  �?

loss�d?


MSEz��B

accuracy�<)?


MAE��@�L��e       ��Zi	�+���`�A�u*W

	precisionx?

recall  �?

loss��~?


MSE���B

accuracyj)?


MAE�מ@st/�e       ��Zi	�x���`�A�w*W

	precisionx?

recall  �?

loss�}?


MSE��B

accuracy��)?


MAE�L�@��1Ce       ��Zi	PRA��`�A�y*W

	precision�w?

recall  �?

loss��|?


MSE���B

accuracym�)?


MAE��@Վ%�e       ��Zi	�(��`�A�|*W

	precision�w?

recall  �?

loss�2|?


MSE��B

accuracy�*?


MAEO��@�wz"e       ��Zi	�P�*�`�A�~*W

	precision�w?

recall  �?

lossnv{?


MSE���B

accuracyaK*?


MAE%�@��Pf       r;�j	9@JM�`�A�*W

	precisionww?

recall  �?

lossϾz?


MSE*��B

accuracy��*?


MAE+��@U8]f       r;�j	I��o�`�A��*W

	precision\?

recall  �?

loss�z?


MSEۺ�B

accuracyA�*?


MAE�W�@�zf       r;�j	Lɑ�`�A̅*W

	precision�[?

recall  �?

loss�]y?


MSE=l�B

accuracy��*?


MAE��@Rmr3f       r;�j	C�%��`�A��*W

	precision�[?

recall  �?

loss{�x?


MSE� �B

accuracy�)+?


MAE4��@����f       r;�j	P�z��`�A��*W

	precision�[?

recall  �?

lossmx?


MSEt��B

accuracy�R+?


MAELU�@.��f       r;�j	�����`�AЌ*W

	precision�[?

recall  �?

loss�nw?


MSE�G�B

accuracy�+?


MAERߚ@���f       r;�j	"*�`�A��*W

	precisionh[?

recall  �?

loss��v?


MSE��B

accuracyh�+?


MAE���@��0cf       r;�j	O`=�`�A��*W

	precision�Z?

recall  �?

loss�8v?


MSE5��B

accuracy��+?


MAEsH�@��\8f       r;�j	}ש_�`�Aԓ*W

	precision�Z?

recall  �?

loss:�u?


MSEpK�B

accuracy�,?


MAE-��@.�h�f       r;�j	�� ��`�A��*W

	precision�Z?

recall  �?

loss�u?


MSE�ڣB

accuracyF,?


MAE"��@a�f       r;�j	��a��`�A��*W

	precision�Z?

recall  �?

loss5�t?


MSE\��B

accuracyF^,?


MAE�`�@LFpf       r;�j	�����`�Aؚ*W

	precision�Z?

recall  �?

lossv�s?


MSES�B

accuracylp,?


MAE~6�@�df       r;�j	י���`�A��*W

	precisionoZ?

recall  �?

loss�js?


MSEТB

accuracyv�,?


MAE���@7]8�f       r;�j	�s,�`�A��*W

	precisionoZ?

recall  �?

loss	�r?


MSE枢B

accuracyM�,?


MAEA��@��2 f       r;�j	�=o-�`�Aܡ*W

	precision(Z?

recall  �?

loss_r?


MSEQ��B

accuracy��,?


MAE�y�@:�ݵf       r;�j	��O�`�A��*W

	precisionZ?

recall  �?

lossi�q?


MSE�e�B

accuracy��,?


MAE�U�@U(�)f       r;�j	�Cr�`�A��*W

	precisionru?

recall  �?

loss�\q?


MSE�G�B

accuracy�-?


MAE�8�@��f       r;�j	��B��`�A�*W

	precisioncu?

recall  �?

losso�p?


MSE��B

accuracyv*-?


MAE�	�@=�>f       r;�j	?����`�A��*W

	precision6u?

recall  �?

loss�cp?


MSE��B

accuracy�N-?


MAEH�@=!f       r;�j	',���`�A��*W

	precisionEu?

recall  �?

loss��o?


MSE&��B

accuracym-?


MAE���@�"��f       r;�j	o�?��`�A�*W

	precision�=?

recall  �?

lossto?


MSEE�B

accuracy=�-?


MAE�Q�@�;�<f       r;�j	���`�A��*W

	precision^=?

recall  �?

loss��n?


MSE��B

accuracyw�-?


MAE*$�@��.'f       r;�j	�d�?�`�A��*W

	precisionI=?

recall  �?

lossϋn?


MSE�֠B

accuracy��-?


MAEw��@�J�f       r;�j	@gb�`�A�*W

	precision3=?

recall  �?

loss�n?


MSE���B

accuracyg�-?


MAETΖ@�m�f       r;�j	y�r��`�A��*W

	precision�<?

recall  �?

loss�m?


MSE�f�B

accuracy��-?


MAE���@����f       r;�j	u�Ǧ�`�A��*W

	precision�<?

recall  �?

loss�<m?


MSE
&�B

accuracy~.?


MAE�G�@pD�2f       r;�j	���`�A�*W

	precision�<?

recall  �?

loss��l?


MSE��B

accuracy;<.?


MAE��@F�/~f       r;�j	"/f��`�A��*W

	precision�<?

recall  �?

loss�el?


MSED��B

accuracy�X.?


MAE�ݕ@���f       r;�j	����`�A��*W

	precision�<?

recall  �?

loss �k?


MSE}P�B

accuracyԄ.?


MAE���@����f       r;�j	��0�`�A��*W

	precision�<?

recall  �?

loss��k?


MSE�O�B

accuracyQ�.?


MAE8��@�o4pf       r;�j	eJZR�`�A��*W

	precision�<?

recall  �?

loss&/k?


MSE�6�B

accuracy�.?


MAEg�@�K�f       r;�j	���t�`�A��*W

	precision� ?

recall  �?

lossR�j?


MSE���B

accuracyb�.?


MAE���@
�dPf       r;�j	'�ܖ�`�A��*W

	precisionl ?

recall  �?

lossmfj?


MSESO�B

accuracy2�.?


MAE訔@���~f       r;�j	����`�A��*W

	precision� ?

recall  �?

loss�j?


MSE[�B

accuracy/?


MAE1i�@��"�f       r;�j	� g��`�A��*W

	precision� ?

recall  �?

lossG�i?


MSE��B

accuracy�5/?


MAE�C�@<�1�f       r;�j	M(���`�A��*W

	precision� ?

recall  �?

lossjFi?


MSE`|�B

accuracyW/?


MAE%�@����f       r;�j	d� �`�A��*W

	precisionl ?

recall  �?

loss3�h?


MSE�S�B

accuracy8i/?


MAEU��@ ݲ
f       r;�j	��LB�`�A��*W

	precisionl ?

recall  �?

lossa�h?


MSEQ�B

accuracy/�/?


MAE�T�@��pf       r;�j	�nyd�`�A��*W

	precisionT ?

recall  �?

loss/h?


MSE�͜B

accuracy߷/?


MAEG>�@N>�0f       r;�j	Z��`�A��*W

	precision; ?

recall  �?

loss��g?


MSEȌ�B

accuracy�/?


MAE.�@F��f       r;�j	�{��`�A��*W

	precision�?

recall  �?

loss�{g?


MSE%Y�B

accuracy��/?


MAE�ޒ@���f       r;�j	ȃS��`�A��*W

	precision�?

recall  �?

loss#g?


MSE]�B

accuracys�/?


MAE��@F�0gf       r;�j	��S��`�A��*W

	precision�?

recall  �?

loss��f?


MSE�B

accuracy�0?


MAEꂒ@���bf       r;�j	��`�A��*W

	precision�?

recall  �?

lossuf?


MSE�B

accuracy�!0?


MAEƏ�@��xGf       r;�j	'	�1�`�A��*W

	precisionf?

recall  �?

loss�f?


MSE���B

accuracy&R0?


MAE�6�@�@�Zf       r;�j	�BT�`�A��*W

	precision�?

recall  �?

loss��e?


MSE y�B

accuracy�q0?


MAE[��@�HJ�f       r;�j	s�v�`�A��*W

	precisionJ?

recall  �?

lossye?


MSEX�B

accuracy��0?


MAEKݑ@�B�Tf       r;�j	k�Ϙ�`�A��*W

	precision�?

recall  �?

loss�)e?


MSE?֚B

accuracy��0?


MAE�j�@1It�f       r;�j	���`�A��*W

	precision?

recall  �?

loss;�d?


MSEV��B

accuracy�0?


MAE�h�@�w�5f       r;�j	��]��`�A��*W

	precision�?

recall  �?

lossn�d?


MSEk��B

accuracy@�0?


MAE!A�@Ռ�Kf       r;�j	\���`�A��*W

	precision�?

recall  �?

lossf:d?


MSEF��B

accuracy��0?


MAE�'�@Q�.f       r;�j	D"�`�A��*W

	precisionJ?

recall  �?

loss�c?


MSE�c�B

accuracy01?


MAE0�@_r#Tf       r;�j	D�!D�`�A��*W

	precisionJ?

recall  �?

lossn�c?


MSE���B

accuracy�1?


MAE���@(��f       r;�j	��~f�`�A��*W

	precision/?

recall  �?

lossXc?


MSEw�B

accuracy�.1?


MAE���@�2�f       r;�j	�(�`�A��*W

	precision�?

recall  �?

loss�c?


MSEh֙B

accuracy�Q1?


MAE�N�@�\�*f       r;�j	"��`�A�*W

	precision�?

recall  �?

loss.�b?


MSE)��B

accuracygb1?


MAE'�@�L�f       r;�j	\^��`�A��*W

	precision�?

recall  �?

loss�b?


MSE�l�B

accuracy>�1?


MAEh�@�>��f       r;�j	�_��`�A��*W

	precision�?

recall  �?

loss"8b?


MSE?�B

accuracy��1?


MAEf��@c4�f       r;�j	R���`�A�*W

	precision�?

recall  �?

loss��a?


MSE��B

accuracyΒ1?


MAE)�@:`��f       r;�j	nR�3�`�A��*W

	precision�?

recall  �?

loss��a?


MSE�<�B

accuracy��1?


MAE?��@��xTf       r;�j	S�gV�`�Ač*W

	precision�?

recall  �?

losska?


MSE
�B

accuracy��1?


MAEʏ�@'�|�f       r;�j	�.�x�`�A��*W

	precision�?

recall  �?

loss�&a?


MSE��B

accuracy[�1?


MAE�z�@n�f       r;�j	_�՚�`�A��*W

	precision�?

recall  �?

loss��`?


MSE {�B

accuracy$�1?


MAE�@6V��f       r;�j	�i<��`�AȔ*W

	precisionl?

recall  �?

loss`�`?


MSE���B

accuracyD2?


MAE��@'�3kf       r;�j	�T|��`�A��*W

	precision�?

recall  �?

loss�d`?


MSE�<�B

accuracy*2?


MAE�ڎ@���Uf       r;�j	���`�A��*W

	precision�?

recall  �?

loss$`?


MSE�K�B

accuracy�=2?


MAE Ύ@?�y�f       r;�j	id$�`�A̛*W

	precision�?

recall  �?

loss��_?


MSE��B

accuracy�^2?


MAEj��@�Kf       r;�j	��mF�`�A��*W

	precision�?

recall  �?

lossi�_?


MSE*�B

accuracyn2?


MAEX��@Hp�ef       r;�j	/��h�`�A��*W

	precisionP?

recall  �?

loss{i_?


MSEW:�B

accuracyn2?


MAE���@X1�f       r;�j	I���`�AТ*W

	precision�?

recall  �?

loss�,_?


MSEɗB

accuracyk�2?


MAETH�@ʹ�Hf       r;�j	g����`�A��*W

	precision�?

recall  �?

loss��^?


MSE)��B

accuracy�2?


MAEm.�@4]��f       r;�j	�g���`�A��*W

	precision�?

recall  �?

loss��^?


MSEꛗB

accuracyB�2?


MAE�@� O4f       r;�j	�"��`�Aԩ*W

	precision4?

recall  �?

loss{^?


MSEd��B

accuracy��2?


MAEX�@m�r~f       r;�j	_q�`�A��*W

	precisionl?

recall  �?

lossCA^?


MSEVs�B

accuracy�2?


MAE���@����f       r;�j	L��6�`�A��*W

	precision�?

recall  �?

loss�^?


MSE�(�B

accuracy��2?


MAE梍@���f       r;�j	-�Y�`�Aذ*W

	precisionP?

recall  �?

loss�]?


MSE�?�B

accuracy�3?


MAE@��@��lf       r;�j	<\n{�`�A��*W

	precisionl?

recall  �?

loss�]?


MSEm�B

accuracy3?


MAE�k�@5�>f       r;�j	�Y���`�A��*W

	precision�?

recall  �?

loss_]?


MSE��B

accuracy�&3?


MAE)Y�@�Tp�f       r;�j	6���`�Aܷ*W

	precision�?

recall  �?

loss�*]?


MSEoU�B

accuracy|O3?


MAE��@:�ARf       r;�j	�Q��`�A��*W

	precision�?

recall  �?

lossU�\?


MSEMʖB

accuracyiF3?


MAEN&�@*X;�f       r;�j	I��`�A��*W

	precision�?

recall  �?

loss�\?


MSE�r�B

accuracy�d3?


MAEߌ@n:�f       r;�j	��&�`�A�*W

	precision�?

recall  �?

loss��\?


MSEx�B

accuracy��3?


MAE?��@[d{f       r;�j	k?I�`�A��*W

	precision�?

recall  �?

loss~N\?


MSEqL�B

accuracy	�3?


MAEd��@r�Ɍf       r;�j	�
�k�`�A��*W

	precision�?

recall  �?

lossx\?


MSER6�B

accuracy/�3?


MAE��@!�%�f       r;�j	�K��`�A��*W

	precision�~?

recall  �?

loss5�[?


MSE-ՕB

accuracy�3?


MAEZ:�@��u�f       r;�j	g�>��`�A��*W

	precision6�~?

recall  �?

lossO�[?


MSE���B

accuracy��3?


MAE.�@l�G$f       r;�j	����`�A��*W

	precision�~?

recall  �?

loss|[?


MSE��B

accuracy9�3?


MAE��@ķ�>f       r;�j	~����`�A��*W

	precision�~?

recall  �?

lossKH[?


MSEMP�B

accuracy�4?


MAE��@�kif       r;�j	G��`�A��*W

	precisionU�~?

recall  �?

loss�[?


MSE��B

accuracy�'4?


MAE�c�@��f       r;�j	I�l9�`�A��*W

	precision6�~?

recall  �?

loss��Z?


MSE��B

accuracy�04?


MAEbc�@�	�f       r;�j	�N�[�`�A��*W

	precision��~?

recall  �?

lossB�Z?


MSE8ŔB

accuracy�<4?


MAE�A�@�Ef       r;�j	 ~~�`�A��*W

	precisiont�~?

recall  �?

loss�}Z?


MSEG��B

accuracy�J4?


MAE�&�@]�f       r;�j	Tf��`�A��*W

	precisionU�~?

recall  �?

loss�JZ?


MSEN��B

accuracy�h4?


MAE�@ܨmf       r;�j	Mѽ��`�A��*W

	precision��~?

recall  �?

loss{Z?


MSE#]�B

accuracyMg4?


MAE��@�/j�f       r;�j	�� ��`�A��*W

	precisiont�~?

recall  �?

loss�Y?


MSE�x�B

accuracy�q4?


MAE��@o�f       r;�j	"(m�`�A��*W

	precision��~?

recall  �?

loss��Y?


MSE�F�B

accuracy�4?


MAE�̊@;���f       r;�j	�=�)�`�A��*W

	precisiont�~?

recall  �?

loss��Y?


MSE�,�B

accuracy��4?


MAEB��@	��f       r;�j	���K�`�A��*W

	precision6�~?

recall  �?

loss�UY?


MSE�=�B

accuracy��4?


MAE緊@�?�/f       r;�j	�Tn�`�A��*W

	precision��~?

recall  �?

loss'Y?


MSEu�B

accuracy�4?


MAE$k�@8��f       r;�j	UC���`�A��*W

	precisiont�~?

recall  �?

lossz�X?


MSE��B

accuracy��4?


MAE�m�@H�u�f       r;�j	;6��`�A��*W

	precisionU�~?

recall  �?

loss��X?


MSE���B

accuracy��4?


MAEs�@��pvf       r;�j	����`�A��*W

	precision��~?

recall  �?

loss�X?


MSE0��B

accuracyZ�4?


MAE�=�@��u�f       r;�j	�	`��`�A��*W

	precision��~?

recall  �?

loss�gX?


MSE���B

accuracym�4?


MAE�3�@ke�ff       r;�j	���`�A��*W

	precision��~?

recall  �?

loss�8X?


MSE���B

accuracy��4?


MAEw?�@�Qf       r;�j	or�;�`�A��*W

	precision�~?

recall  �?

loss�
X?


MSEd��B

accuracy�5?


MAE�@��Z�f       r;�j	�mT^�`�A��*W

	precision6�~?

recall  �?

lossA�W?


MSE�n�B

accuracy�5?


MAE��@jD�=f       r;�j	bَ��`�A��*W

	precision}�~?

recall  �?

loss��W?


MSEB

accuracy$	5?


MAE?�@s�f       r;�j	.�Ԣ�`�A��*W

	precision��~?

recall  �?

loss�W?


MSE��B

accuracy�65?


MAE���@�uf       r;�j	�� ��`�A��*W

	precision��~?

recall  �?

lossSTW?


MSE�|�B

accuracy�(5?


MAE��@�JVf       r;�j	���`�A��*W

	precision}�~?

recall  �?

lossd'W?


MSE�X�B

accuracy85?


MAEDԉ@�=7hf       r;�j	�^�	�`�A܂*W

	precision�?

recall  �?

loss:�V?


MSE�B�B

accuracy�H5?


MAEA��@F&mf       r;�j	UA�+�`�A��*W

	precisionf�~?

recall  �?

loss#�V?


MSE�ÒB

accuracy�f5?


MAE5c�@���