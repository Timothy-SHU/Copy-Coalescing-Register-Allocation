; ModuleID = 'source/base/function_lib_cutoff.cc'
source_filename = "source/base/function_lib_cutoff.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::Functions::CutOffFunctionBase" = type <{ %"class.dealii::Function.base", [4 x i8], %"class.dealii::Point", double, i32, [4 x i8] }>
%"class.dealii::Function.base" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::FunctionTime" = type { ptr, double }
%"class.dealii::Subscriptor" = type { ptr, i32, %"class.std::map", ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [1 x double] }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Vector" = type { %"class.dealii::Subscriptor", i32, i32, ptr }
%"class.dealii::Functions::CutOffFunctionBase.16" = type <{ %"class.dealii::Function.base.18", [4 x i8], %"class.dealii::Point.13", double, i32, [4 x i8] }>
%"class.dealii::Function.base.18" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::Point.13" = type { %"class.dealii::Tensor.14" }
%"class.dealii::Tensor.14" = type { [2 x double] }
%"class.dealii::Functions::CutOffFunctionBase.29" = type <{ %"class.dealii::Function.base.31", [4 x i8], %"class.dealii::Point.26", double, i32, [4 x i8] }>
%"class.dealii::Function.base.31" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::Point.26" = type { %"class.dealii::Tensor.27" }
%"class.dealii::Tensor.27" = type { [3 x double] }

$_ZN6dealii9Functions20CutOffFunctionLinftyILi1EEC5EdNS_5PointILi1EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions20CutOffFunctionLinftyILi2EEC5EdNS_5PointILi2EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions20CutOffFunctionLinftyILi3EEC5EdNS_5PointILi3EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi1EEC5EdNS_5PointILi1EEEjj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi2EEC5EdNS_5PointILi2EEEjj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi3EEC5EdNS_5PointILi3EEEjj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi1EEC5EdNS_5PointILi1EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi2EEC5EdNS_5PointILi2EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi3EEC5EdNS_5PointILi3EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev = comdat any

$_ZN6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev = comdat any

$_ZN6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED0Ev = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED0Ev = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED0Ev = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev = comdat any

$_ZN6dealii9Functions18CutOffFunctionBaseILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED0Ev = comdat any

$_ZN6dealii9Functions18CutOffFunctionBaseILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED0Ev = comdat any

$_ZN6dealii9Functions18CutOffFunctionBaseILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED0Ev = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionLinftyILi1EEE = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionLinftyILi2EEE = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionLinftyILi3EEE = comdat any

$_ZTVN6dealii9Functions16CutOffFunctionW1ILi1EEE = comdat any

$_ZTVN6dealii9Functions16CutOffFunctionW1ILi2EEE = comdat any

$_ZTVN6dealii9Functions16CutOffFunctionW1ILi3EEE = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionCinftyILi1EEE = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionCinftyILi2EEE = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionCinftyILi3EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionLinftyILi1EEE = comdat any

$_ZTSN6dealii9Functions18CutOffFunctionBaseILi1EEE = comdat any

$_ZTSN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionLinftyILi1EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionLinftyILi2EEE = comdat any

$_ZTSN6dealii9Functions18CutOffFunctionBaseILi2EEE = comdat any

$_ZTSN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionLinftyILi2EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionLinftyILi3EEE = comdat any

$_ZTSN6dealii9Functions18CutOffFunctionBaseILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionLinftyILi3EEE = comdat any

$_ZTSN6dealii9Functions16CutOffFunctionW1ILi1EEE = comdat any

$_ZTIN6dealii9Functions16CutOffFunctionW1ILi1EEE = comdat any

$_ZTSN6dealii9Functions16CutOffFunctionW1ILi2EEE = comdat any

$_ZTIN6dealii9Functions16CutOffFunctionW1ILi2EEE = comdat any

$_ZTSN6dealii9Functions16CutOffFunctionW1ILi3EEE = comdat any

$_ZTIN6dealii9Functions16CutOffFunctionW1ILi3EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionCinftyILi1EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionCinftyILi1EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionCinftyILi2EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionCinftyILi2EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionCinftyILi3EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionCinftyILi3EEE = comdat any

$_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE = comdat any

$_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE = comdat any

$_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE = comdat any

@_ZTVN6dealii9Functions20CutOffFunctionLinftyILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi1EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20CutOffFunctionLinftyILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi2EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20CutOffFunctionLinftyILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi3EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions16CutOffFunctionW1ILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi1EEE, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions16CutOffFunctionW1ILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi2EEE, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions16CutOffFunctionW1ILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi3EEE, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20CutOffFunctionCinftyILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi1EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20CutOffFunctionCinftyILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi2EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20CutOffFunctionCinftyILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi3EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii9Functions20CutOffFunctionLinftyILi1EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionLinftyILi1EEE\00", comdat, align 1
@_ZTSN6dealii9Functions18CutOffFunctionBaseILi1EEE = linkonce_odr dso_local constant [46 x i8] c"N6dealii9Functions18CutOffFunctionBaseILi1EEE\00", comdat, align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii12FunctionTimeE = external constant ptr
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi1EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions18CutOffFunctionBaseILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTIN6dealii9Functions20CutOffFunctionLinftyILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionLinftyILi1EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions20CutOffFunctionLinftyILi2EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionLinftyILi2EEE\00", comdat, align 1
@_ZTSN6dealii9Functions18CutOffFunctionBaseILi2EEE = linkonce_odr dso_local constant [46 x i8] c"N6dealii9Functions18CutOffFunctionBaseILi2EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi2EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions18CutOffFunctionBaseILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTIN6dealii9Functions20CutOffFunctionLinftyILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionLinftyILi2EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions20CutOffFunctionLinftyILi3EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionLinftyILi3EEE\00", comdat, align 1
@_ZTSN6dealii9Functions18CutOffFunctionBaseILi3EEE = linkonce_odr dso_local constant [46 x i8] c"N6dealii9Functions18CutOffFunctionBaseILi3EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi3EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions18CutOffFunctionBaseILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTIN6dealii9Functions20CutOffFunctionLinftyILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionLinftyILi3EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions16CutOffFunctionW1ILi1EEE = weak_odr dso_local constant [44 x i8] c"N6dealii9Functions16CutOffFunctionW1ILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions16CutOffFunctionW1ILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions16CutOffFunctionW1ILi1EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions16CutOffFunctionW1ILi2EEE = weak_odr dso_local constant [44 x i8] c"N6dealii9Functions16CutOffFunctionW1ILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions16CutOffFunctionW1ILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions16CutOffFunctionW1ILi2EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions16CutOffFunctionW1ILi3EEE = weak_odr dso_local constant [44 x i8] c"N6dealii9Functions16CutOffFunctionW1ILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions16CutOffFunctionW1ILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions16CutOffFunctionW1ILi3EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions20CutOffFunctionCinftyILi1EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionCinftyILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions20CutOffFunctionCinftyILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionCinftyILi1EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions20CutOffFunctionCinftyILi2EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionCinftyILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions20CutOffFunctionCinftyILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionCinftyILi2EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions20CutOffFunctionCinftyILi3EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionCinftyILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions20CutOffFunctionCinftyILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionCinftyILi3EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE }, comdat, align 8
@_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE = linkonce_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions18CutOffFunctionBaseILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE = linkonce_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions18CutOffFunctionBaseILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE = linkonce_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions18CutOffFunctionBaseILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED0Ev] }, comdat, align 8

@_ZN6dealii9Functions20CutOffFunctionLinftyILi1EEC1EdNS_5PointILi1EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi1EEC2EdNS_5PointILi1EEEjj
@_ZN6dealii9Functions20CutOffFunctionLinftyILi2EEC1EdNS_5PointILi2EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi2EEC2EdNS_5PointILi2EEEjj
@_ZN6dealii9Functions20CutOffFunctionLinftyILi3EEC1EdNS_5PointILi3EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi3EEC2EdNS_5PointILi3EEEjj
@_ZN6dealii9Functions16CutOffFunctionW1ILi1EEC1EdNS_5PointILi1EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi1EEC2EdNS_5PointILi1EEEjj
@_ZN6dealii9Functions16CutOffFunctionW1ILi2EEC1EdNS_5PointILi2EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi2EEC2EdNS_5PointILi2EEEjj
@_ZN6dealii9Functions16CutOffFunctionW1ILi3EEC1EdNS_5PointILi3EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi3EEC2EdNS_5PointILi3EEEjj
@_ZN6dealii9Functions20CutOffFunctionCinftyILi1EEC1EdNS_5PointILi1EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi1EEC2EdNS_5PointILi1EEEjj
@_ZN6dealii9Functions20CutOffFunctionCinftyILi2EEC1EdNS_5PointILi2EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi2EEC2EdNS_5PointILi2EEEjj
@_ZN6dealii9Functions20CutOffFunctionCinftyILi3EEC1EdNS_5PointILi3EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi3EEC2EdNS_5PointILi3EEEjj

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi1EEC2EdNS_5PointILi1EEEjj(ptr noundef nonnull align 8 dereferenceable(116) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionLinftyILi1EEC5EdNS_5PointILi1EEEjj) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = load double, ptr %2, align 8, !tbaa !35
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  store double %6, ptr %8, align 8, !tbaa !35
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !59
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi1EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !35
  %12 = load double, ptr %1, align 8, !tbaa !35
  %13 = fsub double %11, %12
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double 0.000000e+00)
  %15 = tail call noundef double @sqrt(double noundef %14) #11
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %17 = load double, ptr %16, align 8, !tbaa !41
  %18 = fcmp olt double %15, %17
  %19 = select i1 %18, double 1.000000e+00, double 0.000000e+00
  br label %20

