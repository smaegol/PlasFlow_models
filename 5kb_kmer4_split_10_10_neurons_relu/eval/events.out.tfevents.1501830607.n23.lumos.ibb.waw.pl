       �K"	  �sa�Abrain.Event:2�q��c�      c��;	|~�sa�A"ִ
m
global_stepVariable*
_output_shapes
: *
shape: *
	container *
dtype0	*
shared_name 
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
validate_shape(*
use_locking(*
_output_shapes
: *
T0	*
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
dtype0*(
_output_shapes
:����������*
shape: 
T
outputPlaceholder*
dtype0	*#
_output_shapes
:���������*
shape: 
�
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
valueB"����   *
_output_shapes
:*
dtype0
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*(
_output_shapes
:����������*
T0
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
value	B :*
_output_shapes
: *
dtype0
�
<input_from_feature_columns/input_from_feature_columns/concatIdentity=input_from_feature_columns/input_from_feature_columns/Reshape*(
_output_shapes
:����������*
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
hiddenlayer_0/weights/part_0Variable*
_output_shapes
:	�
*
shape:	�
*
	container *
dtype0*
shared_name 
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"   
   *
_output_shapes
:*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *���*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *��>*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
_output_shapes
:	�
*
seed2*

seed**
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0
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
:	�
*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
_output_shapes
:	�
*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
validate_shape(*
use_locking(*
_output_shapes
:	�
*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
_output_shapes
:	�
*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
n
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
_output_shapes
:	�
*
T0
�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( *
T0
�
hiddenlayer_0/biases/part_0Variable*
_output_shapes
:
*
shape:
*
	container *
dtype0*
shared_name 
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
valueB
*    *
_output_shapes
:
*
dtype0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes
:
*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*
_output_shapes
:
*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
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
*
data_formatNHWC*
T0
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

DstT0*'
_output_shapes
:���������
*

SrcT0

d
zero_fraction/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
_output_shapes
: *
	keep_dims( *
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
num*
_output_shapes
: : *

axis *
T0
�
hiddenlayer_1/weights/part_0Variable*
_output_shapes

:

*
shape
:

*
	container *
dtype0*
shared_name 
�
=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"
   
   *
_output_shapes
:*
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *�7�*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *�7?*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
Ehiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
_output_shapes

:

*
seed2.*

seed**
dtype0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
T0
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

:

*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
7hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
_output_shapes

:

*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
#hiddenlayer_1/weights/part_0/AssignAssignhiddenlayer_1/weights/part_07hiddenlayer_1/weights/part_0/Initializer/random_uniform*
validate_shape(*
use_locking(*
_output_shapes

:

*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
!hiddenlayer_1/weights/part_0/readIdentityhiddenlayer_1/weights/part_0*
_output_shapes

:

*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
m
hiddenlayer_1/weightsIdentity!hiddenlayer_1/weights/part_0/read*
_output_shapes

:

*
T0
�
"hiddenlayer_1/hiddenlayer_1/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reluhiddenlayer_1/weights*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( *
T0
�
hiddenlayer_1/biases/part_0Variable*
_output_shapes
:
*
shape:
*
	container *
dtype0*
shared_name 
�
-hiddenlayer_1/biases/part_0/Initializer/zerosConst*
valueB
*    *
_output_shapes
:
*
dtype0*.
_class$
" loc:@hiddenlayer_1/biases/part_0
�
"hiddenlayer_1/biases/part_0/AssignAssignhiddenlayer_1/biases/part_0-hiddenlayer_1/biases/part_0/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes
:
*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0
�
 hiddenlayer_1/biases/part_0/readIdentityhiddenlayer_1/biases/part_0*
_output_shapes
:
*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0
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
*
data_formatNHWC*
T0
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

DstT0*'
_output_shapes
:���������
*

SrcT0

f
zero_fraction_1/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
_output_shapes
: *
	keep_dims( *
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
num*
_output_shapes
: : *

axis *
T0
�
dnn_logits/weights/part_0Variable*
_output_shapes

:
 *
shape
:
 *
	container *
dtype0*
shared_name 
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"
       *
_output_shapes
:*
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *����*
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
_output_shapes

:
 *
seed2L*

seed**
dtype0*,
_class"
 loc:@dnn_logits/weights/part_0*
T0
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

:
 *
T0*,
_class"
 loc:@dnn_logits/weights/part_0
�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*
_output_shapes

:
 *
T0*,
_class"
 loc:@dnn_logits/weights/part_0
�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
validate_shape(*
use_locking(*
_output_shapes

:
 *
T0*,
_class"
 loc:@dnn_logits/weights/part_0
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*
_output_shapes

:
 *
T0*,
_class"
 loc:@dnn_logits/weights/part_0
g
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
_output_shapes

:
 *
T0
�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_1/hiddenlayer_1/Reludnn_logits/weights*
transpose_a( *'
_output_shapes
:��������� *
transpose_b( *
T0
�
dnn_logits/biases/part_0Variable*
_output_shapes
: *
shape: *
	container *
dtype0*
shared_name 
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
valueB *    *
_output_shapes
: *
dtype0*+
_class!
loc:@dnn_logits/biases/part_0
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*+
_class!
loc:@dnn_logits/biases/part_0
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
:��������� *
data_formatNHWC*
T0
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
:��������� *
T0
t
zero_fraction_2/CastCastzero_fraction_2/Equal*

DstT0*'
_output_shapes
:��������� *

SrcT0

f
zero_fraction_2/ConstConst*
valueB"       *
_output_shapes
:*
dtype0
{
zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
_output_shapes
: *
	keep_dims( *
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
valueB *    *
_output_shapes
: *
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
validate_shape(*
use_locking(*
_output_shapes
: *
T0*'
_class
loc:@centered_bias_weight
�
centered_bias_weight/readIdentitycentered_bias_weight*
_output_shapes
: *
T0*'
_class
loc:@centered_bias_weight
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
: *
T0
�
ScalarSummary_3/tagsConst*�
value�B� Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14Bcentered_bias_15Bcentered_bias_16Bcentered_bias_17Bcentered_bias_18Bcentered_bias_19Bcentered_bias_20Bcentered_bias_21Bcentered_bias_22Bcentered_bias_23Bcentered_bias_24Bcentered_bias_25Bcentered_bias_26Bcentered_bias_27Bcentered_bias_28Bcentered_bias_29Bcentered_bias_30Bcentered_bias_31*
_output_shapes
: *
dtype0
`
ScalarSummary_3ScalarSummaryScalarSummary_3/tagsReshape*
_output_shapes
: *
T0
�
BiasAddBiasAdddnn_logits/dnn_logits/BiasAddcentered_bias_weight/read*'
_output_shapes
:��������� *
data_formatNHWC*
T0
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
ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
_output_shapes
: *
	keep_dims( *
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
: *
shape: *
	container *
dtype0*
shared_name 
�
mean/total/AssignAssign
mean/total
mean/zeros*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*
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
 *    *
_output_shapes
: *
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
validate_shape(*
use_locking(*
_output_shapes
: *
T0*
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

mean/ConstConst*
valueB *
_output_shapes
: *
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
:��������� *
T0
T
ToFloatCastoutput*

DstT0*#
_output_shapes
:���������*

SrcT0	
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
accuracy/zerosConst*
valueB
 *    *
_output_shapes
: *
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
validate_shape(*
use_locking(*
_output_shapes
: *
T0*!
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
 *    *
_output_shapes
: *
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
validate_shape(*
use_locking(*
_output_shapes
: *
T0*!
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
accuracy/ConstConst*
valueB: *
_output_shapes
:*
dtype0
`
accuracy/SumSum	ToFloat_1accuracy/Const*
_output_shapes
: *
	keep_dims( *
T0
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
: *
shape: *
	container *
dtype0*
shared_name 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*1
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
precision/true_positives/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
_output_shapes
: *
	keep_dims( *
T0
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
: *
shape: *
	container *
dtype0*
shared_name 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*2
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
precision/false_positives/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
_output_shapes
: *
	keep_dims( *
T0
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
T0*
use_locking( *
_output_shapes
: *2
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

DstT0*#
_output_shapes
:���������*

SrcT0	
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
: *
shape: *
	container *
dtype0*
shared_name 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*+
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
 *    *
_output_shapes
: *
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
validate_shape(*
use_locking(*
_output_shapes
: *
T0*+
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
mean_squared_error/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
_output_shapes
: *
	keep_dims( *
T0
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
: *
shape: *
	container *
dtype0*
shared_name 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*.
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
recall/true_positives/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
_output_shapes
: *
	keep_dims( *
T0
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
: *
shape: *
	container *
dtype0*
shared_name 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*/
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
recall/false_negatives/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
_output_shapes
: *
	keep_dims( *
T0
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
T0*
use_locking( *
_output_shapes
: */
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

DstT0*#
_output_shapes
:���������*

SrcT0	
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
: *
shape: *
	container *
dtype0*
shared_name 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*,
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
 *    *
_output_shapes
: *
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
validate_shape(*
use_locking(*
_output_shapes
: *
T0*,
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
mean_absolute_error/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
_output_shapes
: *
	keep_dims( *
T0
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

group_depsNoOp^mean_absolute_error/update_op^precision/update_op^mean/update_op^recall/update_op^accuracy/update_op^mean_squared_error/update_op
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
save/save/shapes_and_slicesConst*g
value^B\B B32 0,32B10 32 0,10:0,32B B10 0,10B256 10 0,256:0,10B10 0,10B10 10 0,10:0,10*
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
^save/save*
_output_shapes
: *
T0*
_class
loc:@save/Const
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
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*'
_class
loc:@centered_bias_weight
r
 save/restore_slice_1/tensor_nameConst*"
valueB Bdnn_logits/biases*
_output_shapes
: *
dtype0
l
$save/restore_slice_1/shape_and_sliceConst*
valueB B32 0,32*
_output_shapes
: *
dtype0
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*+
_class!
loc:@dnn_logits/biases/part_0
s
 save/restore_slice_2/tensor_nameConst*#
valueB Bdnn_logits/weights*
_output_shapes
: *
dtype0
t
$save/restore_slice_2/shape_and_sliceConst* 
valueB B10 32 0,10:0,32*
_output_shapes
: *
dtype0
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
validate_shape(*
use_locking(*
_output_shapes

:
 *
T0*,
_class"
 loc:@dnn_logits/weights/part_0
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
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
_output_shapes
:*
dt0	*
preferred_shard���������
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
validate_shape(*
use_locking(*
_output_shapes
: *
T0	*
_class
loc:@global_step
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
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
validate_shape(*
use_locking(*
_output_shapes
:
*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
v
 save/restore_slice_5/tensor_nameConst*&
valueB Bhiddenlayer_0/weights*
_output_shapes
: *
dtype0
v
$save/restore_slice_5/shape_and_sliceConst*"
valueB B256 10 0,256:0,10*
_output_shapes
: *
dtype0
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
validate_shape(*
use_locking(*
_output_shapes
:	�
*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
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
save/Const save/restore_slice_6/tensor_name$save/restore_slice_6/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_6Assignhiddenlayer_1/biases/part_0save/restore_slice_6*
validate_shape(*
use_locking(*
_output_shapes
:
*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0
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
save/Const save/restore_slice_7/tensor_name$save/restore_slice_7/shape_and_slice*
_output_shapes
:*
dt0*
preferred_shard���������
�
save/Assign_7Assignhiddenlayer_1/weights/part_0save/restore_slice_7*
validate_shape(*
use_locking(*
_output_shapes

:

*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
�
initNoOp^mean/total/Assign^mean/count/Assign^accuracy/total/Assign^accuracy/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign

init_all_tablesNoOp
-
group_deps_1NoOp^init^init_all_tables
�
IsVariableInitializedIsVariableInitializedglobal_step*
dtype0	*
_output_shapes
: *
_class
loc:@global_step
�
IsVariableInitialized_1IsVariableInitializedhiddenlayer_0/weights/part_0*
dtype0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
IsVariableInitialized_2IsVariableInitializedhiddenlayer_0/biases/part_0*
dtype0*
_output_shapes
: *.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
IsVariableInitialized_3IsVariableInitializedhiddenlayer_1/weights/part_0*
dtype0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
IsVariableInitialized_4IsVariableInitializedhiddenlayer_1/biases/part_0*
dtype0*
_output_shapes
: *.
_class$
" loc:@hiddenlayer_1/biases/part_0
�
IsVariableInitialized_5IsVariableInitializeddnn_logits/weights/part_0*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0
�
IsVariableInitialized_6IsVariableInitializeddnn_logits/biases/part_0*
dtype0*
_output_shapes
: *+
_class!
loc:@dnn_logits/biases/part_0
�
IsVariableInitialized_7IsVariableInitializedcentered_bias_weight*
dtype0*
_output_shapes
: *'
_class
loc:@centered_bias_weight
�
IsVariableInitialized_8IsVariableInitialized
mean/total*
dtype0*
_output_shapes
: *
_class
loc:@mean/total
�
IsVariableInitialized_9IsVariableInitialized
mean/count*
dtype0*
_output_shapes
: *
_class
loc:@mean/count
�
IsVariableInitialized_10IsVariableInitializedaccuracy/total*
dtype0*
_output_shapes
: *!
_class
loc:@accuracy/total
�
IsVariableInitialized_11IsVariableInitializedaccuracy/count*
dtype0*
_output_shapes
: *!
_class
loc:@accuracy/count
�
IsVariableInitialized_12IsVariableInitializedprecision/true_positives/count*
dtype0*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count
�
IsVariableInitialized_13IsVariableInitializedprecision/false_positives/count*
dtype0*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count
�
IsVariableInitialized_14IsVariableInitializedmean_squared_error/total*
dtype0*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total
�
IsVariableInitialized_15IsVariableInitializedmean_squared_error/count*
dtype0*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count
�
IsVariableInitialized_16IsVariableInitializedrecall/true_positives/count*
dtype0*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count
�
IsVariableInitialized_17IsVariableInitializedrecall/false_negatives/count*
dtype0*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count
�
IsVariableInitialized_18IsVariableInitializedmean_absolute_error/total*
dtype0*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total
�
IsVariableInitialized_19IsVariableInitializedmean_absolute_error/count*
dtype0*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17IsVariableInitialized_18IsVariableInitialized_19*
N*
_output_shapes
:*

axis *
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
mean/countBaccuracy/totalBaccuracy/countBprecision/true_positives/countBprecision/false_positives/countBmean_squared_error/totalBmean_squared_error/countBrecall/true_positives/countBrecall/false_negatives/countBmean_absolute_error/totalBmean_absolute_error/count*
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
%report_uninitialized_variables/concatConcat0report_uninitialized_variables/concat/concat_dim.report_uninitialized_variables/concat/values_0$report_uninitialized_variables/Slice*
N*
_output_shapes
:*
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
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*
Tparams0*
Tindices0	*
validate_indices(*#
_output_shapes
:���������"
�Eoe       ��Zi	ڗ�sa�A�*W


MAE�"A

	precision    

loss	��?

recall    

accuracy��>


MSE'
&CL>�e       ��Zi	ߒ�a�A�*W


MAEK�A

	precision    

loss��?

recall    

accuracy8 �>


MSEb%CR�H4e       ��Zi	�{�a�A�*W


MAE���@

	precision  �?

loss��?

recall  �?

accuracy��	?


MSE�|�BE���e       ��Zi	[���a�A�	*W


MAE��@

	precision��?

loss��?

recall  �?

accuracyL�?


MSE��B�À�e       ��Zi		=*a�A�*W


MAE���@

	precision��?

loss2؛?

recall  �?

accuracy�?


MSEZ%�B��pe       ��Zi	�v8a�A�*W


MAE��@

	precisiondk?

loss邗?

recall  �?

accuracy�H?


MSE��B�� Pe       ��Zi	���_a�A�*W


MAEpɲ@

	precision;?

loss�)�?

recall  �?

accuracy�X?


MSE֠�B�<�Ue       ��Zi	*{��a�A�*W


MAEد@

	precisionl#?

loss�F�?

recall  �?

accuracy�?


MSE&�Bs�3�e       ��Zi	e�a�A�*W


MAE��@

	precision�#?

loss.��?

recall  �?

accuracy��?


MSE�иB��e       ��Zi	���a�A�*W


MAE���@

	precision �~?

loss�l�?

recall  �?

accuracy)v!?


MSEI��B��Y<e       ��Zi	�+��a�A�*W


MAE�̩@

	precision��~?

loss�p�?

recall  �?

accuracyQ�"?


MSE"8�B�2�e       ��Zi	�'5$	a�A�*W


MAE?��@

	precision��~?

loss�Ј?

recall  �?

accuracy��#?


MSE�A�B�KQe       ��Zi	G�K	a�A�*W


MAE�Ȧ@

	precisionߠ~?

lossld�?

recall  �?

accuracyY�$?


MSE��B��le       ��Zi	{2�r	a�A� *W


MAE���@

	precisionk�~?

loss�(�?

recall  �?

accuracy}�%?


MSE[��BⱠe       ��Zi	�A�	a�A�#*W


MAE���@

	precision�~?

loss��?

recall  �?

accuracy�L&?


MSEO}�B��)Se       ��Zi	����	a�A�%*W


MAEmj�@

	precision!}~?

loss\�?

recall  �?

accuracy^�&?


MSEA��B,��e       ��Zi	�[��	a�A�'*W


MAEX��@

	precision��~?

loss+�?

recall  �?

accuracyXr'?


MSE<�B�y��e       ��Zi	�gX
a�A�**W


MAE�0�@

	precisionU�~?

loss�F�?

recall  �?

accuracyC(?


MSE'r�Bp�>�e       ��Zi	�?�7
a�A�,*W


MAEk�@

	precision��~?

loss�h�?

recall  �?

accuracy��(?


MSE���B]C�e       ��Zi	-�^
a�A�.*W


MAE��@

	precision�~?

loss���?

recall  �?

accuracyJ�)?


MSEYS�B�#e       ��Zi	k6A�
a�A�1*W


MAE*8�@

	precisione�~?

loss�~?

recall  �?

accuracy!-*?


MSE��B�.e       ��Zi	7���
a�A�3*W


MAE��@

	precision��~?

losso"}?

recall  �?

accuracy�+?


MSE���B�o��e       ��Zi	�p�
a�A�5*W


MAE4��@

	precisionz�~?

loss�{?

recall  �?

accuracy��+?


MSE�`�B��Z�e       ��Zi	�a��
a�A�8*W


MAEɭ�@

	precision@�~?

loss!�x?

recall  �?

accuracy�,?


MSE�j�B�=�e       ��Zi	��$$a�A�:*W


MAE�J�@

	precision�~?

loss�v?

recall  �?

accuracy�f-?


MSE���B�o8ke       ��Zi	���Ka�A�<*W


MAE�W�@

	precisionE�~?

loss��t?

recall  �?

accuracy�.?


MSE/�B��j�e       ��Zi	:;sa�A�?*W


MAE> �@

	precision:�~?

loss��r?

recall  �?

accuracy;�.?


MSEz5�B^�S"e       ��Zi	��m�a�A�A*W


MAE/<�@

	precisionm�~?

loss&�p?

recall  �?

accuracy�A/?


MSE�{�B��.e       ��Zi	n��a�A�C*W


MAE�W�@

	precision��~?

lossi�n?

recall  �?

accuracy|�/?


MSED��B���e       ��Zi	����a�A�F*W


MAE`�@

	precision �~?

loss��l?

recall  �?

accuracyC0?


MSE�B�B���5e       ��Zi	�Aa�A�H*W


MAEZt�@

	precision��~?

loss��j?

recall  �?

accuracyƝ0?


MSE�B�I�Ve       ��Zi	�7a�A�K*W


MAE��@

	precision��~?

lossf�h?

recall  �?

accuracy�1?


MSEx��B��be       ��Zi	r_a�A�M*W


MAER:�@

	precision^�~?

loss�Pg?

recall  �?

accuracy'�1?


MSE@��B�r"$e       ��Zi	�q�a�A�O*W


MAE@��@

	precisionNc~?

loss~�e?

recall  �?

accuracy��1?


MSE���B�D�Be       ��Zi	�r˭a�A�R*W


MAE���@

	precisionpb~?

losstPd?

recall  �?

accuracy(62?


MSEoИB5���e       ��Zi	���a�A�T*W


MAE���@

	precisionb~?

loss��b?

recall  �?

accuracyh2?


MSE_�B�̸^e       ��Zi	�D��a�A�V*W


MAE�X�@

	precisionCb~?

loss��a?

recall  �?

accuracy��2?


MSEK%�BH⿩e       ��Zi	���#a�A�Y*W


MAE���@

	precision�F~?

lossbw`?

recall  �?

accuracyy3?


MSEJK�B���e       ��Zi	�RKa�A�[*W


MAEI�@

	precision�F~?

loss�M_?

recall  �?

accuracy9l3?


MSEi��BIS��e       ��Zi	�'�ra�A�]*W


MAE�x�@

	precision�E~?

lossF+^?

recall  �?

accuracyƮ3?


MSEn$�Bd~��e       ��Zi	��a�A�`*W


MAEY�@

	precision�F~?

loss�]?

recall  �?

accuracy��3?


MSE#��B����e       ��Zi	oU�a�A�b*W


MAE'��@

	precisionlG~?

lossS \?

recall  �?

accuracy�b4?


MSE�0�B�Z�e       ��Zi	�ܽ�a�A�d*W


MAEѵ�@

	precision�*~?

lossb#[?

recall  �?

accuracy#�4?


MSEO�B��wZe       ��Zi	��a�A�g*W


MAE�H�@

	precisionda~?

loss�2Z?

recall  �?

accuracy-�4?


MSEl��B�i�ne       ��Zi	غ97a�A�i*W


MAE���@

	precisionlG~?

loss RY?

recall  �?

accuracy�15?


MSEV��B����e       ��Zi	í^a�A�k*W


MAE�s�@

	precisionb~?

lossgqX?

recall  �?

accuracy�H5?


MSEi��B�G��e       ��Zi	���a�A�n*W


MAE�*�@

	precision�b~?

loss�W?

recall  �?

accuracy�q5?


MSE�M�B���e       ��Zi	�6N�a�A�p*W


MAE��@

	precision�G~?

loss@�V?

recall  �?

accuracyΕ5?


MSE��B*�Fe       ��Zi	�W��a�A�r*W


MAE��@

	precision=G~?

loss�V?

recall  �?

accuracyU�5?


MSE�֑B+'�me       ��Zi	�P��a�A�u*W


MAE�K�@

	precisionI~?

loss�eU?

recall  �?

accuracy�6?


MSE�p�B�'Y�e       ��Zi	v�.#a�A�w*W


MAEq�@

	precision�~?

loss"�T?

recall  �?

accuracy�16?


MSE�T�B+�(e       ��Zi	J�iJa�A�y*W


MAEo��@

	precisionE�}?

lossg�S?

recall  �?

accuracy�i6?


MSEj̐BӠ�e       ��Zi	O�qa�A�|*W


MAE�J�@

	precision8�}?

loss-ES?

recall  �?

accuracy�6?


MSE�{�Bp�F�e       ��Zi	)O�a�A�~*W


MAE��@

	precisionY�}?

loss��R?

recall  �?

accuracy��6?


MSE�3�B*4lf       r;�j	�~W�a�A�*W


MAE
·@

	precision�}?

loss$R?

recall  �?

accuracyL�6?


MSEU �BU�Eff       r;�j	����a�A��*W


MAE��@

	precision��}?

loss�qQ?

recall  �?

accuracy�7?


MSEF��Bp��f       r;�j	k�Da�A̅*W


MAE^"�@

	precision��}?

lossm�P?

recall  �?

accuracy�M7?


MSE�.�B���f       r;�j	UN�6a�A��*W


MAE���@

	precision��}?

loss�IP?

recall  �?

accuracy c7?


MSE��B�Z8f       r;�j	���]a�A��*W


MAE�s�@

	precision�}?

loss}�O?

recall  �?

accuracy#�7?


MSE,?�B-�o�f       r;�j	�V�a�AЌ*W


MAE�/�@

	precision�}?

loss�>O?

recall  �?

accuracy�7?


MSE���B�X�f       r;�j	OJ��a�A��*W


MAEb�@

	precision��}?

loss4�N?

recall  �?

accuracy}�7?


MSEߍBzOf       r;�j	bZ��a�A��*W


MAE���@

	precision��}?

loss�LN?

recall  �?

accuracy��7?


MSEI}�B�F�f       r;�j	���a�Aԓ*W


MAE,k�@

	precision;�}?

lossI�M?

recall  �?

accuracy�8?


MSE��B���f       r;�j	���!a�A��*W


MAE�.�@

	precision��}?

lossw�M?

recall  �?

accuracy�'8?


MSEå�B�섴f       r;�j	��QIa�A��*W


MAE�6�@

	precision�}?

losstM?

recall  �?

accuracy�-8?


MSE���B�#�bf       r;�j	+�pa�Aؚ*W


MAE���@

	precision��}?

loss�L?

recall  �?

accuracy�\8?


MSE��B�x_f       r;�j	�#�a�A��*W


MAEȆ�@

	precision��}?

loss0ML?

recall  �?

accuracy��8?


MSE��B��,�f       r;�j	�er�a�A��*W


MAEYZ�@

	precision��}?

lossy(L?

recall  �?

accuracyz8?


MSEt��B<�	>f       r;�j	m��a�Aܡ*W


MAE<�@

	precision��}?

loss�K?

recall  �?

accuracy�8?


MSEs��Bf�E�f       r;�j	L�'a�A��*W


MAE�Ѓ@

	precision��}?

lossNK?

recall  �?

accuracy��8?


MSE\�B{�Df       r;�j	��w5a�A��*W


MAE�[�@

	precision��}?

lossSK?

recall  �?

accuracy9?


MSEch�BEؘdf       r;�j	:��\a�A�*W


MAE=�@

	precisionv�}?

loss��J?

recall  �?

accuracyd*9?


MSEdk�Bg�Mf       r;�j	�XE�a�A��*W


MAEB΂@

	precisionO�}?

loss�rJ?

recall  �?

accuracy�`9?


MSEg��Bj}cf       r;�j	u��a�A��*W


MAEh��@

	precision��}?

lossm;J?

recall  �?

accuracyU_9?


MSE��B߆�f       r;�j	}.�a�A�*W


MAE���@

	precision��}?

lossn�I?

recall  �?

accuracyhh9?


MSEr��B�0 }f       r;�j	J���a�A��*W


MAE1��@

	precision��}?

lossطI?

recall  �?

accuracyv9?


MSEݐ�Bl6hf       r;�j	��!a�A��*W


MAEH��@

	precision��}?

lossKkI?

recall  �?

accuracy�t9?


MSEE��B_e�f       r;�j	'p9Ia�A�*W


MAE���@

	precision��}?

lossX2I?

recall  �?

accuracy|9?


MSE���Bw���f       r;�j	b�mpa�A��*W


MAEXI�@

	precision(�}?

loss�I?

recall  �?

accuracy��9?


MSEz�B#�<=f       r;�j	~���a�A��*W


MAE��@

	precision�~?

loss��H?

recall  �?

accuracy�9?


MSE�وB�6GEf       r;�j	�ܾa�A�*W


MAEEǁ@

	precision%~?

loss��H?

recall  �?

accuracyH�9?


MSE���BV�DXf       r;�j	M�M�a�A��*W


MAE��@

	precision%~?

lossZiH?

recall  �?

accuracy��9?


MSE���B:3t�f       r;�j	܆�a�A��*W


MAE-��@

	precision3~?

loss�-H?

recall  �?

accuracy��9?


MSE碈Bn׍�f       r;�j	B��4a�A��*W


MAEʁ@

	precision�3~?

lossXH?

recall  �?

accuracy[�9?


MSEG��B�vf       r;�j	_�K\a�A��*W


MAE�ف@

	precision14~?

loss<�G?

recall  �?

accuracy��9?


MSE���B���^f       r;�j	����a�A��*W


MAED{�@

	precision�L~?

loss��G?

recall  �?

accuracy�:?


MSE$c�B0�+�f       r;�j	���a�A��*W


MAE�ǁ@

	precisionO~?

loss؏G?

recall  �?

accuracyU�9?


MSE���BV6�f       r;�j	�w�a�A��*W


MAEs��@

	precision�L~?

loss(ZG?

recall  �?

accuracy��9?


MSE_�B+�"f       r;�j	����a�A��*W


MAE9��@

	precision�N~?

loss�HG?

recall  �?

accuracy[�9?


MSE_�Be�i�f       r;�j	%QW!a�A��*W


MAE�k�@

	precision�L~?

lossG?

recall  �?

accuracy��9?


MSE�I�B� �wf       r;�j	[��Ha�A��*W


MAE�a�@

	precisionDM~?

loss��F?

recall  �?

accuracy�:?


MSEE�BZٟ�f       r;�j	��$pa�A��*W


MAE��@

	precision�L~?

loss��F?

recall  �?

accuracy(:?


MSE��B�q�f       r;�j	�녗a�A��*W


MAE��@

	precisionM~?

loss��F?

recall  �?

accuracy0:?


MSEF�B�\�.f       r;�j	�#�a�A��*W


MAEN�@

	precision]L~?

loss|{F?

recall  �?

accuracy�a:?


MSE�҇B�*�f       r;�j	*�&�a�A��*W


MAE^�@

	precision/L~?

lossVF?

recall  �?

accuracy�[:?


MSE���BA�=%f       r;�j	��[a�A��*W


MAE��@

	precisionM~?

loss�AF?

recall  �?

accuracy�X:?


MSEIŇB�]�+f       r;�j	[�y4a�A��*W


MAE�ƀ@

	precisionDM~?

loss�F?

recall  �?

accuracyn:?


MSE���B��kwf       r;�j	DϿ[a�A��*W


MAE�Ѐ@

	precision�L~?

loss�E?

recall  �?

accuracy�i:?


MSE
��Be�a7f       r;�j	��a�A��*W


MAE��@

	precisionff~?

loss�E?

recall  �?

accuracy�:?


MSE���Bż�f       r;�j	Ve[�a�A��*W


MAE���@

	precision�L~?

loss��E?

recall  �?

accuracyɇ:?


MSE ��B|�� f       r;�j	.��a�A��*W


MAE�n�@

	precision�L~?

loss0�E?

recall  �?

accuracy��:?


MSE�O�BrD�f       r;�j	��a�A��*W


MAE)W�@

	precisionff~?

loss�{E?

recall  �?

accuracyC�:?


MSE�Y�B�#��f       r;�j	��1 a�A��*W


MAEH�@

	precision�N~?

lossvvE?

recall  �?

accuracyV�:?


MSE݆B�m��f       r;�j	6��Ga�A��*W


MAE?%�@

	precision�L~?

loss%FE?

recall  �?

accuracy|�:?


MSE��Bx§�f       r;�j	w�na�A��*W


MAE%�@

	precision>O~?

loss�8E?

recall  �?

accuracy�:?


MSE[ԆB�h�f       r;�j	�D�a�A��*W


MAE�@

	precision>O~?

loss� E?

recall  �?

accuracy��:?


MSE<نB8;>f       r;�j	'���a�A��*W


MAE��@

	precisionYN~?

loss��D?

recall  �?

accuracy��:?


MSE��B���vf       r;�j	7}�a�A��*W


MAE:�@

	precision�M~?

loss��D?

recall  �?

accuracy�:?


MSE��B�I�f       r;�j	��[a�A��*W


MAEO�@

	precision�N~?

loss��D?

recall  �?

accuracy�:?


MSE��Bk�f       r;�j	�z�3a�A�*W


MAE?%�@

	precision�M~?

lossնD?

recall  �?

accuracy�:?


MSEc�B*A@.f       r;�j	&��Za�A��*W


MAE�@

	precision�M~?

loss*�D?

recall  �?

accuracy&�:?


MSE��BK�8�f       r;�j	�=݁a�A��*W


MAE��@

	precisionYN~?

loss��D?

recall  �?

accuracy`;?


MSE��B�c�f       r;�j	ī��a�A�*W


MAE��@

	precisionrM~?

loss�iD?

recall  �?

accuracyf;?


MSE�܆BkD��f       r;�j	az�a�A��*W


MAE��@

	precision�N~?

loss�[D?

recall  �?

accuracy�;?


MSE���B��mf       r;�j	DE5�a�Ač*W


MAEЬ@

	precision�g~?

loss�9D?

recall  �?

accuracy�&;?


MSE��BmVRf       r;�j		��a�A��*W


MAE}X@

	precision+N~?

loss�*D?

recall  �?

accuracy#+;?


MSE���B$M5*f       r;�j	jS�Ea�A��*W


MAE�@

	precision�g~?

loss�D?

recall  �?

accuracy01;?


MSE�̆B��nAf       r;�j	�W!ma�AȔ*W


MAE�;@

	precision�M~?

loss��C?

recall  �?

accuracy�8;?


MSE���BX�f�f       r;�j	{���a�A��*W


MAE�^@

	precisionh~?

loss��C?

recall  �?

accuracy�8;?


MSE'��B#|w�f       r;�j	tڻa�A��*W


MAE�Q@

	precision�g~?

loss}�C?

recall  �?

accuracycI;?


MSE<ÆB3B��f       r;�j	��!�a�A̛*W


MAE)�~@

	precision�N~?

lossv�C?

recall  �?

accuracy�M;?


MSE�V�Bi�@rf       r;�j	o�
a�A��*W


MAEcL@

	precisionph~?

loss��C?

recall  �?

accuracy�G;?


MSE칆B�pTf       r;�j	r2a�A��*W


MAE1@

	precision�N~?

lossr�C?

recall  �?

accuracyvR;?


MSE��B4�?�f       r;�j	1�Ya�AТ*W


MAEX@

	precision�g~?

loss �C?

recall  �?

accuracy�M;?


MSEB�4�f       r;�j	w���a�A��*W


MAE^@

	precision�g~?

loss�mC?

recall  �?

accuracy];?


MSE/��B�G�f       r;�j	��q�a�A��*W


MAE�@

	precisionrM~?

loss�`C?

recall  �?

accuracy�^;?


MSE䔆B����f       r;�j	h���a�Aԩ*W


MAEJ@

	precisionh~?

loss�JC?

recall  �?

accuracy];?


MSEl��B�}�f       r;�j	��N�a�A��*W


MAE�@

	precisionrM~?

loss	>C?

recall  �?

accuracy&i;?


MSE��Bq�Nf       r;�j	J��a�A��*W


MAER5@

	precisionlg~?

loss&C?

recall  �?

accuracy�g;?


MSE��B$�rf       r;�j	���Ea�Aذ*W


MAE��~@

	precision>O~?

loss�/C?

recall  �?

accuracy3o;?


MSE�<�B�g�Mf       r;�j	��6ma�A��*W


MAEM@

	precision�h~?

lossT	C?

recall  �?

accuracy@u;?


MSEܫ�BD�0�f       r;�j	x��a�A��*W


MAE�g@

	precision�g~?

loss��B?

recall  �?

accuracy f;?


MSE%�B�6�4f       r;�j	$��a�Aܷ*W


MAEM~@

	precisionlg~?

loss��B?

recall  �?

accuracy`;?


MSE$�B� ԩf       r;�j	0V[�a�A��*W


MAEH!@

	precisionrM~?

loss��B?

recall  �?

accuracy3o;?


MSE'��B܃�,f       r;�j	�{�
a�A��*W


MAED�~@

	precision�N~?

loss�B?

recall  �?

accuracy�;?


MSEL�Bw{xf       r;�j	V�1a�A�*W


MAE�=@

	precisionlg~?

loss��B?

recall  �?

accuracy&i;?


MSE!ÆBnH�nf       r;�j	�9Ya�A��*W


MAE��~@

	precisionEh~?

losséB?

recall  �?

accuracy݂;?


MSE��B`�.�f       r;�j	's�a�A��*W


MAE�w~@

	precision>O~?

lossʯB?

recall  �?

accuracyf�;?


MSE�7�B��1
f       r;�j	�o��a�A��*W


MAE�@

	precision�g~?

loss��B?

recall  �?

accuracy�p;?


MSE���Bt��f       r;�j	�� �a�A��*W


MAE�q~@

	precision�M~?

loss��B?

recall  �?

accuracy
�;?


MSEF�B�u��f       r;�j	'��a�A��*W


MAE�~@

	precision�N~?

loss�tB?

recall  �?

accuracy0�;?


MSE��Bv�If       r;�j	�y�a�A��*W


MAEȷ~@

	precision�g~?

lossaB?

recall  �?

accuracym�;?


MSEOt�BG�<�f       r;�j	]XEa�A��*W


MAE	~@

	precision>O~?

lossvcB?

recall  �?

accuracy��;?


MSE��B�J-cf       r;�j	��la�A��*W


MAE]�}@

	precisionYN~?

loss�JB?

recall  �?

accuracy��;?


MSEv��BԖHf       r;�j	9L��a�A��*W


MAE��}@

	precision�M~?

lossR9B?

recall  �?

accuracy��;?


MSE��B�'��f       r;�j	�H�a�A��*W


MAE�}@

	precision�N~?

loss~3B?

recall  �?

accuracyc�;?


MSE%ۅB�P��f       r;�j	|wq�a�A��*W


MAED�}@

	precision�M~?

loss~!B?

recall  �?

accuracyC�;?


MSE���B>af       r;�j	���	a�A��*W


MAE��}@

	precisionYN~?

loss�B?

recall  �?

accuracyJ�;?


MSE���B��f       r;�j	:�>1a�A��*W


MAE0~@

	precision�h~?

loss�B?

recall  �?

accuracyJ�;?


MSE��B�k�f       r;�j	j��Xa�A��*W


MAE�9}@

	precision�N~?

loss��A?

recall  �?

accuracy�;?


MSE1��B�T��f       r;�j	���a�A��*W


MAE�F}@

	precisionYN~?

lossJ�A?

recall  �?

accuracy��;?


MSE ��B
f��f       r;�j	*��a�A��*W


MAEc�}@

	precision�M~?

loss��A?

recall  �?

accuracy}�;?


MSE'��B'f�f       r;�j	ye��a�A��*W


MAE��}@

	precision�M~?

loss��A?

recall  �?

accuracy��;?


MSE�څB��Pf       r;�j	���a�A��*W


MAEUb}@

	precision�M~?

loss��A?

recall  �?

accuracy�;?


MSE��BS`�f       r;�j	�DTa�A��*W


MAE�d}@

	precisionYN~?

loss
�A?

recall  �?

accuracy��;?


MSE���BS>.�f       r;�j	(&�Da�A��*W


MAER�}@

	precision�h~?

loss+�A?

recall  �?

accuracyj�;?


MSEB�\7
f       r;�j	.G�ka�A��*W


MAE�t}@

	precision�N~?

lossѦA?

recall  �?

accuracyw�;?


MSE��B�{�f       r;�j	\�#�a�A��*W


MAEZ}@

	precision+N~?

loss��A?

recall  �?

accuracy�;?


MSE唅B:1i�f       r;�j	Hь�a�A��*W


MAEt}@

	precision+N~?

lossڊA?

recall  �?

accuracy��;?


MSEO��B���f       r;�j	����a�A��*W


MAEFj}@

	precisiono3~?

loss��A?

recall  �?

accuracyj�;?


MSE���B����f       r;�j	QV	 a�A��*W


MAE�W}@

	precision�M~?

loss�oA?

recall  �?

accuracy �;?


MSE��B�Z�f       r;�j	Q�0 a�A��*W


MAE�F}@

	precision�M~?

loss�eA?

recall  �?

accuracy}�;?


MSE]��B��*f       r;�j	���W a�A��*W


MAE�B}@

	precision>3~?

loss�aA?

recall  �?

accuracyp�;?


MSE�m�BG�_&f       r;�j	���~ a�A��*W


MAE(M}@

	precision�2~?

lossSA?

recall  �?

accuracyp�;?


MSE�{�B�2��f       r;�j	�� a�A܂*W


MAET}@

	precision�2~?

lossEA?

recall  �?

accuracy��;?


MSE�b�B�\�f       r;�j	��r� a�A��*W


MAE�5}@

	precision>3~?

loss1<A?

recall  �?

accuracy �;?


MSE�n�B