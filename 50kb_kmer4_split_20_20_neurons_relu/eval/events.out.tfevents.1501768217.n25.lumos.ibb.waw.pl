       �K"	  @��`�Abrain.Event:2=9F1�      u��	�_k��`�A"��
m
global_stepVariable*
dtype0	*
shape: *
_output_shapes
: *
	container *
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
: *
use_locking(*
validate_shape(*
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
dtype0*
_output_shapes
:*
valueB"����   
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*(
_output_shapes
:����������*
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
: : *
T0*

axis 
�
hiddenlayer_0/weights/part_0Variable*
dtype0*
shape:	�*
_output_shapes
:	�*
	container *
shared_name 
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB"      
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB
 *��
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
valueB
 *�>
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	�*
seed2*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*

seed*
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
:	�*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
_output_shapes
:	�*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
_output_shapes
:	�*
use_locking(*
validate_shape(*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
_output_shapes
:	�*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
n
hiddenlayer_0/weightsIdentity!hiddenlayer_0/weights/part_0/read*
_output_shapes
:	�*
T0
�
"hiddenlayer_0/hiddenlayer_0/MatMulMatMul<input_from_feature_columns/input_from_feature_columns/concathiddenlayer_0/weights*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
�
hiddenlayer_0/biases/part_0Variable*
dtype0*
shape:*
_output_shapes
:*
	container *
shared_name 
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
valueB*    
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*.
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
zero_fraction/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
zero_fraction/EqualEqual hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*'
_output_shapes
:���������*
T0
p
zero_fraction/CastCastzero_fraction/Equal*'
_output_shapes
:���������*

DstT0*

SrcT0

d
zero_fraction/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
	keep_dims( *
_output_shapes
: *
T0
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
q
!hiddenlayer_1/hiddenlayer_1/ShapeShape hiddenlayer_0/hiddenlayer_0/Relu*
_output_shapes
:*
T0
�
"hiddenlayer_1/hiddenlayer_1/unpackUnpack!hiddenlayer_1/hiddenlayer_1/Shape*	
num*
_output_shapes
: : *
T0*

axis 
�
hiddenlayer_1/weights/part_0Variable*
dtype0*
shape
:*
_output_shapes

:*
	container *
shared_name 
�
=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB"      
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB
 *�Kƾ
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_1/weights/part_0*
valueB
 *�K�>
�
Ehiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
T0*
dtype0*
_output_shapes

:*
seed2.*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*

seed*
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
#hiddenlayer_1/weights/part_0/AssignAssignhiddenlayer_1/weights/part_07hiddenlayer_1/weights/part_0/Initializer/random_uniform*
_output_shapes

:*
use_locking(*
validate_shape(*
T0*/
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
hiddenlayer_1/weightsIdentity!hiddenlayer_1/weights/part_0/read*
_output_shapes

:*
T0
�
"hiddenlayer_1/hiddenlayer_1/MatMulMatMul hiddenlayer_0/hiddenlayer_0/Reluhiddenlayer_1/weights*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
�
hiddenlayer_1/biases/part_0Variable*
dtype0*
shape:*
_output_shapes
:*
	container *
shared_name 
�
-hiddenlayer_1/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
valueB*    
�
"hiddenlayer_1/biases/part_0/AssignAssignhiddenlayer_1/biases/part_0-hiddenlayer_1/biases/part_0/Initializer/zeros*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*.
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
zero_fraction_1/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
zero_fraction_1/EqualEqual hiddenlayer_1/hiddenlayer_1/Reluzero_fraction_1/zero*'
_output_shapes
:���������*
T0
t
zero_fraction_1/CastCastzero_fraction_1/Equal*'
_output_shapes
:���������*

DstT0*

SrcT0

f
zero_fraction_1/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
	keep_dims( *
_output_shapes
: *
T0
z
ScalarSummary_1/tagsConst*
dtype0*
_output_shapes
: *6
value-B+ B%hiddenlayer_1:fraction_of_zero_values
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
_output_shapes
: *
T0
o
HistogramSummary_1/tagConst*
dtype0*
_output_shapes
: *)
value B Bhiddenlayer_1:activation
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
: : *
T0*

axis 
�
dnn_logits/weights/part_0Variable*
dtype0*
shape
:*
_output_shapes

:*
	container *
shared_name 
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@dnn_logits/weights/part_0*
valueB"      
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
valueB
 *��Ӿ
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
valueB
 *���>
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*
T0*
dtype0*
_output_shapes

:*
seed2L*,
_class"
 loc:@dnn_logits/weights/part_0*

seed*
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
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
_output_shapes

:*
use_locking(*
validate_shape(*
T0*,
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
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
_output_shapes

:*
T0
�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_1/hiddenlayer_1/Reludnn_logits/weights*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
�
dnn_logits/biases/part_0Variable*
dtype0*
shape:*
_output_shapes
:*
	container *
shared_name 
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*+
_class!
loc:@dnn_logits/biases/part_0*
valueB*    
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*+
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
zero_fraction_2/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
zero_fraction_2/EqualEqualdnn_logits/dnn_logits/BiasAddzero_fraction_2/zero*'
_output_shapes
:���������*
T0
t
zero_fraction_2/CastCastzero_fraction_2/Equal*'
_output_shapes
:���������*

DstT0*

SrcT0

f
zero_fraction_2/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
{
zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
	keep_dims( *
_output_shapes
: *
T0
w
ScalarSummary_2/tagsConst*
dtype0*
_output_shapes
: *3
value*B( B"dnn_logits:fraction_of_zero_values
m
ScalarSummary_2ScalarSummaryScalarSummary_2/tagszero_fraction_2/Mean*
_output_shapes
: *
T0
l
HistogramSummary_2/tagConst*
dtype0*
_output_shapes
: *&
valueB Bdnn_logits:activation
~
HistogramSummary_2HistogramSummaryHistogramSummary_2/tagdnn_logits/dnn_logits/BiasAdd*
_output_shapes
: *
T0
R
zerosConst*
dtype0*
_output_shapes
:*
valueB*    
~
centered_bias_weightVariable*
dtype0*
shape:*
_output_shapes
:*
	container *
shared_name 
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*'
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
dtype0*
_output_shapes
:*
valueB:
���������
a
ReshapeReshapecentered_bias_weight/readReshape/shape*
_output_shapes
:*
T0
�
ScalarSummary_3/tagsConst*
dtype0*
_output_shapes
:*�
value�B�Bcentered_bias_0Bcentered_bias_1Bcentered_bias_2Bcentered_bias_3Bcentered_bias_4Bcentered_bias_5Bcentered_bias_6Bcentered_bias_7Bcentered_bias_8Bcentered_bias_9Bcentered_bias_10Bcentered_bias_11Bcentered_bias_12Bcentered_bias_13Bcentered_bias_14
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
ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
	keep_dims( *
_output_shapes
: *
T0
O

mean/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
l

mean/totalVariable*
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
mean/total/AssignAssign
mean/total
mean/zeros*
_output_shapes
: *
use_locking(*
validate_shape(*
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
mean/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
l

mean/countVariable*
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
_output_shapes
: *
use_locking(*
validate_shape(*
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
:���������*
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
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
_output_shapes
: *
use_locking(*
validate_shape(*
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
mean_absolute_error/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
{
mean_absolute_error/countVariable*
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
_output_shapes
: *
use_locking(*
validate_shape(*
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
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
_output_shapes
: *
use_locking(*
validate_shape(*
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
mean_squared_error/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
z
mean_squared_error/countVariable*
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
_output_shapes
: *
use_locking(*
validate_shape(*
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
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
_output_shapes
: *
use_locking(*
validate_shape(*
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
accuracy/zeros_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
p
accuracy/countVariable*
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
_output_shapes
: *
use_locking(*
validate_shape(*
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
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
_output_shapes
: *
use_locking(*
validate_shape(*
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
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
_output_shapes
: *
use_locking(*
validate_shape(*
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
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
_output_shapes
: *
use_locking(*
validate_shape(*
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
dtype0*
shape: *
_output_shapes
: *
	container *
shared_name 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
_output_shapes
: *
use_locking(*
validate_shape(*
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
�

group_depsNoOp^mean_absolute_error/update_op^recall/update_op^precision/update_op^mean_squared_error/update_op^mean/update_op^accuracy/update_op
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save/save/tensor_namesConst*
dtype0*
_output_shapes
:*�
value�B�Bcentered_bias_weightBdnn_logits/biasesBdnn_logits/weightsBglobal_stepBhiddenlayer_0/biasesBhiddenlayer_0/weightsBhiddenlayer_1/biasesBhiddenlayer_1/weights
�
save/save/shapes_and_slicesConst*
dtype0*
_output_shapes
:*g
value^B\B B15 0,15B20 15 0,20:0,15B B20 0,20B256 20 0,256:0,20B20 0,20B20 20 0,20:0,20
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
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*'
_class
loc:@centered_bias_weight
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
valueB B15 0,15
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*+
_class!
loc:@dnn_logits/biases/part_0
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
valueB B20 15 0,20:0,15
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
_output_shapes

:*
use_locking(*
validate_shape(*
T0*,
_class"
 loc:@dnn_logits/weights/part_0
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
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0	
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
_output_shapes
: *
use_locking(*
validate_shape(*
T0	*
_class
loc:@global_step
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
valueB B20 0,20
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*.
_class$
" loc:@hiddenlayer_0/biases/part_0
v
 save/restore_slice_5/tensor_nameConst*
dtype0*
_output_shapes
: *&
valueB Bhiddenlayer_0/weights
v
$save/restore_slice_5/shape_and_sliceConst*
dtype0*
_output_shapes
: *"
valueB B256 20 0,256:0,20
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
_output_shapes
:	�*
use_locking(*
validate_shape(*
T0*/
_class%
#!loc:@hiddenlayer_0/weights/part_0
u
 save/restore_slice_6/tensor_nameConst*
dtype0*
_output_shapes
: *%
valueB Bhiddenlayer_1/biases
l
$save/restore_slice_6/shape_and_sliceConst*
dtype0*
_output_shapes
: *
valueB B20 0,20
�
save/restore_slice_6RestoreSlice
save/Const save/restore_slice_6/tensor_name$save/restore_slice_6/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/Assign_6Assignhiddenlayer_1/biases/part_0save/restore_slice_6*
_output_shapes
:*
use_locking(*
validate_shape(*
T0*.
_class$
" loc:@hiddenlayer_1/biases/part_0
v
 save/restore_slice_7/tensor_nameConst*
dtype0*
_output_shapes
: *&
valueB Bhiddenlayer_1/weights
t
$save/restore_slice_7/shape_and_sliceConst*
dtype0*
_output_shapes
: * 
valueB B20 20 0,20:0,20
�
save/restore_slice_7RestoreSlice
save/Const save/restore_slice_7/tensor_name$save/restore_slice_7/shape_and_slice*
_output_shapes
:*
preferred_shard���������*
dt0
�
save/Assign_7Assignhiddenlayer_1/weights/part_0save/restore_slice_7*
_output_shapes

:*
use_locking(*
validate_shape(*
T0*/
_class%
#!loc:@hiddenlayer_1/weights/part_0
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
�
initNoOp^mean/total/Assign^mean/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign^accuracy/total/Assign^accuracy/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign
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
IsVariableInitialized_10IsVariableInitializedmean_absolute_error/total*
dtype0*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total
�
IsVariableInitialized_11IsVariableInitializedmean_absolute_error/count*
dtype0*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count
�
IsVariableInitialized_12IsVariableInitializedmean_squared_error/total*
dtype0*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total
�
IsVariableInitialized_13IsVariableInitializedmean_squared_error/count*
dtype0*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count
�
IsVariableInitialized_14IsVariableInitializedaccuracy/total*
dtype0*
_output_shapes
: *!
_class
loc:@accuracy/total
�
IsVariableInitialized_15IsVariableInitializedaccuracy/count*
dtype0*
_output_shapes
: *!
_class
loc:@accuracy/count
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
IsVariableInitialized_18IsVariableInitializedprecision/true_positives/count*
dtype0*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count
�
IsVariableInitialized_19IsVariableInitializedprecision/false_positives/count*
dtype0*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17IsVariableInitialized_18IsVariableInitialized_19*
_output_shapes
:*
N*
T0
*

axis 
:

LogicalNot
LogicalNotpack*
_output_shapes
:
�
Const_1Const*
dtype0*
_output_shapes
:*�
value�B�Bglobal_stepBhiddenlayer_0/weights/part_0Bhiddenlayer_0/biases/part_0Bhiddenlayer_1/weights/part_0Bhiddenlayer_1/biases/part_0Bdnn_logits/weights/part_0Bdnn_logits/biases/part_0Bcentered_bias_weightB
mean/totalB
mean/countBmean_absolute_error/totalBmean_absolute_error/countBmean_squared_error/totalBmean_squared_error/countBaccuracy/totalBaccuracy/countBrecall/true_positives/countBrecall/false_negatives/countBprecision/true_positives/countBprecision/false_positives/count
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
: *
T0*
Index0
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
:*
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
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*
Tindices0	*
Tparams0*#
_output_shapes
:���������*
validate_indices("
���e       ��Zi	�xk��`�A�*W


MAEC~o@

recall    

	precision    


MSE�B

loss��?

accuracy���>:WYje       ��Zi	�쁋�`�A�*W


MAE/�I@

recall    

	precision    


MSEɌ�A

lossp�?

accuracy/�	?�K�e       ��Zi	�.���`�A�*W


MAE_t6@

recall    

	precision    


MSE��A

lossy�?

accuracy:?y�[Ce       ��Zi	=���`�A�	*W


MAEe�!@

recall    

	precision    


MSE��A

loss��?

accuracy3�?��e       ��Zi	���`�A�*W


MAE\�@

recall    

	precision    


MSE4��A

loss�e�?

accuracy�#?�,��e       ��Zi	��ȟ�`�A�*W


MAE��@

recall   ?

	precision  �?


MSEHk�A

loss"�~?

accuracy��%?�\��e       ��Zi	�$Ф�`�A�*W


MAET�@

recall9�c?

	precision  �?


MSE!��A

lossI:t?

accuracy�*)?�>.`e       ��Zi	��֩�`�A�*W


MAE5'@

recall۶m?

	precision  �?


MSE�k�A

loss޿j?

accuracy4f-?�}be       ��Zi	���`�A�*W


MAE��@

recall]t?

	precision]t?


MSE�	{A

loss��a?

accuracy�m0?�U6e       ��Zi	�G���`�A�*W


MAElR�?

recall��v?

	precision��v?


MSE0�rA

loss��Y?

accuracy3??�N
e       ��Zi	���`�A�*W


MAE���?

recall�9g?

	precision#,w?


MSE�4hA

loss;�R?

accuracy�!6?�$U@e       ��Zi	(�(��`�A�*W


MAEH��?

recall�k?

	precision��x?


MSE�MbA

lossYFL?

accuracy� 8?����e       ��Zi	ʽ?��`�A�*W


MAE}��?

recall�>i?

	precision��y?


MSE��]A

loss��F?

accuracyyK9?�Ȟe       ��Zi	~_��`�A� *W


MAE�?

recall��j?

	precision�Oz?


MSEC�UA

loss�A?

accuracy��;?��Je       ��Zi	�����`�A�#*W


MAE��?

recallףp?

	precision��z?


MSEM�OA

loss5�=?

accuracy/p=?�R(�e       ��Zi	|8���`�A�%*W


MAE���?

recall�Vv?

	precision�{?


MSE��MA

loss9<:?

accuracy��>?��Yfe       ��Zi	����`�A�'*W


MAE��?

recall߰v?

	precision_B{?


MSE�JA

loss7?

accuracy7O??Z,�e       ��Zi	<Q��`�A�**W


MAE���?

recallG�w?

	precision��{?


MSE��GA

loss�S4?

accuracy�'@?1�'�e       ��Zi	/�;��`�A�,*W


MAE�b�?

recall  x?

	precision��{?


MSE�-DA

loss%2?

accuracy�9A?F���e       ��Zi	mOo��`�A�.*W


MAE���?

recall]t?

	precision  |?


MSEo_AA

lossu�/?

accuracy�A?�4�e       ��Zi	"����`�A�1*W


MAEX�?

recall��t?

	precision|?


MSE��AA

loss��-?

accuracyT�A?}��ce       ��Zi	����`�A�3*W


MAE�2�?

recallUUu?

	precision�W|?


MSE�?A

loss��+?

accuracyi�B?����e       ��Zi	"%
��`�A�5*W


MAEdj�?

recall�zu?

	precision�d|?


MSE��=A

loss�/*?

accuracy�C?���e       ��Zi	�m5��`�A�8*W


MAE��?

recall��u?

	precision?~|?


MSE��8A

loss.(?

accuracyj*D?d�ue       ��Zi	uIX�`�A�:*W


MAE~�?

recallW�v?

	precision��|?


MSE�r8A

loss\'?

accuracy�D?�e       ��Zi	Zi{�`�A�<*W


MAE��?

recall��y?

	precision��|?


MSE�O9A

loss��&?

accuracy�5D?���e       ��Zi	����`�A�?*W


MAE{��?

recall�Oz?

	precision�}?


MSE��2A

loss3d$?

accuracy��E?�z�	e       ��Zi	���`�A�A*W


MAE���?

recall�~z?

	precision�7}?


MSE֩.A

loss��"?

accuracy�G?�z��e       ��Zi	���`�A�C*W


MAE~8�?

recall  x?

	precision�F}?


MSE�K,A

loss'o!?

accuracy�G?!��e       ��Zi	 �A�`�A�F*W


MAE+2�?

recall>x?

	precision_\}?


MSE��+A

lossub ?

accuracy�!H?�ς�e       ��Zi	��j �`�A�H*W


MAES�?

recallxxx?

	precision�p}?


MSE�*A

loss�8?

accuracy��H?!�e       ��Zi	�E�%�`�A�K*W


MAE��?

recall��x?

	precision��}?


MSEC~'A

loss}�?

accuracy{�I?���e       ��Zi	�3�*�`�A�M*W


MAE��?

recall��x?

	precision��}?


MSE�&A

loss�?

accuracy(.J?��CUe       ��Zi	;;�/�`�A�O*W


MAEPJ�?

recallnv?

	precision�{?


MSE�%A

loss��?

accuracy��J?i-�e       ��Zi	b�5�`�A�R*W


MAE�`�?

recall�v?

	precision7{?


MSE{�$A

lossB�?

accuracy�K?گ��e       ��Zi	�k3:�`�A�T*W


MAEy'�?

recallX�v?

	precision�M{?


MSE�v$A

loss�.?

accuracy|4K?�G&�e       ��Zi	�S?�`�A�V*W


MAE�G�?

recall$�v?

	precision,c{?


MSE|"A

loss�?

accuracy $L?F���e       ��Zi	��sD�`�A�Y*W


MAE���?

recall$�v?

	precision8�}?


MSE̫ A

lossh�?

accuracyݬL?�N{e       ��Zi	B/�I�`�A�[*W


MAEHŪ?

recall�$y?

	precision8�}?


MSEp�"A

loss�e?

accuracyg/L?�L4�e       ��Zi	$s�N�`�A�]*W


MAE�o�?

recall4y?

	precision��}?


MSEs�"A

lossʦ?

accuracy�sL?�.�e       ��Zi	�ǷS�`�A�`*W


MAE+;�?

recall#,w?

	precision	�}?


MSE@� A

loss1�?

accuracy��L?Z��e       ��Zi	���X�`�A�b*W


MAE�K�?

recall#,w?

	precision	�}?


MSEp�A

loss��?

accuracy�5M?�Oe       ��Zi	��^�`�A�d*W


MAEM��?

recallt?w?

	precision�}?


MSEG A

lossb?

accuracy�M?<ૌe       ��Zi	��Dc�`�A�g*W


MAE8�?

recallqRw?

	precision�}?


MSE�A

lossc?

accuracyZcM?�].Ze       ��Zi	�Ivh�`�A�i*W


MAE�?�?

recallqRw?

	precision�}?


MSESA

loss��?

accuracy�M?X4e       ��Zi	�0�m�`�A�k*W


MAE�D�?

recallwww?

	precision��}?


MSEKA

lossb?

accuracy?%N?wE߭e       ��Zi	���r�`�A�n*W


MAE)�?

recallwww?

	precision��}?


MSE(
A

loss��?

accuracy<N?V�y�e       ��Zi	��w�`�A�p*W


MAE�N�?

recall��w?

	precision��}?


MSEb�A

lossQ?

accuracy��N?"g%�e       ��Zi	�>'}�`�A�r*W


MAE��?

recall�w?

	precisiona�}?


MSE:&A

loss�]?

accuracy+ O?��2e       ��Zi	��M��`�A�u*W


MAE���?

recallt�y?

	precision��}?


MSEX_A

loss�?

accuracyi{O?T��e       ��Zi	,Qt��`�A�w*W


MAE�G�?

recallt�y?

	precision��}?


MSE�}A

loss�k?

accuracy2YO?�s�e       ��Zi	�ӕ��`�A�y*W


MAE'��?

recallt�y?

	precision��}?


MSE��A

loss��?

accuracy�6O?U���e       ��Zi	�<���`�A�|*W


MAE5B�?

recall#�y?

	precision0�}?


MSE��A

loss`?

accuracypO?o6�e       ��Zi	
1��`�A�~*W


MAEy0�?

recall��y?

	precision|�}?


MSE�A

loss��?

accuracy�O?��f       r;�j	,f��`�A�*W


MAE�h�?

recall��y?

	precision|�}?


MSE��A

lossTh?

accuracyGP?����f       r;�j	c?��`�A��*W


MAE˽�?

recall��y?

	precision|�}?


MSE�WA

loss��?

accuracyN=P?�yqf       r;�j	G`��`�A̅*W


MAE���?

recall��y?

	precision��}?


MSEYA

loss�z?

accuracy��P?���#f       r;�j	�����`�A��*W


MAE�H�?

recall��y?

	precision��}?


MSE^�A

loss��?

accuracy�Q?�� f       r;�j	 �ǰ�`�A��*W


MAE2#�?

recall  z?

	precision��}?


MSE*�A

loss��?

accuracy��P?KK8�f       r;�j	�����`�AЌ*W


MAE2P�?

recall  z?

	precision��}?


MSE�A

loss�Y?

accuracyc�P?�,�7f       r;�j	C>>��`�A��*W


MAE��?

recall  |?

	precision��}?


MSEt^A

loss��
?

accuracy�,Q?�Y�f       r;�j	�����`�A��*W


MAE�1�?

recall��{?

	precision��}?


MSE6�A

loss|m
?

accuracyx�Q?E�!f       r;�j	�����`�Aԓ*W


MAE?I�?

recall��{?

	precision��}?


MSE��A

loss-R
?

accuracy	OQ?���zf       r;�j	����`�A��*W


MAE�֘?

recall��{?

	precision��}?


MSE�6A

loss�	
?

accuracyH�Q?-LiQf       r;�j	�5��`�A��*W


MAE��?

recall��{?

	precision��}?


MSEClA

lossa�	?

accuracyO�Q?�T+8f       r;�j	k��`�Aؚ*W


MAE�?

recall��{?

	precision��}?


MSE4oA

loss�B	?

accuracy�'R?u`:�f       r;�j	�����`�A��*W


MAEz�?

recall��{?

	precision��}?


MSE��A

loss��?

accuracy�IR?��<f       r;�j	f����`�A��*W


MAE���?

recall��{?

	precision��}?


MSE��A

loss}�?

accuracy&3R?���f       r;�j	T_���`�Aܡ*W


MAEC��?

recall  |?

	precision��}?


MSE� A

loss�V?

accuracy4�R?��f       r;�j	�F'��`�A��*W


MAE(R�?

recall  |?

	precision��}?


MSE��A

loss�;?

accuracy�`R?9�pf       r;�j	c�O��`�A��*W


MAE���?

recall�|?

	precision�~?


MSEB�A

lossTn?

accuracy̙R?�	ݪf       r;�j	�6h��`�A�*W


MAEY�?

recall  |?

	precision��}?


MSER�A

lossx?

accuracyVR?��9%f       r;�j	?t}��`�A��*W


MAE�z�?

recall  ~?

	precision  ~?


MSE[?A

loss��?

accuracy�IR?��f       r;�j	�����`�A��*W


MAEC��?

recall�~?

	precision�~?


MSE��A

loss�A?

accuracy��R?��"�f       r;�j	i��`�A�*W


MAE s�?

recall�~?

	precision�~?


MSE� A

lossׇ?

accuracy
�R?E	�.f       r;�j	�9��`�A��*W


MAE�l�?

recall�~?

	precision�~?


MSE~A

loss9]?

accuracyy9S?���f       r;�j	���`�A��*W


MAE;ޒ?

recall�~?

	precision�~?


MSEɌA

lossH#?

accuracygS?1��f       r;�j	{},�`�A�*W


MAED6�?

recall  ~?

	precision  ~?


MSE!�A

loss�_?

accuracy�`R?���^f       r;�j	��J�`�A��*W


MAE�Ƒ?

recall�~?

	precision�~?


MSE�qA

loss��?

accuracy�S?Cƒf       r;�j	$�p�`�A��*W


MAE&3�?

recall�~?

	precision�~?


MSE^�A

losset?

accuracy�S?D�`�f       r;�j	EM�"�`�A�*W


MAE��?

recall�~?

	precision�~?


MSE�A

loss�j?

accuracyW�S?��f       r;�j	���'�`�A��*W


MAE��?

recall�~?

	precision�~?


MSE�A

lossC?

accuracy��S?c_nf       r;�j	U.�,�`�A��*W


MAEH}�?

recall�~?

	precision�~?


MSE��A

lossd�?

accuracyW�S?�8�f       r;�j	 #2�`�A��*W


MAEr �?

recall�~?

	precision�~?


MSE�A

loss\�?

accuracy�S?���>f       r;�j	�"I7�`�A��*W


MAE]U�?

recall�~?

	precision�~?


MSE�;A

lossF�?

accuracyW�S?�bC�f       r;�j	m:r<�`�A��*W


MAE̑?

recall�~?

	precision�~?


MSE��A

loss�k?

accuracy��S?��uvf       r;�j	��A�`�A��*W


MAE�ב?

recall�~?

	precision�~?


MSEɹA

loss�M?

accuracy^�S?`��cf       r;�j	���F�`�A��*W


MAE��?

recall�~?

	precision�~?


MSE�A

loss��?

accuracy�?T?�ҩ�f       r;�j	��K�`�A��*W


MAEUv�?

recall�~?

	precision�~?


MSE�I
A

loss��?

accuracybT?�PYtf       r;�j	?%Q�`�A��*W


MAE�Ƒ?

recall�~?

	precision�~?


MSE_�A

loss�?

accuracy�T?[��f       r;�j	u	GV�`�A��*W


MAEUI�?

recall�~?

	precision�~?


MSE�A

loss\?

accuracy�(T?�\f       r;�j	W�r[�`�A��*W


MAE���?

recall  ~?

	precision  ~?


MSE�{A

loss�m?

accuracy-T?��;f       r;�j	 س`�`�A��*W


MAEc�?

recall�~?

	precision�~?


MSEO�
A

loss�?

accuracy4KT?i��f       r;�j	��e�`�A��*W


MAEqZ�?

recall  ~?

	precision  ~?


MSEtCA

loss?

accuracy�?T?~8�f       r;�j	FD*k�`�A��*W


MAEc�?

recall�~?

	precision�~?


MSE�
A

loss`�?

accuracy۱T?`��of       r;�j	-+op�`�A��*W


MAE�<�?

recall  �?

	precision�~?


MSE�E	A

loss?�?

accuracyJ�T?��w�f       r;�j	7E�u�`�A��*W


MAE%��?

recall  �?

	precision�~?


MSE"�
A

loss�?

accuracy�T?i��f       r;�j	B�{�`�A��*W


MAEq��?

recall  �?

	precision�~?


MSE �
A

loss�\?

accuracy�T?s*�f       r;�j	UW��`�A��*W


MAE,��?

recall  �?

	precision�~?


MSE�A

loss�@?

accuracylmT?�X�{f       r;�j	�����`�A��*W


MAE��?

recall  �?

	precision�~?


MSE8�
A

loss�?

accuracy<�T?ڎf       r;�j	���`�A��*W


MAEw�?

recall  �?

	precision�~?


MSE=�	A

lossܶ?

accuracy�T?_�3f       r;�j	V�;��`�A��*W


MAE0��?

recall  �?

	precision�~?


MSER�A

lossa0?

accuracy�sU?�G�f       r;�j	����`�A��*W


MAE�	�?

recall  �?

	precision��}?


MSE��	A

loss�o?

accuracy۱T?��/�f       r;�j	�PÚ�`�A��*W


MAE\܏?

recall  �?

	precision��}?


MSE{�	A

loss�/?

accuracys�T?�"�~f       r;�j	����`�A��*W


MAE��?

recall  �?

	precision��}?


MSE��	A

loss�5?

accuracys�T?i��mf       r;�j	�?&��`�A��*W


MAEo�?

recall  �?

	precision��}?


MSE�A

lossP� ?

accuracy FU?Z pf       r;�j	AoQ��`�A��*W


MAE2Y�?

recall  �?

	precision  �?


MSE�W	A

lossn� ?

accuracyJ�T?�t;�f       r;�j	R�`�A��*W


MAE8��?

recall  �?

	precision  �?


MSE��A

lossA� ?

accuracy�#U?����f       r;�j	B�Ĵ�`�A��*W


MAE�$�?

recall  �?

	precision  �?


MSEA

loss�Z ?

accuracy'U?�c�f       r;�j	O���`�A�*W


MAE�V�?

recall  �?

	precision  �?


MSE/pA

loss� ?

accuracy��U? ��f       r;�j	�?��`�A��*W


MAEË?

recall  �?

	precision  �?


MSE� A

lossm��>

accuracy��U?�YH;f       r;�j	9�w��`�A��*W


MAEnh�?

recall  �?

	precision  �?


MSE�A

loss:��>

accuracy��U?$A�"f       r;�j	ҷ���`�A�*W


MAE0�?

recall  �?

	precision  �?


MSE�7A

lossH��>

accuracy��U?�2�f       r;�j	:!���`�A��*W


MAE�s�?

recall  �?

	precision  �?


MSEW�A

loss���>

accuracy��U?�~u�f       r;�j	����`�Ač*W


MAE5�?

recall  �?

	precision  �?


MSE(RA

loss$�>

accuracy��U?��G�f       r;�j	"��`�A��*W


MAE��?

recall  �?

	precision  �?


MSE:/A

lossm�>

accuracy5�U?�A��f       r;�j	��H��`�A��*W


MAE5'�?

recall  �?

	precision  �?


MSEd�A

loss#�>

accuracy��V?�@ �f       r;�j	T�|��`�AȔ*W


MAE��?

recall  �?

	precision  �?


MSE�bA

loss�W�>

accuracy��U?_�ϔf       r;�j	����`�A��*W


MAE $�?

recall  �?

	precision  �?


MSE/CA

loss7B�>

accuracy5�U?v�*f       r;�j	O����`�A��*W


MAE��?

recall  �?

	precision  �?


MSEޚA

loss���>

accuracy��U?��T�f       r;�j	�t ��`�A̛*W


MAE���?

recall  �?

	precision  �?


MSE�CA

loss^Y�>

accuracy�RW?Ff       r;�j	N�U��`�A��*W


MAE��?

recall  �?

	precision  �?


MSE}A

lossC��>

accuracy�WV?���f       r;�j	kp���`�A��*W


MAE"Ȋ?

recall  �?

	precision  �?


MSEc�A

loss,��>

accuracytLV?���Sf       r;�j	����`�AТ*W


MAE� �?

recall  �?

	precision  �?


MSE	OA

loss5��>

accuracy`GW?t�uOf       r;�j	����`�A��*W


MAE|4�?

recall  �?

	precision  �?


MSE2#A

loss%g�>

accuracy<*V?2��f       r;�j	�$�`�A��*W


MAE�x�?

recall  �?

	precision  �?


MSE�PA

lossb��>

accuracymV?��E�f       r;�j	�M�`�Aԩ*W


MAE�?

recall  �?

	precision  �?


MSEa�A

loss}m�>

accuracy��V?Λ=�f       r;�j	j#��`�A��*W


MAE���?

recall  �?

	precision  �?


MSEUA

lossS�>

accuracy�V?�v�^f       r;�j	�*��`�A��*W


MAEKx�?

recall  �?

	precision  �?


MSENA

lossYZ�>

accuracy�WV?�jv�f       r;�j	Y�!�`�Aذ*W


MAE�~�?

recall  �?

	precision  �?


MSE��A

loss���>

accuracyf�U?�æ�f       r;�j	2�'�`�A��*W


MAE'��?

recall  �?

	precision  �?


MSE<{A

lossI��>

accuracy�W?���f       r;�j	�3D,�`�A��*W


MAE(.�?

recall  �?

	precision  �?


MSE3�A

loss(��>

accuracytLV?O2f       r;�j	h�v1�`�Aܷ*W


MAEX�?

recall  �?

	precision  �?


MSE,�A

loss���>

accuracytLV?�|Tf       r;�j	\�6�`�A��*W


MAE/g�?

recall  �?

	precision  �?


MSEf�A

loss���>

accuracyAV?�S��f       r;�j	�4�;�`�A��*W


MAE���?

recall  �?

	precision  �?


MSEQ�A

lossє�>

accuracyCcV?��f       r;�j	�A�`�A�*W


MAE/��?

recall  �?

	precision  �?


MSEw�A

lossU��>

accuracyCcV?.��f       r;�j	��EF�`�A��*W


MAE5��?

recall  �?

	precision  �?


MSE�NA

loss�(�>

accuracy{�V?�U�f       r;�j	��hK�`�A��*W


MAE�O�?

recall  �?

	precision  �?


MSE��A

loss�,�>

accuracy�V? 0Uhf       r;�j	:R�P�`�A��*W


MAEyB�?

recall  �?

	precision  �?


MSE9��@

loss�x�>

accuracy/^W?�O�(f       r;�j	�y�U�`�A��*W


MAEJ҈?

recall  �?

	precision  �?


MSEQA

loss��>

accuracy�V?�	�\f       r;�j	]�[�`�A��*W


MAEJ҈?

recall  �?

	precision  �?


MSEspA

lossm��>

accuracyR�V?�@/�f       r;�j	��M`�`�A��*W


MAE��?

recall  �?

	precision  �?


MSEv�A

lossm�>

accuracyYW?a$�f       r;�j	���e�`�A��*W


MAE���?

recall  �?

	precision  �?


MSENA

lossސ�>

accuracy(%W?�Ө�f       r;�j	���j�`�A��*W


MAEPe�?

recall  �?

	precision  �?


MSE�A

loss�!�>

accuracy�;W?��1-f       r;�j	Y�2p�`�A��*W


MAE�_�?

recall  �?

	precision  �?


MSE� A

loss�5�>

accuracy`GW?����f       r;�j	��u�`�A��*W


MAE�S�?

recall  �?

	precision  �?


MSE�7 A

loss��>

accuracy6�W?���f       r;�j	���z�`�A��*W


MAE�ʅ?

recall  �?

	precision  �?


MSE�@�@

lossM��>

accuracy�W?8F��f       r;�j	��!��`�A��*W


MAE]1�?

recall  �?

	precision  �?


MSE¤�@

loss#!�>

accuracy΋W?���f       r;�j	�p��`�A��*W


MAE�<�?

recall  �?

	precision  �?


MSE���@

loss��>

accuracyg�W?��f       r;�j	�漊�`�A��*W


MAE
+�?

recall  �?

	precision  �?


MSE���@

loss<�>

accuracy��W?G�c�f       r;�j	�;���`�A��*W


MAE�τ?

recall  �?

	precision  �?


MSEN4�@

loss4<�>

accuracy��W?hB��f       r;�j	��/��`�A��*W


MAEৄ?

recall  �?

	precision  �?


MSE��@

lossgn�>

accuracy�W?��f       r;�j	�0b��`�A��*W


MAEO�?

recall  �?

	precision  �?


MSEs��@

losso��>

accuracyu�W?_t�:f       r;�j	�寧�`�A��*W


MAE�X�?

recall  �?

	precision  �?


MSE@��@

lossX��>

accuracy�W?�gof       r;�j	`����`�A��*W


MAE�t�?

recall  �?

	precision  �?


MSE���@

lossb��>

accuracy��W?��qf       r;�j	��"��`�A��*W


MAE�ڃ?

recall  �?

	precision  �?


MSE��@

lossg0�>

accuracyD	X?���f       r;�j	�<>��`�A��*W


MAEj*�?

recall  �?

	precision  �?


MSE]C�@

loss��>

accuracy X?�V�f       r;�j	�g��`�A��*W


MAE:A�?

recall  �?

	precision  �?


MSEY��@

loss���>

accuracyu�W?O��f       r;�j	/����`�A��*W


MAE@��?

recall  �?

	precision  �?


MSE��@

lossZ�>

accuracy|+X?e��f       r;�j	��ʾ�`�A��*W


MAE��?

recall  �?

	precision  �?


MSE��@

loss�b�>

accuracyn�W?y�+Nf       r;�j	���`�A��*W


MAE3�?

recall  �?

	precision  �?


MSE0:�@

loss�e�>

accuracy��W?�KnCf       r;�j	�V��`�A��*W


MAE9n�?

recall  �?

	precision  �?


MSE^�@

lossD9�>

accuracy X?��_Mf       r;�j	���`�A��*W


MAEL�?

recall  �?

	precision  �?


MSEP��@

loss�f�>

accuracy X?ށЀf       r;�j	�M���`�A��*W


MAE��?

recall  �?

	precision  �?


MSE
�@

losss�>

accuracy|+X?X�`f       r;�j	H2��`�A܂*W


MAE��?

recall  �?

	precision  �?


MSEm�@

loss�,�>

accuracy�6X?g�1uf       r;�j	�IF��`�A��*W


MAE�g�?

recall  �?

	precision  �?


MSE��@

loss�1�>

accuracyYX?j�~