20:                                               ; preds = %3, %9
  %21 = phi double [ %19, %9 ], [ 0.000000e+00, %3 ]
  ret double %21
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i32 %6, %3
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = load ptr, ptr %2, align 8, !tbaa !62
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %53, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %34, %18 ]
  %20 = phi i32 [ 0, %15 ], [ %33, %18 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !63
  %22 = getelementptr inbounds %"class.dealii::Point", ptr %21, i64 %19
  %23 = load double, ptr %16, align 8, !tbaa !35
  %24 = load double, ptr %22, align 8, !tbaa !35
  %25 = fsub double %23, %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %25, double 0.000000e+00)
  %27 = tail call noundef double @sqrt(double noundef %26) #11
  %28 = load double, ptr %17, align 8, !tbaa !41
  %29 = fcmp olt double %27, %28
  %30 = select i1 %29, double 1.000000e+00, double 0.000000e+00
  %31 = load ptr, ptr %2, align 8, !tbaa !62
  %32 = getelementptr inbounds double, ptr %31, i64 %19
  store double %30, ptr %32, align 8, !tbaa !35
  %33 = add i32 %20, 1
  %34 = zext i32 %33 to i64
  %35 = load ptr, ptr %11, align 8, !tbaa !60
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %31 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 3
  %40 = icmp ugt i64 %39, %34
  br i1 %40, label %18, label %53, !llvm.loop !65

41:                                               ; preds = %4
  %42 = load ptr, ptr %2, align 8, !tbaa !68
  %43 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = icmp eq ptr %42, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = ptrtoint ptr %44 to i64
  %48 = ptrtoint ptr %42 to i64
  %49 = add i64 %47, -8
  %50 = sub i64 %49, %48
  %51 = and i64 %50, -8
  %52 = add i64 %51, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %42, i8 0, i64 %52, i1 false), !tbaa !35
  br label %53

53:                                               ; preds = %18, %46, %41, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  br label %13

12:                                               ; preds = %53, %3
  ret void

13:                                               ; preds = %8, %53
  %14 = phi i64 [ 0, %8 ], [ %55, %53 ]
  %15 = phi i32 [ 0, %8 ], [ %54, %53 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !63
  %17 = getelementptr inbounds %"class.dealii::Point", ptr %16, i64 %14
  %18 = load double, ptr %9, align 8, !tbaa !35
  %19 = load double, ptr %17, align 8, !tbaa !35
  %20 = fsub double %18, %19
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %20, double 0.000000e+00)
  %22 = tail call noundef double @sqrt(double noundef %21) #11
  %23 = load double, ptr %10, align 8, !tbaa !41
  %24 = fcmp olt double %22, %23
  %25 = select i1 %24, double 1.000000e+00, double 0.000000e+00
  %26 = load i32, ptr %11, align 8, !tbaa !59
  %27 = icmp eq i32 %26, -1
  %28 = load ptr, ptr %2, align 8, !tbaa !71
  %29 = getelementptr inbounds %"class.dealii::Vector", ptr %28, i64 %14, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !72
  %31 = icmp eq i32 %30, 0
  br i1 %27, label %32, label %42

32:                                               ; preds = %13
  br i1 %31, label %53, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %"class.dealii::Vector", ptr %28, i64 %14, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !74
  %36 = zext i32 %30 to i64
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  br label %38

38:                                               ; preds = %33, %38
  %39 = phi ptr [ %40, %38 ], [ %35, %33 ]
  store double %25, ptr %39, align 8, !tbaa !35
  %40 = getelementptr inbounds double, ptr %39, i64 1
  %41 = icmp eq ptr %40, %37
  br i1 %41, label %53, label %38, !llvm.loop !75

42:                                               ; preds = %13
  br i1 %31, label %48, label %43

43:                                               ; preds = %42
  %44 = zext i32 %30 to i64
  %45 = getelementptr inbounds %"class.dealii::Vector", ptr %28, i64 %14, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !74
  %47 = shl nuw nsw i64 %44, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %46, i8 0, i64 %47, i1 false), !tbaa !35
  br label %48

48:                                               ; preds = %43, %42
  %49 = getelementptr inbounds %"class.dealii::Vector", ptr %28, i64 %14, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  %51 = zext i32 %26 to i64
  %52 = getelementptr inbounds double, ptr %50, i64 %51
  store double %25, ptr %52, align 8, !tbaa !35
  br label %53

53:                                               ; preds = %38, %32, %48
  %54 = add i32 %15, 1
  %55 = zext i32 %54 to i64
  %56 = load ptr, ptr %4, align 8, !tbaa !69
  %57 = load ptr, ptr %2, align 8, !tbaa !71
  %58 = ptrtoint ptr %56 to i64
  %59 = ptrtoint ptr %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 88
  %62 = icmp ugt i64 %61, %55
  br i1 %62, label %13, label %12, !llvm.loop !76
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi2EEC2EdNS_5PointILi2EEEjj(ptr noundef nonnull align 8 dereferenceable(124) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionLinftyILi2EEC5EdNS_5PointILi2EEEjj) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca [2 x double], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !35
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa !35
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !77
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !82
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi2EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !82
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %20, %11 ]
  %13 = phi double [ 0.000000e+00, %9 ], [ %19, %11 ]
  %14 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %12
  %17 = load double, ptr %16, align 8, !tbaa !35
  %18 = fsub double %15, %17
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %13)
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %12, 0
  br i1 %21, label %11, label %22, !llvm.loop !83

22:                                               ; preds = %11
  %23 = tail call noundef double @sqrt(double noundef %19) #11
  %24 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !77
  %26 = fcmp olt double %23, %25
  %27 = select i1 %26, double 1.000000e+00, double 0.000000e+00
  br label %28

28:                                               ; preds = %3, %22
  %29 = phi double [ %27, %22 ], [ 0.000000e+00, %3 ]
  ret double %29
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i32 %6, %3
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = load ptr, ptr %2, align 8, !tbaa !62
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %61, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %15, %34
  %19 = phi i64 [ 0, %15 ], [ %42, %34 ]
  %20 = phi i32 [ 0, %15 ], [ %41, %34 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !84
  %22 = getelementptr inbounds %"class.dealii::Point.13", ptr %21, i64 %19
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ 0, %18 ], [ %32, %23 ]
  %25 = phi double [ 0.000000e+00, %18 ], [ %31, %23 ]
  %26 = getelementptr inbounds [2 x double], ptr %16, i64 0, i64 %24
  %27 = load double, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds [2 x double], ptr %22, i64 0, i64 %24
  %29 = load double, ptr %28, align 8, !tbaa !35
  %30 = fsub double %27, %29
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %25)
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %24, 0
  br i1 %33, label %23, label %34, !llvm.loop !83

34:                                               ; preds = %23
  %35 = tail call noundef double @sqrt(double noundef %31) #11
  %36 = load double, ptr %17, align 8, !tbaa !77
  %37 = fcmp olt double %35, %36
  %38 = select i1 %37, double 1.000000e+00, double 0.000000e+00
  %39 = load ptr, ptr %2, align 8, !tbaa !62
  %40 = getelementptr inbounds double, ptr %39, i64 %19
  store double %38, ptr %40, align 8, !tbaa !35
  %41 = add i32 %20, 1
  %42 = zext i32 %41 to i64
  %43 = load ptr, ptr %11, align 8, !tbaa !60
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %39 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 3
  %48 = icmp ugt i64 %47, %42
  br i1 %48, label %18, label %61, !llvm.loop !86

49:                                               ; preds = %4
  %50 = load ptr, ptr %2, align 8, !tbaa !68
  %51 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !68
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = ptrtoint ptr %52 to i64
  %56 = ptrtoint ptr %50 to i64
  %57 = add i64 %55, -8
  %58 = sub i64 %57, %56
  %59 = and i64 %58, -8
  %60 = add i64 %59, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %50, i8 0, i64 %60, i1 false), !tbaa !35
  br label %61

61:                                               ; preds = %34, %54, %49, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  br label %13

12:                                               ; preds = %61, %3
  ret void

13:                                               ; preds = %8, %61
  %14 = phi i64 [ 0, %8 ], [ %63, %61 ]
  %15 = phi i32 [ 0, %8 ], [ %62, %61 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !84
  %17 = getelementptr inbounds %"class.dealii::Point.13", ptr %16, i64 %14
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %27, %18 ]
  %20 = phi double [ 0.000000e+00, %13 ], [ %26, %18 ]
  %21 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %19
  %22 = load double, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds [2 x double], ptr %17, i64 0, i64 %19
  %24 = load double, ptr %23, align 8, !tbaa !35
  %25 = fsub double %22, %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %20)
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %19, 0
  br i1 %28, label %18, label %29, !llvm.loop !83

29:                                               ; preds = %18
  %30 = tail call noundef double @sqrt(double noundef %26) #11
  %31 = load double, ptr %10, align 8, !tbaa !77
  %32 = fcmp olt double %30, %31
  %33 = select i1 %32, double 1.000000e+00, double 0.000000e+00
  %34 = load i32, ptr %11, align 8, !tbaa !82
  %35 = icmp eq i32 %34, -1
  %36 = load ptr, ptr %2, align 8, !tbaa !71
  %37 = getelementptr inbounds %"class.dealii::Vector", ptr %36, i64 %14, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !72
  %39 = icmp eq i32 %38, 0
  br i1 %35, label %40, label %50

40:                                               ; preds = %29
  br i1 %39, label %61, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %"class.dealii::Vector", ptr %36, i64 %14, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = zext i32 %38 to i64
  %45 = getelementptr inbounds double, ptr %43, i64 %44
  br label %46

46:                                               ; preds = %41, %46
  %47 = phi ptr [ %48, %46 ], [ %43, %41 ]
  store double %33, ptr %47, align 8, !tbaa !35
  %48 = getelementptr inbounds double, ptr %47, i64 1
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %61, label %46, !llvm.loop !75

50:                                               ; preds = %29
  br i1 %39, label %56, label %51

51:                                               ; preds = %50
  %52 = zext i32 %38 to i64
  %53 = getelementptr inbounds %"class.dealii::Vector", ptr %36, i64 %14, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !74
  %55 = shl nuw nsw i64 %52, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %54, i8 0, i64 %55, i1 false), !tbaa !35
  br label %56

56:                                               ; preds = %51, %50
  %57 = getelementptr inbounds %"class.dealii::Vector", ptr %36, i64 %14, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !74
  %59 = zext i32 %34 to i64
  %60 = getelementptr inbounds double, ptr %58, i64 %59
  store double %33, ptr %60, align 8, !tbaa !35
  br label %61

