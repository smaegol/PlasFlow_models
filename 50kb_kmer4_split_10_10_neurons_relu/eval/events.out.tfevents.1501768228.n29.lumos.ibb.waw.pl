       �K"	   ��`�Abrain.Event:2f�1�      u��	�d ��`�A"��
m
global_stepVariable*
	container *
_output_shapes
: *
shape: *
dtype0	*
shared_name 

global_step/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@global_step*
dtype0	*
value	B	 R 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_output_shapes
: *
_class
loc:@global_step*
T0	*
use_locking(
j
global_step/readIdentityglobal_step*
_output_shapes
: *
_class
loc:@global_step*
T0	
X
inputPlaceholder*(
_output_shapes
:����������*
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
dtype0*
valueB"����   
�
=input_from_feature_columns/input_from_feature_columns/ReshapeReshapeinputCinput_from_feature_columns/input_from_feature_columns/Reshape/shape*(
_output_shapes
:����������*
T0
�
Ginput_from_feature_columns/input_from_feature_columns/concat/concat_dimConst*
_output_shapes
: *
dtype0*
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
hiddenlayer_0/weights/part_0Variable*
	container *
_output_shapes
:	�
*
shape:	�
*
dtype0*
shared_name 
�
=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
dtype0*
valueB"   
   
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
dtype0*
valueB
 *���
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
dtype0*
valueB
 *��>
�
Ehiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
seed2*

seed**
_output_shapes
:	�
*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0*
dtype0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_0/weights/part_0/Initializer/random_uniform/max;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0
�
;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*
_output_shapes
:	�
*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0
�
7hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
_output_shapes
:	�
*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0
�
#hiddenlayer_0/weights/part_0/AssignAssignhiddenlayer_0/weights/part_07hiddenlayer_0/weights/part_0/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	�
*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0*
use_locking(
�
!hiddenlayer_0/weights/part_0/readIdentityhiddenlayer_0/weights/part_0*
_output_shapes
:	�
*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0
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
*
T0*
transpose_b( 
�
hiddenlayer_0/biases/part_0Variable*
	container *
_output_shapes
:
*
shape:
*
dtype0*
shared_name 
�
-hiddenlayer_0/biases/part_0/Initializer/zerosConst*
_output_shapes
:
*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
dtype0*
valueB
*    
�
"hiddenlayer_0/biases/part_0/AssignAssignhiddenlayer_0/biases/part_0-hiddenlayer_0/biases/part_0/Initializer/zeros*
validate_shape(*
_output_shapes
:
*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
T0*
use_locking(
�
 hiddenlayer_0/biases/part_0/readIdentityhiddenlayer_0/biases/part_0*
_output_shapes
:
*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
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
zero_fraction/zeroConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
zero_fraction/EqualEqual hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*'
_output_shapes
:���������
*
T0
p
zero_fraction/CastCastzero_fraction/Equal*'
_output_shapes
:���������
*

SrcT0
*

DstT0
d
zero_fraction/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
u
zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
_output_shapes
: *
T0*
	keep_dims( 
x
ScalarSummary/tagsConst*
_output_shapes
: *
dtype0*6
value-B+ B%hiddenlayer_0:fraction_of_zero_values
g
ScalarSummaryScalarSummaryScalarSummary/tagszero_fraction/Mean*
_output_shapes
: *
T0
m
HistogramSummary/tagConst*
_output_shapes
: *
dtype0*)
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
hiddenlayer_1/weights/part_0Variable*
	container *
_output_shapes

:

*
shape
:

*
dtype0*
shared_name 
�
=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
dtype0*
valueB"
   
   
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_1/weights/part_0*
dtype0*
valueB
 *�7�
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_1/weights/part_0*
dtype0*
valueB
 *�7?
�
Ehiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform=hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
seed2.*

seed**
_output_shapes

:

*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
T0*
dtype0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub;hiddenlayer_1/weights/part_0/Initializer/random_uniform/max;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
_output_shapes
: */
_class%
#!loc:@hiddenlayer_1/weights/part_0*
T0
�
;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulEhiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform;hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*
_output_shapes

:

*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
T0
�
7hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd;hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul;hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*
_output_shapes

:

*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
T0
�
#hiddenlayer_1/weights/part_0/AssignAssignhiddenlayer_1/weights/part_07hiddenlayer_1/weights/part_0/Initializer/random_uniform*
validate_shape(*
_output_shapes

:

*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
T0*
use_locking(
�
!hiddenlayer_1/weights/part_0/readIdentityhiddenlayer_1/weights/part_0*
_output_shapes

:

*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
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
transpose_a( *'
_output_shapes
:���������
*
T0*
transpose_b( 
�
hiddenlayer_1/biases/part_0Variable*
	container *
_output_shapes
:
*
shape:
*
dtype0*
shared_name 
�
-hiddenlayer_1/biases/part_0/Initializer/zerosConst*
_output_shapes
:
*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
dtype0*
valueB
*    
�
"hiddenlayer_1/biases/part_0/AssignAssignhiddenlayer_1/biases/part_0-hiddenlayer_1/biases/part_0/Initializer/zeros*
validate_shape(*
_output_shapes
:
*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
T0*
use_locking(
�
 hiddenlayer_1/biases/part_0/readIdentityhiddenlayer_1/biases/part_0*
_output_shapes
:
*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
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
zero_fraction_1/zeroConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
zero_fraction_1/EqualEqual hiddenlayer_1/hiddenlayer_1/Reluzero_fraction_1/zero*'
_output_shapes
:���������
*
T0
t
zero_fraction_1/CastCastzero_fraction_1/Equal*'
_output_shapes
:���������
*

SrcT0
*

DstT0
f
zero_fraction_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
{
zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
_output_shapes
: *
T0*
	keep_dims( 
z
ScalarSummary_1/tagsConst*
_output_shapes
: *
dtype0*6
value-B+ B%hiddenlayer_1:fraction_of_zero_values
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
_output_shapes
: *
T0
o
HistogramSummary_1/tagConst*
_output_shapes
: *
dtype0*)
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
dnn_logits/weights/part_0Variable*
	container *
_output_shapes

:
*
shape
:
*
dtype0*
shared_name 
�
:dnn_logits/weights/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*,
_class"
 loc:@dnn_logits/weights/part_0*
dtype0*
valueB"
      
�
8dnn_logits/weights/part_0/Initializer/random_uniform/minConst*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
dtype0*
valueB
 *����
�
8dnn_logits/weights/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
dtype0*
valueB
 *���>
�
Bdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn_logits/weights/part_0/Initializer/random_uniform/shape*
seed2L*

seed**
_output_shapes

:
*,
_class"
 loc:@dnn_logits/weights/part_0*
T0*
dtype0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/subSub8dnn_logits/weights/part_0/Initializer/random_uniform/max8dnn_logits/weights/part_0/Initializer/random_uniform/min*
_output_shapes
: *,
_class"
 loc:@dnn_logits/weights/part_0*
T0
�
8dnn_logits/weights/part_0/Initializer/random_uniform/mulMulBdnn_logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn_logits/weights/part_0/Initializer/random_uniform/sub*
_output_shapes

:
*,
_class"
 loc:@dnn_logits/weights/part_0*
T0
�
4dnn_logits/weights/part_0/Initializer/random_uniformAdd8dnn_logits/weights/part_0/Initializer/random_uniform/mul8dnn_logits/weights/part_0/Initializer/random_uniform/min*
_output_shapes

:
*,
_class"
 loc:@dnn_logits/weights/part_0*
T0
�
 dnn_logits/weights/part_0/AssignAssigndnn_logits/weights/part_04dnn_logits/weights/part_0/Initializer/random_uniform*
validate_shape(*
_output_shapes

:
*,
_class"
 loc:@dnn_logits/weights/part_0*
T0*
use_locking(
�
dnn_logits/weights/part_0/readIdentitydnn_logits/weights/part_0*
_output_shapes

:
*,
_class"
 loc:@dnn_logits/weights/part_0*
T0
g
dnn_logits/weightsIdentitydnn_logits/weights/part_0/read*
_output_shapes

:
*
T0
�
dnn_logits/dnn_logits/MatMulMatMul hiddenlayer_1/hiddenlayer_1/Reludnn_logits/weights*
transpose_a( *'
_output_shapes
:���������*
T0*
transpose_b( 
�
dnn_logits/biases/part_0Variable*
	container *
_output_shapes
:*
shape:*
dtype0*
shared_name 
�
*dnn_logits/biases/part_0/Initializer/zerosConst*
_output_shapes
:*+
_class!
loc:@dnn_logits/biases/part_0*
dtype0*
valueB*    
�
dnn_logits/biases/part_0/AssignAssigndnn_logits/biases/part_0*dnn_logits/biases/part_0/Initializer/zeros*
validate_shape(*
_output_shapes
:*+
_class!
loc:@dnn_logits/biases/part_0*
T0*
use_locking(
�
dnn_logits/biases/part_0/readIdentitydnn_logits/biases/part_0*
_output_shapes
:*+
_class!
loc:@dnn_logits/biases/part_0*
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
zero_fraction_2/zeroConst*
_output_shapes
: *
dtype0*
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

SrcT0
*

DstT0
f
zero_fraction_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
{
zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
_output_shapes
: *
T0*
	keep_dims( 
w
ScalarSummary_2/tagsConst*
_output_shapes
: *
dtype0*3
value*B( B"dnn_logits:fraction_of_zero_values
m
ScalarSummary_2ScalarSummaryScalarSummary_2/tagszero_fraction_2/Mean*
_output_shapes
: *
T0
l
HistogramSummary_2/tagConst*
_output_shapes
: *
dtype0*&
valueB Bdnn_logits:activation
~
HistogramSummary_2HistogramSummaryHistogramSummary_2/tagdnn_logits/dnn_logits/BiasAdd*
_output_shapes
: *
T0
R
zerosConst*
_output_shapes
:*
dtype0*
valueB*    
~
centered_bias_weightVariable*
	container *
_output_shapes
:*
shape:*
dtype0*
shared_name 
�
centered_bias_weight/AssignAssigncentered_bias_weightzeros*
validate_shape(*
_output_shapes
:*'
_class
loc:@centered_bias_weight*
T0*
use_locking(
�
centered_bias_weight/readIdentitycentered_bias_weight*
_output_shapes
:*'
_class
loc:@centered_bias_weight*
T0
`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������
a
ReshapeReshapecentered_bias_weight/readReshape/shape*
_output_shapes
:*
T0
�
ScalarSummary_3/tagsConst*
_output_shapes
:*
dtype0*�
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
ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
_output_shapes
: *
T0*
	keep_dims( 
O

mean/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
l

mean/totalVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
mean/total/AssignAssign
mean/total
mean/zeros*
validate_shape(*
_output_shapes
: *
_class
loc:@mean/total*
T0*
use_locking(
g
mean/total/readIdentity
mean/total*
_output_shapes
: *
_class
loc:@mean/total*
T0
Q
mean/zeros_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
l

mean/countVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
mean/count/AssignAssign
mean/countmean/zeros_1*
validate_shape(*
_output_shapes
: *
_class
loc:@mean/count*
T0*
use_locking(
g
mean/count/readIdentity
mean/count*
_output_shapes
: *
_class
loc:@mean/count*
T0
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
: *
dtype0*
valueB 
S
mean/SumSumloss
mean/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
_output_shapes
: *
_class
loc:@mean/total*
T0*
use_locking( 
�
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat_1*
_output_shapes
: *
_class
loc:@mean/count*
T0*
use_locking( 
S
mean/Greater/yConst*
_output_shapes
: *
dtype0*
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
mean/value/eConst*
_output_shapes
: *
dtype0*
valueB
 *    
[

mean/valueSelectmean/Greatermean/Divmean/value/e*
_output_shapes
: *
T0
y
mean/Greater_1/yConst^mean/AssignAdd^mean/AssignAdd_1*
_output_shapes
: *
dtype0*
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
mean/update_op/eConst^mean/AssignAdd^mean/AssignAdd_1*
_output_shapes
: *
dtype0*
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

SrcT0	*

DstT0
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
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
	ToFloat_1CastEqual*#
_output_shapes
:���������*

SrcT0
*

DstT0
S
accuracy/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
p
accuracy/totalVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
accuracy/total/AssignAssignaccuracy/totalaccuracy/zeros*
validate_shape(*
_output_shapes
: *!
_class
loc:@accuracy/total*
T0*
use_locking(
s
accuracy/total/readIdentityaccuracy/total*
_output_shapes
: *!
_class
loc:@accuracy/total*
T0
U
accuracy/zeros_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
p
accuracy/countVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
accuracy/count/AssignAssignaccuracy/countaccuracy/zeros_1*
validate_shape(*
_output_shapes
: *!
_class
loc:@accuracy/count*
T0*
use_locking(
s
accuracy/count/readIdentityaccuracy/count*
_output_shapes
: *!
_class
loc:@accuracy/count*
T0
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
:*
dtype0*
valueB: 
`
accuracy/SumSum	ToFloat_1accuracy/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
_output_shapes
: *!
_class
loc:@accuracy/total*
T0*
use_locking( 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat_1*
_output_shapes
: *!
_class
loc:@accuracy/count*
T0*
use_locking( 
W
accuracy/Greater/yConst*
_output_shapes
: *
dtype0*
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
accuracy/value/eConst*
_output_shapes
: *
dtype0*
valueB
 *    
k
accuracy/valueSelectaccuracy/Greateraccuracy/Divaccuracy/value/e*
_output_shapes
: *
T0
�
accuracy/Greater_1/yConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
_output_shapes
: *
dtype0*
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
accuracy/update_op/eConst^accuracy/AssignAdd^accuracy/AssignAdd_1*
_output_shapes
: *
dtype0*
valueB
 *    
w
accuracy/update_opSelectaccuracy/Greater_1accuracy/Div_1accuracy/update_op/e*
_output_shapes
: *
T0
_
recall/true_positives/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
y
recall/true_positives/EqualEqualoutputrecall/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
a
recall/true_positives/Equal_1/yConst*
_output_shapes
: *
dtype0	*
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
recall/true_positives/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
}
recall/true_positives/countVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
"recall/true_positives/count/AssignAssignrecall/true_positives/countrecall/true_positives/zeros*
validate_shape(*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count*
T0*
use_locking(
�
 recall/true_positives/count/readIdentityrecall/true_positives/count*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count*
T0
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
:*
dtype0*
valueB: 
�
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count*
T0*
use_locking( 
`
recall/false_negatives/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
{
recall/false_negatives/EqualEqualoutputrecall/false_negatives/Equal/y*#
_output_shapes
:���������*
T0	
b
 recall/false_negatives/Equal_1/yConst*
_output_shapes
: *
dtype0	*
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
recall/false_negatives/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
~
recall/false_negatives/countVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
#recall/false_negatives/count/AssignAssignrecall/false_negatives/countrecall/false_negatives/zeros*
validate_shape(*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count*
T0*
use_locking(
�
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count*
T0
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
:*
dtype0*
valueB: 
�
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count*
T0*
use_locking( 
s

recall/addAddrecall/true_positives/Identityrecall/false_negatives/Identity*
_output_shapes
: *
T0
U
recall/Greater/yConst*
_output_shapes
: *
dtype0*
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
recall/value/eConst*
_output_shapes
: *
dtype0*
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
recall/Greater_1/yConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
_output_shapes
: *
dtype0*
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
recall/update_op/eConst ^recall/true_positives/AssignAdd!^recall/false_negatives/AssignAdd*
_output_shapes
: *
dtype0*
valueB
 *    
o
recall/update_opSelectrecall/Greater_1recall/Div_1recall/update_op/e*
_output_shapes
: *
T0
b
 precision/true_positives/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

precision/true_positives/EqualEqualoutput precision/true_positives/Equal/y*#
_output_shapes
:���������*
T0	
d
"precision/true_positives/Equal_1/yConst*
_output_shapes
: *
dtype0	*
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
precision/true_positives/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
precision/true_positives/countVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
%precision/true_positives/count/AssignAssignprecision/true_positives/countprecision/true_positives/zeros*
validate_shape(*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count*
T0*
use_locking(
�
#precision/true_positives/count/readIdentityprecision/true_positives/count*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count*
T0
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
:*
dtype0*
valueB: 
�
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count*
T0*
use_locking( 
c
!precision/false_positives/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
precision/false_positives/EqualEqualoutput!precision/false_positives/Equal/y*#
_output_shapes
:���������*
T0	
e
#precision/false_positives/Equal_1/yConst*
_output_shapes
: *
dtype0	*
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
precision/false_positives/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
precision/false_positives/countVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
&precision/false_positives/count/AssignAssignprecision/false_positives/countprecision/false_positives/zeros*
validate_shape(*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count*
T0*
use_locking(
�
$precision/false_positives/count/readIdentityprecision/false_positives/count*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count*
T0
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
:*
dtype0*
valueB: 
�
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count*
T0*
use_locking( 
|
precision/addAdd!precision/true_positives/Identity"precision/false_positives/Identity*
_output_shapes
: *
T0
X
precision/Greater/yConst*
_output_shapes
: *
dtype0*
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
precision/value/eConst*
_output_shapes
: *
dtype0*
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
precision/Greater_1/yConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
_output_shapes
: *
dtype0*
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
precision/update_op/eConst#^precision/true_positives/AssignAdd$^precision/false_positives/AssignAdd*
_output_shapes
: *
dtype0*
valueB
 *    
{
precision/update_opSelectprecision/Greater_1precision/Div_1precision/update_op/e*
_output_shapes
: *
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

SrcT0	*

DstT0
^
mean_absolute_error/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
{
mean_absolute_error/totalVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
 mean_absolute_error/total/AssignAssignmean_absolute_error/totalmean_absolute_error/zeros*
validate_shape(*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total*
T0*
use_locking(
�
mean_absolute_error/total/readIdentitymean_absolute_error/total*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total*
T0
`
mean_absolute_error/zeros_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
{
mean_absolute_error/countVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
 mean_absolute_error/count/AssignAssignmean_absolute_error/countmean_absolute_error/zeros_1*
validate_shape(*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count*
T0*
use_locking(
�
mean_absolute_error/count/readIdentitymean_absolute_error/count*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count*
T0
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
:*
dtype0*
valueB: 
�
mean_absolute_error/SumSummean_absolute_error/ToFloatmean_absolute_error/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
mean_absolute_error/AssignAdd	AssignAddmean_absolute_error/totalmean_absolute_error/Sum*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total*
T0*
use_locking( 
�
mean_absolute_error/AssignAdd_1	AssignAddmean_absolute_error/countmean_absolute_error/ToFloat_1*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count*
T0*
use_locking( 
b
mean_absolute_error/Greater/yConst*
_output_shapes
: *
dtype0*
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
mean_absolute_error/value/eConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
mean_absolute_error/valueSelectmean_absolute_error/Greatermean_absolute_error/Divmean_absolute_error/value/e*
_output_shapes
: *
T0
�
mean_absolute_error/Greater_1/yConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
_output_shapes
: *
dtype0*
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
mean_absolute_error/update_op/eConst^mean_absolute_error/AssignAdd ^mean_absolute_error/AssignAdd_1*
_output_shapes
: *
dtype0*
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

SrcT0	*

DstT0
]
mean_squared_error/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
z
mean_squared_error/totalVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
mean_squared_error/total/AssignAssignmean_squared_error/totalmean_squared_error/zeros*
validate_shape(*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total*
T0*
use_locking(
�
mean_squared_error/total/readIdentitymean_squared_error/total*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total*
T0
_
mean_squared_error/zeros_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
z
mean_squared_error/countVariable*
	container *
_output_shapes
: *
shape: *
dtype0*
shared_name 
�
mean_squared_error/count/AssignAssignmean_squared_error/countmean_squared_error/zeros_1*
validate_shape(*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count*
T0*
use_locking(
�
mean_squared_error/count/readIdentitymean_squared_error/count*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count*
T0
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
:*
dtype0*
valueB: 
�
mean_squared_error/SumSummean_squared_error/ToFloatmean_squared_error/Const*
_output_shapes
: *
T0*
	keep_dims( 
�
mean_squared_error/AssignAdd	AssignAddmean_squared_error/totalmean_squared_error/Sum*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total*
T0*
use_locking( 
�
mean_squared_error/AssignAdd_1	AssignAddmean_squared_error/countmean_squared_error/ToFloat_1*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count*
T0*
use_locking( 
a
mean_squared_error/Greater/yConst*
_output_shapes
: *
dtype0*
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
mean_squared_error/value/eConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/Divmean_squared_error/value/e*
_output_shapes
: *
T0
�
mean_squared_error/Greater_1/yConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
_output_shapes
: *
dtype0*
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
mean_squared_error/update_op/eConst^mean_squared_error/AssignAdd^mean_squared_error/AssignAdd_1*
_output_shapes
: *
dtype0*
valueB
 *    
�
mean_squared_error/update_opSelectmean_squared_error/Greater_1mean_squared_error/Div_1mean_squared_error/update_op/e*
_output_shapes
: *
T0
�

group_depsNoOp^recall/update_op^mean_absolute_error/update_op^accuracy/update_op^mean/update_op^mean_squared_error/update_op^precision/update_op
P

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel
�
save/save/tensor_namesConst*
_output_shapes
:*
dtype0*�
value�B�Bcentered_bias_weightBdnn_logits/biasesBdnn_logits/weightsBglobal_stepBhiddenlayer_0/biasesBhiddenlayer_0/weightsBhiddenlayer_1/biasesBhiddenlayer_1/weights
�
save/save/shapes_and_slicesConst*
_output_shapes
:*
dtype0*g
value^B\B B15 0,15B10 15 0,10:0,15B B10 0,10B256 10 0,256:0,10B10 0,10B10 10 0,10:0,10
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
: *
_class
loc:@save/Const*
T0
s
save/restore_slice/tensor_nameConst*
_output_shapes
: *
dtype0*%
valueB Bcentered_bias_weight
c
"save/restore_slice/shape_and_sliceConst*
_output_shapes
: *
dtype0*
valueB B 
�
save/restore_sliceRestoreSlice
save/Constsave/restore_slice/tensor_name"save/restore_slice/shape_and_slice*
preferred_shard���������*
_output_shapes
:*
dt0
�
save/AssignAssigncentered_bias_weightsave/restore_slice*
validate_shape(*
_output_shapes
:*'
_class
loc:@centered_bias_weight*
T0*
use_locking(
r
 save/restore_slice_1/tensor_nameConst*
_output_shapes
: *
dtype0*"
valueB Bdnn_logits/biases
l
$save/restore_slice_1/shape_and_sliceConst*
_output_shapes
: *
dtype0*
valueB B15 0,15
�
save/restore_slice_1RestoreSlice
save/Const save/restore_slice_1/tensor_name$save/restore_slice_1/shape_and_slice*
preferred_shard���������*
_output_shapes
:*
dt0
�
save/Assign_1Assigndnn_logits/biases/part_0save/restore_slice_1*
validate_shape(*
_output_shapes
:*+
_class!
loc:@dnn_logits/biases/part_0*
T0*
use_locking(
s
 save/restore_slice_2/tensor_nameConst*
_output_shapes
: *
dtype0*#
valueB Bdnn_logits/weights
t
$save/restore_slice_2/shape_and_sliceConst*
_output_shapes
: *
dtype0* 
valueB B10 15 0,10:0,15
�
save/restore_slice_2RestoreSlice
save/Const save/restore_slice_2/tensor_name$save/restore_slice_2/shape_and_slice*
preferred_shard���������*
_output_shapes
:*
dt0
�
save/Assign_2Assigndnn_logits/weights/part_0save/restore_slice_2*
validate_shape(*
_output_shapes

:
*,
_class"
 loc:@dnn_logits/weights/part_0*
T0*
use_locking(
l
 save/restore_slice_3/tensor_nameConst*
_output_shapes
: *
dtype0*
valueB Bglobal_step
e
$save/restore_slice_3/shape_and_sliceConst*
_output_shapes
: *
dtype0*
valueB B 
�
save/restore_slice_3RestoreSlice
save/Const save/restore_slice_3/tensor_name$save/restore_slice_3/shape_and_slice*
preferred_shard���������*
_output_shapes
:*
dt0	
�
save/Assign_3Assignglobal_stepsave/restore_slice_3*
validate_shape(*
_output_shapes
: *
_class
loc:@global_step*
T0	*
use_locking(
u
 save/restore_slice_4/tensor_nameConst*
_output_shapes
: *
dtype0*%
valueB Bhiddenlayer_0/biases
l
$save/restore_slice_4/shape_and_sliceConst*
_output_shapes
: *
dtype0*
valueB B10 0,10
�
save/restore_slice_4RestoreSlice
save/Const save/restore_slice_4/tensor_name$save/restore_slice_4/shape_and_slice*
preferred_shard���������*
_output_shapes
:*
dt0
�
save/Assign_4Assignhiddenlayer_0/biases/part_0save/restore_slice_4*
validate_shape(*
_output_shapes
:
*.
_class$
" loc:@hiddenlayer_0/biases/part_0*
T0*
use_locking(
v
 save/restore_slice_5/tensor_nameConst*
_output_shapes
: *
dtype0*&
valueB Bhiddenlayer_0/weights
v
$save/restore_slice_5/shape_and_sliceConst*
_output_shapes
: *
dtype0*"
valueB B256 10 0,256:0,10
�
save/restore_slice_5RestoreSlice
save/Const save/restore_slice_5/tensor_name$save/restore_slice_5/shape_and_slice*
preferred_shard���������*
_output_shapes
:*
dt0
�
save/Assign_5Assignhiddenlayer_0/weights/part_0save/restore_slice_5*
validate_shape(*
_output_shapes
:	�
*/
_class%
#!loc:@hiddenlayer_0/weights/part_0*
T0*
use_locking(
u
 save/restore_slice_6/tensor_nameConst*
_output_shapes
: *
dtype0*%
valueB Bhiddenlayer_1/biases
l
$save/restore_slice_6/shape_and_sliceConst*
_output_shapes
: *
dtype0*
valueB B10 0,10
�
save/restore_slice_6RestoreSlice
save/Const save/restore_slice_6/tensor_name$save/restore_slice_6/shape_and_slice*
preferred_shard���������*
_output_shapes
:*
dt0
�
save/Assign_6Assignhiddenlayer_1/biases/part_0save/restore_slice_6*
validate_shape(*
_output_shapes
:
*.
_class$
" loc:@hiddenlayer_1/biases/part_0*
T0*
use_locking(
v
 save/restore_slice_7/tensor_nameConst*
_output_shapes
: *
dtype0*&
valueB Bhiddenlayer_1/weights
t
$save/restore_slice_7/shape_and_sliceConst*
_output_shapes
: *
dtype0* 
valueB B10 10 0,10:0,10
�
save/restore_slice_7RestoreSlice
save/Const save/restore_slice_7/tensor_name$save/restore_slice_7/shape_and_slice*
preferred_shard���������*
_output_shapes
:*
dt0
�
save/Assign_7Assignhiddenlayer_1/weights/part_0save/restore_slice_7*
validate_shape(*
_output_shapes

:

*/
_class%
#!loc:@hiddenlayer_1/weights/part_0*
T0*
use_locking(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7
�
initNoOp^mean/total/Assign^mean/count/Assign^accuracy/total/Assign^accuracy/count/Assign#^recall/true_positives/count/Assign$^recall/false_negatives/count/Assign&^precision/true_positives/count/Assign'^precision/false_positives/count/Assign!^mean_absolute_error/total/Assign!^mean_absolute_error/count/Assign ^mean_squared_error/total/Assign ^mean_squared_error/count/Assign
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
IsVariableInitialized_10IsVariableInitializedaccuracy/total*
_output_shapes
: *!
_class
loc:@accuracy/total*
dtype0
�
IsVariableInitialized_11IsVariableInitializedaccuracy/count*
_output_shapes
: *!
_class
loc:@accuracy/count*
dtype0
�
IsVariableInitialized_12IsVariableInitializedrecall/true_positives/count*
_output_shapes
: *.
_class$
" loc:@recall/true_positives/count*
dtype0
�
IsVariableInitialized_13IsVariableInitializedrecall/false_negatives/count*
_output_shapes
: */
_class%
#!loc:@recall/false_negatives/count*
dtype0
�
IsVariableInitialized_14IsVariableInitializedprecision/true_positives/count*
_output_shapes
: *1
_class'
%#loc:@precision/true_positives/count*
dtype0
�
IsVariableInitialized_15IsVariableInitializedprecision/false_positives/count*
_output_shapes
: *2
_class(
&$loc:@precision/false_positives/count*
dtype0
�
IsVariableInitialized_16IsVariableInitializedmean_absolute_error/total*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/total*
dtype0
�
IsVariableInitialized_17IsVariableInitializedmean_absolute_error/count*
_output_shapes
: *,
_class"
 loc:@mean_absolute_error/count*
dtype0
�
IsVariableInitialized_18IsVariableInitializedmean_squared_error/total*
_output_shapes
: *+
_class!
loc:@mean_squared_error/total*
dtype0
�
IsVariableInitialized_19IsVariableInitializedmean_squared_error/count*
_output_shapes
: *+
_class!
loc:@mean_squared_error/count*
dtype0
�
packPackIsVariableInitializedIsVariableInitialized_1IsVariableInitialized_2IsVariableInitialized_3IsVariableInitialized_4IsVariableInitialized_5IsVariableInitialized_6IsVariableInitialized_7IsVariableInitialized_8IsVariableInitialized_9IsVariableInitialized_10IsVariableInitialized_11IsVariableInitialized_12IsVariableInitialized_13IsVariableInitialized_14IsVariableInitialized_15IsVariableInitialized_16IsVariableInitialized_17IsVariableInitialized_18IsVariableInitialized_19*
N*
_output_shapes
:*
T0
*

axis 
:

LogicalNot
LogicalNotpack*
_output_shapes
:
�
Const_1Const*
_output_shapes
:*
dtype0*�
value�B�Bglobal_stepBhiddenlayer_0/weights/part_0Bhiddenlayer_0/biases/part_0Bhiddenlayer_1/weights/part_0Bhiddenlayer_1/biases/part_0Bdnn_logits/weights/part_0Bdnn_logits/biases/part_0Bcentered_bias_weightB
mean/totalB
mean/countBaccuracy/totalBaccuracy/countBrecall/true_positives/countBrecall/false_negatives/countBprecision/true_positives/countBprecision/false_positives/countBmean_absolute_error/totalBmean_absolute_error/countBmean_squared_error/totalBmean_squared_error/count
[
$report_uninitialized_variables/ShapeShapeConst_1*
_output_shapes
:*
T0
t
*report_uninitialized_variables/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB:
|
)report_uninitialized_variables/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
$report_uninitialized_variables/SliceSlice$report_uninitialized_variables/Shape*report_uninitialized_variables/Slice/begin)report_uninitialized_variables/Slice/size*
_output_shapes
: *
T0*
Index0
r
0report_uninitialized_variables/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
.report_uninitialized_variables/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:
���������
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
.report_uninitialized_variables/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
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
&report_uninitialized_variables/SqueezeSqueeze$report_uninitialized_variables/Where*
squeeze_dims
*#
_output_shapes
:���������*
T0	
�
%report_uninitialized_variables/GatherGather&report_uninitialized_variables/Reshape&report_uninitialized_variables/Squeeze*#
_output_shapes
:���������*
validate_indices(*
Tindices0	*
Tparams0"
��$e       ��Zi	�~ ��`�A�*W

recall    


MAE�9o@

accuracy/��>

loss���?


MSE�jB

	precision    0�w�e       ��Zi	����`�A�*W

recall    


MAE��L@

accuracy��	?

loss���?


MSE|"�A

	precision    ڔ�e       ��Zi	S��`�A�*W

recall    


MAE�E@

accuracy �?

loss�?


MSE`�A

	precision    H���e       ��Zi	:�3��`�A�	*W

recall    


MAE$�5@

accuracyn?

lossl�?


MSE�s�A

	precision    #t�e       ��Zi	��K��`�A�*W

recall���>


MAEx�$@

accuracyk�?

loss�	�?


MSE���A

	precision  �?V�}�e       ��Zi	ڶf��`�A�*W

recall��*?


MAE��@

accuracy��!?

losse�?


MSEh�A

	precision  �?ށQe       ��Zi	�y��`�A�*W

recallrG?


MAEKB@

accuracy=�#?

loss��?


MSEe�A

	precision  �?��(#e       ��Zi	����`�A�*W

recall  @?


MAE�h@

accuracy+;(?

loss�yz?


MSE��A

	precision  �?�
�e       ��Zi	M.ñ�`�A�*W

recallfff?


MAE�>	@

accuracy�,?

lossIUq?


MSEl@�A

	precision  �?�q��e       ��Zi	Iƶ�`�A�*W

recall]t?


MAE��@

accuracy'�.?

lossQ�h?


MSE�$~A

	precision  �?�x_e       ��Zi	ݻ�`�A�*W

recallGXn?


MAE���?

accuracy�c2?

lossp�`?


MSE�yqA

	precision  �?��'e       ��Zi	�v���`�A�*W

recall�)r?


MAE���?

accuracy+25?

loss��Y?


MSE��gA

	precision  �?]�#�e       ��Zi	b���`�A�*W

recall�oy?


MAE�h�?

accuracyH�7?

lossE�S?


MSEdj^A

	precision  �?�.J,e       ��Zi	� ��`�A� *W

recall��y?


MAE���?

accuracy��8?

loss3�N?


MSE�XZA

	precision��y?ֈYe       ��Zi	��G��`�A�#*W

recall�.z?


MAE3��?

accuracy�/:?

loss&�I?


MSE��RA

	precision�.z?�z��e       ��Zi	��l��`�A�%*W

recallb'v?


MAER��?

accuracyCu<?

loss�"F?


MSE�KA

	precision��z?Z�6+e       ��Zi	�����`�A�'*W

recall߰v?


MAE���?

accuracy�>?

loss!�B?


MSE�hGA

	precision_B{?	��e       ��Zi	�ا��`�A�**W

recallwww?


MAEvt�?

accuracy��??

loss�??


MSE��BA

	precision8�{?Fr�e       ��Zi	/����`�A�,*W

recall�w?


MAE6��?

accuracy�w@?

lossD=?


MSEE�?A

	precision��{?j��e       ��Zi	�F���`�A�.*W

recall  x?


MAE��?

accuracyɰ@?

loss�;?


MSE֎=A

	precision��{?�bx�e       ��Zi	�7��`�A�1*W

recall�x?


MAE�8�?

accuracy� A?

loss%L9?


MSE >A

	precision  |?E*�e       ��Zi	�*_��`�A�3*W

recall>x?


MAEQ8�?

accuracy~A?

lossBS7?


MSE?R=A

	precision�|?��#�e       ��Zi	�����`�A�5*W

recallh�x?


MAE�u�?

accuracy[B?

loss��5?


MSE,�;A

	precision<<|?��j[e       ��Zi	Pΰ��`�A�8*W

recall��x?


MAE�s�?

accuracy�C?

loss�@4?


MSEf�8A

	precision�d|?2��e       ��Zi	����`�A�:*W

recall�y?


MAE1��?

accuracy��C?

loss��2?


MSE9�7A

	precision?~|?��+�e       ��Zi	����`�A�<*W

recall`,y?


MAEaҿ?

accuracy�D?

loss�1?


MSE��5A

	precisiona�|?��~e       ��Zi	�� �`�A�?*W

recall^Cy?


MAE��?

accuracy�D?

lossf:0?


MSE��2A

	precision0�|?�Vۻe       ��Zi	�r�`�A�A*W

recall܄y?


MAE���?

accuracy]^E?

loss_/?


MSE�1A

	precision˷|?��.�e       ��Zi	��2�`�A�C*W

recall��y?


MAEzĻ?

accuracy�RE?

loss��-?


MSEӷ1A

	precisionn�|?�b�e       ��Zi	�EM�`�A�F*W

recallԭy?


MAE���?

accuracy
�E?

loss�,?


MSEc0A

	precision��|?��c�e       ��Zi	&�j"�`�A�H*W

recall��y?


MAE���?

accuracy��F?

lossڶ+?


MSE��/A

	precision��|?��ke       ��Zi	ϯz'�`�A�K*W

recall�.z?


MAE~e�?

accuracy4TG?

loss��*?


MSE�',A

	precision�}?{�e       ��Zi	��,�`�A�M*W

recallmz?


MAEN�?

accuracy;�G?

loss�)?


MSE�*+A

	precision�}?���>e       ��Zi	��1�`�A�O*W

recall�.z?


MAE|�?

accuracy�,H?

loss�(?


MSEB�)A

	precision�}?U�he       ��Zi	̯6�`�A�R*W

recall�_z?


MAE�$�?

accuracyXqH?

loss(?


MSEY)A

	precision�'}?���e       ��Zi	�ؿ;�`�A�T*W

recallq�w?


MAE���?

accuracy��H?

lossTU'?


MSE�a(A

	precisionP?}?���e       ��Zi	J�@�`�A�V*W

recall>x?


MAE�V�?

accuracyI?

loss&�&?


MSE�(A

	precision_\}?xIc~e       ��Zi	��E�`�A�Y*W

recallcex?


MAE��?

accuracyClI?

lossVa&?


MSE�&A

	precisionj}?�q�'e       ��Zi	JK�`�A�[*W

recallcex?


MAE��?

accuracy�wI?

loss�i%?


MSE�A&A

	precisionj}?��&�e       ��Zi	} 2P�`�A�]*W

recall��x?


MAE®?

accuracy�I?

loss��$?


MSE��&A

	precision��}?�'a�e       ��Zi	M�PU�`�A�`*W

recall��x?


MAE���?

accuracy��I?

loss�L$?


MSE_�$A

	precision��}?Q� ee       ��Zi	_~Z�`�A�b*W

recall5�x?


MAE���?

accuracy(.J?

loss)�#?


MSE�B$A

	precisionى}?�І�e       ��Zi	c�_�`�A�d*W

recall5�x?


MAEv�?

accuracy�[J?

loss\-#?


MSEo#A

	precisionى}?�O�e       ��Zi	��d�`�A�g*W

recall�y?


MAE&!�?

accuracy`PJ?

loss
�"?


MSEz�#A

	precision/�}?K��se       ��Zi	�G j�`�A�i*W

recall�y?


MAEc֪?

accuracyg�J?

loss�4"?


MSE�"A

	precision/�}?o���e       ��Zi	
�3o�`�A�k*W

recallB�x?


MAE�j�?

accuracy�rJ?

loss�!?


MSE��"A

	precision��}?�:Jye       ��Zi	��ft�`�A�n*W

recall��x?


MAE���?

accuracy6�J?

lossA!?


MSE"A

	precision��}?����e       ��Zi	2��y�`�A�p*W

recall�y?


MAE
=�?

accuracy��J?

loss�� ?


MSEA�"A

	precision/�}?���/e       ��Zi	��~�`�A�r*W

recall�$y?


MAE�=�?

accuracy�[J?

loss!?


MSE>d#A

	precision8�}?3&NDe       ��Zi	N溃�`�A�u*W

recall�y?


MAE�Ъ?

accuracyn�J?

loss�?


MSE`"A

	precision/�}?�$��e       ��Zi	�Ј�`�A�w*W

recall�$y?


MAEO��?

accuracyn�J?

lossV�?


MSE�H"A

	precision8�}?��ce       ��Zi	
����`�A�y*W

recall�y?


MAEc�?

accuracyDK?

loss�?


MSE�a!A

	precision��}?s�˿e       ��Zi	7?��`�A�|*W

recallx{?


MAE���?

accuracyR�K?

lossF�?


MSE^�A

	precision۶}?��0e       ��Zi	>���`�A�~*W

recallx{?


MAEc�?

accuracyR�K?

lossm?


MSE��A

	precision۶}?��ȯf       r;�j	����`�A�*W

recallx{?


MAE�ߧ?

accuracy"�K?

loss�+?


MSE��A

	precisionx{?|F�f       r;�j	��#��`�A��*W

recall?�{?


MAE �?

accuracy��K?

loss9�?


MSE�A

	precision?�{?K���f       r;�j	z'M��`�A̅*W

recall?�{?


MAE�?

accuracy��K?

loss�S?


MSEf�A

	precision?�{?�f       r;�j	q�{��`�A��*W

recall?�{?


MAE �?

accuracy�L?

loss#?


MSE+2A

	precision?�{?���Wf       r;�j	緆��`�A��*W

recallx{?


MAE�¦?

accuracy��K?

loss��?


MSE�A

	precisionx{?���f       r;�j	Q���`�AЌ*W

recallx{?


MAE�4�?

accuracy��K?

lossĴ?


MSE۟A

	precisionx{?��Yf       r;�j	�5û�`�A��*W

recallx{?


MAE*h�?

accuracy��K?

loss�g?


MSE�A

	precisionx{?V��?f       r;�j	6����`�A��*W

recall?�{?


MAEޚ�?

accuracy�L?

loss�e?


MSE�|A

	precision?�{?��"�f       r;�j	z8��`�Aԓ*W

recall?�{?


MAEZ~�?

accuracyg/L?

loss�$?


MSEuA

	precision?�{?;��f       r;�j	�K+��`�A��*W

recall?�{?


MAE�?

accuracy�QL?

loss�t?


MSE%<A

	precision?�{?�?�f       r;�j	[�M��`�A��*W

recall?�{?


MAE�?

accuracy��L?

loss`~?


MSE��A

	precision?�{?��!�f       r;�j	Nn��`�Aؚ*W

recall?�{?


MAE{O�?

accuracyv�L?

loss�?


MSEY�A

	precision?�{?���Hf       r;�j	�w���`�A��*W

recall?�{?


MAE�v�?

accuracy�L?

loss��?


MSE�A

	precision?�{?t�f       r;�j	"����`�A��*W

recall?�{?


MAE㇣?

accuracyL�L?

lossĭ?


MSE�,A

	precision?�{?s�%"f       r;�j	ٜ���`�Aܡ*W

recall�{?


MAE�N�?

accuracy�M?

loss��?


MSE\�A

	precision�{?�t)f       r;�j	h����`�A��*W

recall�{?


MAEⴢ?

accuracy�WM?

loss�Q?


MSE	jA

	precision�{?��lf       r;�j	�	��`�A��*W

recall�{?


MAE���?

accuracy�nM?

loss�A?


MSE7XA

	precision�{?Z��f       r;�j	�"��`�A�*W

recall�{?


MAEW��?

accuracya�M?

lossI�?


MSE�A

	precision�{?Y���f       r;�j	�r6��`�A��*W

recall�{?


MAE���?

accuracya�M?

loss̼?


MSEYA

	precision�{?��N�f       r;�j	{fG��`�A��*W

recall�{?


MAE�Ġ?

accuracy��M?

loss��?


MSE9eA

	precision�{?�Zx�f       r;�j	@^�`�A�*W

recall�{?


MAE��?

accuracy��M?

loss0X?


MSE�oA

	precision�{?�Ќf       r;�j	{�q�`�A��*W

recall�{?


MAEfѢ?

accuracy*zM?

lossq?


MSE��A

	precision�{?�9]f       r;�j	���`�A��*W

recall�{?


MAEl��?

accuracy8�M?

loss%?


MSE�A

	precision�{?��f       r;�j	�\��`�A�*W

recall�{?


MAE��?

accuracy1�M?

loss #?


MSE�A

	precision�{?!���f       r;�j	Sɶ�`�A��*W

recall�{?


MAE�B�?

accuracy��M?

loss�
?


MSE�3A

	precision�}?�h�f       r;�j	V��`�A��*W

recall��{?


MAEC��?

accuracyh�M?

loss�?


MSE�A

	precision	�}?>굚f       r;�j	���!�`�A�*W

recall��{?


MAE���?

accuracy8�M?

lossà?


MSE��A

	precision	�}?����f       r;�j	��'�`�A��*W

recall��{?


MAE���?

accuracy8�M?

loss�?


MSE"eA

	precision	�}?��Ϣf       r;�j	ʺ-,�`�A��*W

recall��{?


MAE��?

accuracy��M?

loss�b?


MSE�A

	precision	�}?�DZ�f       r;�j	��B1�`�A��*W

recall8�{?


MAE��?

accuracy�N?

loss�m?


MSEJA

	precision��}?A���f       r;�j	��W6�`�A��*W

recall8�{?


MAE�۠?

accuracyoN?

lossZ?


MSEzA

	precision��}?�md�f       r;�j	oeu;�`�A��*W

recall8�{?


MAE�t�?

accuracy<N?

lossu?


MSEW�A

	precision��}?r$�{f       r;�j	n�@�`�A��*W

recall��{?


MAE�/�?

accuracy�N?

loss��?


MSE�#A

	precision	�}?�24�f       r;�j	�E�`�A��*W

recall��{?


MAEy]�?

accuracy�iN?

loss_�?


MSE4TA

	precision��}?���7f       r;�j	��J�`�A��*W

recallՋy?


MAE��?

accuracy�0N?

loss��?


MSE0�A

	precision��}?����f       r;�j	q� P�`�A��*W

recallՋy?


MAE�/�?

accuracyF^N?

loss�?


MSEA

	precision��}?�4�f       r;�j	��,U�`�A��*W

recallՋy?


MAE:�?

accuracy�RN?

loss"�?


MSE1�A

	precision��}?S��f       r;�j	�]hZ�`�A��*W

recallՋy?


MAEÞ?

accuracyF^N?

loss�c?


MSE��A

	precision��}?I�Of       r;�j	ꛏ_�`�A��*W

recallՋy?


MAE��?

accuracy�RN?

loss
[?


MSE	�A

	precision��}?���f       r;�j	7��d�`�A��*W

recallՋy?


MAE�Ξ?

accuracyuN?

loss!?


MSE�A

	precision��}?�Q)f       r;�j	^ףi�`�A��*W

recallՋy?


MAE��?

accuracy�N?

lossA?


MSEǬA

	precision��}?L�2f       r;�j	�	�n�`�A��*W

recallՋy?


MAEx��?

accuracy�N?

loss��?


MSESrA

	precision��}?�%\ f       r;�j	 g�s�`�A��*W

recallՋy?


MAE�ȝ?

accuracy�N?

loss��?


MSE�qA

	precision��}?~uQ�f       r;�j	̂�x�`�A��*W

recall��y?


MAEx��?

accuracy�N?

loss5�?


MSE/CA

	precision��}?���}f       r;�j	��~�`�A��*W

recall��y?


MAEr$�?

accuracyvGN?

loss~M?


MSE��A

	precision��}?�yx�f       r;�j	6W2��`�A��*W

recall$�y?


MAE���?

accuracy�N?

lossQ�?


MSE��A

	precisionG�}?8\� f       r;�j	�K]��`�A��*W

recall$�y?


MAEO�?

accuracy��N?

loss�W?


MSE��A

	precisionG�}?�hf       r;�j	�����`�A��*W

recall$�y?


MAE�ȝ?

accuracy��N?

loss��?


MSE��A

	precisionG�}?L8��f       r;�j	�}���`�A��*W

recall$�y?


MAE�:�?

accuracy��N?

loss_�?


MSEIA

	precisionG�}?4@��f       r;�j	�З�`�A��*W

recall$�y?


MAE3��?

accuracy�N?

loss�?


MSE!�A

	precisionG�}?X>7 f       r;�j	|���`�A��*W

recall$�y?


MAE�?

accuracy�N?

lossү?


MSE�}A

	precisionG�}?��=�f       r;�j	N��`�A��*W

recall��y?


MAE� �?

accuracy��N?

lossh~?


MSEn�A

	precision��}?��wf       r;�j	H(��`�A��*W

recall��y?


MAEc�?

accuracy��N?

loss�v?


MSE��A

	precision��}?Źu>f       r;�j	
��`�A��*W

recall��y?


MAE���?

accuracy��N?

loss/~?


MSE4KA

	precision��}?��`�f       r;�j	4p��`�A��*W

recallv�y?


MAE�Z�?

accuracybBO?

loss�?


MSE
�A

	precision��}?��Epf       r;�j	M��`�A�*W

recallv�y?


MAEl�?

accuracyi{O?

loss��?


MSEw>A

	precision��}?����f       r;�j	U3��`�A��*W

recallv�y?


MAEw>�?

accuracy9�O?

loss.�?


MSE:&A

	precision��}?Ǯ#7f       r;�j	�8��`�A��*W

recallv�y?


MAE�'�?

accuracy2YO?

lossܺ?


MSE��A

	precision��}?�iVf       r;�j	 ��`�A�*W

recallv�y?


MAE�ƚ?

accuracyp�O?

loss�d?


MSE��A

	precision��}?R�5`f       r;�j	���`�A��*W

recallv�y?


MAE�=�?

accuracyؿO?

lossM?


MSE��A

	precision��}?:�_�f       r;�j	9S��`�Ač*W

recallv�y?


MAEL�?

accuracy��O?

lossF)?


MSEZ�A

	precision��}?G��f       r;�j	��(��`�A��*W

recallv�y?


MAE��?

accuracy��O?

lossn?


MSEa�A

	precision��}?��Af       r;�j	^2��`�A��*W

recallv�y?


MAE��?

accuracy@�O?

lossM�?


MSE9�A

	precision��}?b�oSf       r;�j	�GC��`�AȔ*W

recallv�y?


MAE�p�?

accuracyw�O?

loss��?


MSE��A

	precision��}?�F�f       r;�j	q@X��`�A��*W

recallv�y?


MAE��?

accuracyw�O?

loss��?


MSEa�A

	precision��}?���f       r;�j	To��`�A��*W

recallv�y?


MAER{�?

accuracy�1P?

loss6L?


MSEJ�A

	precision��}?��f       r;�j	�����`�A̛*W

recallv�y?


MAE�7�?

accuracyw�O?

loss�C?


MSEވA

	precision��}?�xs�f       r;�j	���`�A��*W

recall��y?


MAER{�?

accuracy~&P?

loss�v?


MSEğA

	precisiona�}?bF8f       r;�j	���`�A��*W

recall��y?


MAE���?

accuracy�1P?

lossmo?


MSE��A

	precisiona�}?vѰ�f       r;�j	ա���`�AТ*W

recall��y?


MAE �?

accuracyN=P?

loss�	?


MSE(%A

	precisiona�}?f�m	f       r;�j	׿�`�A��*W

recall��y?


MAE���?

accuracy�HP?

lossI�?


MSE��A

	precisiona�}?I�|6f       r;�j	j���`�A��*W

recall��y?


MAEKB�?

accuracyP?

loss�[?


MSE9A

	precisiona�}?��İf       r;�j	S��`�Aԩ*W

recall��y?


MAE�?

accuracy�jP?

loss�?


MSE��A

	precisiona�}?;Y\f       r;�j	���`�A��*W

recallv�y?


MAE�0�?

accuracyTP?

loss�{?


MSE
�A

	precision��}?��f       r;�j	M^�`�A��*W

recall��y?


MAE�ɖ?

accuracyUvP?

loss�?


MSE֎A

	precisiona�}?NU��f       r;�j	���`�Aذ*W

recall��{?


MAE�h�?

accuracy%�P?

loss	�?


MSE=A

	precisiona�}?�m�f       r;�j	z7 �`�A��*W

recall��{?


MAE�$�?

accuracy��P?

loss�?


MSEضA

	precisiona�}?����f       r;�j	�IV%�`�A��*W

recall��{?


MAE{��?

accuracy��P?

loss-?


MSE�DA

	precisiona�}?�6�#f       r;�j	��*�`�Aܷ*W

recall��{?


MAE���?

accuracyUvP?

lossA:?


MSE2#A

	precisiona�}?��5f       r;�j	�V�/�`�A��*W

recall��{?


MAEۄ�?

accuracy,�P?

lossL�?


MSE�A

	precisiona�}?��K�f       r;�j	u��4�`�A��*W

recall`�{?


MAECc�?

accuracy\�P?

loss[�?


MSE�)A

	precision��}?��)*f       r;�j	.�9�`�A�*W

recall`�{?


MAE�ٔ?

accuracy�
Q?

loss�<?


MSEC�A

	precision��}?���}f       r;�j	��?�`�A��*W

recall`�{?


MAEn�?

accuracy��P?

lossR�?


MSEXMA

	precision��}?���f       r;�j	��BD�`�A��*W

recall`�{?


MAE�(�?

accuracy�CQ?

loss�?


MSE��
A

	precision��}?Й%f       r;�j	+hI�`�A��*W

recall��{?


MAE^Δ?

accuracy3�P?

loss�?


MSE�A

	precision0�}?�p�f       r;�j	)��N�`�A��*W

recall`�{?


MAE�~�?

accuracy:8Q?

loss��?


MSElRA

	precision��}?�V?�f       r;�j	�ӰS�`�A��*W

recall`�{?


MAE���?

accuracy�,Q?

loss٥?


MSE��A

	precision��}??�~�f       r;�j	���X�`�A��*W

recall`�{?


MAEsy�?

accuracy��P?

loss?i?


MSE�eA

	precision��}?T�f       r;�j	0�^�`�A��*W

recallm�{?


MAEﶓ?

accuracyqZQ?

loss\�?


MSE'v
A

	precision|�}?y���f       r;�j	`N+c�`�A��*W

recall`�{?


MAE5�?

accuracy�
Q?

lossG?


MSE�A

	precision��}?"#�af       r;�j	Ѡ,h�`�A��*W

recallm�{?


MAEﶓ?

accuracyqZQ?

loss%a?


MSE�
A

	precision|�}?y+�f       r;�j	Ū2m�`�A��*W

recallm�{?


MAE��?

accuracyqZQ?

loss_J?


MSE4]
A

	precision|�}?�df       r;�j	�p8r�`�A��*W

recallm�{?


MAEsӓ?

accuracyAqQ?

loss�8?


MSE�
A

	precision|�}?��zf       r;�j	�w7w�`�A��*W

recall|�}?


MAE�3�?

accuracy��Q?

lossR\?


MSE�6
A

	precision|�}?�U)�f       r;�j	�?|�`�A��*W

recall|�}?


MAE��?

accuracy�CQ?

lossYt?


MSE�A

	precision|�}?JV�rf       r;�j	G�H��`�A��*W

recall0�}?


MAE�ٔ?

accuracy�,Q?

lossT�?


MSEƾA

	precision0�}?'6+f       r;�j	��V��`�A��*W

recall0�}?


MAE'�?

accuracyQ?

loss<r?


MSEbA

	precision0�}?���f       r;�j	��b��`�A��*W

recall��}?


MAE��?

accuracy:8Q?

lossJ�?


MSESA

	precision��}?�&:�f       r;�j	��x��`�A��*W

recall0�}?


MAEB�?

accuracyAqQ?

loss?


MSEs�
A

	precision0�}?/�f       r;�j	њ���`�A��*W

recall0�}?


MAE�ޓ?

accuracy�|Q?

lossB�?


MSE�
A

	precision0�}?)��f       r;�j	�'���`�A��*W

recalla�}?


MAE�~�?

accuracyqZQ?

loss~�?


MSEvA

	precisiona�}?,�Tf       r;�j	�A�`�A��*W

recalla�}?


MAE'�?

accuracyQ?

loss��?


MSE�xA

	precisiona�}?
]�f       r;�j	����`�A��*W

recalla�}?


MAE��?

accuracy�CQ?

loss��?


MSE��A

	precisiona�}?,�	0f       r;�j	�,��`�A��*W

recall|�}?


MAEԔ?

accuracy:8Q?

lossT�?


MSE��A

	precision|�}?6���f       r;�j	0oD��`�A��*W

recall|�}?


MAE��?

accuracy�CQ?

loss��?


MSE��A

	precision|�}?��˃f       r;�j	��f��`�A��*W

recall0�}?


MAEb�?

accuracyqZQ?

loss��?


MSE��A

	precision0�}?p��f       r;�j	7���`�A��*W

recall��}?


MAE�g�?

accuracy�eQ?

loss�\?


MSE~wA

	precision��}?$��$f       r;�j	sT���`�A��*W

recall0�}?


MAE���?

accuracy	OQ?

losso�?


MSEu�A

	precision0�}?FmS�f       r;�j	T���`�A��*W

recall��}?


MAE��?

accuracy�Q?

loss�I?


MSE�TA

	precision��}?�f       r;�j	u���`�A��*W

recall|�}?


MAE۱�?

accuracy	OQ?

loss��?


MSEh�A

	precision|�}?��4Rf       r;�j	Q����`�A܂*W

recall0�}?


MAEC��?

accuracyqZQ?

lossCe?


MSE�A

	precision0�}?���f       r;�j	�=���`�A��*W

recall0�}?


MAE s�?

accuracy�|Q?

loss�1?


MSEѪA

	precision0�}?A\.