       �K"	   �0r�Abrain.Event:2����5�      ~�?�	� �0r�A"��
m
global_stepVariable*
_output_shapes
: *
shared_name *
dtype0	*
	container *
shape: 
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
validate_shape(*
T0	*
_output_shapes
: *
use_locking(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
X
inputPlaceholder*(
_output_shapes
:����������*
dtype0*
shape: 
T
outputPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape: 
�
Cinput_from_feature_columns/input_from_feature_columns/Reshape/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*
T0*(
_output_shapes
:����������
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
:����������
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
_output_shapes
:	�
*
shared_name *
dtype0*
	container *
shape:	�

�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"   
   *
_output_shapes
:*
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
valueB
 *���*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
valueB
 *��=*
_output_shapes
: *
dtype0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
_output_shapes
:	�
*

seed**
dtype0*
T0*
seed2*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
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
_output_shapes
:	�
*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
:	�
*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
validate_shape(*
T0*
_output_shapes
:	�
*
use_locking(*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
T0*
_output_shapes
:	�
*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
n
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
T0*
_output_shapes
:	�

�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
T0*
transpose_b( *'
_output_shapes
:���������
*
transpose_a( 
�
hiddenlayer_0/biases/part_0Variable*
_output_shapes
:
*
shared_name *
dtype0*
	container *
shape:

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
validate_shape(*
T0*
_output_shapes
:
*
use_locking(*.
_class$
" loc:@hiddenlayer_0/biases/part_0
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*
T0*
_output_shapes
:
*.
_class$
" loc:@hiddenlayer_0/biases/part_0
g
hiddenlayer_0/biasesIdentity hiddenlayer_0/biases/part_0/read*
T0*
_output_shapes
:

�
#hiddenlayer_0/hiddenlayer_0/BiasAddBiasAdd"hiddenlayer_0/hiddenlayer_0/MatMulhiddenlayer_0/biases*
data_formatNHWC*
T0*'
_output_shapes
:���������


 hiddenlayer_0/hiddenlayer_0/ReluRelu#hiddenlayer_0/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:���������

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
:���������

p
zero_fraction/CastCastzero_fraction/Equal*'
_output_shapes
:���������
*

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
"hiddenlayer_1/hiddenlayer_1/unpackUnpack!hiddenlayer_1/hiddenlayer_1/Shape*
T0*

axis *
_output_shapes
: : *	
num
�
hiddenlayer_1/weights/part_0Variable*
_output_shapes

:

*
shared_name *
dtype0*
	container *
shape
:


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

seed**
dtype0*
T0*
seed2.*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
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

:

*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
7hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:

*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
#hiddenlayer_1/weights/part_0/AssignAssignhiddenlayer_1/weights/part_07hiddenlayer_1/weights/part_0/Initializer/random_uniform*
validate_shape(*
T0*
_output_shapes

:

*
use_locking(*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
!hiddenlayer_1/weights/part_0/readIdentityhiddenlayer_1/weights/part_0*
T0*
_output_shapes

:

*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
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
hiddenlayer_1/biases/part_0Variable*
_output_shapes
:
*
shared_name *
dtype0*
	container *
shape:

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
validate_shape(*
T0*
_output_shapes
:
*
use_locking(*.
_class$
" loc:@hiddenlayer_1/biases/part_0
�
 hiddenlayer_1/biases/part_0/readIdentityhiddenlayer_1/biases/part_0*
T0*
_output_shapes
:
*.
_class$
" loc:@hiddenlayer_1/biases/part_0
g
hiddenlayer_1/biasesIdentity hiddenlayer_1/biases/part_0/read*
T0*
_output_shapes
:

�
#hiddenlayer_1/hiddenlayer_1/BiasAddBiasAdd"hiddenlayer_1/hiddenlayer_1/MatMulhiddenlayer_1/biases*
data_formatNHWC*
T0*'
_output_shapes
:���������


 hiddenlayer_1/hiddenlayer_1/ReluRelu#hiddenlayer_1/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:���������

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
:���������

t
zero_fraction_1/CastCastzero_fraction_1/Equal*'
_output_shapes
:���������
*

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
	keep_dims( *
_output_shapes
: *
T0
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
dnn_logits/dnn_logits/unpackUnpackdnn_logits/dnn_logits/Shape*
T0*

axis *
_output_shapes
: : *	
num
�
dnn_logits/weights/part_0Variable*
_output_shapes

:
*
shared_name *
dtype0*
	container *
shape
:

�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
valueB"
      *
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
*

seed**
dtype0*
T0*
seed2L*,
_class"
 loc:@dnn_logits/weights/part_0
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

:
*,
_class"
 loc:@dnn_logits/weights/part_0
�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:
*,
_class"
 loc:@dnn_logits/weights/part_0
�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
validate_shape(*
T0*
_output_shapes

:
*
use_locking(*,
_class"
 loc:@dnn_logits/weights/part_0
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*
T0*
_output_shapes

:
*,
_class"
 loc:@dnn_logits/weights/part_0
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
dnn_logits/biases/part_0Variable*
_output_shapes
:*
shared_name *
dtype0*
	container *
shape:
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
validate_shape(*
T0*
_output_shapes
:*
use_locking(*+
_class!
loc:@dnn_logits/biases/part_0
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
	keep_dims( *
_output_shapes
: *
T0
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
centered_bias_weightVariable*
_output_shapes
:*
shared_name *
dtype0*
	container *
shape:
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*'
_class
loc:@centered_bias_weight
�
centered_bias_weight/readIdentitycentered_bias_weight*
T0*
_output_shapes
:*'
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
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsBiasAddoutput*
T0*
Tlabels0	*6
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

mean/totalVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
mean/total/AssignAssign
mean/total
mean/zeros*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*
_class
loc:@mean/total
g
mean/total/readIdentity
mean/total*
T0*
_output_shapes
: *
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

mean/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*
_class
loc:@mean/count
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
	keep_dims( *
_output_shapes
: *
T0
�
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@mean/total
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
T0*
_output_shapes
: *
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
mean_absolute_error/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
{
mean_absolute_error/totalVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*,
_class"
 loc:@mean_absolute_error/total
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*
T0*
_output_shapes
: *,
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
mean_absolute_error/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*,
_class"
 loc:@mean_absolute_error/count
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
	keep_dims( *
_output_shapes
: *
T0
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*
T0*
_output_shapes
: *
use_locking( *,
_class"
 loc:@mean_absolute_error/total
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
T0*
_output_shapes
: *
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
precision/true_positives/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*1
_class'
%#loc:@precision/true_positives/count
�
#precision/true_positives/count/readIdentityprecision/true_positives/count*
T0*
_output_shapes
: *1
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
	keep_dims( *
_output_shapes
: *
T0
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
T0*
_output_shapes
: *
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
precision/false_positives/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*2
_class(
&$loc:@precision/false_positives/count
�
$precision/false_positives/count/readIdentityprecision/false_positives/count*
T0*
_output_shapes
: *2
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
	keep_dims( *
_output_shapes
: *
T0
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
T0*
_output_shapes
: *
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
mean_squared_error/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
z
mean_squared_error/totalVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*+
_class!
loc:@mean_squared_error/total
�
mean_squared_error/total/readIdentitymean_squared_error/total*
T0*
_output_shapes
: *+
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
mean_squared_error/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*+
_class!
loc:@mean_squared_error/count
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
	keep_dims( *
_output_shapes
: *
T0
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*
T0*
_output_shapes
: *
use_locking( *+
_class!
loc:@mean_squared_error/total
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
T0*
_output_shapes
: *
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
accuracy/totalVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*!
_class
loc:@accuracy/total
s
accuracy/total/readIdentityaccuracy/total*
T0*
_output_shapes
: *!
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
accuracy/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*!
_class
loc:@accuracy/count
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
	keep_dims( *
_output_shapes
: *
T0
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
T0*
_output_shapes
: *
use_locking( *!
_class
loc:@accuracy/total
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
T0*
_output_shapes
: *
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
recall/true_positives/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*.
_class$
" loc:@recall/true_positives/count
�
 recall/true_positives/count/readIdentityrecall/true_positives/count*
T0*
_output_shapes
: *.
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
	keep_dims( *
_output_shapes
: *
T0
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
T0*
_output_shapes
: *
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
recall/false_negatives/countVariable*
_output_shapes
: *
shared_name *
dtype0*
	container *
shape: 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
validate_shape(*
T0*
_output_shapes
: *
use_locking(*/
_class%
#!loc:@recall/false_negatives/count
�
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*
T0*
_output_shapes
: */
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
	keep_dims( *
_output_shapes
: *
T0
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
T0*
_output_shapes
: *
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
�

group_depsNoOp^mean_absolute_error/update_op^mean_squared_error/update_op^accuracy/update_op^mean/update_op^precision/update_op^recall/update_op
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
value`B^B B15 0,15B10 15 0,10:0,15B B10 0,10B1024 10 0,1024:0,10B10 0,10B10 10 0,10:0,10*
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
^save/save*
T0*
_output_shapes
: *
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
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
validate_shape(*
T0*
_output_shapes
:*
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
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
validate_shape(*
T0*
_output_shapes
:*
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
valueB B10 15 0,10:0,15*
dtype0*
_output_shapes
: 
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
validate_shape(*
T0*
_output_shapes

:
*
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
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
preferred_shard���������*
dt0	*
_output_shapes
:
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
validate_shape(*
T0	*
_output_shapes
: *
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
valueB B10 0,10*
dtype0*
_output_shapes
: 
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
validate_shape(*
T0*
_output_shapes
:
*
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
valueB B1024 10 0,1024:0,10*
dtype0*
_output_shapes
: 
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
validate_shape(*
T0*
_output_shapes
:	�
*
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
valueB B10 0,10*
dtype0*
_output_shapes
: 
�
save/restore_slice_6RestoreSlice
save/Const save/restore_slice_6/tensor_name$save/restore_slice_6/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_6Assignhiddenlayer_1/biases/part_0save/restore_slice_6*
validate_shape(*
T0*
_output_shapes
:
*
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
valueB B10 10 0,10:0,10*
dtype0*
_output_shapes
: 
�
save/restore_slice_7RestoreSlice
save/Const save/restore_slice_7/tensor_name$save/restore_slice_7/shape_and_slice*
preferred_shard���������*
dt0*
_output_shapes
:
�
save/Assign_7Assignhiddenlayer_1/weights/part_0save/restore_slice_7*
validate_shape(*
T0*
_output_shapes

:

*
use_locking(*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
�
initNoOp^mean/total/Assign^mean/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign^accuracy/total/Assign^accuracy/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign
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
IsVariableInitialized_10IsVariableInitializedmean_absolute_error/total*
_output_shapes
: *
dtype0*,
_class"
 loc:@mean_absolute_error/total
�
IsVariableInitialized_11IsVariableInitializedmean_absolute_error/count*
_output_shapes
: *
dtype0*,
_class"
 loc:@mean_absolute_error/count
�
IsVariableInitialized_12IsVariableInitializedprecision/true_positives/count*
_output_shapes
: *
dtype0*1
_class'
%#loc:@precision/true_positives/count
�
IsVariableInitialized_13IsVariableInitializedprecision/false_positives/count*
_output_shapes
: *
dtype0*2
_class(
&$loc:@precision/false_positives/count
�
IsVariableInitialized_14IsVariableInitializedmean_squared_error/total*
_output_shapes
: *
dtype0*+
_class!
loc:@mean_squared_error/total
�
IsVariableInitialized_15IsVariableInitializedmean_squared_error/count*
_output_shapes
: *
dtype0*+
_class!
loc:@mean_squared_error/count
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
IsVariableInitialized_18IsVariableInitializedrecall/true_positives/count*
_output_shapes
: *
dtype0*.
_class$
" loc:@recall/true_positives/count
�
IsVariableInitialized_19IsVariableInitializedrecall/false_negatives/count*
_output_shapes
: *
dtype0*/
_class%
#!loc:@recall/false_negatives/count
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17IsVariableInitialized_18IsVariableInitialized_19*
N*

axis *
_output_shapes
:*
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
mean/countBmean_absolute_error/totalBmean_absolute_error/countBprecision/true_positives/countBprecision/false_positives/countBmean_squared_error/totalBmean_squared_error/countBaccuracy/totalBaccuracy/countBrecall/true_positives/countBrecall/false_negatives/count*
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
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
T0*
_output_shapes
: *
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
%report_uninitialized_variables/concatConcat0report_uninitialized_variables/concat/concat_dim.report_uninitialized_variables/concat/values_0$report_uninitialized_variables/Slice*
N*
_output_shapes
:*
T0
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
&report_uninitialized_variables/SqueezeSqueeze$report_uninitialized_variables/Where*
T0	*
squeeze_dims
*#
_output_shapes
:���������
�
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*
Tindices0	*
validate_indices(*
Tparams0*#
_output_shapes
:���������"
��we       ��Zi	 � �0r�A�*W


MAE�9o@


MSEirB

accuracy���>

loss��?

	precision    

recall    W�c!e       ��Zi	�T�0r�A�*W


MAE�C@


MSE��A

accuracyg\?

loss٩�?

	precision    

recall    �-��e       ��Zi	�ȍ�0r�A�*W


MAE�7@


MSE�˱A

accuracy��?

loss0�?

	precision    

recall    ��)�e       ��Zi	����0r�A�	*W


MAE�s'@


MSEÞA

accuracy�*?

lossSx�?

	precision    

recall    ƗJe       ��Zi	L���0r�A�*W


MAE�B@


MSEuŌA

accuracyf�#?

lossv_�?

	precision    

recall    )xe       ��Zi	H30�0r�A�*W


MAE��
@


MSE.�A

accuracy�G*?

loss�r?

	precision  �?

recall%I?Pcye       ��Zi	D�k�0r�A�*W


MAEW��?


MSEςlA

accuracy�/1?

loss_?

	precision  �?

recall��X?J*Ze       ��Zi	�X�1r�A�*W


MAE���?


MSE��\A

accuracy+25?

loss�R?

	precision  �?

recall8�i?�Z/Ce       ��Zi	���1r�A�*W


MAE���?


MSES<SA

accuracy�r8?

loss�H?

	precision  �?

recall۶m?	b.e       ��Zi	�/1r�A�*W


MAE��?


MSE�HA

accuracy�<?

loss1�@?

	precision  �?

recall_q?��e       ��Zi	Ro1r�A�*W


MAE1��?


MSE�f@A

accuracy��>?

loss5U:?

	precision  �?

recall  �?�A&�e       ��Zi	�C�'1r�A�*W


MAE؛�?


MSE��6A

accuracy�A?

lossU�4?

	precision  �?

recallH�z?b��Me       ��Zi	��01r�A�*W


MAE<i�?


MSE��.A

accuracy�5D?

loss��/?

	precision  �?

recall8�{?[��e       ��Zi	s�(:1r�A� *W


MAE��?


MSE��*A

accuracy�iE?

loss�+?

	precision  �?

recall  |?Ù�e       ��Zi	�dC1r�A�#*W


MAE��?


MSEJ�%A

accuracy^G?

loss�"(?

	precision  �?

recall|?,K�e       ��Zi	D:�L1r�A�%*W


MAE!ڰ?


MSE�?%A

accuracy��G?

loss,�$?

	precision  �?

recall<<|?����e       ��Zi	���U1r�A�'*W


MAE.Ӯ?


MSE-?#A

accuracy�CH?

loss�"?

	precision  �?

recall�d|?un�e       ��Zi	��_1r�A�**W


MAE�e�?


MSEA)!A

accuracy<3I?

loss0�?

	precision  �?

recall  �?�Ƅ�e       ��Zi	�NJh1r�A�,*W


MAE���?


MSE�A

accuracy�`I?

lossҾ?

	precision  �?

recall  �?�Y�e       ��Zi	n��q1r�A�.*W


MAE��?


MSE�A

accuracy`PJ?

loss?

	precision  �?

recall  �?�w%�e       ��Zi	�b�z1r�A�1*W


MAE��?


MSE^�A

accuracy��J?

loss�	?

	precision  �?

recall  �?���e       ��Zi	�-�1r�A�3*W


MAE��?


MSE� A

accuracy�VK?

loss�?

	precision  �?

recall  �?�*r|e       ��Zi	FV*�1r�A�5*W


MAE(�?


MSE^�A

accuracy�mK?

loss0?

	precision  �?

recall  �?�+�e       ��Zi	r�X�1r�A�8*W


MAE���?


MSE�A

accuracy�L?

loss��?

	precision  �?

recall  �?j(��e       ��Zi	eK��1r�A�:*W


MAE�ڟ?


MSE�A

accuracyݬL?

lossE�?

	precision  �?

recall  �?8��ce       ��Zi	ON��1r�A�<*W


MAE	s�?


MSEBA

accuracy*zM?

loss&�?

	precision  �?

recall  �?��7�e       ��Zi	Z��1r�A�?*W


MAE#�?


MSEa�A

accuracy?%N?

loss��?

	precision  �?

recall  �?7�P�e       ��Zi	o�$�1r�A�A*W


MAE���?


MSE�pA

accuracy��N?

loss�?

	precision  �?

recall  �?WZme       ��Zi	�	\�1r�A�C*W


MAE���?


MSEq�A

accuracyT�N?

loss�?

	precision  �?

recall  �?�Hvge       ��Zi	2t��1r�A�F*W


MAE=З?


MSE��A

accuracy�6O?

loss�
?

	precision  �?

recall  �?V1�e       ��Zi	�
��1r�A�H*W


MAE/��?


MSE�iA

accuracyцO?

loss�D?

	precision��|?

recall��|?���e       ��Zi	��	�1r�A�K*W


MAE�\�?


MSE]A

accuracy��O?

loss��?

	precision�}?

recall�}?����e       ��Zi	�3I�1r�A�M*W


MAE�?


MSEl
A

accuracy~&P?

loss��?

	precision�}?

recall�}?IM��e       ��Zi	���1r�A�O*W


MAE�?�?


MSE�	
A

accuracy�_P?

loss�?

	precision�}?

recall�}?�Jr�e       ��Zi	6��1r�A�R*W


MAEȓ?


MSEح	A

accuracy%�P?

loss��?

	precisionH?z?

recallF}?|��Ye       ��Zi	R�2r�A�T*W


MAEkǒ?


MSE��A

accuracy��P?

lossk?

	precision�Oz?

recall�}?�h�e       ��Zi	�52r�A�V*W


MAEUI�?


MSE�;A

accuracy:8Q?

loss2g?

	precision�_z?

recall�'}?u�/�e       ��Zi	fkR2r�A�Y*W


MAE���?


MSE�A

accuracyAqQ?

loss��
?

	precision�~z?

recall�7}?�T�e       ��Zi	3�� 2r�A�[*W


MAE��?


MSE��A

accuracy�Q?

loss�;
?

	precisionK�z?

recall�F}?����e       ��Zi	L�)2r�A�]*W


MAE[	�?


MSE*zA

accuracy��Q?

loss;�	?

	precision��z?

recall&N}?Z�M�e       ��Zi	Lb�22r�A�`*W


MAEvG�?


MSE��A

accuracy�R?

loss�N	?

	precisionK�z?

recall�F}?�}r*e       ��Zi	l�&<2r�A�b*W


MAE�K�?


MSE�mA

accuracy�wR?

loss��?

	precision��z?

recall&N}?A��e       ��Zi	�tiE2r�A�d*W


MAE*z�?


MSE+A

accuracy]UR?

lossK�?

	precision��z?

recallP?}?Z�}�e       ��Zi	�y�N2r�A�g*W


MAE5�?


MSEH}A

accuracy��R?

loss�N?

	precision��z?

recall&N}?;He       ��Zi	�>�W2r�A�i*W


MAE�}�?


MSE�� A

accuracy
�R?

loss£?

	precision��z?

recall_\}?�|e       ��Zi	�"a2r�A�k*W


MAEJ��?


MSE�M�@

accuracy.S?

loss�R?

	precision
�z?

recallDc}?ǐ�e       ��Zi	.j\j2r�A�n*W


MAE�݈?


MSE���@

accuracygS?

loss�	?

	precision
�z?

recallDc}?O!e       ��Zi	�Ғs2r�A�p*W


MAE��?


MSE�%�@

accuracy�(T?

loss�?

	precisionB�z?

recall�p}?�,�e       ��Zi	�7�|2r�A�r*W


MAE�N�?


MSE���@

accuracy�T?

loss�r?

	precisionH�z?

recallj}?IV�Ge       ��Zi	�6	�2r�A�u*W


MAE��?


MSE1�@

accuracylmT?

lossa�?

	precision��z?

recall!w}?���e       ��Zi	�7C�2r�A�w*W


MAE&�?


MSE�"�@

accuracy<�T?

lossw�?

	precision��z?

recall!w}?�^�e       ��Zi	u'}�2r�A�y*W


MAEB �?


MSE��@

accuracy�T?

loss	h?

	precisionu{?

recall}}}?�%De       ��Zi	K弡2r�A�|*W


MAE�%�?


MSE|��@

accuracy��T?

loss��?

	precisiony+{?

recallُ}?P5��e       ��Zi	"-��2r�A�~*W


MAE��?


MSE-Q�@

accuracy��T?

loss��?

	precisiony+{?

recallُ}?��3�f       r;�j	��0�2r�A�*W


MAEV%�?


MSE��@

accuracy�:U?

loss�?

	precisiony+{?

recallُ}? �V�f       r;�j	��e�2r�A��*W


MAE���?


MSE7s�@

accuracy�U?

loss��?

	precisiony+{?

recallُ}?/X�f       r;�j	���2r�A̅*W


MAEk��?


MSEM��@

accuracy�U?

loss�J?

	precisiony+{?

recallُ}?���f       r;�j	���2r�A��*W


MAE�N�?


MSE�u�@

accuracyJ�T?

loss-?

	precisiony+{?

recallُ}?���f       r;�j	����2r�A��*W


MAEr	�?


MSE:&�@

accuracyXhU?

loss!�?

	precisionpX{?

recall��}?Q~f       r;�j	gH/�2r�AЌ*W


MAE��?


MSE��@

accuracy�QU?

lossƶ?

	precisionpX{?

recall��}?mn�df       r;�j	#�k�2r�A��*W


MAE��?


MSE�X�@

accuracy�QU?

loss��?

	precisionpX{?

recall��}?�#�5f       r;�j	�v��2r�A��*W


MAE��?


MSE��@

accuracy�:U?

loss�?

	precisionpX{?

recall��}?)��f       r;�j	���2r�Aԓ*W


MAE�ņ?


MSE���@

accuracy FU?

loss�S?

	precisionpX{?

recall��}?,��%f       r;�j	��3r�A��*W


MAEӮ�?


MSE6��@

accuracy�\U?

lossQ?

	precisionpX{?

recall��}?��<�f       r;�j	��I3r�A��*W


MAE4��?


MSE���@

accuracy.�U?

loss�?

	precision?�{?

recall	�}?�N�+f       r;�j	U��3r�Aؚ*W


MAE��?


MSElR�@

accuracyǬU?

loss��?

	precision?�{?

recall	�}?�D�f       r;�j	K��"3r�A��*W


MAE�0�?


MSE!��@

accuracy��U?

lossl�?

	precision?�{?

recall	�}?3���f       r;�j	W'�+3r�A��*W


MAE4��?


MSEf��@

accuracy.�U?

loss��?

	precisionx{?

recall۶}?��Ъf       r;�j	9153r�Aܡ*W


MAE]^�?


MSE�%�@

accuracyf�U?

lossы?

	precision?�{?

recall	�}?�+�wf       r;�j	&�m>3r�A��*W


MAE:�?


MSE@�@

accuracy��U?

lossu^?

	precision>�{?

recall�}?۽f       r;�j	@�G3r�A��*W


MAEӮ�?


MSEU��@

accuracy��U?

loss¶?

	precision?�{?

recall	�}?,%,�f       r;�j	���P3r�A�*W


MAE���?


MSE���@

accuracy��U?

loss�9?

	precision>�{?

recall�}?T�wf       r;�j	!DZ3r�A��*W


MAEj��?


MSEP��@

accuracyV?

loss(7?

	precision>�{?

recall�}?-/0f       r;�j	�!Ec3r�A��*W


MAE���?


MSE��@

accuracy�5V?

loss�?

	precision��{?

recall	�}?|�n@f       r;�j	q�yl3r�A�*W


MAEG��?


MSE���@

accuracy{�V?

loss �?

	precision8�{?

recall��}?�~Bof       r;�j	7�u3r�A��*W


MAE�?


MSEc�@

accuracy<*V?

loss6?

	precision��{?

recall	�}?��f       r;�j	ص�~3r�A��*W


MAE�΂?


MSEC��@

accuracy��V?

lossҹ?

	precision8�{?

recall��}?wzo�f       r;�j	���3r�A�*W


MAE��?


MSEr	�@

accuracy��V?

loss1�?

	precision��{?

recall	�}?x֕Bf       r;�j	�IK�3r�A��*W


MAE�.�?


MSEb��@

accuracy��V?

loss�?

	precision��{?

recall	�}?.Of       r;�j	�s|�3r�A��*W


MAE���?


MSE�Q�@

accuracyJ�V?

loss�?

	precision>�{?

recall�}?��f       r;�j	P���3r�A�*W


MAE�Ӂ?


MSEIP�@

accuracy��V?

loss�?

	precision>�{?

recall�}?��fff       r;�j	l���3r�A��*W


MAE1��?


MSE���@

accuracy��V?

loss�V?

	precision>�{?

recall�}?q��f       r;�j	x�&�3r�A��*W


MAE1��?


MSE���@

accuracy!�V?

loss�i?

	precision>�{?

recall�}?)�f       r;�j	�n^�3r�A��*W


MAE[?�?


MSE�]�@

accuracy�W?

loss�Y?

	precision�{?

recall�}?�-f       r;�j	|Ɍ�3r�A��*W


MAE唁?


MSE���@

accuracy�W?

loss�D?

	precision��{?

recall	�}?�'f       r;�j	���3r�A��*W


MAE8��?


MSE�?�@

accuracyYW?

loss�*?

	precision8�{?

recall��}?ٲӜf       r;�j	[]��3r�A��*W


MAEvP�?


MSE�Q�@

accuracyYW?

lossyM?

	precision��{?

recall	�}?�A-�f       r;�j	�9,�3r�A��*W


MAE唁?


MSE=��@

accuracy��V?

loss�=?

	precision�{?

recall�}?�~�yf       r;�j	]d�3r�A��*W


MAEɃ�?


MSE���@

accuracy�W?

loss�C?

	precision�{?

recall�}?w
��f       r;�j	���3r�A��*W


MAE�[�?


MSE؛�@

accuracy�W?

loss�;?

	precision8�{?

recall��}?1��f       r;�j	� ��3r�A��*W


MAE� �?


MSE��@

accuracy�W?

loss/� ?

	precision��{?

recall��}?��f       r;�j	:�	4r�A��*W


MAE�؀?


MSEd��@

accuracy�;W?

loss� ?

	precision��{?

recall��}?��(lf       r;�j	��34r�A��*W


MAE�'�?


MSE��@

accuracy/^W?

lossS)?

	precision8�{?

recall��}?�df       r;�j	�hf4r�A��*W


MAE�`�?


MSEi��@

accuracy�RW?

loss�
?

	precision��{?

recall��}?[_Tf       r;�j	���$4r�A��*W


MAE�f�?


MSER��@

accuracy`GW?

lossK?

	precision��{?

recall��}?�f       r;�j	��-4r�A��*W


MAE��?


MSEjN�@

accuracy`GW?

loss4?

	precision��{?

recall��}?Ű�f       r;�j	#0	74r�A��*W


MAE>�~?


MSEnq�@

accuracy�iW?

loss(� ?

	precision��{?

recall��}?	��yf       r;�j	I�B@4r�A��*W


MAE�S}?


MSE�w�@

accuracy��W?

loss}?

	precision��{?

recall��}?T�HJf       r;�j	P��I4r�A��*W


MAE��}?


MSE���@

accuracyg�W?

loss�� ?

	precision��{?

recall��}?'t�f       r;�j	U*�R4r�A��*W


MAEL'?


MSEy0�@

accuracy�iW?

loss�� ?

	precision��{?

recall��}?q���f       r;�j	t6�[4r�A��*W


MAE�~?


MSE�
�@

accuracy΋W?

loss�� ?

	precision��{?

recall��}?E�C�f       r;�j	��#e4r�A��*W


MAE_�|?


MSE'��@

accuracy��W?

loss�� ?

	precision��{?

recall��}?�QBf       r;�j	бmn4r�A��*W


MAE�S}?


MSE#�@

accuracy=�W?

lossZ� ?

	precision��{?

recall��}?�m��f       r;�j	��w4r�A��*W


MAE�[�?


MSE�;�@

accuracy�W?

loss%\?

	precision��{?

recall��}?xl.f       r;�j	�!��4r�A��*W


MAE��?


MSE�L�@

accuracy`GW?

lossv?

	precision��{?

recall��}?��Z�f       r;�j	��6�4r�A��*W


MAE��?


MSE��@

accuracy�iW?

lossQf?

	precision��{?

recall��}?��*f       r;�j	?��4r�A��*W


MAE��?


MSE��@

accuracy�tW?

lossSp?

	precision��{?

recall��}?���\f       r;�j	�t��4r�A��*W


MAES`?


MSE�H�@

accuracyg�W?

loss��?

	precision��{?

recallG�}?c�<f       r;�j	�ܥ4r�A��*W


MAE��{?


MSE��@

accuracyD	X?

lossS-?

	precision��{?

recallG�}?5���f       r;�j	���4r�A�*W


MAEr�y?


MSE�8�@

accuracy�6X?

lossS1?

	precision��{?

recallG�}?Ex^Vf       r;�j	x�A�4r�A��*W


MAEO�x?


MSE��@

accuracyYX?

loss�@?

	precision��{?

recallG�}?���f       r;�j	ɵ��4r�A��*W


MAE�|?


MSE�V�@

accuracy=�W?

loss��?

	precision��{?

recallG�}?^�3�f       r;�j	/���4r�A�*W


MAE�S}?


MSEl[�@

accuracyn�W?

lossY�?

	precision��{?

recallG�}?'��lf       r;�j	�s�4r�A��*W


MAE�x?


MSE`�@

accuracy�oX?

loss?�?

	precision��{?

recallG�}?.12�f       r;�j	��@�4r�Ač*W


MAE��{?


MSEZ��@

accuracy=�W?

lossc�?

	precision��{?

recallG�}?�r��f       r;�j	�s�4r�A��*W


MAE&}?


MSE��@

accuracy�W?

loss�	?

	precision��{?

recallG�}?��#f       r;�j	N��4r�A��*W


MAE��{?


MSE��@

accuracy=�W?

lossM�?

	precision��{?

recallG�}?\�@�f       r;�j	rA�4r�AȔ*W


MAE��{?


MSE���@

accuracy��W?

lossl?

	precision��{?

recallG�}?�`f       r;�j	I>5r�A��*W


MAE��v?


MSE���@

accuracy��X?

loss��?

	precision��{?

recallG�}?�bf       r;�j	-�u5r�A��*W


MAE�Wz?


MSE���@

accuracy��W?

loss�1?

	precision��{?

recallG�}?�v�<f       r;�j	]��5r�A̛*W


MAE;�y?


MSE=��@

accuracy�X?

loss�9?

	precision��{?

recall��}?�W�f       r;�j	���5r�A��*W


MAE�gy?


MSE6��@

accuracy�6X?

losss?

	precision��{?

recall��}?�P�f       r;�j	=b'5r�A��*W


MAE$�u?


MSE���@

accuracy)�X?

lossR�?

	precision��{?

recall��}?��[�f       r;�j	��P05r�AТ*W


MAE��w?


MSE�W�@

accuracy�oX?

lossxp?

	precision��{?

recall��}?�Nf       r;�j	�5~95r�A��*W


MAE2>v?


MSEt�@

accuracy��X?

loss�T?

	precision��{?

recall��}?e���f       r;�j	;�B5r�A��*W


MAE~eu?


MSE�@

accuracy��X?

loss@e?

	precision��{?

recallG�}?�E�f       r;�j	^}�K5r�Aԩ*W


MAE�v?


MSE6��@

accuracy��X?

loss��?

	precision8�{?

recall��}?j��-f       r;�j	�U5r�A��*W


MAE��v?


MSE��@

accuracy��X?

loss�w?

	precision8�{?

recall��}?����f       r;�j	*qK^5r�A��*W


MAE�2v?


MSE�@�@

accuracy��X?

losscx?

	precision��{?

recall��}?���|f       r;�j	A��g5r�Aذ*W


MAE��u?


MSEz�@

accuracyY�X?

loss��?

	precision��{?

recall��}?J4�f       r;�j	3ջp5r�A��*W


MAE��t?


MSE)��@

accuracy��X?

loss(�?

	precision��{?

recall��}?qw�f       r;�j	���y5r�A��*W


MAE�os?


MSEn��@

accuracyh&Y?

loss�?

	precision��{?

recall��}?�`Kf       r;�j	p�*�5r�Aܷ*W


MAE�ut?


MSE$��@

accuracy��X?

loss+�?

	precision��{?

recall��}?�aKf       r;�j	40`�5r�A��*W


MAE��r?


MSE,��@

accuracyh&Y?

loss�?

	precision��{?

recall��}?�8=�f       r;�j	���5r�A��*W


MAEBs?


MSEK9�@

accuracy�HY?

loss��?

	precision��{?

recall��}?��OYf       r;�j	��͞5r�A�*W


MAE|r?


MSE�@

accuracyTY?

loss?

	precision��{?

recall��}?5j��f       r;�j	� �5r�A��*W


MAE{s?


MSE+�@

accuracyTY?

loss�?

	precision��{?

recall��}?�'�f       r;�j	\M2�5r�A��*W


MAEn�q?


MSE]�@

accuracy�jY?

loss�.?

	precision��{?

recall��}?X��f       r;�j	?ym�5r�A��*W


MAEa�r?


MSE^��@

accuracyTY?

loss�?

	precision��{?

recall��}?��Ƭf       r;�j	�z��5r�A��*W


MAE}�s?


MSE���@

accuracy Y?

lossc�?

	precision��{?

recall��}?�,|f       r;�j		���5r�A��*W


MAE�n?


MSE�z�@

accuracy}�Y?

lossqN?

	precision��{?

recall��}?dO�f       r;�j	x��5r�A��*W


MAE��q?


MSE9n�@

accuracyo_Y?

lossö?

	precision��}?

recall��}?ֵ�
f       r;�j	��:�5r�A��*W


MAE`5q?


MSE��@

accuracyv�Y?

loss��?

	precision��}?

recall��}?�Mwf       r;�j	P�v�5r�A��*W


MAE`5q?


MSE%��@

accuracy��Y?

loss/?

	precision��}?

recall��}?!上f       r;�j	����5r�A��*W


MAE�r?


MSE(�@

accuracyo_Y?

loss?

	precision��}?

recall��}?�DFFf       r;�j	����5r�A��*W


MAE�p?


MSEE�@

accuracyv�Y?

loss�?

	precision��}?

recall��}?o�7f       r;�j	v�6r�A��*W


MAE(q?


MSE](�@

accuracy�Y?

loss=)?

	precision��}?

recall��}?>��f       r;�j	��K6r�A��*W


MAE��o?


MSE���@

accuracyL�Y?

loss��?

	precision��}?

recall��}?T���f       r;�j	6�6r�A��*W


MAEֲq?


MSE�@

accuracy�Y?

loss:H?

	precision��}?

recall��}?v��f       r;�j	��6r�A��*W


MAE�q?


MSE���@

accuracy>vY?

loss�?

	precision��}?

recall��}?V�0f       r;�j	���(6r�A��*W


MAE�fn?


MSEt�@

accuracy�
Z?

loss..?

	precisionG�}?

recallG�}?v��f       r;�j	a$26r�A��*W


MAER�p?


MSE���@

accuracy��Y?

lossaQ?

	precisionG�}?

recallG�}?:�Qf       r;�j	ةZ;6r�A��*W


MAE��p?


MSE	��@

accuracy�Y?

loss]?

	precision��}?

recall��}?
�?f       r;�j	��D6r�A��*W


MAE��n?


MSE�@�@

accuracy}�Y?

losss�?

	precision��}?

recall��}?���f       r;�j	���M6r�A��*W


MAEl[n?


MSE�3�@

accuracy�
Z?

loss��?

	precision��}?

recall��}?5��f       r;�j	D�W6r�A��*W


MAE�#p?


MSE'v�@

accuracy�Y?

loss��?

	precision��}?

recall��}?A��Sf       r;�j	�@2`6r�A��*W


MAE��g?


MSEa��@

accuracy��Z?

loss8�?

	precisionG�}?

recallG�}?�	2f       r;�j	B�di6r�A��*W


MAE�n?


MSE�`�@

accuracyL�Y?

lossx3?

	precision��}?

recall��}?(4�ef       r;�j	,��r6r�A��*W


MAE�n?


MSE'�@

accuracy��Y?

loss��?

	precision��}?

recall��}?!�ӷf       r;�j	�/�{6r�A��*W


MAE��m?


MSEtg�@

accuracy�
Z?

loss�#?

	precision��}?

recall��}?Ԅ�+f       r;�j	�Y��6r�A��*W


MAE�n?


MSE}��@

accuracy�Y?

lossWK?

	precision��}?

recall��}?wz�0f       r;�j	�+�6r�A��*W


MAE�7l?


MSE���@

accuracy�,Z?

lossO?

	precisionG�}?

recallG�}?���f       r;�j	$_b�6r�A��*W


MAE. n?


MSE"w�@

accuracy��Y?

loss��?

	precision��}?

recall��}?H,K�f       r;�j	S���6r�A��*W


MAEc�j?


MSE���@

accuracyZZZ?

loss��?

	precisionG�}?

recallG�}?�`9zf       r;�j	csͩ6r�A܂*W


MAE]Cl?


MSEI�@

accuracyS!Z?

loss�?

	precisionG�}?

recallG�}?���(f       r;�j	R���6r�A��*W


MAE۟n?


MSE��@

accuracy}�Y?

loss=?

	precision��}?

recall��}?!;��