61:                                               ; preds = %46, %40, %56
  %62 = add i32 %15, 1
  %63 = zext i32 %62 to i64
  %64 = load ptr, ptr %4, align 8, !tbaa !69
  %65 = load ptr, ptr %2, align 8, !tbaa !71
  %66 = ptrtoint ptr %64 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 88
  %70 = icmp ugt i64 %69, %63
  br i1 %70, label %13, label %12, !llvm.loop !87
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi3EEC2EdNS_5PointILi3EEEjj(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionLinftyILi3EEC5EdNS_5PointILi3EEEjj) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca [3 x double], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !35
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa !35
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !88
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !93
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi3EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !93
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %20, %11 ]
  %13 = phi double [ 0.000000e+00, %9 ], [ %19, %11 ]
  %14 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %12
  %17 = load double, ptr %16, align 8, !tbaa !35
  %18 = fsub double %15, %17
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %13)
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %11, !llvm.loop !94

22:                                               ; preds = %11
  %23 = tail call noundef double @sqrt(double noundef %19) #11
  %24 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !88
  %26 = fcmp olt double %23, %25
  %27 = select i1 %26, double 1.000000e+00, double 0.000000e+00
  br label %28

28:                                               ; preds = %3, %22
  %29 = phi double [ %27, %22 ], [ 0.000000e+00, %3 ]
  ret double %29
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i32 %6, %3
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = load ptr, ptr %2, align 8, !tbaa !62
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %61, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %15, %34
  %19 = phi i64 [ 0, %15 ], [ %42, %34 ]
  %20 = phi i32 [ 0, %15 ], [ %41, %34 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !95
  %22 = getelementptr inbounds %"class.dealii::Point.26", ptr %21, i64 %19
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ 0, %18 ], [ %32, %23 ]
  %25 = phi double [ 0.000000e+00, %18 ], [ %31, %23 ]
  %26 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 %24
  %27 = load double, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds [3 x double], ptr %22, i64 0, i64 %24
  %29 = load double, ptr %28, align 8, !tbaa !35
  %30 = fsub double %27, %29
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %25)
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, 3
  br i1 %33, label %34, label %23, !llvm.loop !94

34:                                               ; preds = %23
  %35 = tail call noundef double @sqrt(double noundef %31) #11
  %36 = load double, ptr %17, align 8, !tbaa !88
  %37 = fcmp olt double %35, %36
  %38 = select i1 %37, double 1.000000e+00, double 0.000000e+00
  %39 = load ptr, ptr %2, align 8, !tbaa !62
  %40 = getelementptr inbounds double, ptr %39, i64 %19
  store double %38, ptr %40, align 8, !tbaa !35
  %41 = add i32 %20, 1
  %42 = zext i32 %41 to i64
  %43 = load ptr, ptr %11, align 8, !tbaa !60
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %39 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 3
  %48 = icmp ugt i64 %47, %42
  br i1 %48, label %18, label %61, !llvm.loop !97

49:                                               ; preds = %4
  %50 = load ptr, ptr %2, align 8, !tbaa !68
  %51 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !68
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = ptrtoint ptr %52 to i64
  %56 = ptrtoint ptr %50 to i64
  %57 = add i64 %55, -8
  %58 = sub i64 %57, %56
  %59 = and i64 %58, -8
  %60 = add i64 %59, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %50, i8 0, i64 %60, i1 false), !tbaa !35
  br label %61

61:                                               ; preds = %34, %54, %49, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  br label %13

12:                                               ; preds = %61, %3
  ret void

13:                                               ; preds = %8, %61
  %14 = phi i64 [ 0, %8 ], [ %63, %61 ]
  %15 = phi i32 [ 0, %8 ], [ %62, %61 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !95
  %17 = getelementptr inbounds %"class.dealii::Point.26", ptr %16, i64 %14
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %27, %18 ]
  %20 = phi double [ 0.000000e+00, %13 ], [ %26, %18 ]
  %21 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %19
  %22 = load double, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 %19
  %24 = load double, ptr %23, align 8, !tbaa !35
  %25 = fsub double %22, %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %20)
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, 3
  br i1 %28, label %29, label %18, !llvm.loop !94

29:                                               ; preds = %18
  %30 = tail call noundef double @sqrt(double noundef %26) #11
  %31 = load double, ptr %10, align 8, !tbaa !88
  %32 = fcmp olt double %30, %31
  %33 = select i1 %32, double 1.000000e+00, double 0.000000e+00
  %34 = load i32, ptr %11, align 8, !tbaa !93
  %35 = icmp eq i32 %34, -1
  %36 = load ptr, ptr %2, align 8, !tbaa !71
  %37 = getelementptr inbounds %"class.dealii::Vector", ptr %36, i64 %14, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !72
  %39 = icmp eq i32 %38, 0
  br i1 %35, label %40, label %50

40:                                               ; preds = %29
  br i1 %39, label %61, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %"class.dealii::Vector", ptr %36, i64 %14, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = zext i32 %38 to i64
  %45 = getelementptr inbounds double, ptr %43, i64 %44
  br label %46

46:                                               ; preds = %41, %46
  %47 = phi ptr [ %48, %46 ], [ %43, %41 ]
  store double %33, ptr %47, align 8, !tbaa !35
  %48 = getelementptr inbounds double, ptr %47, i64 1
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %61, label %46, !llvm.loop !75

50:                                               ; preds = %29
  br i1 %39, label %56, label %51

51:                                               ; preds = %50
  %52 = zext i32 %38 to i64
  %53 = getelementptr inbounds %"class.dealii::Vector", ptr %36, i64 %14, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !74
  %55 = shl nuw nsw i64 %52, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %54, i8 0, i64 %55, i1 false), !tbaa !35
  br label %56

56:                                               ; preds = %51, %50
  %57 = getelementptr inbounds %"class.dealii::Vector", ptr %36, i64 %14, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !74
  %59 = zext i32 %34 to i64
  %60 = getelementptr inbounds double, ptr %58, i64 %59
  store double %33, ptr %60, align 8, !tbaa !35
  br label %61

61:                                               ; preds = %46, %40, %56
  %62 = add i32 %15, 1
  %63 = zext i32 %62 to i64
  %64 = load ptr, ptr %4, align 8, !tbaa !69
  %65 = load ptr, ptr %2, align 8, !tbaa !71
  %66 = ptrtoint ptr %64 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 88
  %70 = icmp ugt i64 %69, %63
  br i1 %70, label %13, label %12, !llvm.loop !98
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi1EEC2EdNS_5PointILi1EEEjj(ptr noundef nonnull align 8 dereferenceable(116) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions16CutOffFunctionW1ILi1EEC5EdNS_5PointILi1EEEjj) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = load double, ptr %2, align 8, !tbaa !35
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  store double %6, ptr %8, align 8, !tbaa !35
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !59
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi1EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !35
  %12 = load double, ptr %1, align 8, !tbaa !35
  %13 = fsub double %11, %12
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double 0.000000e+00)
  %15 = tail call noundef double @sqrt(double noundef %14) #11
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %17 = load double, ptr %16, align 8, !tbaa !41
  %18 = fcmp olt double %15, %17
  %19 = fsub double %17, %15
  %20 = select i1 %18, double %19, double 0.000000e+00
  br label %21

21:                                               ; preds = %3, %9
  %22 = phi double [ %20, %9 ], [ 0.000000e+00, %3 ]
  ret double %22
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i32 %6, %3
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = load ptr, ptr %2, align 8, !tbaa !62
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %54, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %35, %18 ]
  %20 = phi i32 [ 0, %15 ], [ %34, %18 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !63
  %22 = getelementptr inbounds %"class.dealii::Point", ptr %21, i64 %19
  %23 = load double, ptr %16, align 8, !tbaa !35
  %24 = load double, ptr %22, align 8, !tbaa !35
  %25 = fsub double %23, %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %25, double 0.000000e+00)
  %27 = tail call noundef double @sqrt(double noundef %26) #11
  %28 = load double, ptr %17, align 8, !tbaa !41
  %29 = fcmp olt double %27, %28
  %30 = fsub double %28, %27
  %31 = select i1 %29, double %30, double 0.000000e+00
  %32 = load ptr, ptr %2, align 8, !tbaa !62
  %33 = getelementptr inbounds double, ptr %32, i64 %19
  store double %31, ptr %33, align 8, !tbaa !35
  %34 = add i32 %20, 1
  %35 = zext i32 %34 to i64
  %36 = load ptr, ptr %11, align 8, !tbaa !60
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %32 to i64
  %39 = sub i64 %37, %38
  %40 = ashr exact i64 %39, 3
  %41 = icmp ugt i64 %40, %35
  br i1 %41, label %18, label %54, !llvm.loop !99

42:                                               ; preds = %4
  %43 = load ptr, ptr %2, align 8, !tbaa !68
  %44 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !68
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = ptrtoint ptr %45 to i64
  %49 = ptrtoint ptr %43 to i64
  %50 = add i64 %48, -8
  %51 = sub i64 %50, %49
  %52 = and i64 %51, -8
  %53 = add i64 %52, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %43, i8 0, i64 %53, i1 false), !tbaa !35
  br label %54

54:                                               ; preds = %18, %47, %42, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  br label %13

12:                                               ; preds = %54, %3
  ret void

13:                                               ; preds = %8, %54
  %14 = phi i64 [ 0, %8 ], [ %56, %54 ]
  %15 = phi i32 [ 0, %8 ], [ %55, %54 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !63
  %17 = getelementptr inbounds %"class.dealii::Point", ptr %16, i64 %14
  %18 = load double, ptr %9, align 8, !tbaa !35
  %19 = load double, ptr %17, align 8, !tbaa !35
  %20 = fsub double %18, %19
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %20, double 0.000000e+00)
  %22 = tail call noundef double @sqrt(double noundef %21) #11
  %23 = load double, ptr %10, align 8, !tbaa !41
  %24 = fcmp olt double %22, %23
  %25 = fsub double %23, %22
  %26 = select i1 %24, double %25, double 0.000000e+00
  %27 = load i32, ptr %11, align 8, !tbaa !59
  %28 = icmp eq i32 %27, -1
  %29 = load ptr, ptr %2, align 8, !tbaa !71
  %30 = getelementptr inbounds %"class.dealii::Vector", ptr %29, i64 %14, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !72
  %32 = icmp eq i32 %31, 0
  br i1 %28, label %33, label %43

