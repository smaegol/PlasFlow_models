       �K"	  ���`�Abrain.Event:2 ��!�      I撳	 m��`�A"��
m
global_stepVariable*
shared_name *
_output_shapes
: *
	container *
dtype0	*
shape: 

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
value	B	 R *
dtype0	
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
validate_shape(*
_class
loc:@global_step*
_output_shapes
: *
use_locking(
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
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
_output_shapes
:*
valueB"����@   *
dtype0
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*
T0*'
_output_shapes
:���������@
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
_output_shapes
: *
value	B :*
dtype0
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
"hiddenlayer_0/hiddenlayer_0/unpackUnpack!hiddenlayer_0/hiddenlayer_0/Shape*
T0*
_output_shapes
: : *

axis *	
num
�
hiddenlayer_0/weights/part_0Variable*
shared_name *
_output_shapes

:@
*
	container *
dtype0*
shape
:@

�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
:*
valueB"@   
   *
dtype0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
: *
valueB
 *iʑ�*
dtype0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
: *
valueB
 *iʑ>*
dtype0
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
seed2*
dtype0*

seed**
T0*
_output_shapes

:@

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

:@

�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes

:@

�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
T0*
validate_shape(*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes

:@
*
use_locking(
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes

:@

m
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
T0*
_output_shapes

:@

�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
T0*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( 
�
hiddenlayer_0/biases/part_0Variable*
shared_name *
_output_shapes
:
*
	container *
dtype0*
shape:

�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
:
*
valueB
*    *
dtype0
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
T0*
validate_shape(*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
:
*
use_locking(
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
T0*'
_output_shapes
:���������
*
data_formatNHWC

 hiddenlayer_0/hiddenlayer_0/ReluRelu#hiddenlayer_0/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:���������

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
:���������

p
zero_fraction/CastCastzero_fraction/Equal*'
_output_shapes
:���������
*

DstT0*

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
T0*
_output_shapes
: : *

axis *	
num
�
hiddenlayer_1/weights/part_0Variable*
shared_name *
_output_shapes

:

*
	container *
dtype0*
shape
:


�
=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes
:*
valueB"
   
   *
dtype0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes
: *
valueB
 *�7�*
dtype0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes
: *
valueB
 *�7?*
dtype0
�
Ehiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
seed2.*
dtype0*

seed**
T0*
_output_shapes

:


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
T0*
validate_shape(*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes

:

*
use_locking(
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
transpose_a( *'
_output_shapes
:���������
*
transpose_b( 
�
hiddenlayer_1/biases/part_0Variable*
shared_name *
_output_shapes
:
*
	container *
dtype0*
shape:

�
-hiddenlayer_1/biases/part_0/Initializer/zerosConst*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
_output_shapes
:
*
valueB
*    *
dtype0
�
"hiddenlayer_1/biases/part_0/AssignAssignhiddenlayer_1/biases/part_0-hiddenlayer_1/biases/part_0/Initializer/zeros*
T0*
validate_shape(*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
_output_shapes
:
*
use_locking(
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
T0*'
_output_shapes
:���������
*
data_formatNHWC

 hiddenlayer_1/hiddenlayer_1/ReluRelu#hiddenlayer_1/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:���������

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
:���������

t
zero_fraction_1/CastCastzero_fraction_1/Equal*'
_output_shapes
:���������
*

DstT0*

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
T0*
_output_shapes
: : *

axis *	
num
�
dnn_logits/weights/part_0Variable*
shared_name *
_output_shapes

:
*
	container *
dtype0*
shape
:

�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
:*
valueB"
      *
dtype0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
: *
valueB
 *����*
dtype0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
: *
valueB
 *���>*
dtype0
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*,
_class"
 loc:@dnn_logits/weights/part_0*
seed2L*
dtype0*

seed**
T0*
_output_shapes

:

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
T0*
validate_shape(*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

:
*
use_locking(
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
transpose_a( *'
_output_shapes
:���������*
transpose_b( 
�
dnn_logits/biases/part_0Variable*
shared_name *
_output_shapes
:*
	container *
dtype0*
shape:
�
*dnn_logits/biases/part_0/Initializer/zerosConst*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
:*
valueB*    *
dtype0
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
T0*
validate_shape(*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
:*
use_locking(
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
T0*'
_output_shapes
:���������*
data_formatNHWC
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
zero_fraction_2/CastCastzero_fraction_2/Equal*'
_output_shapes
:���������*

DstT0*

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
centered_bias_weightVariable*
shared_name *
_output_shapes
:*
	container *
dtype0*
shape:
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
T0*
validate_shape(*'
_class
loc:@centered_bias_weight*
_output_shapes
:*
use_locking(
�
centered_bias_weight/readIdentitycentered_bias_weight*
T0*'
_class
loc:@centered_bias_weight*
_output_shapes
:
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
T0*'
_output_shapes
:���������*
data_formatNHWC
_
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeoutput*
T0	*
_output_shapes
:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsBiasAddoutput*
T0*
Tlabels0	*6
_output_shapes$
":���������:���������
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

mean/totalVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
mean/total/AssignAssign
mean/total
mean/zeros*
T0*
validate_shape(*
_class
loc:@mean/total*
_output_shapes
: *
use_locking(
g
mean/total/readIdentity
mean/total*
T0*
_class
loc:@mean/total*
_output_shapes
: 
Q
mean/zeros_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
l

mean/countVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
T0*
validate_shape(*
_class
loc:@mean/count*
_output_shapes
: *
use_locking(
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
mean/ToFloat_1Cast	mean/Size*
_output_shapes
: *

DstT0*

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
T0*
_class
loc:@mean/total*
_output_shapes
: *
use_locking( 
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
T0*
_class
loc:@mean/count*
_output_shapes
: *
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
ToFloatCastoutput*#
_output_shapes
:���������*

DstT0*

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
mean_absolute_error/ToFloatCastAbs*#
_output_shapes
:���������*

DstT0*

SrcT0	
^
mean_absolute_error/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
{
mean_absolute_error/totalVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
T0*
validate_shape(*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: *
use_locking(
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*
T0*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: 
`
mean_absolute_error/zeros_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
{
mean_absolute_error/countVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
T0*
validate_shape(*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: *
use_locking(
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
mean_absolute_error/ToFloat_1Castmean_absolute_error/Size*
_output_shapes
: *

DstT0*

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
T0*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: *
use_locking( 
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
T0*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: *
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
recall/true_positives/countVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
T0*
validate_shape(*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: *
use_locking(
�
 recall/true_positives/count/readIdentityrecall/true_positives/count*
T0*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: 
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
T0*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: *
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
recall/false_negatives/countVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
T0*
validate_shape(*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: *
use_locking(
�
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*
T0*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: 
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
T0*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: *
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
	ToFloat_1CastEqual*#
_output_shapes
:���������*

DstT0*

SrcT0

S
accuracy/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
p
accuracy/totalVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
T0*
validate_shape(*!
_class
loc:@accuracy/total*
_output_shapes
: *
use_locking(
s
accuracy/total/readIdentityaccuracy/total*
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
U
accuracy/zeros_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
p
accuracy/countVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
T0*
validate_shape(*!
_class
loc:@accuracy/count*
_output_shapes
: *
use_locking(
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
accuracy/ToFloat_1Castaccuracy/Size*
_output_shapes
: *

DstT0*

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
T0*!
_class
loc:@accuracy/total*
_output_shapes
: *
use_locking( 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
T0*!
_class
loc:@accuracy/count*
_output_shapes
: *
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
precision/true_positives/countVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
T0*
validate_shape(*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: *
use_locking(
�
#precision/true_positives/count/readIdentityprecision/true_positives/count*
T0*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: 
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
T0*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: *
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
precision/false_positives/countVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
T0*
validate_shape(*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: *
use_locking(
�
$precision/false_positives/count/readIdentityprecision/false_positives/count*
T0*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: 
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
T0*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: *
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
mean_squared_error/ToFloatCastSquare*#
_output_shapes
:���������*

DstT0*

SrcT0	
]
mean_squared_error/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0
z
mean_squared_error/totalVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
T0*
validate_shape(*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: *
use_locking(
�
mean_squared_error/total/readIdentitymean_squared_error/total*
T0*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: 
_
mean_squared_error/zeros_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
z
mean_squared_error/countVariable*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
T0*
validate_shape(*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: *
use_locking(
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
mean_squared_error/ToFloat_1Castmean_squared_error/Size*
_output_shapes
: *

DstT0*

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
T0*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: *
use_locking( 
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
T0*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: *
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
�

group_depsNoOp^mean_absolute_error/update_op^accuracy/update_op^precision/update_op^mean_squared_error/update_op^recall/update_op^mean/update_op
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
:*e
value\BZB B15 0,15B10 15 0,10:0,15B B10 0,10B64 10 0,64:0,10B10 0,10B10 10 0,10:0,10*
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
T0*
_class
loc:@save/Const*
_output_shapes
: 
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
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
T0*
validate_shape(*'
_class
loc:@centered_bias_weight*
_output_shapes
:*
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
valueB B15 0,15*
dtype0
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
T0*
validate_shape(*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
:*
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
valueB B10 15 0,10:0,15*
dtype0
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
T0*
validate_shape(*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes

:
*
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
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
dt0	*
_output_shapes
:*
preferred_shard���������
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
T0	*
validate_shape(*
_class
loc:@global_step*
_output_shapes
: *
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
valueB B10 0,10*
dtype0
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
T0*
validate_shape(*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
:
*
use_locking(
v
 save/restore_slice_5/tensor_nameConst*
_output_shapes
: *&
valueB Bhiddenlayer_0/weights*
dtype0
t
$save/restore_slice_5/shape_and_sliceConst*
_output_shapes
: * 
valueB B64 10 0,64:0,10*
dtype0
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
T0*
validate_shape(*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes

:@
*
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
valueB B10 0,10*
dtype0
�
save/restore_slice_6RestoreSlice
save/Const save/restore_slice_6/tensor_name$save/restore_slice_6/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_6Assignhiddenlayer_1/biases/part_0save/restore_slice_6*
T0*
validate_shape(*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
_output_shapes
:
*
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
valueB B10 10 0,10:0,10*
dtype0
�
save/restore_slice_7RestoreSlice
save/Const save/restore_slice_7/tensor_name$save/restore_slice_7/shape_and_slice*
dt0*
_output_shapes
:*
preferred_shard���������
�
save/Assign_7Assignhiddenlayer_1/weights/part_0save/restore_slice_7*
T0*
validate_shape(*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes

:

*
use_locking(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
�
initNoOp^mean/total/Assign^mean/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign^accuracy/total/Assign^accuracy/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign

init_all_tablesNoOp
-
group_deps_1NoOp^init^init_all_tables
�
IsVariableInitializedIsVariableInitializedglobal_step*
_class
loc:@global_step*
_output_shapes
: *
dtype0	
�
IsVariableInitialized_1IsVariableInitializedhiddenlayer_0/weights/part_0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
_output_shapes
: *
dtype0
�
IsVariableInitialized_2IsVariableInitializedhiddenlayer_0/biases/part_0*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
_output_shapes
: *
dtype0
�
IsVariableInitialized_3IsVariableInitializedhiddenlayer_1/weights/part_0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
_output_shapes
: *
dtype0
�
IsVariableInitialized_4IsVariableInitializedhiddenlayer_1/biases/part_0*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
_output_shapes
: *
dtype0
�
IsVariableInitialized_5IsVariableInitializeddnn_logits/weights/part_0*,
_class"
 loc:@dnn_logits/weights/part_0*
_output_shapes
: *
dtype0
�
IsVariableInitialized_6IsVariableInitializeddnn_logits/biases/part_0*+
_class!
loc:@dnn_logits/biases/part_0*
_output_shapes
: *
dtype0
�
IsVariableInitialized_7IsVariableInitializedcentered_bias_weight*'
_class
loc:@centered_bias_weight*
_output_shapes
: *
dtype0
�
IsVariableInitialized_8IsVariableInitialized
mean/total*
_class
loc:@mean/total*
_output_shapes
: *
dtype0
�
IsVariableInitialized_9IsVariableInitialized
mean/count*
_class
loc:@mean/count*
_output_shapes
: *
dtype0
�
IsVariableInitialized_10IsVariableInitializedmean_absolute_error/total*,
_class"
 loc:@mean_absolute_error/total*
_output_shapes
: *
dtype0
�
IsVariableInitialized_11IsVariableInitializedmean_absolute_error/count*,
_class"
 loc:@mean_absolute_error/count*
_output_shapes
: *
dtype0
�
IsVariableInitialized_12IsVariableInitializedrecall/true_positives/count*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: *
dtype0
�
IsVariableInitialized_13IsVariableInitializedrecall/false_negatives/count*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: *
dtype0
�
IsVariableInitialized_14IsVariableInitializedaccuracy/total*!
_class
loc:@accuracy/total*
_output_shapes
: *
dtype0
�
IsVariableInitialized_15IsVariableInitializedaccuracy/count*!
_class
loc:@accuracy/count*
_output_shapes
: *
dtype0
�
IsVariableInitialized_16IsVariableInitializedprecision/true_positives/count*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: *
dtype0
�
IsVariableInitialized_17IsVariableInitializedprecision/false_positives/count*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: *
dtype0
�
IsVariableInitialized_18IsVariableInitializedmean_squared_error/total*+
_class!
loc:@mean_squared_error/total*
_output_shapes
: *
dtype0
�
IsVariableInitialized_19IsVariableInitializedmean_squared_error/count*+
_class!
loc:@mean_squared_error/count*
_output_shapes
: *
dtype0
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17IsVariableInitialized_18IsVariableInitialized_19*
T0
*
_output_shapes
:*

axis *
N
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
mean/countBmean_absolute_error/totalBmean_absolute_error/countBrecall/true_positives/countBrecall/false_negatives/countBaccuracy/totalBaccuracy/countBprecision/true_positives/countBprecision/false_positives/countBmean_squared_error/totalBmean_squared_error/count*
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
T0*
_output_shapes
:*
N
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
&report_uninitialized_variables/SqueezeSqueeze$report_uninitialized_variables/Where*
squeeze_dims
*
T0	*#
_output_shapes
:���������
�
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*
validate_indices(*
Tparams0*#
_output_shapes
:���������*
Tindices0	"
�e       ��Zi	����`�A�*W


MAE�o@

accuracy!+�>

	precision    


MSE�B

recall    

lossOf�?m-�e       ��Zi	�H��`�A�*W


MAEO�W@

accuracy�z?

	precision    


MSE
�A

recall    

lossU��?s��e       ��Zi	����`�A�*W


MAE�^J@

accuracy�l
?

	precision    


MSE���A

recall    

loss�N�?<�wBe       ��Zi	���`�A�	*W


MAE�jB@

accuracy$�?

	precision    


MSE�)�A

recall    

lossI��?*��Me       ��Zi	}�G��`�A�*W


MAE��6@

accuracy�?

	precision    


MSE��A

recall    

loss��?�Ee       ��Zi	I���`�A�*W


MAER�0@

accuracySN?

	precision    


MSE๲A

recall    

loss�2�?SL%Ge       ��Zi	���`�A�*W


MAEy'-@

accuracy�q?

	precision    


MSE�֮A

recall    

loss��?OZf�e       ��Zi	�KE��`�A�*W


MAEn�*@

accuracyx?

	precision    


MSE5'�A

recall    

loss��?6�s}e       ��Zi	Г���`�A�*W


MAE�N'@

accuracy��?

	precision    


MSE���A

recall    

loss;��?�)v�e       ��Zi	K;��`�A�*W


MAE�a&@

accuracy��?

	precision    


MSEvG�A

recall    

loss��?
O@,e       ��Zi	3�g��`�A�*W


MAE��$@

accuracy��?

	precision    


MSEh�A

recall    

lossa\�?�K��e       ��Zi	`{ɵ�`�A�*W


MAE($@

accuracy
?

	precision    


MSE�P�A

recall    

loss���?*���e       ��Zi	�5)��`�A�*W


MAEe"@

accuracyV�?

	precision  �?


MSE�ȡA

recall   ?

loss�+�?ΦI�e       ��Zi	Ҋ��`�A� *W


MAE1!@

accuracy� ?

	precision    


MSE�;�A

recall    

loss|��?k+�e       ��Zi	�����`�A�#*W


MAE�@

accuracy.�!?

	precision    


MSE�^�A

recall    

loss�c�?���e       ��Zi	�L��`�A�%*W


MAE�[@

accuracy�=#?

	precision  �?


MSEaۚA

recall   ?

lossi�?�X�we       ��Zi	i����`�A�'*W


MAE�@

accuracy�!$?

	precision  �?


MSE�j�A

recall  �?

losstƂ?�K�+e       ��Zi	D2��`�A�**W


MAEeF@

accuracy��$?

	precision  �?


MSE[�A

recall  �?

loss���?����e       ��Zi	�it��`�A�,*W


MAE{X@

accuracy�g&?

	precision  �?


MSE��A

recall  �?

lossRo�?��Ne       ��Zi	����`�A�.*W


MAEG@

accuracy�K'?

	precision  �?


MSEߔA

recall  �?

losslF~? 'G�e       ��Zi	��<��`�A�1*W


MAE8�@

accuracy��'?

	precision  �?


MSEV�A

recall  �?

loss�|?�PGwe       ��Zi	 S���`�A�3*W


MAE�G@

accuracyb](?

	precision  �?


MSE2k�A

recall  �?

lossC�y?>�Ie       ��Zi	�-���`�A�5*W


MAEֲ@

accuracy��)?

	precision  �?


MSE��A

recall  �?

loss�w?�
��e       ��Zi	�F��`�A�8*W


MAE�@

accuracy�G*?

	precision  �?


MSE�}�A

recall  �?

loss�t?{t;e       ��Zi	ǿ���`�A�:*W


MAEN=@

accuracyx�*?

	precision  �?


MSE a�A

recall  �?

lossi2r?��}�e       ��Zi	����`�A�<*W


MAE}�@

accuracy��+?

	precision  �?


MSE�_�A

recall  �?

loss{p?Ut�e       ��Zi	�f��`�A�?*W


MAE��@

accuracyr,?

	precision  �?


MSE�ߋA

recall��p?

loss��m?�,o�e       ��Zi	h����`�A�A*W


MAE;�@

accuracy�v,?

	precision  �?


MSE��A

recall=�s?

lossk�k?�Ge       ��Zi	p�, �`�A�C*W


MAEO�@

accuracy��,?

	precision  �?


MSE�v�A

recall��t?

loss�;j?B��we       ��Zi	i��`�A�F*W


MAEt(
@

accuracy��-?

	precision  �?


MSE���A

recall��t?

lossS�h?R��\e       ��Zi	Ν��`�A�H*W


MAEf�	@

accuracyB�-?

	precision  �?


MSE��A

recall��t?

loss�kg?��~2e       ��Zi	�E�`�A�K*W


MAEƵ@

accuracy��.?

	precision  �?


MSE��A

recallb'v?

lossBf?��ze       ��Zi	����`�A�M*W


MAE#/@

accuracy�9/?

	precision  �?


MSE'��A

recall۶m?

loss�8e?�M�e       ��Zi	���`�A�O*W


MAE��@

accuracyJ�/?

	precision  �?


MSE���A

recallGXn?

loss;d?]AqRe       ��Zi	`�`�A�R*W


MAE=�@

accuracy�40?

	precision  �?


MSE}�A

recall|p?

loss8Zc?���Se       ��Zi	�Ⱦ�`�A�T*W


MAE��@

accuracy�40?

	precision  �?


MSE�w�A

recall|p?

loss��b? ~he       ��Zi	��#�`�A�V*W


MAE��@

accuracy_b0?

	precision  �?


MSE�c�A

recall��x?

loss��a?��Je       ��Zi	.;�'�`�A�Y*W


MAEKf@

accuracy(@0?

	precision  �?


MSEV%�A

recall�y?

lossha?0�Wqe       ��Zi	��+�`�A�[*W


MAE9n@

accuracy��0?

	precision  �?


MSEV�A

recall�y?

lossG?`?)��e       ��Zi	�30�`�A�]*W


MAE+�@

accuracy=�0?

	precision  �?


MSE�MA

recall.�r?

lossS�_?2*e       ��Zi	�݊4�`�A�`*W


MAE��@

accuracy�1?

	precision  �?


MSE�x|A

recall�s?

loss��^?��Ye       ��Zi	��8�`�A�b*W


MAE�� @

accuracy��1?

	precision  �?


MSE*qzA

recall]t?

loss!^?��e       ��Zi	�C=�`�A�d*W


MAE� @

accuracy�2?

	precision  �?


MSE�pxA

recall��t?

loss�d]?O�e       ��Zi	p�A�`�A�g*W


MAEoD @

accuracy02?

	precision  �?


MSEVyA

recall<u?

loss7{\?�[e       ��Zi	��F�`�A�i*W


MAEn��?

accuracy�*2?

	precision  �?


MSEr�vA

recallk?

loss�[?L=1e       ��Zi	��UJ�`�A�k*W


MAEK��?

accuracyօ2?

	precision  �?


MSE
+uA

recall��j?

loss�Z?0��{e       ��Zi	/��N�`�A�n*W


MAE���?

accuracy�3?

	precision  �?


MSEoMsA

recallk?

loss(�Y?�ۈce       ��Zi	�S�`�A�p*W


MAE�@�?

accuracyZu3?

	precision  �?


MSE�.rA

recall�Nl?

lossr"Y?�o�e       ��Zi	��uW�`�A�r*W


MAE�4�?

accuracy �3?

	precision  �?


MSE�dpA

recall��k?

loss�;X?�]��e       ��Zi	��[�`�A�u*W


MAEU�?

accuracy��4?

	precision  �?


MSE��mA

recall�l?

loss�dW?w3��e       ��Zi	F8`�`�A�w*W


MAE�N�?

accuracyT�4?

	precision  �?


MSE̇lA

recall�l?

lossS�V?��!ge       ��Zi	��d�`�A�y*W


MAE�6�?

accuracy�_5?

	precision  �?


MSE�ejA

recall/�h?

loss>�U?�ƛ(e       ��Zi	�$�h�`�A�|*W


MAE�L�?

accuracyј5?

	precision  �?


MSE�^iA

recall�$i?

lossr<U?}t0`e       ��Zi	�sZm�`�A�~*W


MAE��?

accuracy��5?

	precision  �?


MSEJ�fA

recall:�i?

loss��T?���f       r;�j	%H�q�`�A�*W


MAE.��?

accuracy�|6?

	precision  �?


MSEIfA

recallNj?

lossOT?�h��f       r;�j	TQv�`�A��*W


MAEI�?

accuracy��6?

	precision  �?


MSE��dA

recall��j?

loss�vS?Kff       r;�j	7�rz�`�A̅*W


MAEC��?

accuracy��6?

	precision  �?


MSE�fA

recall��j?

lossw�R?��$3f       r;�j	U��~�`�A��*W


MAE_��?

accuracy��6?

	precision  �?


MSE�~gA

recall��j?

losshR?��"�f       r;�j	��1��`�A��*W


MAE���?

accuracyNO6?

	precision  �?


MSE��hA

recall�Zk?

lossDR?m}m�f       r;�j	r���`�AЌ*W


MAE��?

accuracy��6?

	precision  �?


MSEm�fA

recall�Zk?

loss~�Q?����f       r;�j	i��`�A��*W


MAE��?

accuracy+�6?

	precision  �?


MSEtgA

recall2k?

loss2Q?��f       r;�j	��[��`�A��*W


MAEl[�?

accuracy�7?

	precision  �?


MSE(RfA

recall�Zk?

loss��P?
y�f       r;�j	����`�Aԓ*W


MAE�Z�?

accuracy	a7?

	precision  �?


MSEq~eA

recall2k?

lossbP?�Ԋ[f       r;�j	�l%��`�A��*W


MAE
�?

accuracy��7?

	precision  �?


MSE�6dA

recall�{o?

loss,�O?�e�f       r;�j	IL���`�A��*W


MAE��?

accuracy�7?

	precision  �?


MSE��dA

recall�{o?

lossy�O?�m�if       r;�j	
[��`�Aؚ*W


MAE��?

accuracy� 8?

	precision  �?


MSE�bA

recall�{o?

loss�:O?�G�f       r;�j	�!T��`�A��*W


MAE�?

accuracy��7?

	precision  �?


MSE�%cA

recall�{o?

loss��N?m��f       r;�j	 ���`�A��*W


MAE��?

accuracy8?

	precision  �?


MSE3�aA

recall�{o?

lossŗN?��f       r;�j	TG��`�Aܡ*W


MAE���?

accuracyV.8?

	precision  �?


MSEbA

recall�{o?

loss�+N?MyMXf       r;�j	f�x��`�A��*W


MAE��?

accuracy�[8?

	precision  �?


MSEM�`A

recall�{o?

loss��M?ׯ�f       r;�j	[�Է�`�A��*W


MAE��?

accuracy]g8?

	precision  �?


MSE8bA

recall��o?

loss��M?;:M�f       r;�j	�d0��`�A�*W


MAE��?

accuracyd�8?

	precision  �?


MSE��`A

recall��o?

loss$gM?��Pxf       r;�j	���`�A��*W


MAE�s�?

accuracy
9?

	precision  �?


MSE�-`A

recall��o?

lossdM?x^��f       r;�j	X���`�A��*W


MAE#�?

accuracy�V9?

	precision��{?


MSE��^A

recall?p?

lossҦL?�O`'f       r;�j	�(>��`�A�*W


MAE���?

accuracyr9?

	precision��{?


MSE�^A

recall  p?

loss��L?,�g�f       r;�j	.���`�A��*W


MAE0��?

accuracyIb9?

	precision��{?


MSE�^A

recall?p?

loss"7L?�Jw�f       r;�j	,���`�A��*W


MAE��?

accuracyy9?

	precision��{?


MSEm^A

recall  p?

lossL�K?^�C/f       r;�j	W,e��`�A�*W


MAEK�?

accuracy��9?

	precision��{?


MSE��^A

recall?p?

lossO�K?��l�f       r;�j	����`�A��*W


MAESr�?

accuracyW�9?

	precision  |?


MSE�^A

recallg�p?

loss�oK?���Yf       r;�j	:)��`�A��*W


MAEZ��?

accuracy&�9?

	precision  |?


MSE�z^A

recallg�p?

loss�JK?��öf       r;�j	�X���`�A�*W


MAE��?

accuracy&�9?

	precision  |?


MSE>m^A

recallg�p?

loss��J?W"�f       r;�j	@����`�A��*W


MAE���?

accuracy-$:?

	precision|?


MSE̢]A

recall�(q?

lossq�J?�^�f       r;�j	܃J��`�A��*W


MAE}�?

accuracy�/:?

	precision|?


MSE�]A

recall�(q?

loss4�J?���f       r;�j	>ڮ��`�A��*W


MAE���?

accuracy��9?

	precision�|?


MSEu�_A

recall��p?

loss��J?hJVf       r;�j	���`�A��*W


MAE���?

accuracy�::?

	precision|?


MSE|"]A

recall�(q?

loss�=J?��Nf       r;�j	��n��`�A��*W


MAED �?

accuracy-$:?

	precision|?


MSE�]A

recall�(q?

lossE%J?�f       r;�j	Pz���`�A��*W


MAEu��?

accuracyeF:?

	precision�-|?


MSEx�]A

recall_q?

loss��I?E8f       r;�j	�)-�`�A��*W


MAE=��?

accuracyeF:?

	precision|?


MSE�]A

recall�(q?

loss��I?K��#f       r;�j	G���`�A��*W


MAE�2�?

accuracy�h:?

	precision|?


MSE(7]A

recall�(q?

loss��I?����f       r;�j	�K�
�`�A��*W


MAE���?

accuracyԊ:?

	precision|?


MSEFp\A

recall�(q?

lossweI?�3uf       r;�j	��7�`�A��*W


MAEv��?

accuracy�:?

	precision�|?


MSEf�_A

recall��p?

lossQFI?��?f       r;�j	�m��`�A��*W


MAER��?

accuracyB�:?

	precision<<|?


MSE#\^A

recallPu?

lossUH?�#�f       r;�j	����`�A��*W


MAE�S�?

accuracy�L;?

	precision�W|?


MSE��[A

recallUUu?

loss)�G? ��f       r;�j	�:�`�A��*W


MAEf��?

accuracy�*;?

	precision�W|?


MSE�:\A

recallUUu?

lossi�G?��.f       r;�j	�m� �`�A��*W


MAE�I�?

accuracy��:?

	precision�W|?


MSE�^A

recallUUu?

lossvxG?J	gf       r;�j	���$�`�A��*W


MAE�=�?

accuracyI;?

	precision�q|?


MSEx�\A

recall#�u?

loss)$G?/8(f       r;�j	��R)�`�A��*W


MAE���?

accuracyz�:?

	precision�q|?


MSE1�]A

recall#�u?

lossa G?���f       r;�j	�-�`�A��*W


MAEq�?

accuracy��:?

	precision�d|?


MSE�	]A

recall�zu?

loss��F?|2��f       r;�j	O�2�`�A��*W


MAE�v�?

accuracy;?

	precision?~|?


MSE<W]A

recall��u?

loss�F?��}Kf       r;�j	rlv6�`�A��*W


MAEC��?

accuracy X;?

	precisiona�|?


MSE{O\A

recall�u?

loss��F?�a��f       r;�j	=Q�:�`�A��*W


MAE���?

accuracy�n;?

	precisiona�|?


MSE��\A

recall�u?

lossZjF?	@�f       r;�j	�WA?�`�A��*W


MAE���?

accuracy��;?

	precision0�|?


MSE��[A

recall^Cy?

loss�7F?���f       r;�j	;��C�`�A��*W


MAEJ��?

accuracy'�;?

	precision0�|?


MSE�`[A

recall^Cy?

loss�F?�3sf       r;�j	��H�`�A��*W


MAE���?

accuracy��;?

	precision0�|?


MSE��ZA

recall^Cy?

loss��E?���ff       r;�j	sL�`�A��*W


MAE�e�?

accuracy�5;?

	precision0�|?


MSE:]A

recall^Cy?

loss��E?��$�f       r;�j	tq�P�`�A��*W


MAE�v�?

accuracy�;?

	precision0�|?


MSE�0]A

recall^Cy?

loss��E?� �vf       r;�j	�T&U�`�A��*W


MAE��?

accuracy�5;?

	precision0�|?


MSEU�\A

recall^Cy?

loss%�E?��f       r;�j	�t�Y�`�A��*W


MAE�,�?

accuracy;?

	precision0�|?


MSEk�\A

recall^Cy?

loss�E?�u��f       r;�j	� �]�`�A��*W


MAE���?

accuracy�;?

	precision��|?


MSE�g]A

recall�Yy?

loss�|E?E���f       r;�j	��Vb�`�A�*W


MAE���?

accuracy X;?

	precision0�|?


MSE�\A

recall^Cy?

lossJEE?_��]f       r;�j	���f�`�A��*W


MAE�Y�?

accuracy�n;?

	precision0�|?


MSE��[A

recall^Cy?

loss�#E?ͨ2�f       r;�j	�^k�`�A��*W


MAE^��?

accuracy��;?

	precision0�|?


MSEP�[A

recall^Cy?

loss�E?�]/sf       r;�j	�d�o�`�A�*W


MAE5B�?

accuracy��;?

	precision0�|?


MSE�'[A

recall^Cy?

loss/�D?��2�f       r;�j	���s�`�A��*W


MAEC��?

accuracy�n;?

	precision0�|?


MSE�P\A

recall^Cy?

loss��D?&�D�f       r;�j	��Ax�`�Ač*W


MAEeX�?

accuracy<?

	precision�|?


MSE��YA

recall�oy?

loss�D?�/8�f       r;�j	��|�`�A��*W


MAEC��?

accuracy�L;?

	precision0�|?


MSE�[A

recall^Cy?

loss6�D?��f       r;�j	Q8���`�A��*W


MAE�*�?

accuracy�0<?

	precision�|?


MSE�YA

recall�oy?

loss��D?��f       r;�j	�S��`�AȔ*W


MAE,�?

accuracy�c;?

	precision0�|?


MSEv�[A

recall^Cy?

loss��D?DdE�f       r;�j	�?���`�A��*W


MAE��?

accuracym%<?

	precision�|?


MSEj<ZA

recall�oy?

loss�kD?�[��f       r;�j	J���`�A��*W


MAEC��?

accuracy��;?

	precision��|?


MSEw>[A

recall�Yy?

lossSiD?'E��f       r;�j	�t��`�A̛*W


MAE���?

accuracy�L;?

	precision��|?


MSE��[A

recall�Yy?

loss�iD?<��_f       r;�j		�ϖ�`�A��*W


MAE�t�?

accuracy�0<?

	precision�|?


MSEBZA

recall�oy?

loss�5D?'|<f       r;�j	��,��`�A��*W


MAE(�?

accuracy�:?

	precision0�|?


MSE��\A

recall^Cy?

lossf�D?�-�f       r;�j	q!���`�AТ*W


MAEz��?

accuracyXz;?

	precision��|?


MSEj[A

recall�Yy?

loss(D?j�z�f       r;�j	,�ޣ�`�A��*W


MAEJ��?

accuracy�n;?

	precision�|?


MSE|4[A

recall�oy?

loss�D?��@Pf       r;�j	��@��`�A��*W


MAEl7�?

accuracy�c;?

	precision�|?


MSEU[A

recall�oy?

loss�D?�g�#f       r;�j	�[���`�Aԩ*W


MAE���?

accuracyXz;?

	precision�|?


MSE�P[A

recall�oy?

loss}�C?PK�f       r;�j	���`�A��*W


MAE�H�?

accuracyPA;?

	precision0�|?


MSE�P[A

recall^Cy?

lossk	D?��fVf       r;�j	�e��`�A��*W


MAE�6�?

accuracy_�;?

	precision�|?


MSE��ZA

recall�oy?

loss��C?���f       r;�j	�\ι�`�Aذ*W


MAE���?

accuracy��;?

	precision��|?


MSE�"ZA

recall�Yy?

loss6�C?���f       r;�j	0�-��`�A��*W


MAEB��?

accuracy.�;?

	precision�|?


MSE�?ZA

recall�oy?

loss��C?�Щf       r;�j	�A���`�A��*W


MAEy0�?

accuracyf�;?

	precision�|?


MSE�YA

recall�oy?

loss�C?E$r�f       r;�j	�����`�Aܷ*W


MAE���?

accuracy5<?

	precision��|?


MSE��XA

recall�Yy?

loss�~C?��ԙf       r;�j	"yd��`�A��*W


MAE��?

accuracy5<?

	precision�|?


MSE��XA

recall�oy?

loss`lC?g��if       r;�j	�'���`�A��*W


MAE�n�?

accuracy�<?

	precision�|?


MSE֗XA

recall�oy?

loss�dC?�P�f       r;�j	��3��`�A�*W


MAE�/�?

accuracym%<?

	precision�|?


MSE�_XA

recall�oy?

loss>C?ke�f       r;�j	Æ���`�A��*W


MAE��?

accuracy<<<?

	precision˷|?


MSED	XA

recall܄y?

loss5C?��7Cf       r;�j	hN	��`�A��*W


MAEx��?

accuracyS<?

	precision˷|?


MSE,�WA

recall܄y?

loss�C?c�/f       r;�j	�ql��`�A��*W


MAE�?

accuracy�G<?

	precisionn�|?


MSE{XWA

recall��y?

loss;C?�(۝f       r;�j	�����`�A��*W


MAE:�?

accuracy�<?

	precision˷|?


MSE��WA

recall܄y?

loss�C?s�Qf       r;�j	��,��`�A��*W


MAE-c�?

accuracy��;?

	precision�|?


MSE�XA

recall�oy?

loss
C?��zf       r;�j	Zg���`�A��*W


MAE���?

accuracy�<?

	precision�|?


MSE�WA

recall�oy?

loss8�B?��f       r;�j	<���`�A��*W


MAEc��?

accuracy�i<?

	precision˷|?


MSE$�VA

recall܄y?

lossr�B?��ftf       r;�j	�4`��`�A��*W


MAE��?

accuracyS<?

	precision˷|?


MSE��VA

recall܄y?

loss��B?�`0f       r;�j	�����`�A��*W


MAE���?

accuracyCu<?

	precision˷|?


MSEyBVA

recall܄y?

lossǭB?5?�f       r;�j	�0 �`�A��*W


MAEAh�?

accuracy�G<?

	precisionn�|?


MSE�#WA

recall��y?

loss �B?��:�f       r;�j	�Ɏ�`�A��*W


MAEK�?

accuracy�<?

	precisionn�|?


MSE�9VA

recall��y?

lossf�B?���bf       r;�j	����`�A��*W


MAE\��?

accuracy{�<?

	precisionn�|?


MSE��UA

recall��y?

loss�{B?^Ֆcf       r;�j	$i]�`�A��*W


MAEir�?

accuracy�<?

	precisionn�|?


MSEr6UA

recall��y?

loss�kB?��� f       r;�j	!���`�A��*W


MAE�i�?

accuracy��;?

	precision˷|?


MSE�YA

recall܄y?

loss0�B?�[L�f       r;�j	�.�`�A��*W


MAEb9�?

accuracy{�<?

	precisionn�|?


MSEֻTA

recall��y?

loss�KB?Ȕf"f       r;�j	]���`�A��*W


MAE-c�?

accuracy��;?

	precision�|?


MSE�WA

recall�oy?

loss�_B?�?�f       r;�j	W?��`�A��*W


MAEx��?

accuracy��;?

	precision˷|?


MSE�WA

recall܄y?

loss}BB?�'��f       r;�j	�.h#�`�A��*W


MAEx�?

accuracy��<?

	precisionn�|?


MSEE�TA

recall��y?

loss�B?̕�[f       r;�j	���'�`�A��*W


MAE���?

accuracyCu<?

	precisionn�|?


MSE��TA

recall��y?

loss�B?Pԑ�f       r;�j	y�,�`�A��*W


MAE~�?

accuracy�G<?

	precisionn�|?


MSEPUA

recall��y?

loss�B?�^6f       r;�j	zOn0�`�A��*W


MAENa�?

accuracy��<?

	precisionn�|?


MSE�TA

recall��y?

loss��A?����f       r;�j	��4�`�A��*W


MAE��?

accuracy<<<?

	precisionn�|?


MSE~UA

recall��y?

loss��A??��f       r;�j	5�*9�`�A��*W


MAE��?

accuracyS<?

	precisionn�|?


MSE��TA

recall��y?

loss��A?��6f       r;�j	t��=�`�A��*W


MAE�[�?

accuracy�<?

	precisionn�|?


MSE�TA

recall��y?

loss��A?�2��f       r;�j	��A�`�A��*W


MAE���?

accuracy�i<?

	precisionn�|?


MSEz�TA

recall��y?

lossV�A?W/Hf       r;�j	JrhF�`�A��*W


MAE�)�?

accuracy�<?

	precisionn�|?


MSE�zVA

recall��y?

loss~�A?$��f       r;�j	T��J�`�A��*W


MAE@��?

accuracy�<?

	precisionn�|?


MSEw,UA

recall��y?

loss�A?�G'�f       r;�j	�P3O�`�A��*W


MAE�"�?

accuracy{�<?

	precisionn�|?


MSEb�TA

recall��y?

loss>�A?h�e_f       r;�j	�ܓS�`�A܂*W


MAE���?

accuracy��<?

	precisionn�|?


MSE��TA

recall��y?

loss��A?AX�f       r;�j	7p�W�`�A��*W


MAEg�?

accuracy�<?

	precisionn�|?


MSE��TA

recall��y?

lossr�A?��!(