33:                                               ; preds = %13
  br i1 %32, label %54, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %"class.dealii::Vector", ptr %29, i64 %14, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !74
  %37 = zext i32 %31 to i64
  %38 = getelementptr inbounds double, ptr %36, i64 %37
  br label %39

39:                                               ; preds = %34, %39
  %40 = phi ptr [ %41, %39 ], [ %36, %34 ]
  store double %26, ptr %40, align 8, !tbaa !35
  %41 = getelementptr inbounds double, ptr %40, i64 1
  %42 = icmp eq ptr %41, %38
  br i1 %42, label %54, label %39, !llvm.loop !75

43:                                               ; preds = %13
  br i1 %32, label %49, label %44

44:                                               ; preds = %43
  %45 = zext i32 %31 to i64
  %46 = getelementptr inbounds %"class.dealii::Vector", ptr %29, i64 %14, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !74
  %48 = shl nuw nsw i64 %45, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %47, i8 0, i64 %48, i1 false), !tbaa !35
  br label %49

49:                                               ; preds = %44, %43
  %50 = getelementptr inbounds %"class.dealii::Vector", ptr %29, i64 %14, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !74
  %52 = zext i32 %27 to i64
  %53 = getelementptr inbounds double, ptr %51, i64 %52
  store double %26, ptr %53, align 8, !tbaa !35
  br label %54

54:                                               ; preds = %39, %33, %49
  %55 = add i32 %15, 1
  %56 = zext i32 %55 to i64
  %57 = load ptr, ptr %4, align 8, !tbaa !69
  %58 = load ptr, ptr %2, align 8, !tbaa !71
  %59 = ptrtoint ptr %57 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 88
  %63 = icmp ugt i64 %62, %56
  br i1 %63, label %13, label %12, !llvm.loop !100
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi2EEC2EdNS_5PointILi2EEEjj(ptr noundef nonnull align 8 dereferenceable(124) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions16CutOffFunctionW1ILi2EEC5EdNS_5PointILi2EEEjj) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca [2 x double], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !35
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa !35
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !77
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !82
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi2EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !82
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %20, %11 ]
  %13 = phi double [ 0.000000e+00, %9 ], [ %19, %11 ]
  %14 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %12
  %17 = load double, ptr %16, align 8, !tbaa !35
  %18 = fsub double %15, %17
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %13)
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %12, 0
  br i1 %21, label %11, label %22, !llvm.loop !83

22:                                               ; preds = %11
  %23 = tail call noundef double @sqrt(double noundef %19) #11
  %24 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !77
  %26 = fcmp olt double %23, %25
  %27 = fsub double %25, %23
  %28 = select i1 %26, double %27, double 0.000000e+00
  br label %29

29:                                               ; preds = %3, %22
  %30 = phi double [ %28, %22 ], [ 0.000000e+00, %3 ]
  ret double %30
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i32 %6, %3
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %50

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = load ptr, ptr %2, align 8, !tbaa !62
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %62, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %15, %34
  %19 = phi i64 [ 0, %15 ], [ %43, %34 ]
  %20 = phi i32 [ 0, %15 ], [ %42, %34 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !84
  %22 = getelementptr inbounds %"class.dealii::Point.13", ptr %21, i64 %19
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ 0, %18 ], [ %32, %23 ]
  %25 = phi double [ 0.000000e+00, %18 ], [ %31, %23 ]
  %26 = getelementptr inbounds [2 x double], ptr %16, i64 0, i64 %24
  %27 = load double, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds [2 x double], ptr %22, i64 0, i64 %24
  %29 = load double, ptr %28, align 8, !tbaa !35
  %30 = fsub double %27, %29
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %25)
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %24, 0
  br i1 %33, label %23, label %34, !llvm.loop !83

34:                                               ; preds = %23
  %35 = tail call noundef double @sqrt(double noundef %31) #11
  %36 = load double, ptr %17, align 8, !tbaa !77
  %37 = fcmp olt double %35, %36
  %38 = fsub double %36, %35
  %39 = select i1 %37, double %38, double 0.000000e+00
  %40 = load ptr, ptr %2, align 8, !tbaa !62
  %41 = getelementptr inbounds double, ptr %40, i64 %19
  store double %39, ptr %41, align 8, !tbaa !35
  %42 = add i32 %20, 1
  %43 = zext i32 %42 to i64
  %44 = load ptr, ptr %11, align 8, !tbaa !60
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %40 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 3
  %49 = icmp ugt i64 %48, %43
  br i1 %49, label %18, label %62, !llvm.loop !101

50:                                               ; preds = %4
  %51 = load ptr, ptr %2, align 8, !tbaa !68
  %52 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = ptrtoint ptr %53 to i64
  %57 = ptrtoint ptr %51 to i64
  %58 = add i64 %56, -8
  %59 = sub i64 %58, %57
  %60 = and i64 %59, -8
  %61 = add i64 %60, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %51, i8 0, i64 %61, i1 false), !tbaa !35
  br label %62

62:                                               ; preds = %34, %55, %50, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  br label %13

12:                                               ; preds = %62, %3
  ret void

13:                                               ; preds = %8, %62
  %14 = phi i64 [ 0, %8 ], [ %64, %62 ]
  %15 = phi i32 [ 0, %8 ], [ %63, %62 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !84
  %17 = getelementptr inbounds %"class.dealii::Point.13", ptr %16, i64 %14
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %27, %18 ]
  %20 = phi double [ 0.000000e+00, %13 ], [ %26, %18 ]
  %21 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %19
  %22 = load double, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds [2 x double], ptr %17, i64 0, i64 %19
  %24 = load double, ptr %23, align 8, !tbaa !35
  %25 = fsub double %22, %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %20)
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %19, 0
  br i1 %28, label %18, label %29, !llvm.loop !83

29:                                               ; preds = %18
  %30 = tail call noundef double @sqrt(double noundef %26) #11
  %31 = load double, ptr %10, align 8, !tbaa !77
  %32 = fcmp olt double %30, %31
  %33 = fsub double %31, %30
  %34 = select i1 %32, double %33, double 0.000000e+00
  %35 = load i32, ptr %11, align 8, !tbaa !82
  %36 = icmp eq i32 %35, -1
  %37 = load ptr, ptr %2, align 8, !tbaa !71
  %38 = getelementptr inbounds %"class.dealii::Vector", ptr %37, i64 %14, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !72
  %40 = icmp eq i32 %39, 0
  br i1 %36, label %41, label %51

41:                                               ; preds = %29
  br i1 %40, label %62, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %"class.dealii::Vector", ptr %37, i64 %14, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !74
  %45 = zext i32 %39 to i64
  %46 = getelementptr inbounds double, ptr %44, i64 %45
  br label %47

47:                                               ; preds = %42, %47
  %48 = phi ptr [ %49, %47 ], [ %44, %42 ]
  store double %34, ptr %48, align 8, !tbaa !35
  %49 = getelementptr inbounds double, ptr %48, i64 1
  %50 = icmp eq ptr %49, %46
  br i1 %50, label %62, label %47, !llvm.loop !75

51:                                               ; preds = %29
  br i1 %40, label %57, label %52

52:                                               ; preds = %51
  %53 = zext i32 %39 to i64
  %54 = getelementptr inbounds %"class.dealii::Vector", ptr %37, i64 %14, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !74
  %56 = shl nuw nsw i64 %53, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %55, i8 0, i64 %56, i1 false), !tbaa !35
  br label %57

57:                                               ; preds = %52, %51
  %58 = getelementptr inbounds %"class.dealii::Vector", ptr %37, i64 %14, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !74
  %60 = zext i32 %35 to i64
  %61 = getelementptr inbounds double, ptr %59, i64 %60
  store double %34, ptr %61, align 8, !tbaa !35
  br label %62

62:                                               ; preds = %47, %41, %57
  %63 = add i32 %15, 1
  %64 = zext i32 %63 to i64
  %65 = load ptr, ptr %4, align 8, !tbaa !69
  %66 = load ptr, ptr %2, align 8, !tbaa !71
  %67 = ptrtoint ptr %65 to i64
  %68 = ptrtoint ptr %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 88
  %71 = icmp ugt i64 %70, %64
  br i1 %71, label %13, label %12, !llvm.loop !102
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi3EEC2EdNS_5PointILi3EEEjj(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions16CutOffFunctionW1ILi3EEC5EdNS_5PointILi3EEEjj) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca [3 x double], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !35
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa !35
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !88
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !93
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi3EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !93
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %20, %11 ]
  %13 = phi double [ 0.000000e+00, %9 ], [ %19, %11 ]
  %14 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %12
  %17 = load double, ptr %16, align 8, !tbaa !35
  %18 = fsub double %15, %17
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %13)
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %11, !llvm.loop !94

22:                                               ; preds = %11
  %23 = tail call noundef double @sqrt(double noundef %19) #11
  %24 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !88
  %26 = fcmp olt double %23, %25
  %27 = fsub double %25, %23
  %28 = select i1 %26, double %27, double 0.000000e+00
  br label %29

29:                                               ; preds = %3, %22
  %30 = phi double [ %28, %22 ], [ 0.000000e+00, %3 ]
  ret double %30
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i32 %6, %3
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %50

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = load ptr, ptr %2, align 8, !tbaa !62
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %62, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %15, %34
  %19 = phi i64 [ 0, %15 ], [ %43, %34 ]
  %20 = phi i32 [ 0, %15 ], [ %42, %34 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !95
  %22 = getelementptr inbounds %"class.dealii::Point.26", ptr %21, i64 %19
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ 0, %18 ], [ %32, %23 ]
  %25 = phi double [ 0.000000e+00, %18 ], [ %31, %23 ]
  %26 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 %24
  %27 = load double, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds [3 x double], ptr %22, i64 0, i64 %24
  %29 = load double, ptr %28, align 8, !tbaa !35
  %30 = fsub double %27, %29
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %25)
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, 3
  br i1 %33, label %34, label %23, !llvm.loop !94

34:                                               ; preds = %23
  %35 = tail call noundef double @sqrt(double noundef %31) #11
  %36 = load double, ptr %17, align 8, !tbaa !88
  %37 = fcmp olt double %35, %36
  %38 = fsub double %36, %35
  %39 = select i1 %37, double %38, double 0.000000e+00
  %40 = load ptr, ptr %2, align 8, !tbaa !62
  %41 = getelementptr inbounds double, ptr %40, i64 %19
  store double %39, ptr %41, align 8, !tbaa !35
  %42 = add i32 %20, 1
  %43 = zext i32 %42 to i64
  %44 = load ptr, ptr %11, align 8, !tbaa !60
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %40 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 3
  %49 = icmp ugt i64 %48, %43
  br i1 %49, label %18, label %62, !llvm.loop !103

50:                                               ; preds = %4
  %51 = load ptr, ptr %2, align 8, !tbaa !68
  %52 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = ptrtoint ptr %53 to i64
  %57 = ptrtoint ptr %51 to i64
  %58 = add i64 %56, -8
  %59 = sub i64 %58, %57
  %60 = and i64 %59, -8
  %61 = add i64 %60, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %51, i8 0, i64 %61, i1 false), !tbaa !35
  br label %62

62:                                               ; preds = %34, %55, %50, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  br label %13

12:                                               ; preds = %62, %3
  ret void

13:                                               ; preds = %8, %62
  %14 = phi i64 [ 0, %8 ], [ %64, %62 ]
  %15 = phi i32 [ 0, %8 ], [ %63, %62 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !95
  %17 = getelementptr inbounds %"class.dealii::Point.26", ptr %16, i64 %14
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %27, %18 ]
  %20 = phi double [ 0.000000e+00, %13 ], [ %26, %18 ]
  %21 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %19
  %22 = load double, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 %19
  %24 = load double, ptr %23, align 8, !tbaa !35
  %25 = fsub double %22, %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %20)
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, 3
  br i1 %28, label %29, label %18, !llvm.loop !94

29:                                               ; preds = %18
  %30 = tail call noundef double @sqrt(double noundef %26) #11
  %31 = load double, ptr %10, align 8, !tbaa !88
  %32 = fcmp olt double %30, %31
  %33 = fsub double %31, %30
  %34 = select i1 %32, double %33, double 0.000000e+00
  %35 = load i32, ptr %11, align 8, !tbaa !93
  %36 = icmp eq i32 %35, -1
  %37 = load ptr, ptr %2, align 8, !tbaa !71
  %38 = getelementptr inbounds %"class.dealii::Vector", ptr %37, i64 %14, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !72
  %40 = icmp eq i32 %39, 0
  br i1 %36, label %41, label %51

41:                                               ; preds = %29
  br i1 %40, label %62, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %"class.dealii::Vector", ptr %37, i64 %14, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !74
  %45 = zext i32 %39 to i64
  %46 = getelementptr inbounds double, ptr %44, i64 %45
  br label %47

47:                                               ; preds = %42, %47
  %48 = phi ptr [ %49, %47 ], [ %44, %42 ]
  store double %34, ptr %48, align 8, !tbaa !35
  %49 = getelementptr inbounds double, ptr %48, i64 1
  %50 = icmp eq ptr %49, %46
  br i1 %50, label %62, label %47, !llvm.loop !75

51:                                               ; preds = %29
  br i1 %40, label %57, label %52

52:                                               ; preds = %51
  %53 = zext i32 %39 to i64
  %54 = getelementptr inbounds %"class.dealii::Vector", ptr %37, i64 %14, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !74
  %56 = shl nuw nsw i64 %53, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %55, i8 0, i64 %56, i1 false), !tbaa !35
  br label %57

57:                                               ; preds = %52, %51
  %58 = getelementptr inbounds %"class.dealii::Vector", ptr %37, i64 %14, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !74
  %60 = zext i32 %35 to i64
  %61 = getelementptr inbounds double, ptr %59, i64 %60
  store double %34, ptr %61, align 8, !tbaa !35
  br label %62

62:                                               ; preds = %47, %41, %57
  %63 = add i32 %15, 1
  %64 = zext i32 %63 to i64
  %65 = load ptr, ptr %4, align 8, !tbaa !69
  %66 = load ptr, ptr %2, align 8, !tbaa !71
  %67 = ptrtoint ptr %65 to i64
  %68 = ptrtoint ptr %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 88
  %71 = icmp ugt i64 %70, %64
  br i1 %71, label %13, label %12, !llvm.loop !104
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi1EEC2EdNS_5PointILi1EEEjj(ptr noundef nonnull align 8 dereferenceable(116) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionCinftyILi1EEC5EdNS_5PointILi1EEEjj) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = load double, ptr %2, align 8, !tbaa !35
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  store double %6, ptr %8, align 8, !tbaa !35
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !59
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi1EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !35
  %12 = load double, ptr %1, align 8, !tbaa !35
  %13 = fsub double %11, %12
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double 0.000000e+00)
  %15 = tail call noundef double @sqrt(double noundef %14) #11
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %17 = load double, ptr %16, align 8, !tbaa !41
  %18 = fcmp ult double %15, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %9
  %20 = fneg double %17
  %21 = fmul double %17, %20
  %22 = fneg double %15
  %23 = fmul double %15, %22
  %24 = tail call double @llvm.fmuladd.f64(double %17, double %17, double %23)
  %25 = fdiv double %21, %24
  %26 = fcmp olt double %25, -5.000000e+01
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = tail call double @exp(double noundef %25) #11
  %29 = fmul double %28, 0x4005BF0A8B145769
  br label %30

30:                                               ; preds = %3, %9, %19, %27
  %31 = phi double [ 0.000000e+00, %9 ], [ %29, %27 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %3 ]
  ret double %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = icmp eq i32 %8, -1
  %10 = icmp eq i32 %8, %3
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = load ptr, ptr %2, align 8, !tbaa !62
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %65, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %19 = fneg double %6
  %20 = fmul double %6, %19
  br label %21

21:                                               ; preds = %17, %41
  %22 = phi i64 [ 0, %17 ], [ %46, %41 ]
  %23 = phi i32 [ 0, %17 ], [ %45, %41 ]
  %24 = load ptr, ptr %1, align 8, !tbaa !63
  %25 = getelementptr inbounds %"class.dealii::Point", ptr %24, i64 %22
  %26 = load double, ptr %18, align 8, !tbaa !35
  %27 = load double, ptr %25, align 8, !tbaa !35
  %28 = fsub double %26, %27
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %28, double 0.000000e+00)
  %30 = tail call noundef double @sqrt(double noundef %29) #11
  %31 = fcmp ult double %30, %6
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = fneg double %30
  %34 = fmul double %30, %33
  %35 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %34)
  %36 = fdiv double %20, %35
  %37 = fcmp olt double %36, -5.000000e+01
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = tail call double @exp(double noundef %36) #11
  %40 = fmul double %39, 0x4005BF0A8B145769
  br label %41

41:                                               ; preds = %38, %32, %21
  %42 = phi double [ 0.000000e+00, %21 ], [ %40, %38 ], [ 0.000000e+00, %32 ]
  %43 = load ptr, ptr %2, align 8, !tbaa !62
  %44 = getelementptr inbounds double, ptr %43, i64 %22
  store double %42, ptr %44, align 8, !tbaa !35
  %45 = add i32 %23, 1
  %46 = zext i32 %45 to i64
  %47 = load ptr, ptr %13, align 8, !tbaa !60
  %48 = ptrtoint ptr %47 to i64
  %49 = ptrtoint ptr %43 to i64
  %50 = sub i64 %48, %49
  %51 = ashr exact i64 %50, 3
  %52 = icmp ugt i64 %51, %46
  br i1 %52, label %21, label %65, !llvm.loop !105

53:                                               ; preds = %4
  %54 = load ptr, ptr %2, align 8, !tbaa !68
  %55 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !68
  %57 = icmp eq ptr %54, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = ptrtoint ptr %56 to i64
  %60 = ptrtoint ptr %54 to i64
  %61 = add i64 %59, -8
  %62 = sub i64 %61, %60
  %63 = and i64 %62, -8
  %64 = add i64 %63, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %54, i8 0, i64 %64, i1 false), !tbaa !35
  br label %65

65:                                               ; preds = %41, %58, %53, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  br label %13

12:                                               ; preds = %65, %3
  ret void

13:                                               ; preds = %8, %65
  %14 = phi i64 [ 0, %8 ], [ %67, %65 ]
  %15 = phi i32 [ 0, %8 ], [ %66, %65 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !63
  %17 = getelementptr inbounds %"class.dealii::Point", ptr %16, i64 %14
  %18 = load double, ptr %9, align 8, !tbaa !35
  %19 = load double, ptr %17, align 8, !tbaa !35
  %20 = fsub double %18, %19
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %20, double 0.000000e+00)
  %22 = tail call noundef double @sqrt(double noundef %21) #11
  %23 = load double, ptr %10, align 8, !tbaa !41
  %24 = fcmp olt double %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %13
  %26 = fneg double %23
  %27 = fmul double %23, %26
  %28 = fneg double %22
  %29 = fmul double %22, %28
  %30 = tail call double @llvm.fmuladd.f64(double %23, double %23, double %29)
  %31 = fdiv double %27, %30
  %32 = fcmp ogt double %31, -5.000000e+01
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = tail call double @exp(double noundef %31) #11
  %35 = fmul double %34, 0x4005BF0A8B145769
  br label %36

36:                                               ; preds = %25, %33, %13
  %37 = phi double [ %35, %33 ], [ 0.000000e+00, %25 ], [ 0.000000e+00, %13 ]
  %38 = load i32, ptr %11, align 8, !tbaa !59
  %39 = icmp eq i32 %38, -1
  %40 = load ptr, ptr %2, align 8, !tbaa !71
  %41 = getelementptr inbounds %"class.dealii::Vector", ptr %40, i64 %14, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !72
  %43 = icmp eq i32 %42, 0
  br i1 %39, label %44, label %54

44:                                               ; preds = %36
  br i1 %43, label %65, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %"class.dealii::Vector", ptr %40, i64 %14, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !74
  %48 = zext i32 %42 to i64
  %49 = getelementptr inbounds double, ptr %47, i64 %48
  br label %50

50:                                               ; preds = %45, %50
  %51 = phi ptr [ %52, %50 ], [ %47, %45 ]
  store double %37, ptr %51, align 8, !tbaa !35
  %52 = getelementptr inbounds double, ptr %51, i64 1
  %53 = icmp eq ptr %52, %49
  br i1 %53, label %65, label %50, !llvm.loop !75

54:                                               ; preds = %36
  br i1 %43, label %60, label %55

55:                                               ; preds = %54
  %56 = zext i32 %42 to i64
  %57 = getelementptr inbounds %"class.dealii::Vector", ptr %40, i64 %14, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !74
  %59 = shl nuw nsw i64 %56, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %58, i8 0, i64 %59, i1 false), !tbaa !35
  br label %60

60:                                               ; preds = %55, %54
  %61 = getelementptr inbounds %"class.dealii::Vector", ptr %40, i64 %14, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !74
  %63 = zext i32 %38 to i64
  %64 = getelementptr inbounds double, ptr %62, i64 %63
  store double %37, ptr %64, align 8, !tbaa !35
  br label %65

65:                                               ; preds = %50, %44, %60
  %66 = add i32 %15, 1
  %67 = zext i32 %66 to i64
  %68 = load ptr, ptr %4, align 8, !tbaa !69
  %69 = load ptr, ptr %2, align 8, !tbaa !71
  %70 = ptrtoint ptr %68 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 88
  %74 = icmp ugt i64 %73, %67
  br i1 %74, label %13, label %12, !llvm.loop !106
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %1, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !35
  %7 = load double, ptr %2, align 8, !tbaa !35
  %8 = fsub double %6, %7
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %8, double 0.000000e+00)
  %10 = tail call noundef double @sqrt(double noundef %9) #11
  %11 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %1, i64 0, i32 3
  %12 = load double, ptr %11, align 8, !tbaa !41
  %13 = fcmp ult double %10, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %4
  %15 = fneg double %10
  %16 = fmul double %10, %15
  %17 = fsub double %12, %10
  %18 = fdiv double %16, %17
  %19 = fadd double %10, %12
  %20 = fdiv double %18, %19
  %21 = fcmp olt double %20, -5.000000e+01
  br i1 %21, label %38, label %22

22:                                               ; preds = %14
  %23 = load double, ptr %2, align 8, !tbaa !35, !noalias !107
  %24 = load double, ptr %5, align 8, !tbaa !35, !noalias !107
  %25 = fsub double %23, %24
  %26 = fdiv double %25, %10
  %27 = fmul double %12, -2.000000e+00
  %28 = fmul double %12, %27
  %29 = fneg double %12
  %30 = fmul double %10, %10
  %31 = tail call double @llvm.fmuladd.f64(double %29, double %12, double %30)
  %32 = fmul double %31, %31
  %33 = fdiv double %28, %32
  %34 = fmul double %10, %33
  %35 = tail call double @exp(double noundef %20) #11
  %36 = fmul double %34, %35
  %37 = fmul double %26, %36
  br label %38

38:                                               ; preds = %22, %14, %4
  %39 = phi double [ 0.000000e+00, %4 ], [ %37, %22 ], [ 0.000000e+00, %14 ]
  store double %39, ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi2EEC2EdNS_5PointILi2EEEjj(ptr noundef nonnull align 8 dereferenceable(124) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionCinftyILi2EEC5EdNS_5PointILi2EEEjj) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca [2 x double], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !35
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa !35
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !77
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !82
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi2EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !82
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %20, %11 ]
  %13 = phi double [ 0.000000e+00, %9 ], [ %19, %11 ]
  %14 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %12
  %17 = load double, ptr %16, align 8, !tbaa !35
  %18 = fsub double %15, %17
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %13)
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %12, 0
  br i1 %21, label %11, label %22, !llvm.loop !83

22:                                               ; preds = %11
  %23 = tail call noundef double @sqrt(double noundef %19) #11
  %24 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !77
  %26 = fcmp ult double %23, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = fneg double %25
  %29 = fmul double %25, %28
  %30 = fneg double %23
  %31 = fmul double %23, %30
  %32 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %31)
  %33 = fdiv double %29, %32
  %34 = fcmp olt double %33, -5.000000e+01
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = tail call double @exp(double noundef %33) #11
  %37 = fmul double %36, 0x4005BF0A8B145769
  br label %38

38:                                               ; preds = %3, %22, %27, %35
  %39 = phi double [ 0.000000e+00, %22 ], [ %37, %35 ], [ 0.000000e+00, %27 ], [ 0.000000e+00, %3 ]
  ret double %39
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !77
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !82
  %9 = icmp eq i32 %8, -1
  %10 = icmp eq i32 %8, %3
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = load ptr, ptr %2, align 8, !tbaa !62
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %73, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %19 = fneg double %6
  %20 = fmul double %6, %19
  br label %21

21:                                               ; preds = %17, %49
  %22 = phi i64 [ 0, %17 ], [ %54, %49 ]
  %23 = phi i32 [ 0, %17 ], [ %53, %49 ]
  %24 = load ptr, ptr %1, align 8, !tbaa !84
  %25 = getelementptr inbounds %"class.dealii::Point.13", ptr %24, i64 %22
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ 0, %21 ], [ %35, %26 ]
  %28 = phi double [ 0.000000e+00, %21 ], [ %34, %26 ]
  %29 = getelementptr inbounds [2 x double], ptr %18, i64 0, i64 %27
  %30 = load double, ptr %29, align 8, !tbaa !35
  %31 = getelementptr inbounds [2 x double], ptr %25, i64 0, i64 %27
  %32 = load double, ptr %31, align 8, !tbaa !35
  %33 = fsub double %30, %32
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %33, double %28)
  %35 = add nuw nsw i64 %27, 1
  %36 = icmp eq i64 %27, 0
  br i1 %36, label %26, label %37, !llvm.loop !83

37:                                               ; preds = %26
  %38 = tail call noundef double @sqrt(double noundef %34) #11
  %39 = fcmp ult double %38, %6
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = fneg double %38
  %42 = fmul double %38, %41
  %43 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %42)
  %44 = fdiv double %20, %43
  %45 = fcmp olt double %44, -5.000000e+01
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = tail call double @exp(double noundef %44) #11
  %48 = fmul double %47, 0x4005BF0A8B145769
  br label %49

49:                                               ; preds = %46, %40, %37
  %50 = phi double [ 0.000000e+00, %37 ], [ %48, %46 ], [ 0.000000e+00, %40 ]
  %51 = load ptr, ptr %2, align 8, !tbaa !62
  %52 = getelementptr inbounds double, ptr %51, i64 %22
  store double %50, ptr %52, align 8, !tbaa !35
  %53 = add i32 %23, 1
  %54 = zext i32 %53 to i64
  %55 = load ptr, ptr %13, align 8, !tbaa !60
  %56 = ptrtoint ptr %55 to i64
  %57 = ptrtoint ptr %51 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp ugt i64 %59, %54
  br i1 %60, label %21, label %73, !llvm.loop !110

61:                                               ; preds = %4
  %62 = load ptr, ptr %2, align 8, !tbaa !68
  %63 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !68
  %65 = icmp eq ptr %62, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = ptrtoint ptr %64 to i64
  %68 = ptrtoint ptr %62 to i64
  %69 = add i64 %67, -8
  %70 = sub i64 %69, %68
  %71 = and i64 %70, -8
  %72 = add i64 %71, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %62, i8 0, i64 %72, i1 false), !tbaa !35
  br label %73

73:                                               ; preds = %49, %66, %61, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  br label %13

12:                                               ; preds = %73, %3
  ret void

13:                                               ; preds = %8, %73
  %14 = phi i64 [ 0, %8 ], [ %75, %73 ]
  %15 = phi i32 [ 0, %8 ], [ %74, %73 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !84
  %17 = getelementptr inbounds %"class.dealii::Point.13", ptr %16, i64 %14
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %27, %18 ]
  %20 = phi double [ 0.000000e+00, %13 ], [ %26, %18 ]
  %21 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %19
  %22 = load double, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds [2 x double], ptr %17, i64 0, i64 %19
  %24 = load double, ptr %23, align 8, !tbaa !35
  %25 = fsub double %22, %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %20)
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %19, 0
  br i1 %28, label %18, label %29, !llvm.loop !83

29:                                               ; preds = %18
  %30 = tail call noundef double @sqrt(double noundef %26) #11
  %31 = load double, ptr %10, align 8, !tbaa !77
  %32 = fcmp olt double %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = fneg double %31
  %35 = fmul double %31, %34
  %36 = fneg double %30
  %37 = fmul double %30, %36
  %38 = tail call double @llvm.fmuladd.f64(double %31, double %31, double %37)
  %39 = fdiv double %35, %38
  %40 = fcmp ogt double %39, -5.000000e+01
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = tail call double @exp(double noundef %39) #11
  %43 = fmul double %42, 0x4005BF0A8B145769
  br label %44

44:                                               ; preds = %33, %41, %29
  %45 = phi double [ %43, %41 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %29 ]
  %46 = load i32, ptr %11, align 8, !tbaa !82
  %47 = icmp eq i32 %46, -1
  %48 = load ptr, ptr %2, align 8, !tbaa !71
  %49 = getelementptr inbounds %"class.dealii::Vector", ptr %48, i64 %14, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !72
  %51 = icmp eq i32 %50, 0
  br i1 %47, label %52, label %62

52:                                               ; preds = %44
  br i1 %51, label %73, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %"class.dealii::Vector", ptr %48, i64 %14, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !74
  %56 = zext i32 %50 to i64
  %57 = getelementptr inbounds double, ptr %55, i64 %56
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi ptr [ %60, %58 ], [ %55, %53 ]
  store double %45, ptr %59, align 8, !tbaa !35
  %60 = getelementptr inbounds double, ptr %59, i64 1
  %61 = icmp eq ptr %60, %57
  br i1 %61, label %73, label %58, !llvm.loop !75

62:                                               ; preds = %44
  br i1 %51, label %68, label %63

63:                                               ; preds = %62
  %64 = zext i32 %50 to i64
  %65 = getelementptr inbounds %"class.dealii::Vector", ptr %48, i64 %14, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !74
  %67 = shl nuw nsw i64 %64, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %66, i8 0, i64 %67, i1 false), !tbaa !35
  br label %68

68:                                               ; preds = %63, %62
  %69 = getelementptr inbounds %"class.dealii::Vector", ptr %48, i64 %14, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !74
  %71 = zext i32 %46 to i64
  %72 = getelementptr inbounds double, ptr %70, i64 %71
  store double %45, ptr %72, align 8, !tbaa !35
  br label %73

73:                                               ; preds = %58, %52, %68
  %74 = add i32 %15, 1
  %75 = zext i32 %74 to i64
  %76 = load ptr, ptr %4, align 8, !tbaa !69
  %77 = load ptr, ptr %2, align 8, !tbaa !71
  %78 = ptrtoint ptr %76 to i64
  %79 = ptrtoint ptr %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 88
  %82 = icmp ugt i64 %81, %75
  br i1 %82, label %13, label %12, !llvm.loop !111
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = alloca %"class.dealii::Point.13", align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %1, i64 0, i32 2
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %16, %7 ]
  %9 = phi double [ 0.000000e+00, %4 ], [ %15, %7 ]
  %10 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %8
  %11 = load double, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 %8
  %13 = load double, ptr %12, align 8, !tbaa !35
  %14 = fsub double %11, %13
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %9)
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %8, 0
  br i1 %17, label %7, label %18, !llvm.loop !83

18:                                               ; preds = %7
  %19 = tail call noundef double @sqrt(double noundef %15) #11
  %20 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %1, i64 0, i32 3
  %21 = load double, ptr %20, align 8, !tbaa !77
  %22 = fcmp ult double %19, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !35
  br label %69

24:                                               ; preds = %18
  %25 = fneg double %19
  %26 = fmul double %19, %25
  %27 = fsub double %21, %19
  %28 = fdiv double %26, %27
  %29 = fadd double %19, %21
  %30 = fdiv double %28, %29
  %31 = fcmp olt double %30, -5.000000e+01
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !tbaa !35
  br label %68

33:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !35
  br label %34

34:                                               ; preds = %33, %34
  %35 = phi i64 [ 0, %33 ], [ %41, %34 ]
  %36 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %35
  %37 = load double, ptr %36, align 8, !tbaa !35, !noalias !112
  %38 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %35
  %39 = load double, ptr %38, align 8, !tbaa !35
  %40 = fsub double %39, %37
  store double %40, ptr %38, align 8, !tbaa !35
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %35, 0
  br i1 %42, label %34, label %43, !llvm.loop !115

43:                                               ; preds = %34, %43
  %44 = phi i64 [ %48, %43 ], [ 0, %34 ]
  %45 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !35
  %47 = fdiv double %46, %19
  store double %47, ptr %45, align 8, !tbaa !35
  %48 = add nuw nsw i64 %44, 1
  %49 = icmp eq i64 %44, 0
  br i1 %49, label %43, label %50, !llvm.loop !116

50:                                               ; preds = %43
  %51 = tail call double @exp(double noundef %30) #11
  %52 = fmul double %21, -2.000000e+00
  %53 = fmul double %21, %52
  %54 = fneg double %21
  %55 = fmul double %19, %19
  %56 = tail call double @llvm.fmuladd.f64(double %54, double %21, double %55)
  %57 = fmul double %56, %56
  %58 = fdiv double %53, %57
  %59 = fmul double %19, %58
  %60 = fmul double %59, %51
  br label %61

61:                                               ; preds = %50, %61
  %62 = phi i64 [ 0, %50 ], [ %66, %61 ]
  %63 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !35
  %65 = fmul double %60, %64
  store double %65, ptr %63, align 8, !tbaa !35
  %66 = add nuw nsw i64 %62, 1
  %67 = icmp eq i64 %62, 0
  br i1 %67, label %61, label %68, !llvm.loop !117

68:                                               ; preds = %61, %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa !35
  br label %69

69:                                               ; preds = %23, %68
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi3EEC2EdNS_5PointILi3EEEjj(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionCinftyILi3EEC5EdNS_5PointILi3EEEjj) align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca [3 x double], align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !35
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa !35
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !88
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !93
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi3EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !93
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %20, %11 ]
  %13 = phi double [ 0.000000e+00, %9 ], [ %19, %11 ]
  %14 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %12
  %17 = load double, ptr %16, align 8, !tbaa !35
  %18 = fsub double %15, %17
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %13)
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %11, !llvm.loop !94

22:                                               ; preds = %11
  %23 = tail call noundef double @sqrt(double noundef %19) #11
  %24 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !88
  %26 = fcmp ult double %23, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = fneg double %25
  %29 = fmul double %25, %28
  %30 = fneg double %23
  %31 = fmul double %23, %30
  %32 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %31)
  %33 = fdiv double %29, %32
  %34 = fcmp olt double %33, -5.000000e+01
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = tail call double @exp(double noundef %33) #11
  %37 = fmul double %36, 0x4005BF0A8B145769
  br label %38

38:                                               ; preds = %3, %22, %27, %35
  %39 = phi double [ 0.000000e+00, %22 ], [ %37, %35 ], [ 0.000000e+00, %27 ], [ 0.000000e+00, %3 ]
  ret double %39
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !93
  %9 = icmp eq i32 %8, -1
  %10 = icmp eq i32 %8, %3
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = load ptr, ptr %2, align 8, !tbaa !62
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %73, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %19 = fneg double %6
  %20 = fmul double %6, %19
  br label %21

21:                                               ; preds = %17, %49
  %22 = phi i64 [ 0, %17 ], [ %54, %49 ]
  %23 = phi i32 [ 0, %17 ], [ %53, %49 ]
  %24 = load ptr, ptr %1, align 8, !tbaa !95
  %25 = getelementptr inbounds %"class.dealii::Point.26", ptr %24, i64 %22
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ 0, %21 ], [ %35, %26 ]
  %28 = phi double [ 0.000000e+00, %21 ], [ %34, %26 ]
  %29 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 %27
  %30 = load double, ptr %29, align 8, !tbaa !35
  %31 = getelementptr inbounds [3 x double], ptr %25, i64 0, i64 %27
  %32 = load double, ptr %31, align 8, !tbaa !35
  %33 = fsub double %30, %32
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %33, double %28)
  %35 = add nuw nsw i64 %27, 1
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %37, label %26, !llvm.loop !94

37:                                               ; preds = %26
  %38 = tail call noundef double @sqrt(double noundef %34) #11
  %39 = fcmp ult double %38, %6
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = fneg double %38
  %42 = fmul double %38, %41
  %43 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %42)
  %44 = fdiv double %20, %43
  %45 = fcmp olt double %44, -5.000000e+01
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = tail call double @exp(double noundef %44) #11
  %48 = fmul double %47, 0x4005BF0A8B145769
  br label %49

49:                                               ; preds = %46, %40, %37
  %50 = phi double [ 0.000000e+00, %37 ], [ %48, %46 ], [ 0.000000e+00, %40 ]
  %51 = load ptr, ptr %2, align 8, !tbaa !62
  %52 = getelementptr inbounds double, ptr %51, i64 %22
  store double %50, ptr %52, align 8, !tbaa !35
  %53 = add i32 %23, 1
  %54 = zext i32 %53 to i64
  %55 = load ptr, ptr %13, align 8, !tbaa !60
  %56 = ptrtoint ptr %55 to i64
  %57 = ptrtoint ptr %51 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp ugt i64 %59, %54
  br i1 %60, label %21, label %73, !llvm.loop !118

61:                                               ; preds = %4
  %62 = load ptr, ptr %2, align 8, !tbaa !68
  %63 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !68
  %65 = icmp eq ptr %62, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = ptrtoint ptr %64 to i64
  %68 = ptrtoint ptr %62 to i64
  %69 = add i64 %67, -8
  %70 = sub i64 %69, %68
  %71 = and i64 %70, -8
  %72 = add i64 %71, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %62, i8 0, i64 %72, i1 false), !tbaa !35
  br label %73

73:                                               ; preds = %49, %66, %61, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  br label %13

12:                                               ; preds = %73, %3
  ret void

13:                                               ; preds = %8, %73
  %14 = phi i64 [ 0, %8 ], [ %75, %73 ]
  %15 = phi i32 [ 0, %8 ], [ %74, %73 ]
  %16 = load ptr, ptr %1, align 8, !tbaa !95
  %17 = getelementptr inbounds %"class.dealii::Point.26", ptr %16, i64 %14
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ 0, %13 ], [ %27, %18 ]
  %20 = phi double [ 0.000000e+00, %13 ], [ %26, %18 ]
  %21 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %19
  %22 = load double, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 %19
  %24 = load double, ptr %23, align 8, !tbaa !35
  %25 = fsub double %22, %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %20)
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, 3
  br i1 %28, label %29, label %18, !llvm.loop !94

29:                                               ; preds = %18
  %30 = tail call noundef double @sqrt(double noundef %26) #11
  %31 = load double, ptr %10, align 8, !tbaa !88
  %32 = fcmp olt double %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = fneg double %31
  %35 = fmul double %31, %34
  %36 = fneg double %30
  %37 = fmul double %30, %36
  %38 = tail call double @llvm.fmuladd.f64(double %31, double %31, double %37)
  %39 = fdiv double %35, %38
  %40 = fcmp ogt double %39, -5.000000e+01
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = tail call double @exp(double noundef %39) #11
  %43 = fmul double %42, 0x4005BF0A8B145769
  br label %44

44:                                               ; preds = %33, %41, %29
  %45 = phi double [ %43, %41 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %29 ]
  %46 = load i32, ptr %11, align 8, !tbaa !93
  %47 = icmp eq i32 %46, -1
  %48 = load ptr, ptr %2, align 8, !tbaa !71
  %49 = getelementptr inbounds %"class.dealii::Vector", ptr %48, i64 %14, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !72
  %51 = icmp eq i32 %50, 0
  br i1 %47, label %52, label %62

52:                                               ; preds = %44
  br i1 %51, label %73, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %"class.dealii::Vector", ptr %48, i64 %14, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !74
  %56 = zext i32 %50 to i64
  %57 = getelementptr inbounds double, ptr %55, i64 %56
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi ptr [ %60, %58 ], [ %55, %53 ]
  store double %45, ptr %59, align 8, !tbaa !35
  %60 = getelementptr inbounds double, ptr %59, i64 1
  %61 = icmp eq ptr %60, %57
  br i1 %61, label %73, label %58, !llvm.loop !75

62:                                               ; preds = %44
  br i1 %51, label %68, label %63

63:                                               ; preds = %62
  %64 = zext i32 %50 to i64
  %65 = getelementptr inbounds %"class.dealii::Vector", ptr %48, i64 %14, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !74
  %67 = shl nuw nsw i64 %64, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %66, i8 0, i64 %67, i1 false), !tbaa !35
  br label %68

68:                                               ; preds = %63, %62
  %69 = getelementptr inbounds %"class.dealii::Vector", ptr %48, i64 %14, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !74
  %71 = zext i32 %46 to i64
  %72 = getelementptr inbounds double, ptr %70, i64 %71
  store double %45, ptr %72, align 8, !tbaa !35
  br label %73

73:                                               ; preds = %58, %52, %68
  %74 = add i32 %15, 1
  %75 = zext i32 %74 to i64
  %76 = load ptr, ptr %4, align 8, !tbaa !69
  %77 = load ptr, ptr %2, align 8, !tbaa !71
  %78 = ptrtoint ptr %76 to i64
  %79 = ptrtoint ptr %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 88
  %82 = icmp ugt i64 %81, %75
  br i1 %82, label %13, label %12, !llvm.loop !119
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !34 {
  %5 = alloca %"class.dealii::Point.26", align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %1, i64 0, i32 2
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %16, %7 ]
  %9 = phi double [ 0.000000e+00, %4 ], [ %15, %7 ]
  %10 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %8
  %11 = load double, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 %8
  %13 = load double, ptr %12, align 8, !tbaa !35
  %14 = fsub double %11, %13
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %9)
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %7, !llvm.loop !94

18:                                               ; preds = %7
  %19 = tail call noundef double @sqrt(double noundef %15) #11
  %20 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %1, i64 0, i32 3
  %21 = load double, ptr %20, align 8, !tbaa !88
  %22 = fcmp ult double %19, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !35
  br label %69

24:                                               ; preds = %18
  %25 = fneg double %19
  %26 = fmul double %19, %25
  %27 = fsub double %21, %19
  %28 = fdiv double %26, %27
  %29 = fadd double %19, %21
  %30 = fdiv double %28, %29
  %31 = fcmp olt double %30, -5.000000e+01
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !tbaa !35
  br label %68

33:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !35
  br label %34

34:                                               ; preds = %33, %34
  %35 = phi i64 [ 0, %33 ], [ %41, %34 ]
  %36 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %35
  %37 = load double, ptr %36, align 8, !tbaa !35, !noalias !120
  %38 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %35
  %39 = load double, ptr %38, align 8, !tbaa !35
  %40 = fsub double %39, %37
  store double %40, ptr %38, align 8, !tbaa !35
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %43, label %34, !llvm.loop !123

43:                                               ; preds = %34, %43
  %44 = phi i64 [ %48, %43 ], [ 0, %34 ]
  %45 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !35
  %47 = fdiv double %46, %19
  store double %47, ptr %45, align 8, !tbaa !35
  %48 = add nuw nsw i64 %44, 1
  %49 = icmp eq i64 %48, 3
  br i1 %49, label %50, label %43, !llvm.loop !124

50:                                               ; preds = %43
  %51 = tail call double @exp(double noundef %30) #11
  %52 = fmul double %21, -2.000000e+00
  %53 = fmul double %21, %52
  %54 = fneg double %21
  %55 = fmul double %19, %19
  %56 = tail call double @llvm.fmuladd.f64(double %54, double %21, double %55)
  %57 = fmul double %56, %56
  %58 = fdiv double %53, %57
  %59 = fmul double %19, %58
  %60 = fmul double %59, %51
  br label %61

61:                                               ; preds = %50, %61
  %62 = phi i64 [ 0, %50 ], [ %66, %61 ]
  %63 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !35
  %65 = fmul double %60, %64
  store double %65, ptr %63, align 8, !tbaa !35
  %66 = add nuw nsw i64 %62, 1
  %67 = icmp eq i64 %66, 3
  br i1 %67, label %68, label %61, !llvm.loop !125

68:                                               ; preds = %61, %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa !35
  br label %69

69:                                               ; preds = %23, %68
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #4

declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #4

declare noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

declare void @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.14") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #4

declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

declare void @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.27") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #4

declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

declare void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18CutOffFunctionBaseILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

declare noundef double @_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #2

declare void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18CutOffFunctionBaseILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

declare noundef double @_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

declare void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18CutOffFunctionBaseILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #3 comdat align 2 !annotation !126 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

declare noundef double @_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #4

declare void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !126 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 498235516744}
!8 = !{!"MaxCount", i64 131729822178}
!9 = !{!"MaxInternalCount", i64 59335447748}
!10 = !{!"MaxFunctionCount", i64 131729822178}
!11 = !{!"NumCounts", i64 184261}
!12 = !{!"NumFunctions", i64 19089}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 131729822178, i32 1}
!18 = !{i32 100000, i64 131729822178, i32 1}
!19 = !{i32 200000, i64 131729822178, i32 1}
!20 = !{i32 300000, i64 59335447748, i32 2}
!21 = !{i32 400000, i64 54202702756, i32 4}
!22 = !{i32 500000, i64 54202702756, i32 4}
!23 = !{i32 600000, i64 54202702756, i32 4}
!24 = !{i32 700000, i64 29261748340, i32 6}
!25 = !{i32 800000, i64 4776163696, i32 11}
!26 = !{i32 900000, i64 1194611288, i32 34}
!27 = !{i32 950000, i64 227059944, i32 83}
!28 = !{i32 990000, i64 24316456, i32 356}
!29 = !{i32 999000, i64 1124400, i32 996}
!30 = !{i32 999900, i64 89565, i32 2292}
!31 = !{i32 999990, i64 12672, i32 3328}
!32 = !{i32 999999, i64 396, i32 5010}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"double", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !38, i64 0}
!41 = !{!42, !36, i64 104}
!42 = !{!"_ZTSN6dealii9Functions18CutOffFunctionBaseILi1EEE", !43, i64 0, !57, i64 96, !36, i64 104, !46, i64 112}
!43 = !{!"_ZTSN6dealii8FunctionILi1EEE", !44, i64 0, !45, i64 16, !46, i64 88}
!44 = !{!"_ZTSN6dealii12FunctionTimeE", !36, i64 8}
!45 = !{!"_ZTSN6dealii11SubscriptorE", !46, i64 8, !47, i64 16, !55, i64 64}
!46 = !{!"int", !37, i64 0}
!47 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !48, i64 0}
!48 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !49, i64 0}
!49 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !50, i64 0, !52, i64 8}
!50 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !51, i64 0}
!51 = !{!"_ZTSSt4lessIPKcE"}
!52 = !{!"_ZTSSt15_Rb_tree_header", !53, i64 0, !56, i64 32}
!53 = !{!"_ZTSSt18_Rb_tree_node_base", !54, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!54 = !{!"_ZTSSt14_Rb_tree_color", !37, i64 0}
!55 = !{!"any pointer", !37, i64 0}
!56 = !{!"long", !37, i64 0}
!57 = !{!"_ZTSN6dealii5PointILi1EEE", !58, i64 0}
!58 = !{!"_ZTSN6dealii6TensorILi1ELi1EEE", !37, i64 0}
!59 = !{!42, !46, i64 112}
!60 = !{!61, !55, i64 8}
!61 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!62 = !{!61, !55, i64 0}
!63 = !{!64, !55, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!55, !55, i64 0}
!69 = !{!70, !55, i64 8}
!70 = !{!"_ZTSNSt12_Vector_baseIN6dealii6VectorIdEESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!71 = !{!70, !55, i64 0}
!72 = !{!73, !46, i64 72}
!73 = !{!"_ZTSN6dealii6VectorIdEE", !45, i64 0, !46, i64 72, !46, i64 76, !55, i64 80}
!74 = !{!73, !55, i64 80}
!75 = distinct !{!75, !66, !67}
!76 = distinct !{!76, !66, !67}
!77 = !{!78, !36, i64 112}
!78 = !{!"_ZTSN6dealii9Functions18CutOffFunctionBaseILi2EEE", !79, i64 0, !80, i64 96, !36, i64 112, !46, i64 120}
!79 = !{!"_ZTSN6dealii8FunctionILi2EEE", !44, i64 0, !45, i64 16, !46, i64 88}
!80 = !{!"_ZTSN6dealii5PointILi2EEE", !81, i64 0}
!81 = !{!"_ZTSN6dealii6TensorILi1ELi2EEE", !37, i64 0}
!82 = !{!78, !46, i64 120}
!83 = distinct !{!83, !66, !67}
!84 = !{!85, !55, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!86 = distinct !{!86, !66, !67}
!87 = distinct !{!87, !66, !67}
!88 = !{!89, !36, i64 120}
!89 = !{!"_ZTSN6dealii9Functions18CutOffFunctionBaseILi3EEE", !90, i64 0, !91, i64 96, !36, i64 120, !46, i64 128}
!90 = !{!"_ZTSN6dealii8FunctionILi3EEE", !44, i64 0, !45, i64 16, !46, i64 88}
!91 = !{!"_ZTSN6dealii5PointILi3EEE", !92, i64 0}
!92 = !{!"_ZTSN6dealii6TensorILi1ELi3EEE", !37, i64 0}
!93 = !{!89, !46, i64 128}
!94 = distinct !{!94, !66, !67}
!95 = !{!96, !55, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!97 = distinct !{!97, !66, !67}
!98 = distinct !{!98, !66, !67}
!99 = distinct !{!99, !66, !67}
!100 = distinct !{!100, !66, !67}
!101 = distinct !{!101, !66, !67}
!102 = distinct !{!102, !66, !67}
!103 = distinct !{!103, !66, !67}
!104 = distinct !{!104, !66, !67}
!105 = distinct !{!105, !66, !67}
!106 = distinct !{!106, !66, !67}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!109 = distinct !{!109, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!110 = distinct !{!110, !66, !67}
!111 = distinct !{!111, !66, !67}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!114 = distinct !{!114, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!115 = distinct !{!115, !66, !67}
!116 = distinct !{!116, !66, !67}
!117 = distinct !{!117, !66, !67}
!118 = distinct !{!118, !66, !67}
!119 = distinct !{!119, !66, !67}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!122 = distinct !{!122, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!123 = distinct !{!123, !66, !67}
!124 = distinct !{!124, !66, !67}
!125 = distinct !{!125, !66, !67}
!126 = !{!"instr_prof_hash_mismatch"}
