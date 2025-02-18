; ModuleID = 'source/base/function_derivative.cc'
source_filename = "source/base/function_derivative.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::Function" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32, [4 x i8] }>
%"class.dealii::FunctionTime" = type { ptr, double }
%"class.dealii::Subscriptor" = type { ptr, i32, %"class.std::map", ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.dealii::FunctionDerivative" = type { %"class.dealii::AutoDerivativeFunction.base", ptr, double, i32, %"class.std::vector.3" }
%"class.dealii::AutoDerivativeFunction.base" = type <{ %"class.dealii::Function.base", [4 x i8], double, %"class.std::vector", i32 }>
%"class.dealii::Function.base" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Vector" = type { %"class.dealii::Subscriptor", i32, i32, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.10" = type { i8 }
%"class.std::allocator.5" = type { i8 }
%"class.dealii::Point.28" = type { %"class.dealii::Tensor.29" }
%"class.dealii::Tensor.29" = type { [2 x double] }
%"class.dealii::Function.15" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32, [4 x i8] }>
%"class.dealii::FunctionDerivative.13" = type { %"class.dealii::AutoDerivativeFunction.base.22", ptr, double, i32, %"class.std::vector.23" }
%"class.dealii::AutoDerivativeFunction.base.22" = type <{ %"class.dealii::Function.base.16", [4 x i8], double, %"class.std::vector.17", i32 }>
%"class.dealii::Function.base.16" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point.45" = type { %"class.dealii::Tensor.46" }
%"class.dealii::Tensor.46" = type { [3 x double] }
%"class.dealii::Function.32" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32, [4 x i8] }>
%"class.dealii::FunctionDerivative.30" = type { %"class.dealii::AutoDerivativeFunction.base.39", ptr, double, i32, %"class.std::vector.40" }
%"class.dealii::AutoDerivativeFunction.base.39" = type <{ %"class.dealii::Function.base.33", [4 x i8], double, %"class.std::vector.34", i32 }>
%"class.dealii::Function.base.33" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.std::vector.34" = type { %"struct.std::_Vector_base.35" }
%"struct.std::_Vector_base.35" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.40" = type { %"struct.std::_Vector_base.41" }
%"struct.std::_Vector_base.41" = type { %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN6dealii18FunctionDerivativeILi1EEC5ERKNS_8FunctionILi1EEERKNS_5PointILi1EEEd = comdat any

$_ZN6dealii18FunctionDerivativeILi1EE11set_formulaENS_22AutoDerivativeFunctionILi1EE17DifferenceFormulaE = comdat any

$_ZN6dealii18FunctionDerivativeILi1EEC5ERKNS_8FunctionILi1EEERKSt6vectorINS_5PointILi1EEESaIS8_EEd = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZN6dealii18FunctionDerivativeILi1EE5set_hEd = comdat any

$_ZNK6dealii18FunctionDerivativeILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii18FunctionDerivativeILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZN6dealii6VectorIdED2Ev = comdat any

$_ZNK6dealii18FunctionDerivativeILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKS0_ = comdat any

$_ZNK6dealii18FunctionDerivativeILi1EE18memory_consumptionEv = comdat any

$_ZN6dealii18FunctionDerivativeILi2EEC5ERKNS_8FunctionILi2EEERKNS_5PointILi2EEEd = comdat any

$_ZN6dealii18FunctionDerivativeILi2EE11set_formulaENS_22AutoDerivativeFunctionILi2EE17DifferenceFormulaE = comdat any

$_ZN6dealii18FunctionDerivativeILi2EEC5ERKNS_8FunctionILi2EEERKSt6vectorINS_5PointILi2EEESaIS8_EEd = comdat any

$_ZN6dealii18FunctionDerivativeILi2EE5set_hEd = comdat any

$_ZNK6dealii18FunctionDerivativeILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii18FunctionDerivativeILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii18FunctionDerivativeILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii18FunctionDerivativeILi2EE18memory_consumptionEv = comdat any

$_ZN6dealii18FunctionDerivativeILi3EEC5ERKNS_8FunctionILi3EEERKNS_5PointILi3EEEd = comdat any

$_ZN6dealii18FunctionDerivativeILi3EE11set_formulaENS_22AutoDerivativeFunctionILi3EE17DifferenceFormulaE = comdat any

$_ZN6dealii18FunctionDerivativeILi3EEC5ERKNS_8FunctionILi3EEERKSt6vectorINS_5PointILi3EEESaIS8_EEd = comdat any

$_ZN6dealii18FunctionDerivativeILi3EE5set_hEd = comdat any

$_ZNK6dealii18FunctionDerivativeILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii18FunctionDerivativeILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii18FunctionDerivativeILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii18FunctionDerivativeILi3EE18memory_consumptionEv = comdat any

$_ZN6dealii18FunctionDerivativeILi1EED2Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi1EED0Ev = comdat any

$_ZThn16_N6dealii18FunctionDerivativeILi1EED1Ev = comdat any

$_ZThn16_N6dealii18FunctionDerivativeILi1EED0Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaD0Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi2EED2Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi2EED0Ev = comdat any

$_ZThn16_N6dealii18FunctionDerivativeILi2EED1Ev = comdat any

$_ZThn16_N6dealii18FunctionDerivativeILi2EED0Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaD0Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi3EED2Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi3EED0Ev = comdat any

$_ZThn16_N6dealii18FunctionDerivativeILi3EED1Ev = comdat any

$_ZThn16_N6dealii18FunctionDerivativeILi3EED0Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaD0Ev = comdat any

$_ZN6dealii6VectorIdED0Ev = comdat any

$_ZN6dealii6VectorIdE6reinitEjb = comdat any

$_ZN6dealii6VectorIdE4swapERS1_ = comdat any

$_ZTVN6dealii18FunctionDerivativeILi1EEE = comdat any

$_ZTVN6dealii18FunctionDerivativeILi2EEE = comdat any

$_ZTVN6dealii18FunctionDerivativeILi3EEE = comdat any

$_ZTSN6dealii18FunctionDerivativeILi1EEE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi1EEE = comdat any

$_ZTSN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi1EEE = comdat any

$_ZTIN6dealii18FunctionDerivativeILi1EEE = comdat any

$_ZTVN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaE = comdat any

$_ZTSN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaE = comdat any

$_ZTIN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaE = comdat any

$_ZTSN6dealii18FunctionDerivativeILi2EEE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi2EEE = comdat any

$_ZTSN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi2EEE = comdat any

$_ZTIN6dealii18FunctionDerivativeILi2EEE = comdat any

$_ZTVN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaE = comdat any

$_ZTSN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaE = comdat any

$_ZTIN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaE = comdat any

$_ZTSN6dealii18FunctionDerivativeILi3EEE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi3EEE = comdat any

$_ZTIN6dealii18FunctionDerivativeILi3EEE = comdat any

$_ZTVN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaE = comdat any

$_ZTSN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaE = comdat any

$_ZTIN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaE = comdat any

$_ZTVN6dealii6VectorIdEE = comdat any

$_ZTSN6dealii6VectorIdEE = comdat any

$_ZTIN6dealii6VectorIdEE = comdat any

@_ZTVN6dealii18FunctionDerivativeILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii18FunctionDerivativeILi1EEE, ptr @_ZN6dealii18FunctionDerivativeILi1EED2Ev, ptr @_ZN6dealii18FunctionDerivativeILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii18FunctionDerivativeILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii18FunctionDerivativeILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii18FunctionDerivativeILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii18FunctionDerivativeILi1EEE, ptr @_ZThn16_N6dealii18FunctionDerivativeILi1EED1Ev, ptr @_ZThn16_N6dealii18FunctionDerivativeILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii18FunctionDerivativeILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii18FunctionDerivativeILi2EEE, ptr @_ZN6dealii18FunctionDerivativeILi2EED2Ev, ptr @_ZN6dealii18FunctionDerivativeILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii18FunctionDerivativeILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii18FunctionDerivativeILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii18FunctionDerivativeILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii18FunctionDerivativeILi2EEE, ptr @_ZThn16_N6dealii18FunctionDerivativeILi2EED1Ev, ptr @_ZThn16_N6dealii18FunctionDerivativeILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii18FunctionDerivativeILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii18FunctionDerivativeILi3EEE, ptr @_ZN6dealii18FunctionDerivativeILi3EED2Ev, ptr @_ZN6dealii18FunctionDerivativeILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii18FunctionDerivativeILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii18FunctionDerivativeILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii18FunctionDerivativeILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii18FunctionDerivativeILi3EEE, ptr @_ZThn16_N6dealii18FunctionDerivativeILi3EED1Ev, ptr @_ZThn16_N6dealii18FunctionDerivativeILi3EED0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii18FunctionDerivativeILi1EEE = weak_odr dso_local constant [36 x i8] c"N6dealii18FunctionDerivativeILi1EEE\00", comdat, align 1
@_ZTSN6dealii22AutoDerivativeFunctionILi1EEE = linkonce_odr dso_local constant [40 x i8] c"N6dealii22AutoDerivativeFunctionILi1EEE\00", comdat, align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii12FunctionTimeE = external constant ptr
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi1EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii22AutoDerivativeFunctionILi1EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTIN6dealii18FunctionDerivativeILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii18FunctionDerivativeILi1EEE, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi1EEE }, comdat, align 8
@_ZTVN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii13ExceptionBase10print_infoERSo] }, comdat, align 8
@_ZTSN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaE = weak_odr dso_local constant [55 x i8] c"N6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaE\00", comdat, align 1
@_ZTIN6dealii13ExceptionBaseE = external constant ptr
@_ZTIN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii18FunctionDerivativeILi2EEE = weak_odr dso_local constant [36 x i8] c"N6dealii18FunctionDerivativeILi2EEE\00", comdat, align 1
@_ZTSN6dealii22AutoDerivativeFunctionILi2EEE = linkonce_odr dso_local constant [40 x i8] c"N6dealii22AutoDerivativeFunctionILi2EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi2EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii22AutoDerivativeFunctionILi2EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTIN6dealii18FunctionDerivativeILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii18FunctionDerivativeILi2EEE, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi2EEE }, comdat, align 8
@_ZTVN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii13ExceptionBase10print_infoERSo] }, comdat, align 8
@_ZTSN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaE = weak_odr dso_local constant [55 x i8] c"N6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaE\00", comdat, align 1
@_ZTIN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii18FunctionDerivativeILi3EEE = weak_odr dso_local constant [36 x i8] c"N6dealii18FunctionDerivativeILi3EEE\00", comdat, align 1
@_ZTSN6dealii22AutoDerivativeFunctionILi3EEE = linkonce_odr dso_local constant [40 x i8] c"N6dealii22AutoDerivativeFunctionILi3EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi3EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii22AutoDerivativeFunctionILi3EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTIN6dealii18FunctionDerivativeILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii18FunctionDerivativeILi3EEE, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi3EEE }, comdat, align 8
@_ZTVN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii13ExceptionBase10print_infoERSo] }, comdat, align 8
@_ZTSN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaE = weak_odr dso_local constant [55 x i8] c"N6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaE\00", comdat, align 1
@_ZTIN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVN6dealii6VectorIdEE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii6VectorIdEE, ptr @_ZN6dealii6VectorIdED2Ev, ptr @_ZN6dealii6VectorIdED0Ev, ptr @_ZN6dealii6VectorIdE6reinitEjb, ptr @_ZN6dealii6VectorIdE4swapERS1_] }, comdat, align 8
@_ZTSN6dealii6VectorIdEE = linkonce_odr dso_local constant [20 x i8] c"N6dealii6VectorIdEE\00", comdat, align 1
@_ZTIN6dealii6VectorIdEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii6VectorIdEE, ptr @_ZTIN6dealii11SubscriptorE }, comdat, align 8

@_ZN6dealii18FunctionDerivativeILi1EEC1ERKNS_8FunctionILi1EEERKNS_5PointILi1EEEd = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr, double), ptr @_ZN6dealii18FunctionDerivativeILi1EEC2ERKNS_8FunctionILi1EEERKNS_5PointILi1EEEd
@_ZN6dealii18FunctionDerivativeILi1EEC1ERKNS_8FunctionILi1EEERKSt6vectorINS_5PointILi1EEESaIS8_EEd = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr, double), ptr @_ZN6dealii18FunctionDerivativeILi1EEC2ERKNS_8FunctionILi1EEERKSt6vectorINS_5PointILi1EEESaIS8_EEd
@_ZN6dealii18FunctionDerivativeILi2EEC1ERKNS_8FunctionILi2EEERKNS_5PointILi2EEEd = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr, double), ptr @_ZN6dealii18FunctionDerivativeILi2EEC2ERKNS_8FunctionILi2EEERKNS_5PointILi2EEEd
@_ZN6dealii18FunctionDerivativeILi2EEC1ERKNS_8FunctionILi2EEERKSt6vectorINS_5PointILi2EEESaIS8_EEd = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr, double), ptr @_ZN6dealii18FunctionDerivativeILi2EEC2ERKNS_8FunctionILi2EEERKSt6vectorINS_5PointILi2EEESaIS8_EEd
@_ZN6dealii18FunctionDerivativeILi3EEC1ERKNS_8FunctionILi3EEERKNS_5PointILi3EEEd = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr, double), ptr @_ZN6dealii18FunctionDerivativeILi3EEC2ERKNS_8FunctionILi3EEERKNS_5PointILi3EEEd
@_ZN6dealii18FunctionDerivativeILi3EEC1ERKNS_8FunctionILi3EEERKSt6vectorINS_5PointILi3EEESaIS8_EEd = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr, double), ptr @_ZN6dealii18FunctionDerivativeILi3EEC2ERKNS_8FunctionILi3EEERKSt6vectorINS_5PointILi3EEESaIS8_EEd

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EEC2ERKNS_8FunctionILi1EEERKNS_5PointILi1EEEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi1EEC5ERKNS_8FunctionILi1EEERKNS_5PointILi1EEEd) align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %5 = getelementptr inbounds %"class.dealii::Function", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %"class.dealii::FunctionTime", ptr %1, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !59
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %6, double noundef %8)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 1, i64 2), ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !62
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  store double %3, ptr %11, align 8, !tbaa !63
  %12 = load double, ptr %2, align 8, !tbaa !75, !noalias !76
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %14 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #18
          to label %15 unwind label %22

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %17 = fmul double %12, %3
  %18 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  store ptr %14, ptr %13, align 8, !tbaa !81
  store ptr %14, ptr %16, align 8, !tbaa !82
  %19 = getelementptr inbounds %"class.dealii::Point", ptr %14, i64 1
  store ptr %19, ptr %18, align 8, !tbaa !83
  store double %17, ptr %14, align 8, !tbaa !75
  %20 = getelementptr inbounds %"class.dealii::Point", ptr %14, i64 1
  store ptr %20, ptr %16, align 8, !tbaa !82
  %21 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 3
  store i32 0, ptr %21, align 8, !tbaa !84
  ret void

22:                                               ; preds = %4
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  resume { ptr, i32 } %23
}

declare void @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132), double noundef, i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EE11set_formulaENS_22AutoDerivativeFunctionILi1EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EEC2ERKNS_8FunctionILi1EEERKSt6vectorINS_5PointILi1EEESaIS8_EEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi1EEC5ERKNS_8FunctionILi1EEERKSt6vectorINS_5PointILi1EEESaIS8_EEd) align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %5 = getelementptr inbounds %"class.dealii::Function", ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %"class.dealii::FunctionTime", ptr %1, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !59
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %6, double noundef %8)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 1, i64 2), ptr %9, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !62
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  store double %3, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = load ptr, ptr %2, align 8, !tbaa !81
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = ashr exact i64 %18, 3
  %20 = icmp ugt i64 %19, 1152921504606846975
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %22 unwind label %45

22:                                               ; preds = %21
  unreachable

23:                                               ; preds = %4
  %24 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %25 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %26 = icmp eq ptr %14, %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %18) #18
          to label %29 unwind label %45

29:                                               ; preds = %27, %23
  %30 = phi ptr [ null, %23 ], [ %28, %27 ]
  store ptr %30, ptr %12, align 8, !tbaa !81
  store ptr %30, ptr %24, align 8, !tbaa !82
  %31 = getelementptr inbounds %"class.dealii::Point", ptr %30, i64 %19
  store ptr %31, ptr %25, align 8, !tbaa !83
  br i1 %26, label %34, label %32

32:                                               ; preds = %29
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %18, i1 false), !tbaa !75
  %33 = getelementptr i8, ptr %30, i64 %18
  br label %34

34:                                               ; preds = %29, %32
  %35 = phi ptr [ %30, %29 ], [ %33, %32 ]
  store ptr %35, ptr %24, align 8, !tbaa !82
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %30 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 3
  %40 = icmp eq ptr %35, %30
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %2, align 8, !tbaa !81
  br label %47

43:                                               ; preds = %47, %34
  %44 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 3
  store i32 0, ptr %44, align 8, !tbaa !84
  ret void

45:                                               ; preds = %27, %21
  %46 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  resume { ptr, i32 } %46

47:                                               ; preds = %41, %47
  %48 = phi i64 [ 0, %41 ], [ %55, %47 ]
  %49 = phi i32 [ 0, %41 ], [ %54, %47 ]
  %50 = getelementptr inbounds %"class.dealii::Point", ptr %42, i64 %48
  %51 = load double, ptr %50, align 8, !tbaa !75, !noalias !86
  %52 = fmul double %51, %3
  %53 = getelementptr inbounds %"class.dealii::Point", ptr %30, i64 %48
  store double %52, ptr %53, align 8, !tbaa !75
  %54 = add i32 %49, 1
  %55 = zext i32 %54 to i64
  %56 = icmp ugt i64 %39, %55
  br i1 %56, label %47, label %43, !llvm.loop !91
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %9 = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = shl nuw nsw i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #18
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ null, %6 ], [ %12, %10 ]
  store ptr %14, ptr %0, align 8, !tbaa !81
  store ptr %14, ptr %7, align 8, !tbaa !82
  %15 = getelementptr inbounds %"class.dealii::Point", ptr %14, i64 %1
  store ptr %15, ptr %8, align 8, !tbaa !83
  %16 = icmp eq i64 %1, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %18, i1 false), !tbaa !75
  %19 = shl nuw nsw i64 %1, 3
  %20 = getelementptr i8, ptr %14, i64 %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi ptr [ %14, %13 ], [ %20, %17 ]
  store ptr %22, ptr %7, align 8, !tbaa !82
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = load ptr, ptr %3, align 8, !tbaa !81
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  br label %16

14:                                               ; preds = %16, %2
  %15 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  store double %1, ptr %15, align 8, !tbaa !63
  ret void

16:                                               ; preds = %12, %16
  %17 = phi i64 [ 0, %12 ], [ %25, %16 ]
  %18 = phi i32 [ 0, %12 ], [ %24, %16 ]
  %19 = load double, ptr %13, align 8, !tbaa !63
  %20 = fdiv double %1, %19
  %21 = getelementptr inbounds %"class.dealii::Point", ptr %6, i64 %17
  %22 = load double, ptr %21, align 8, !tbaa !75
  %23 = fmul double %22, %20
  store double %23, ptr %21, align 8, !tbaa !75
  %24 = add i32 %18, 1
  %25 = zext i32 %24 to i64
  %26 = icmp ugt i64 %10, %25
  br i1 %26, label %16, label %14, !llvm.loop !94
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii18FunctionDerivativeILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #5 comdat align 2 !prof !85 {
  %4 = alloca %"class.dealii::Point", align 8
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !84
  switch i32 %12, label %109 [
    i32 0, label %13
    i32 1, label %39
    i32 2, label %60
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %16 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %18 = load double, ptr %1, align 8, !tbaa !75, !noalias !96
  %19 = load double, ptr %17, align 8, !tbaa !75, !noalias !96
  %20 = fadd double %18, %19
  store double %20, ptr %4, align 8, !tbaa !75, !alias.scope !96
  %21 = load ptr, ptr %15, align 8, !tbaa !60
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef double %23(ptr noundef nonnull align 8 dereferenceable(92) %15, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %2)
  %25 = load ptr, ptr %14, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %26 = load ptr, ptr %16, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %27 = load double, ptr %1, align 8, !tbaa !75, !noalias !99
  %28 = load double, ptr %26, align 8, !tbaa !75, !noalias !99
  %29 = fsub double %27, %28
  store double %29, ptr %5, align 8, !tbaa !75, !alias.scope !99
  %30 = load ptr, ptr %25, align 8, !tbaa !60
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = call noundef double %32(ptr noundef nonnull align 8 dereferenceable(92) %25, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2)
  %34 = fsub double %24, %33
  %35 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %36 = load double, ptr %35, align 8, !tbaa !63
  %37 = fmul double %36, 2.000000e+00
  %38 = fdiv double %34, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %109

39:                                               ; preds = %3
  %40 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !95
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = getelementptr inbounds ptr, ptr %42, i64 4
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef double %44(ptr noundef nonnull align 8 dereferenceable(92) %41, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2)
  %46 = load ptr, ptr %40, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %47 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !81
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %49 = load double, ptr %1, align 8, !tbaa !75, !noalias !102
  %50 = load double, ptr %48, align 8, !tbaa !75, !noalias !102
  %51 = fsub double %49, %50
  store double %51, ptr %6, align 8, !tbaa !75, !alias.scope !102
  %52 = load ptr, ptr %46, align 8, !tbaa !60
  %53 = getelementptr inbounds ptr, ptr %52, i64 4
  %54 = load ptr, ptr %53, align 8
  %55 = call noundef double %54(ptr noundef nonnull align 8 dereferenceable(92) %46, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2)
  %56 = fsub double %45, %55
  %57 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %58 = load double, ptr %57, align 8, !tbaa !63
  %59 = fdiv double %56, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %109

60:                                               ; preds = %3
  %61 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %63 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !81
  %65 = load double, ptr %64, align 8, !tbaa !75, !noalias !105
  %66 = fmul double %65, 2.000000e+00
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %67 = load double, ptr %1, align 8, !tbaa !75, !noalias !110
  %68 = fadd double %66, %67
  store double %68, ptr %7, align 8, !tbaa !75, !alias.scope !110
  %69 = load ptr, ptr %62, align 8, !tbaa !60
  %70 = getelementptr inbounds ptr, ptr %69, i64 4
  %71 = load ptr, ptr %70, align 8
  %72 = call noundef double %71(ptr noundef nonnull align 8 dereferenceable(92) %62, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %2)
  %73 = fneg double %72
  %74 = load ptr, ptr %61, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %75 = load ptr, ptr %63, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %76 = load double, ptr %1, align 8, !tbaa !75, !noalias !113
  %77 = load double, ptr %75, align 8, !tbaa !75, !noalias !113
  %78 = fadd double %76, %77
  store double %78, ptr %8, align 8, !tbaa !75, !alias.scope !113
  %79 = load ptr, ptr %74, align 8, !tbaa !60
  %80 = getelementptr inbounds ptr, ptr %79, i64 4
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef double %81(ptr noundef nonnull align 8 dereferenceable(92) %74, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %2)
  %83 = call double @llvm.fmuladd.f64(double %82, double 8.000000e+00, double %73)
  %84 = load ptr, ptr %61, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %85 = load ptr, ptr %63, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %86 = load double, ptr %1, align 8, !tbaa !75, !noalias !116
  %87 = load double, ptr %85, align 8, !tbaa !75, !noalias !116
  %88 = fsub double %86, %87
  store double %88, ptr %9, align 8, !tbaa !75, !alias.scope !116
  %89 = load ptr, ptr %84, align 8, !tbaa !60
  %90 = getelementptr inbounds ptr, ptr %89, i64 4
  %91 = load ptr, ptr %90, align 8
  %92 = call noundef double %91(ptr noundef nonnull align 8 dereferenceable(92) %84, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %2)
  %93 = call double @llvm.fmuladd.f64(double %92, double -8.000000e+00, double %83)
  %94 = load ptr, ptr %61, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %95 = load ptr, ptr %63, align 8, !tbaa !81
  %96 = load double, ptr %95, align 8, !tbaa !75, !noalias !119
  %97 = fmul double %96, 2.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %98 = load double, ptr %1, align 8, !tbaa !75, !noalias !124
  %99 = fsub double %98, %97
  store double %99, ptr %10, align 8, !tbaa !75, !alias.scope !124
  %100 = load ptr, ptr %94, align 8, !tbaa !60
  %101 = getelementptr inbounds ptr, ptr %100, i64 4
  %102 = load ptr, ptr %101, align 8
  %103 = call noundef double %102(ptr noundef nonnull align 8 dereferenceable(92) %94, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %2)
  %104 = fadd double %93, %103
  %105 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %106 = load double, ptr %105, align 8, !tbaa !63
  %107 = fmul double %106, 1.200000e+01
  %108 = fdiv double %104, %107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %109

109:                                              ; preds = %3, %60, %39, %13
  %110 = phi double [ %108, %60 ], [ %59, %39 ], [ %38, %13 ], [ 0.000000e+00, %3 ]
  ret double %110
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %4 = alloca %"class.dealii::Vector", align 8
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #19
  %12 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !127
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.dealii::Vector", ptr %4, i64 0, i32 1
  %15 = getelementptr inbounds %"class.dealii::Vector", ptr %4, i64 0, i32 2
  %16 = getelementptr inbounds %"class.dealii::Vector", ptr %4, i64 0, i32 3
  %17 = icmp eq i32 %13, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  br label %30

19:                                               ; preds = %3
  %20 = zext i32 %13 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %21) #18
          to label %23 unwind label %28

23:                                               ; preds = %19
  store ptr %22, ptr %16, align 8, !tbaa !129
  store i32 %13, ptr %15, align 4, !tbaa !130
  store i32 %13, ptr %14, align 8, !tbaa !127
  %24 = zext i32 %13 to i64
  %25 = shl nuw nsw i64 %24, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %22, i8 0, i64 %25, i1 false), !tbaa !75
  br label %30

26:                                               ; preds = %246, %28
  %27 = phi { ptr, i32 } [ %29, %28 ], [ %242, %246 ]
  resume { ptr, i32 } %27

28:                                               ; preds = %19
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #19
  br label %26

30:                                               ; preds = %23, %18
  %31 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !84
  switch i32 %32, label %236 [
    i32 0, label %33
    i32 1, label %83
    i32 2, label %124
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %36 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %38 = load double, ptr %1, align 8, !tbaa !75, !noalias !131
  %39 = load double, ptr %37, align 8, !tbaa !75, !noalias !131
  %40 = fadd double %38, %39
  store double %40, ptr %5, align 8, !tbaa !75, !alias.scope !131
  %41 = load ptr, ptr %35, align 8, !tbaa !60
  %42 = getelementptr inbounds ptr, ptr %41, i64 5
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(92) %35, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %44 unwind label %77

44:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %45 = load ptr, ptr %34, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %46 = load ptr, ptr %36, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %47 = load double, ptr %1, align 8, !tbaa !75, !noalias !134
  %48 = load double, ptr %46, align 8, !tbaa !75, !noalias !134
  %49 = fsub double %47, %48
  store double %49, ptr %6, align 8, !tbaa !75, !alias.scope !134
  %50 = load ptr, ptr %45, align 8, !tbaa !60
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(92) %45, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %53 unwind label %79

53:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %54 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %55 = load double, ptr %54, align 8, !tbaa !63
  %56 = fmul double %55, 2.000000e+00
  %57 = fdiv double 1.000000e+00, %56
  %58 = fdiv double -1.000000e+00, %56
  %59 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !129
  %61 = load i32, ptr %12, align 8, !tbaa !127
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %60, i64 %62
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %236, label %65

65:                                               ; preds = %53
  %66 = load ptr, ptr %16, align 8, !tbaa !129
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi ptr [ %71, %67 ], [ %66, %65 ]
  %69 = phi ptr [ %75, %67 ], [ %60, %65 ]
  %70 = load double, ptr %69, align 8, !tbaa !75
  %71 = getelementptr inbounds double, ptr %68, i64 1
  %72 = load double, ptr %68, align 8, !tbaa !75
  %73 = fmul double %58, %72
  %74 = call double @llvm.fmuladd.f64(double %57, double %70, double %73)
  store double %74, ptr %69, align 8, !tbaa !75
  %75 = getelementptr inbounds double, ptr %69, i64 1
  %76 = icmp eq ptr %75, %63
  br i1 %76, label %236, label %67, !llvm.loop !137

77:                                               ; preds = %33
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %241

79:                                               ; preds = %44
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %241

81:                                               ; preds = %83
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %241

83:                                               ; preds = %30
  %84 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !95
  %86 = load ptr, ptr %85, align 8, !tbaa !60
  %87 = getelementptr inbounds ptr, ptr %86, i64 5
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(92) %85, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %89 unwind label %81

89:                                               ; preds = %83
  %90 = load ptr, ptr %84, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %91 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %93 = load double, ptr %1, align 8, !tbaa !75, !noalias !138
  %94 = load double, ptr %92, align 8, !tbaa !75, !noalias !138
  %95 = fsub double %93, %94
  store double %95, ptr %7, align 8, !tbaa !75, !alias.scope !138
  %96 = load ptr, ptr %90, align 8, !tbaa !60
  %97 = getelementptr inbounds ptr, ptr %96, i64 5
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(92) %90, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %99 unwind label %122

99:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %100 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %101 = load double, ptr %100, align 8, !tbaa !63
  %102 = fdiv double 1.000000e+00, %101
  %103 = fdiv double -1.000000e+00, %101
  %104 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !129
  %106 = load i32, ptr %12, align 8, !tbaa !127
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds double, ptr %105, i64 %107
  %109 = icmp eq i32 %106, 0
  br i1 %109, label %236, label %110

110:                                              ; preds = %99
  %111 = load ptr, ptr %16, align 8, !tbaa !129
  br label %112

112:                                              ; preds = %110, %112
  %113 = phi ptr [ %116, %112 ], [ %111, %110 ]
  %114 = phi ptr [ %120, %112 ], [ %105, %110 ]
  %115 = load double, ptr %114, align 8, !tbaa !75
  %116 = getelementptr inbounds double, ptr %113, i64 1
  %117 = load double, ptr %113, align 8, !tbaa !75
  %118 = fmul double %103, %117
  %119 = call double @llvm.fmuladd.f64(double %102, double %115, double %118)
  store double %119, ptr %114, align 8, !tbaa !75
  %120 = getelementptr inbounds double, ptr %114, i64 1
  %121 = icmp eq ptr %120, %108
  br i1 %121, label %236, label %112, !llvm.loop !137

122:                                              ; preds = %89
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %241

124:                                              ; preds = %30
  %125 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %127 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !81
  %129 = load double, ptr %128, align 8, !tbaa !75, !noalias !141
  %130 = fmul double %129, 2.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %131 = load double, ptr %1, align 8, !tbaa !75, !noalias !146
  %132 = fsub double %131, %130
  store double %132, ptr %8, align 8, !tbaa !75, !alias.scope !146
  %133 = load ptr, ptr %126, align 8, !tbaa !60
  %134 = getelementptr inbounds ptr, ptr %133, i64 5
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr noundef nonnull align 8 dereferenceable(92) %126, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %136 unwind label %228

136:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  %137 = load ptr, ptr %125, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %138 = load ptr, ptr %127, align 8, !tbaa !81
  %139 = load double, ptr %138, align 8, !tbaa !75, !noalias !149
  %140 = fmul double %139, 2.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %141 = load double, ptr %1, align 8, !tbaa !75, !noalias !154
  %142 = fadd double %140, %141
  store double %142, ptr %9, align 8, !tbaa !75, !alias.scope !154
  %143 = load ptr, ptr %137, align 8, !tbaa !60
  %144 = getelementptr inbounds ptr, ptr %143, i64 5
  %145 = load ptr, ptr %144, align 8
  invoke void %145(ptr noundef nonnull align 8 dereferenceable(92) %137, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %146 unwind label %230

146:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  %147 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !129
  %149 = load i32, ptr %12, align 8, !tbaa !127
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds double, ptr %148, i64 %150
  %152 = icmp eq i32 %149, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %146
  %154 = load ptr, ptr %16, align 8, !tbaa !129
  br label %155

155:                                              ; preds = %153, %155
  %156 = phi ptr [ %158, %155 ], [ %154, %153 ]
  %157 = phi ptr [ %160, %155 ], [ %148, %153 ]
  %158 = getelementptr inbounds double, ptr %156, i64 1
  %159 = load double, ptr %156, align 8, !tbaa !75
  %160 = getelementptr inbounds double, ptr %157, i64 1
  %161 = load double, ptr %157, align 8, !tbaa !75
  %162 = call double @llvm.fmuladd.f64(double %159, double -1.000000e+00, double %161)
  store double %162, ptr %157, align 8, !tbaa !75
  %163 = icmp eq ptr %160, %151
  br i1 %163, label %164, label %155, !llvm.loop !157

164:                                              ; preds = %155, %146
  %165 = load ptr, ptr %125, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %166 = load ptr, ptr %127, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %167 = load double, ptr %1, align 8, !tbaa !75, !noalias !158
  %168 = load double, ptr %166, align 8, !tbaa !75, !noalias !158
  %169 = fsub double %167, %168
  store double %169, ptr %10, align 8, !tbaa !75, !alias.scope !158
  %170 = load ptr, ptr %165, align 8, !tbaa !60
  %171 = getelementptr inbounds ptr, ptr %170, i64 5
  %172 = load ptr, ptr %171, align 8
  invoke void %172(ptr noundef nonnull align 8 dereferenceable(92) %165, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %173 unwind label %232

173:                                              ; preds = %164
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %174 = load ptr, ptr %147, align 8, !tbaa !129
  %175 = load i32, ptr %12, align 8, !tbaa !127
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds double, ptr %174, i64 %176
  %178 = icmp eq i32 %175, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %173
  %180 = load ptr, ptr %16, align 8, !tbaa !129
  br label %181

181:                                              ; preds = %179, %181
  %182 = phi ptr [ %184, %181 ], [ %180, %179 ]
  %183 = phi ptr [ %186, %181 ], [ %174, %179 ]
  %184 = getelementptr inbounds double, ptr %182, i64 1
  %185 = load double, ptr %182, align 8, !tbaa !75
  %186 = getelementptr inbounds double, ptr %183, i64 1
  %187 = load double, ptr %183, align 8, !tbaa !75
  %188 = call double @llvm.fmuladd.f64(double %185, double -8.000000e+00, double %187)
  store double %188, ptr %183, align 8, !tbaa !75
  %189 = icmp eq ptr %186, %177
  br i1 %189, label %190, label %181, !llvm.loop !157

190:                                              ; preds = %181, %173
  %191 = load ptr, ptr %125, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %192 = load ptr, ptr %127, align 8, !tbaa !81
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %193 = load double, ptr %1, align 8, !tbaa !75, !noalias !161
  %194 = load double, ptr %192, align 8, !tbaa !75, !noalias !161
  %195 = fadd double %193, %194
  store double %195, ptr %11, align 8, !tbaa !75, !alias.scope !161
  %196 = load ptr, ptr %191, align 8, !tbaa !60
  %197 = getelementptr inbounds ptr, ptr %196, i64 5
  %198 = load ptr, ptr %197, align 8
  invoke void %198(ptr noundef nonnull align 8 dereferenceable(92) %191, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %199 unwind label %234

199:                                              ; preds = %190
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %200 = load ptr, ptr %147, align 8, !tbaa !129
  %201 = load i32, ptr %12, align 8, !tbaa !127
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds double, ptr %200, i64 %202
  %204 = icmp eq i32 %201, 0
  br i1 %204, label %216, label %205

205:                                              ; preds = %199
  %206 = load ptr, ptr %16, align 8, !tbaa !129
  br label %207

207:                                              ; preds = %205, %207
  %208 = phi ptr [ %210, %207 ], [ %206, %205 ]
  %209 = phi ptr [ %212, %207 ], [ %200, %205 ]
  %210 = getelementptr inbounds double, ptr %208, i64 1
  %211 = load double, ptr %208, align 8, !tbaa !75
  %212 = getelementptr inbounds double, ptr %209, i64 1
  %213 = load double, ptr %209, align 8, !tbaa !75
  %214 = call double @llvm.fmuladd.f64(double %211, double 8.000000e+00, double %213)
  store double %214, ptr %209, align 8, !tbaa !75
  %215 = icmp eq ptr %212, %203
  br i1 %215, label %216, label %207, !llvm.loop !157

216:                                              ; preds = %207, %199
  %217 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %218 = load double, ptr %217, align 8, !tbaa !63
  %219 = fmul double %218, 1.200000e+01
  %220 = fdiv double 1.000000e+00, %219
  %221 = icmp eq i32 %201, 0
  br i1 %221, label %236, label %222

222:                                              ; preds = %216, %222
  %223 = phi ptr [ %224, %222 ], [ %200, %216 ]
  %224 = getelementptr inbounds double, ptr %223, i64 1
  %225 = load double, ptr %223, align 8, !tbaa !75
  %226 = fmul double %220, %225
  store double %226, ptr %223, align 8, !tbaa !75
  %227 = icmp eq ptr %224, %203
  br i1 %227, label %236, label %222, !llvm.loop !164

228:                                              ; preds = %124
  %229 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %241

230:                                              ; preds = %136
  %231 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %241

232:                                              ; preds = %164
  %233 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %241

234:                                              ; preds = %190
  %235 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br label %241

236:                                              ; preds = %222, %112, %67, %216, %99, %53, %30
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !60
  %237 = load ptr, ptr %16, align 8, !tbaa !129
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  call void @_ZdaPv(ptr noundef %237) #21
  store ptr null, ptr %16, align 8, !tbaa !129
  br label %240

240:                                              ; preds = %236, %239
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #19
  ret void

241:                                              ; preds = %234, %232, %230, %228, %122, %81, %79, %77
  %242 = phi { ptr, i32 } [ %235, %234 ], [ %233, %232 ], [ %231, %230 ], [ %229, %228 ], [ %82, %81 ], [ %123, %122 ], [ %80, %79 ], [ %78, %77 ]
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !60
  %243 = load ptr, ptr %16, align 8, !tbaa !129
  %244 = icmp eq ptr %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  call void @_ZdaPv(ptr noundef %243) #21
  store ptr null, ptr %16, align 8, !tbaa !129
  br label %246

246:                                              ; preds = %241, %245
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #19
  br label %26
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 comdat align 2 !prof !165 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !166

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #21
  store ptr null, ptr %2, align 8, !tbaa !129
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %5 = alloca %"class.std::vector.8", align 8
  %6 = alloca %"class.std::allocator.10", align 1
  %7 = alloca %"class.std::vector.3", align 8
  %8 = alloca %"class.std::allocator.5", align 1
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = load ptr, ptr %1, align 8, !tbaa !81
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = ashr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = load ptr, ptr %17, align 8, !tbaa !81
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = icmp eq i64 %23, 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %25 = and i64 %15, 4294967295
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  call void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %25, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #19
  invoke void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %25, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %26 unwind label %43

26:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  %27 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !84
  switch i32 %28, label %288 [
    i32 0, label %36
    i32 1, label %108
    i32 2, label %29
  ]

29:                                               ; preds = %26
  %30 = icmp eq i32 %16, 0
  br i1 %30, label %155, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %1, align 8, !tbaa !81
  %33 = load ptr, ptr %17, align 8, !tbaa !81
  %34 = load ptr, ptr %7, align 8, !tbaa !81
  %35 = and i64 %15, 4294967295
  br label %168

36:                                               ; preds = %26
  %37 = icmp eq i32 %16, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %1, align 8, !tbaa !81
  %40 = load ptr, ptr %17, align 8, !tbaa !81
  %41 = load ptr, ptr %7, align 8, !tbaa !81
  %42 = and i64 %15, 4294967295
  br label %58

43:                                               ; preds = %4
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  br label %298

45:                                               ; preds = %58, %36
  %46 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  %49 = getelementptr inbounds ptr, ptr %48, i64 6
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(92) %47, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3)
          to label %51 unwind label %81

51:                                               ; preds = %45
  %52 = icmp eq i32 %16, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %1, align 8, !tbaa !81
  %55 = load ptr, ptr %17, align 8, !tbaa !81
  %56 = load ptr, ptr %7, align 8, !tbaa !81
  %57 = and i64 %15, 4294967295
  br label %85

58:                                               ; preds = %38, %58
  %59 = phi i64 [ 0, %38 ], [ %67, %58 ]
  %60 = getelementptr inbounds %"class.dealii::Point", ptr %39, i64 %59
  %61 = select i1 %24, i64 0, i64 %59
  %62 = getelementptr inbounds %"class.dealii::Point", ptr %40, i64 %61
  %63 = load double, ptr %60, align 8, !tbaa !75, !noalias !167
  %64 = load double, ptr %62, align 8, !tbaa !75, !noalias !167
  %65 = fadd double %63, %64
  %66 = getelementptr inbounds %"class.dealii::Point", ptr %41, i64 %59
  store double %65, ptr %66, align 8, !tbaa !75
  %67 = add nuw nsw i64 %59, 1
  %68 = icmp eq i64 %67, %42
  br i1 %68, label %45, label %58, !llvm.loop !170

69:                                               ; preds = %85, %51
  %70 = load ptr, ptr %46, align 8, !tbaa !95
  %71 = load ptr, ptr %70, align 8, !tbaa !60
  %72 = getelementptr inbounds ptr, ptr %71, i64 6
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(92) %70, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3)
          to label %74 unwind label %81

74:                                               ; preds = %69
  %75 = icmp eq i32 %16, 0
  br i1 %75, label %288, label %76

76:                                               ; preds = %74
  %77 = load ptr, ptr %2, align 8, !tbaa !171
  %78 = load ptr, ptr %5, align 8, !tbaa !171
  %79 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %80 = and i64 %15, 4294967295
  br label %96

81:                                               ; preds = %253, %217, %180, %155, %121, %108, %69, %45
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load ptr, ptr %7, align 8, !tbaa !81
  %84 = icmp eq ptr %83, null
  br i1 %84, label %298, label %297

85:                                               ; preds = %53, %85
  %86 = phi i64 [ 0, %53 ], [ %94, %85 ]
  %87 = getelementptr inbounds %"class.dealii::Point", ptr %54, i64 %86
  %88 = select i1 %24, i64 0, i64 %86
  %89 = getelementptr inbounds %"class.dealii::Point", ptr %55, i64 %88
  %90 = load double, ptr %87, align 8, !tbaa !75, !noalias !173
  %91 = load double, ptr %89, align 8, !tbaa !75, !noalias !173
  %92 = fsub double %90, %91
  %93 = getelementptr inbounds %"class.dealii::Point", ptr %56, i64 %86
  store double %92, ptr %93, align 8, !tbaa !75
  %94 = add nuw nsw i64 %86, 1
  %95 = icmp eq i64 %94, %57
  br i1 %95, label %69, label %85, !llvm.loop !176

96:                                               ; preds = %76, %96
  %97 = phi i64 [ 0, %76 ], [ %106, %96 ]
  %98 = getelementptr inbounds double, ptr %77, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !75
  %100 = getelementptr inbounds double, ptr %78, i64 %97
  %101 = load double, ptr %100, align 8, !tbaa !75
  %102 = fsub double %99, %101
  %103 = load double, ptr %79, align 8, !tbaa !63
  %104 = fmul double %103, 2.000000e+00
  %105 = fdiv double %102, %104
  store double %105, ptr %98, align 8, !tbaa !75
  %106 = add nuw nsw i64 %97, 1
  %107 = icmp eq i64 %106, %80
  br i1 %107, label %288, label %96, !llvm.loop !177

108:                                              ; preds = %26
  %109 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !95
  %111 = load ptr, ptr %110, align 8, !tbaa !60
  %112 = getelementptr inbounds ptr, ptr %111, i64 6
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(92) %110, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3)
          to label %114 unwind label %81

114:                                              ; preds = %108
  %115 = icmp eq i32 %16, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %114
  %117 = load ptr, ptr %1, align 8, !tbaa !81
  %118 = load ptr, ptr %17, align 8, !tbaa !81
  %119 = load ptr, ptr %7, align 8, !tbaa !81
  %120 = and i64 %15, 4294967295
  br label %133

121:                                              ; preds = %133, %114
  %122 = load ptr, ptr %109, align 8, !tbaa !95
  %123 = load ptr, ptr %122, align 8, !tbaa !60
  %124 = getelementptr inbounds ptr, ptr %123, i64 6
  %125 = load ptr, ptr %124, align 8
  invoke void %125(ptr noundef nonnull align 8 dereferenceable(92) %122, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3)
          to label %126 unwind label %81

126:                                              ; preds = %121
  %127 = icmp eq i32 %16, 0
  br i1 %127, label %288, label %128

128:                                              ; preds = %126
  %129 = load ptr, ptr %2, align 8, !tbaa !171
  %130 = load ptr, ptr %5, align 8, !tbaa !171
  %131 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %132 = and i64 %15, 4294967295
  br label %144

133:                                              ; preds = %116, %133
  %134 = phi i64 [ 0, %116 ], [ %142, %133 ]
  %135 = getelementptr inbounds %"class.dealii::Point", ptr %117, i64 %134
  %136 = select i1 %24, i64 0, i64 %134
  %137 = getelementptr inbounds %"class.dealii::Point", ptr %118, i64 %136
  %138 = load double, ptr %135, align 8, !tbaa !75, !noalias !178
  %139 = load double, ptr %137, align 8, !tbaa !75, !noalias !178
  %140 = fsub double %138, %139
  %141 = getelementptr inbounds %"class.dealii::Point", ptr %119, i64 %134
  store double %140, ptr %141, align 8, !tbaa !75
  %142 = add nuw nsw i64 %134, 1
  %143 = icmp eq i64 %142, %120
  br i1 %143, label %121, label %133, !llvm.loop !181

144:                                              ; preds = %128, %144
  %145 = phi i64 [ 0, %128 ], [ %153, %144 ]
  %146 = getelementptr inbounds double, ptr %129, i64 %145
  %147 = load double, ptr %146, align 8, !tbaa !75
  %148 = getelementptr inbounds double, ptr %130, i64 %145
  %149 = load double, ptr %148, align 8, !tbaa !75
  %150 = fsub double %147, %149
  %151 = load double, ptr %131, align 8, !tbaa !63
  %152 = fdiv double %150, %151
  store double %152, ptr %146, align 8, !tbaa !75
  %153 = add nuw nsw i64 %145, 1
  %154 = icmp eq i64 %153, %132
  br i1 %154, label %288, label %144, !llvm.loop !182

155:                                              ; preds = %168, %29
  %156 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !95
  %158 = load ptr, ptr %157, align 8, !tbaa !60
  %159 = getelementptr inbounds ptr, ptr %158, i64 6
  %160 = load ptr, ptr %159, align 8
  invoke void %160(ptr noundef nonnull align 8 dereferenceable(92) %157, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3)
          to label %161 unwind label %81

161:                                              ; preds = %155
  %162 = icmp eq i32 %16, 0
  br i1 %162, label %180, label %163

163:                                              ; preds = %161
  %164 = load ptr, ptr %1, align 8, !tbaa !81
  %165 = load ptr, ptr %17, align 8, !tbaa !81
  %166 = load ptr, ptr %7, align 8, !tbaa !81
  %167 = and i64 %15, 4294967295
  br label %191

168:                                              ; preds = %31, %168
  %169 = phi i64 [ 0, %31 ], [ %178, %168 ]
  %170 = getelementptr inbounds %"class.dealii::Point", ptr %32, i64 %169
  %171 = select i1 %24, i64 0, i64 %169
  %172 = getelementptr inbounds %"class.dealii::Point", ptr %33, i64 %171
  %173 = load double, ptr %172, align 8, !tbaa !75, !noalias !183
  %174 = fmul double %173, 2.000000e+00
  %175 = load double, ptr %170, align 8, !tbaa !75, !noalias !188
  %176 = fsub double %175, %174
  %177 = getelementptr inbounds %"class.dealii::Point", ptr %34, i64 %169
  store double %176, ptr %177, align 8, !tbaa !75
  %178 = add nuw nsw i64 %169, 1
  %179 = icmp eq i64 %178, %35
  br i1 %179, label %155, label %168, !llvm.loop !191

180:                                              ; preds = %191, %161
  %181 = load ptr, ptr %156, align 8, !tbaa !95
  %182 = load ptr, ptr %181, align 8, !tbaa !60
  %183 = getelementptr inbounds ptr, ptr %182, i64 6
  %184 = load ptr, ptr %183, align 8
  invoke void %184(ptr noundef nonnull align 8 dereferenceable(92) %181, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3)
          to label %185 unwind label %81

185:                                              ; preds = %180
  %186 = icmp eq i32 %16, 0
  br i1 %186, label %217, label %187

187:                                              ; preds = %185
  %188 = load ptr, ptr %5, align 8, !tbaa !171
  %189 = load ptr, ptr %2, align 8, !tbaa !171
  %190 = and i64 %15, 4294967295
  br label %208

191:                                              ; preds = %163, %191
  %192 = phi i64 [ 0, %163 ], [ %201, %191 ]
  %193 = getelementptr inbounds %"class.dealii::Point", ptr %164, i64 %192
  %194 = select i1 %24, i64 0, i64 %192
  %195 = getelementptr inbounds %"class.dealii::Point", ptr %165, i64 %194
  %196 = load double, ptr %195, align 8, !tbaa !75, !noalias !192
  %197 = fmul double %196, 2.000000e+00
  %198 = load double, ptr %193, align 8, !tbaa !75, !noalias !197
  %199 = fadd double %198, %197
  %200 = getelementptr inbounds %"class.dealii::Point", ptr %166, i64 %192
  store double %199, ptr %200, align 8, !tbaa !75
  %201 = add nuw nsw i64 %192, 1
  %202 = icmp eq i64 %201, %167
  br i1 %202, label %180, label %191, !llvm.loop !200

203:                                              ; preds = %208
  %204 = load ptr, ptr %1, align 8, !tbaa !81
  %205 = load ptr, ptr %17, align 8, !tbaa !81
  %206 = load ptr, ptr %7, align 8, !tbaa !81
  %207 = and i64 %15, 4294967295
  br label %228

208:                                              ; preds = %187, %208
  %209 = phi i64 [ 0, %187 ], [ %215, %208 ]
  %210 = getelementptr inbounds double, ptr %188, i64 %209
  %211 = load double, ptr %210, align 8, !tbaa !75
  %212 = getelementptr inbounds double, ptr %189, i64 %209
  %213 = load double, ptr %212, align 8, !tbaa !75
  %214 = fsub double %213, %211
  store double %214, ptr %212, align 8, !tbaa !75
  %215 = add nuw nsw i64 %209, 1
  %216 = icmp eq i64 %215, %190
  br i1 %216, label %203, label %208, !llvm.loop !201

217:                                              ; preds = %228, %185
  %218 = load ptr, ptr %156, align 8, !tbaa !95
  %219 = load ptr, ptr %218, align 8, !tbaa !60
  %220 = getelementptr inbounds ptr, ptr %219, i64 6
  %221 = load ptr, ptr %220, align 8
  invoke void %221(ptr noundef nonnull align 8 dereferenceable(92) %218, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3)
          to label %222 unwind label %81

222:                                              ; preds = %217
  %223 = icmp eq i32 %16, 0
  br i1 %223, label %253, label %224

224:                                              ; preds = %222
  %225 = load ptr, ptr %5, align 8, !tbaa !171
  %226 = load ptr, ptr %2, align 8, !tbaa !171
  %227 = and i64 %15, 4294967295
  br label %244

228:                                              ; preds = %203, %228
  %229 = phi i64 [ 0, %203 ], [ %237, %228 ]
  %230 = getelementptr inbounds %"class.dealii::Point", ptr %204, i64 %229
  %231 = select i1 %24, i64 0, i64 %229
  %232 = getelementptr inbounds %"class.dealii::Point", ptr %205, i64 %231
  %233 = load double, ptr %230, align 8, !tbaa !75, !noalias !202
  %234 = load double, ptr %232, align 8, !tbaa !75, !noalias !202
  %235 = fadd double %233, %234
  %236 = getelementptr inbounds %"class.dealii::Point", ptr %206, i64 %229
  store double %235, ptr %236, align 8, !tbaa !75
  %237 = add nuw nsw i64 %229, 1
  %238 = icmp eq i64 %237, %207
  br i1 %238, label %217, label %228, !llvm.loop !205

239:                                              ; preds = %244
  %240 = load ptr, ptr %1, align 8, !tbaa !81
  %241 = load ptr, ptr %17, align 8, !tbaa !81
  %242 = load ptr, ptr %7, align 8, !tbaa !81
  %243 = and i64 %15, 4294967295
  br label %265

244:                                              ; preds = %224, %244
  %245 = phi i64 [ 0, %224 ], [ %251, %244 ]
  %246 = getelementptr inbounds double, ptr %225, i64 %245
  %247 = load double, ptr %246, align 8, !tbaa !75
  %248 = getelementptr inbounds double, ptr %226, i64 %245
  %249 = load double, ptr %248, align 8, !tbaa !75
  %250 = call double @llvm.fmuladd.f64(double %247, double 8.000000e+00, double %249)
  store double %250, ptr %248, align 8, !tbaa !75
  %251 = add nuw nsw i64 %245, 1
  %252 = icmp eq i64 %251, %227
  br i1 %252, label %239, label %244, !llvm.loop !206

253:                                              ; preds = %265, %222
  %254 = load ptr, ptr %156, align 8, !tbaa !95
  %255 = load ptr, ptr %254, align 8, !tbaa !60
  %256 = getelementptr inbounds ptr, ptr %255, i64 6
  %257 = load ptr, ptr %256, align 8
  invoke void %257(ptr noundef nonnull align 8 dereferenceable(92) %254, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3)
          to label %258 unwind label %81

258:                                              ; preds = %253
  %259 = icmp eq i32 %16, 0
  br i1 %259, label %288, label %260

260:                                              ; preds = %258
  %261 = load ptr, ptr %2, align 8, !tbaa !171
  %262 = load ptr, ptr %5, align 8, !tbaa !171
  %263 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %264 = and i64 %15, 4294967295
  br label %276

265:                                              ; preds = %239, %265
  %266 = phi i64 [ 0, %239 ], [ %274, %265 ]
  %267 = getelementptr inbounds %"class.dealii::Point", ptr %240, i64 %266
  %268 = select i1 %24, i64 0, i64 %266
  %269 = getelementptr inbounds %"class.dealii::Point", ptr %241, i64 %268
  %270 = load double, ptr %267, align 8, !tbaa !75, !noalias !207
  %271 = load double, ptr %269, align 8, !tbaa !75, !noalias !207
  %272 = fsub double %270, %271
  %273 = getelementptr inbounds %"class.dealii::Point", ptr %242, i64 %266
  store double %272, ptr %273, align 8, !tbaa !75
  %274 = add nuw nsw i64 %266, 1
  %275 = icmp eq i64 %274, %243
  br i1 %275, label %253, label %265, !llvm.loop !210

276:                                              ; preds = %260, %276
  %277 = phi i64 [ 0, %260 ], [ %286, %276 ]
  %278 = getelementptr inbounds double, ptr %261, i64 %277
  %279 = load double, ptr %278, align 8, !tbaa !75
  %280 = getelementptr inbounds double, ptr %262, i64 %277
  %281 = load double, ptr %280, align 8, !tbaa !75
  %282 = call double @llvm.fmuladd.f64(double %281, double -8.000000e+00, double %279)
  %283 = load double, ptr %263, align 8, !tbaa !63
  %284 = fmul double %283, 1.200000e+01
  %285 = fdiv double %282, %284
  store double %285, ptr %278, align 8, !tbaa !75
  %286 = add nuw nsw i64 %277, 1
  %287 = icmp eq i64 %286, %264
  br i1 %287, label %288, label %276, !llvm.loop !211

288:                                              ; preds = %276, %144, %96, %258, %126, %74, %26
  %289 = load ptr, ptr %7, align 8, !tbaa !81
  %290 = icmp eq ptr %289, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %288
  call void @_ZdlPv(ptr noundef %289) #21
  br label %292

292:                                              ; preds = %288, %291
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  %293 = load ptr, ptr %5, align 8, !tbaa !171
  %294 = icmp eq ptr %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %292
  call void @_ZdlPv(ptr noundef %293) #21
  br label %296

296:                                              ; preds = %292, %295
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret void

297:                                              ; preds = %81
  call void @_ZdlPv(ptr noundef %83) #21
  br label %298

298:                                              ; preds = %297, %81, %43
  %299 = phi { ptr, i32 } [ %44, %43 ], [ %82, %81 ], [ %82, %297 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  %300 = load ptr, ptr %5, align 8, !tbaa !171
  %301 = icmp eq ptr %300, null
  br i1 %301, label %303, label %302

302:                                              ; preds = %298
  call void @_ZdlPv(ptr noundef %300) #21
  br label %303

303:                                              ; preds = %302, %298
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  resume { ptr, i32 } %299
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %9 = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = shl nuw nsw i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #18
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ null, %6 ], [ %12, %10 ]
  store ptr %14, ptr %0, align 8, !tbaa !171
  store ptr %14, ptr %7, align 8, !tbaa !212
  %15 = getelementptr inbounds double, ptr %14, i64 %1
  store ptr %15, ptr %8, align 8, !tbaa !213
  br i1 %9, label %22, label %16

16:                                               ; preds = %13
  store double 0.000000e+00, ptr %14, align 8, !tbaa !75
  %17 = getelementptr double, ptr %14, i64 1
  %18 = icmp eq i64 %1, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = shl nuw nsw i64 %1, 3
  %21 = add nsw i64 %20, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 %21, i1 false), !tbaa !75
  br label %22

22:                                               ; preds = %19, %13, %16
  %23 = phi ptr [ %14, %13 ], [ %17, %16 ], [ %15, %19 ]
  store ptr %23, ptr %7, align 8, !tbaa !212
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii18FunctionDerivativeILi1EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #3 comdat align 2 !prof !85 {
  ret i32 184
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EEC2ERKNS_8FunctionILi2EEERKNS_5PointILi2EEEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi2EEC5ERKNS_8FunctionILi2EEERKNS_5PointILi2EEEd) align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %5 = alloca %"class.dealii::Point.28", align 8
  %6 = getelementptr inbounds %"class.dealii::Function.15", ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !214
  %8 = getelementptr inbounds %"class.dealii::FunctionTime", ptr %1, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !59
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %7, double noundef %9)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 1, i64 2), ptr %10, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  store double %3, ptr %12, align 8, !tbaa !216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !75
  br label %13

13:                                               ; preds = %4, %13
  %14 = phi i64 [ 0, %4 ], [ %18, %13 ]
  %15 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %14
  %16 = load double, ptr %15, align 8, !tbaa !75
  %17 = fmul double %16, %3
  store double %17, ptr %15, align 8, !tbaa !75
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %14, 0
  br i1 %19, label %13, label %20, !llvm.loop !228

20:                                               ; preds = %13
  %21 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %22 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18
          to label %23 unwind label %29

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %25 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  store ptr %22, ptr %21, align 8, !tbaa !229
  store ptr %22, ptr %24, align 8, !tbaa !230
  %26 = getelementptr inbounds %"class.dealii::Point.28", ptr %22, i64 1
  store ptr %26, ptr %25, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa !75
  %27 = getelementptr inbounds %"class.dealii::Point.28", ptr %22, i64 1
  store ptr %27, ptr %24, align 8, !tbaa !230
  %28 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 3
  store i32 0, ptr %28, align 8, !tbaa !232
  ret void

29:                                               ; preds = %20
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  resume { ptr, i32 } %30
}

declare void @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132), double noundef, i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EE11set_formulaENS_22AutoDerivativeFunctionILi2EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !232
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EEC2ERKNS_8FunctionILi2EEERKSt6vectorINS_5PointILi2EEESaIS8_EEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi2EEC5ERKNS_8FunctionILi2EEERKSt6vectorINS_5PointILi2EEESaIS8_EEd) align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %5 = alloca %"class.dealii::Point.28", align 8
  %6 = getelementptr inbounds %"class.dealii::Function.15", ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !214
  %8 = getelementptr inbounds %"class.dealii::FunctionTime", ptr %1, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !59
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %7, double noundef %9)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 1, i64 2), ptr %10, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  store double %3, ptr %12, align 8, !tbaa !216
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !230
  %16 = load ptr, ptr %2, align 8, !tbaa !229
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 4
  %21 = icmp ugt i64 %20, 576460752303423487
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %23 unwind label %47

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %4
  %25 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %26 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %27 = icmp eq ptr %15, %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #18
          to label %30 unwind label %47

30:                                               ; preds = %28, %24
  %31 = phi ptr [ null, %24 ], [ %29, %28 ]
  store ptr %31, ptr %13, align 8, !tbaa !229
  store ptr %31, ptr %25, align 8, !tbaa !230
  %32 = getelementptr inbounds %"class.dealii::Point.28", ptr %31, i64 %20
  store ptr %32, ptr %26, align 8, !tbaa !231
  br i1 %27, label %35, label %33

33:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 %19, i1 false), !tbaa !75
  %34 = getelementptr i8, ptr %31, i64 %19
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %31, %30 ], [ %34, %33 ]
  store ptr %36, ptr %25, align 8, !tbaa !230
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %31 to i64
  %39 = sub i64 %37, %38
  %40 = ashr exact i64 %39, 4
  %41 = icmp eq ptr %36, %31
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %2, align 8, !tbaa !229
  %44 = getelementptr inbounds i8, ptr %5, i64 8
  br label %49

45:                                               ; preds = %61, %35
  %46 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 3
  store i32 0, ptr %46, align 8, !tbaa !232
  ret void

47:                                               ; preds = %28, %22
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  resume { ptr, i32 } %48

49:                                               ; preds = %42, %61
  %50 = phi i64 [ 0, %42 ], [ %67, %61 ]
  %51 = phi i32 [ 0, %42 ], [ %66, %61 ]
  %52 = shl nuw nsw i64 %50, 4
  %53 = getelementptr i8, ptr %43, i64 %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19, !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %53, i64 16, i1 false), !tbaa !75, !noalias !233
  br label %54

54:                                               ; preds = %49, %54
  %55 = phi i64 [ 0, %49 ], [ %59, %54 ]
  %56 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !75, !noalias !233
  %58 = fmul double %57, %3
  store double %58, ptr %56, align 8, !tbaa !75, !noalias !233
  %59 = add nuw nsw i64 %55, 1
  %60 = icmp eq i64 %55, 0
  br i1 %60, label %54, label %61, !llvm.loop !228

61:                                               ; preds = %54
  %62 = load double, ptr %44, align 8, !tbaa !75
  %63 = load double, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19, !noalias !233
  %64 = getelementptr inbounds %"class.dealii::Point.28", ptr %31, i64 %50
  store double %63, ptr %64, align 8, !tbaa !75
  %65 = getelementptr inbounds [2 x double], ptr %64, i64 0, i64 1
  store double %62, ptr %65, align 8, !tbaa !75
  %66 = add i32 %51, 1
  %67 = zext i32 %66 to i64
  %68 = icmp ugt i64 %40, %67
  br i1 %68, label %49, label %45, !llvm.loop !238
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !230
  %6 = load ptr, ptr %3, align 8, !tbaa !229
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  br label %16

14:                                               ; preds = %28, %2
  %15 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  store double %1, ptr %15, align 8, !tbaa !216
  ret void

16:                                               ; preds = %12, %28
  %17 = phi i64 [ 0, %12 ], [ %29, %28 ]
  %18 = load double, ptr %13, align 8, !tbaa !216
  %19 = fdiv double %1, %18
  %20 = getelementptr inbounds %"class.dealii::Point.28", ptr %6, i64 %17
  br label %21

21:                                               ; preds = %16, %21
  %22 = phi i64 [ 0, %16 ], [ %26, %21 ]
  %23 = getelementptr inbounds [2 x double], ptr %20, i64 0, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !75
  %25 = fmul double %19, %24
  store double %25, ptr %23, align 8, !tbaa !75
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %21, label %28, !llvm.loop !228

28:                                               ; preds = %21
  %29 = add i64 %17, 1
  %30 = and i64 %29, 4294967295
  %31 = icmp ugt i64 %10, %30
  br i1 %31, label %16, label %14, !llvm.loop !239
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii18FunctionDerivativeILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #5 comdat align 2 !prof !85 {
  %4 = alloca %"class.dealii::Point.28", align 8
  %5 = alloca %"class.dealii::Point.28", align 8
  %6 = alloca %"class.dealii::Point.28", align 8
  %7 = alloca %"class.dealii::Point.28", align 8
  %8 = alloca %"class.dealii::Point.28", align 8
  %9 = alloca %"class.dealii::Point.28", align 8
  %10 = alloca %"class.dealii::Point.28", align 8
  %11 = alloca %"class.dealii::Point.28", align 8
  %12 = alloca %"class.dealii::Point.28", align 8
  %13 = alloca %"class.dealii::Point.28", align 8
  %14 = alloca %"class.dealii::Point.28", align 8
  %15 = alloca %"class.dealii::Point.28", align 8
  %16 = alloca %"class.dealii::Point.28", align 8
  %17 = alloca %"class.dealii::Point.28", align 8
  %18 = alloca %"class.dealii::Point.28", align 8
  %19 = alloca %"class.dealii::Point.28", align 8
  %20 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !232
  switch i32 %21, label %181 [
    i32 0, label %22
    i32 1, label %62
    i32 2, label %90
  ]

22:                                               ; preds = %3
  %23 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #19
  %25 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #19, !noalias !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !241
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i64 [ 0, %22 ], [ %34, %27 ]
  %29 = getelementptr inbounds [2 x double], ptr %26, i64 0, i64 %28
  %30 = load double, ptr %29, align 8, !tbaa !75, !noalias !241
  %31 = getelementptr inbounds [2 x double], ptr %12, i64 0, i64 %28
  %32 = load double, ptr %31, align 8, !tbaa !75, !noalias !241
  %33 = fadd double %30, %32
  store double %33, ptr %31, align 8, !tbaa !75, !noalias !241
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %28, 0
  br i1 %35, label %27, label %36, !llvm.loop !244

36:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #19, !noalias !241
  %37 = load ptr, ptr %24, align 8, !tbaa !60
  %38 = getelementptr inbounds ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = call noundef double %39(ptr noundef nonnull align 8 dereferenceable(92) %24, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %2)
  %41 = load ptr, ptr %23, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #19
  %42 = load ptr, ptr %25, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #19, !noalias !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !245
  br label %43

43:                                               ; preds = %36, %43
  %44 = phi i64 [ 0, %36 ], [ %50, %43 ]
  %45 = getelementptr inbounds [2 x double], ptr %42, i64 0, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !75, !noalias !245
  %47 = getelementptr inbounds [2 x double], ptr %11, i64 0, i64 %44
  %48 = load double, ptr %47, align 8, !tbaa !75, !noalias !245
  %49 = fsub double %48, %46
  store double %49, ptr %47, align 8, !tbaa !75, !noalias !245
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %44, 0
  br i1 %51, label %43, label %52, !llvm.loop !248

52:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #19, !noalias !245
  %53 = load ptr, ptr %41, align 8, !tbaa !60
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef double %55(ptr noundef nonnull align 8 dereferenceable(92) %41, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %2)
  %57 = fsub double %40, %56
  %58 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %59 = load double, ptr %58, align 8, !tbaa !216
  %60 = fmul double %59, 2.000000e+00
  %61 = fdiv double %57, %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #19
  br label %181

62:                                               ; preds = %3
  %63 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !240
  %65 = load ptr, ptr %64, align 8, !tbaa !60
  %66 = getelementptr inbounds ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef double %67(ptr noundef nonnull align 8 dereferenceable(92) %64, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2)
  %69 = load ptr, ptr %63, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #19
  %70 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19, !noalias !249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !249
  br label %72

72:                                               ; preds = %62, %72
  %73 = phi i64 [ 0, %62 ], [ %79, %72 ]
  %74 = getelementptr inbounds [2 x double], ptr %71, i64 0, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !75, !noalias !249
  %76 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %73
  %77 = load double, ptr %76, align 8, !tbaa !75, !noalias !249
  %78 = fsub double %77, %75
  store double %78, ptr %76, align 8, !tbaa !75, !noalias !249
  %79 = add nuw nsw i64 %73, 1
  %80 = icmp eq i64 %73, 0
  br i1 %80, label %72, label %81, !llvm.loop !248

81:                                               ; preds = %72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19, !noalias !249
  %82 = load ptr, ptr %69, align 8, !tbaa !60
  %83 = getelementptr inbounds ptr, ptr %82, i64 4
  %84 = load ptr, ptr %83, align 8
  %85 = call noundef double %84(ptr noundef nonnull align 8 dereferenceable(92) %69, ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %2)
  %86 = fsub double %68, %85
  %87 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %88 = load double, ptr %87, align 8, !tbaa !216
  %89 = fdiv double %86, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #19
  br label %181

90:                                               ; preds = %3
  %91 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #19
  %93 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %94, i64 16, i1 false), !tbaa !75
  br label %95

95:                                               ; preds = %90, %95
  %96 = phi i64 [ 0, %90 ], [ %100, %95 ]
  %97 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !75
  %99 = fmul double %98, 2.000000e+00
  store double %99, ptr %97, align 8, !tbaa !75
  %100 = add nuw nsw i64 %96, 1
  %101 = icmp eq i64 %96, 0
  br i1 %101, label %95, label %102, !llvm.loop !228

102:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19, !noalias !252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !252
  br label %103

103:                                              ; preds = %102, %103
  %104 = phi i64 [ 0, %102 ], [ %110, %103 ]
  %105 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %104
  %106 = load double, ptr %105, align 8, !tbaa !75
  %107 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 %104
  %108 = load double, ptr %107, align 8, !tbaa !75, !noalias !252
  %109 = fadd double %106, %108
  store double %109, ptr %107, align 8, !tbaa !75, !noalias !252
  %110 = add nuw nsw i64 %104, 1
  %111 = icmp eq i64 %104, 0
  br i1 %111, label %103, label %112, !llvm.loop !244

112:                                              ; preds = %103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19, !noalias !252
  %113 = load ptr, ptr %92, align 8, !tbaa !60
  %114 = getelementptr inbounds ptr, ptr %113, i64 4
  %115 = load ptr, ptr %114, align 8
  %116 = call noundef double %115(ptr noundef nonnull align 8 dereferenceable(92) %92, ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %2)
  %117 = load ptr, ptr %91, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #19
  %118 = load ptr, ptr %93, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19, !noalias !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !255
  br label %119

119:                                              ; preds = %112, %119
  %120 = phi i64 [ 0, %112 ], [ %126, %119 ]
  %121 = getelementptr inbounds [2 x double], ptr %118, i64 0, i64 %120
  %122 = load double, ptr %121, align 8, !tbaa !75, !noalias !255
  %123 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 %120
  %124 = load double, ptr %123, align 8, !tbaa !75, !noalias !255
  %125 = fadd double %122, %124
  store double %125, ptr %123, align 8, !tbaa !75, !noalias !255
  %126 = add nuw nsw i64 %120, 1
  %127 = icmp eq i64 %120, 0
  br i1 %127, label %119, label %128, !llvm.loop !244

128:                                              ; preds = %119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19, !noalias !255
  %129 = load ptr, ptr %117, align 8, !tbaa !60
  %130 = getelementptr inbounds ptr, ptr %129, i64 4
  %131 = load ptr, ptr %130, align 8
  %132 = call noundef double %131(ptr noundef nonnull align 8 dereferenceable(92) %117, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %2)
  %133 = load ptr, ptr %91, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #19
  %134 = load ptr, ptr %93, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19, !noalias !258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !258
  %135 = fneg double %116
  br label %136

136:                                              ; preds = %128, %136
  %137 = phi i64 [ 0, %128 ], [ %143, %136 ]
  %138 = getelementptr inbounds [2 x double], ptr %134, i64 0, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !75, !noalias !258
  %140 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %137
  %141 = load double, ptr %140, align 8, !tbaa !75, !noalias !258
  %142 = fsub double %141, %139
  store double %142, ptr %140, align 8, !tbaa !75, !noalias !258
  %143 = add nuw nsw i64 %137, 1
  %144 = icmp eq i64 %137, 0
  br i1 %144, label %136, label %145, !llvm.loop !248

145:                                              ; preds = %136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19, !noalias !258
  %146 = load ptr, ptr %133, align 8, !tbaa !60
  %147 = getelementptr inbounds ptr, ptr %146, i64 4
  %148 = load ptr, ptr %147, align 8
  %149 = call noundef double %148(ptr noundef nonnull align 8 dereferenceable(92) %133, ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %2)
  %150 = load ptr, ptr %91, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #19
  %151 = load ptr, ptr %93, align 8, !tbaa !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %151, i64 16, i1 false), !tbaa !75
  %152 = call double @llvm.fmuladd.f64(double %132, double 8.000000e+00, double %135)
  br label %153

153:                                              ; preds = %145, %153
  %154 = phi i64 [ 0, %145 ], [ %158, %153 ]
  %155 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !75
  %157 = fmul double %156, 2.000000e+00
  store double %157, ptr %155, align 8, !tbaa !75
  %158 = add nuw nsw i64 %154, 1
  %159 = icmp eq i64 %154, 0
  br i1 %159, label %153, label %160, !llvm.loop !228

160:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19, !noalias !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !261
  br label %161

161:                                              ; preds = %160, %161
  %162 = phi i64 [ 0, %160 ], [ %168, %161 ]
  %163 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !75
  %165 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 %162
  %166 = load double, ptr %165, align 8, !tbaa !75, !noalias !261
  %167 = fsub double %166, %164
  store double %167, ptr %165, align 8, !tbaa !75, !noalias !261
  %168 = add nuw nsw i64 %162, 1
  %169 = icmp eq i64 %162, 0
  br i1 %169, label %161, label %170, !llvm.loop !248

170:                                              ; preds = %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa !75
  %171 = call double @llvm.fmuladd.f64(double %149, double -8.000000e+00, double %152)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19, !noalias !261
  %172 = load ptr, ptr %150, align 8, !tbaa !60
  %173 = getelementptr inbounds ptr, ptr %172, i64 4
  %174 = load ptr, ptr %173, align 8
  %175 = call noundef double %174(ptr noundef nonnull align 8 dereferenceable(92) %150, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef %2)
  %176 = fadd double %171, %175
  %177 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %178 = load double, ptr %177, align 8, !tbaa !216
  %179 = fmul double %178, 1.200000e+01
  %180 = fdiv double %176, %179
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #19
  br label %181

181:                                              ; preds = %3, %170, %81, %52
  %182 = phi double [ %180, %170 ], [ %89, %81 ], [ %61, %52 ], [ 0.000000e+00, %3 ]
  ret double %182
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %4 = alloca %"class.dealii::Point.28", align 8
  %5 = alloca %"class.dealii::Point.28", align 8
  %6 = alloca %"class.dealii::Point.28", align 8
  %7 = alloca %"class.dealii::Point.28", align 8
  %8 = alloca %"class.dealii::Point.28", align 8
  %9 = alloca %"class.dealii::Point.28", align 8
  %10 = alloca %"class.dealii::Point.28", align 8
  %11 = alloca %"class.dealii::Point.28", align 8
  %12 = alloca %"class.dealii::Point.28", align 8
  %13 = alloca %"class.dealii::Vector", align 8
  %14 = alloca %"class.dealii::Point.28", align 8
  %15 = alloca %"class.dealii::Point.28", align 8
  %16 = alloca %"class.dealii::Point.28", align 8
  %17 = alloca %"class.dealii::Point.28", align 8
  %18 = alloca %"class.dealii::Point.28", align 8
  %19 = alloca %"class.dealii::Point.28", align 8
  %20 = alloca %"class.dealii::Point.28", align 8
  %21 = alloca %"class.dealii::Point.28", align 8
  %22 = alloca %"class.dealii::Point.28", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %13) #19
  %23 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !127
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !60
  %25 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 1
  %26 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 2
  %27 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 3
  %28 = icmp eq i32 %24, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  br label %41

30:                                               ; preds = %3
  %31 = zext i32 %24 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %32) #18
          to label %34 unwind label %39

34:                                               ; preds = %30
  store ptr %33, ptr %27, align 8, !tbaa !129
  store i32 %24, ptr %26, align 4, !tbaa !130
  store i32 %24, ptr %25, align 8, !tbaa !127
  %35 = zext i32 %24 to i64
  %36 = shl nuw nsw i64 %35, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %33, i8 0, i64 %36, i1 false), !tbaa !75
  br label %41

37:                                               ; preds = %320, %39
  %38 = phi { ptr, i32 } [ %40, %39 ], [ %316, %320 ]
  resume { ptr, i32 } %38

39:                                               ; preds = %30
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #19
  br label %37

41:                                               ; preds = %34, %29
  %42 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !232
  switch i32 %43, label %310 [
    i32 0, label %44
    i32 1, label %108
    i32 2, label %156
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #19
  %47 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #19, !noalias !264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !264
  br label %49

49:                                               ; preds = %44, %49
  %50 = phi i64 [ 0, %44 ], [ %56, %49 ]
  %51 = getelementptr inbounds [2 x double], ptr %48, i64 0, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !75, !noalias !264
  %53 = getelementptr inbounds [2 x double], ptr %12, i64 0, i64 %50
  %54 = load double, ptr %53, align 8, !tbaa !75, !noalias !264
  %55 = fadd double %52, %54
  store double %55, ptr %53, align 8, !tbaa !75, !noalias !264
  %56 = add nuw nsw i64 %50, 1
  %57 = icmp eq i64 %50, 0
  br i1 %57, label %49, label %58, !llvm.loop !244

58:                                               ; preds = %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #19, !noalias !264
  %59 = load ptr, ptr %46, align 8, !tbaa !60
  %60 = getelementptr inbounds ptr, ptr %59, i64 5
  %61 = load ptr, ptr %60, align 8
  invoke void %61(ptr noundef nonnull align 8 dereferenceable(92) %46, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %62 unwind label %102

62:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #19
  %63 = load ptr, ptr %45, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #19
  %64 = load ptr, ptr %47, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #19, !noalias !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !267
  br label %65

65:                                               ; preds = %62, %65
  %66 = phi i64 [ 0, %62 ], [ %72, %65 ]
  %67 = getelementptr inbounds [2 x double], ptr %64, i64 0, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !75, !noalias !267
  %69 = getelementptr inbounds [2 x double], ptr %11, i64 0, i64 %66
  %70 = load double, ptr %69, align 8, !tbaa !75, !noalias !267
  %71 = fsub double %70, %68
  store double %71, ptr %69, align 8, !tbaa !75, !noalias !267
  %72 = add nuw nsw i64 %66, 1
  %73 = icmp eq i64 %66, 0
  br i1 %73, label %65, label %74, !llvm.loop !248

74:                                               ; preds = %65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #19, !noalias !267
  %75 = load ptr, ptr %63, align 8, !tbaa !60
  %76 = getelementptr inbounds ptr, ptr %75, i64 5
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(92) %63, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %78 unwind label %104

78:                                               ; preds = %74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #19
  %79 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %80 = load double, ptr %79, align 8, !tbaa !216
  %81 = fmul double %80, 2.000000e+00
  %82 = fdiv double 1.000000e+00, %81
  %83 = fdiv double -1.000000e+00, %81
  %84 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !129
  %86 = load i32, ptr %23, align 8, !tbaa !127
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds double, ptr %85, i64 %87
  %89 = icmp eq i32 %86, 0
  br i1 %89, label %310, label %90

90:                                               ; preds = %78
  %91 = load ptr, ptr %27, align 8, !tbaa !129
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi ptr [ %96, %92 ], [ %91, %90 ]
  %94 = phi ptr [ %100, %92 ], [ %85, %90 ]
  %95 = load double, ptr %94, align 8, !tbaa !75
  %96 = getelementptr inbounds double, ptr %93, i64 1
  %97 = load double, ptr %93, align 8, !tbaa !75
  %98 = fmul double %83, %97
  %99 = call double @llvm.fmuladd.f64(double %82, double %95, double %98)
  store double %99, ptr %94, align 8, !tbaa !75
  %100 = getelementptr inbounds double, ptr %94, i64 1
  %101 = icmp eq ptr %100, %88
  br i1 %101, label %310, label %92, !llvm.loop !137

102:                                              ; preds = %58
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #19
  br label %315

104:                                              ; preds = %74
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #19
  br label %315

106:                                              ; preds = %108
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %315

108:                                              ; preds = %41
  %109 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !240
  %111 = load ptr, ptr %110, align 8, !tbaa !60
  %112 = getelementptr inbounds ptr, ptr %111, i64 5
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(92) %110, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %114 unwind label %106

114:                                              ; preds = %108
  %115 = load ptr, ptr %109, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #19
  %116 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19, !noalias !270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !270
  br label %118

118:                                              ; preds = %114, %118
  %119 = phi i64 [ 0, %114 ], [ %125, %118 ]
  %120 = getelementptr inbounds [2 x double], ptr %117, i64 0, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !75, !noalias !270
  %122 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %119
  %123 = load double, ptr %122, align 8, !tbaa !75, !noalias !270
  %124 = fsub double %123, %121
  store double %124, ptr %122, align 8, !tbaa !75, !noalias !270
  %125 = add nuw nsw i64 %119, 1
  %126 = icmp eq i64 %119, 0
  br i1 %126, label %118, label %127, !llvm.loop !248

127:                                              ; preds = %118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19, !noalias !270
  %128 = load ptr, ptr %115, align 8, !tbaa !60
  %129 = getelementptr inbounds ptr, ptr %128, i64 5
  %130 = load ptr, ptr %129, align 8
  invoke void %130(ptr noundef nonnull align 8 dereferenceable(92) %115, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %131 unwind label %154

131:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #19
  %132 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %133 = load double, ptr %132, align 8, !tbaa !216
  %134 = fdiv double 1.000000e+00, %133
  %135 = fdiv double -1.000000e+00, %133
  %136 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !129
  %138 = load i32, ptr %23, align 8, !tbaa !127
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds double, ptr %137, i64 %139
  %141 = icmp eq i32 %138, 0
  br i1 %141, label %310, label %142

142:                                              ; preds = %131
  %143 = load ptr, ptr %27, align 8, !tbaa !129
  br label %144

144:                                              ; preds = %142, %144
  %145 = phi ptr [ %148, %144 ], [ %143, %142 ]
  %146 = phi ptr [ %152, %144 ], [ %137, %142 ]
  %147 = load double, ptr %146, align 8, !tbaa !75
  %148 = getelementptr inbounds double, ptr %145, i64 1
  %149 = load double, ptr %145, align 8, !tbaa !75
  %150 = fmul double %135, %149
  %151 = call double @llvm.fmuladd.f64(double %134, double %147, double %150)
  store double %151, ptr %146, align 8, !tbaa !75
  %152 = getelementptr inbounds double, ptr %146, i64 1
  %153 = icmp eq ptr %152, %140
  br i1 %153, label %310, label %144, !llvm.loop !137

154:                                              ; preds = %127
  %155 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #19
  br label %315

156:                                              ; preds = %41
  %157 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #19
  %159 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19, !noalias !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %160, i64 16, i1 false), !tbaa !75, !noalias !273
  br label %161

161:                                              ; preds = %156, %161
  %162 = phi i64 [ 0, %156 ], [ %166, %161 ]
  %163 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !75, !noalias !273
  %165 = fmul double %164, 2.000000e+00
  store double %165, ptr %163, align 8, !tbaa !75, !noalias !273
  %166 = add nuw nsw i64 %162, 1
  %167 = icmp eq i64 %162, 0
  br i1 %167, label %161, label %168, !llvm.loop !228

168:                                              ; preds = %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19, !noalias !273
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19, !noalias !278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !278
  br label %169

169:                                              ; preds = %168, %169
  %170 = phi i64 [ 0, %168 ], [ %176, %169 ]
  %171 = getelementptr inbounds [2 x double], ptr %18, i64 0, i64 %170
  %172 = load double, ptr %171, align 8, !tbaa !75, !noalias !278
  %173 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 %170
  %174 = load double, ptr %173, align 8, !tbaa !75, !noalias !278
  %175 = fsub double %174, %172
  store double %175, ptr %173, align 8, !tbaa !75, !noalias !278
  %176 = add nuw nsw i64 %170, 1
  %177 = icmp eq i64 %170, 0
  br i1 %177, label %169, label %178, !llvm.loop !248

178:                                              ; preds = %169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19, !noalias !278
  %179 = load ptr, ptr %158, align 8, !tbaa !60
  %180 = getelementptr inbounds ptr, ptr %179, i64 5
  %181 = load ptr, ptr %180, align 8
  invoke void %181(ptr noundef nonnull align 8 dereferenceable(92) %158, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %182 unwind label %302

182:                                              ; preds = %178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #19
  %183 = load ptr, ptr %157, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #19
  %184 = load ptr, ptr %159, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19, !noalias !281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %184, i64 16, i1 false), !tbaa !75, !noalias !281
  br label %185

185:                                              ; preds = %182, %185
  %186 = phi i64 [ 0, %182 ], [ %190, %185 ]
  %187 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 %186
  %188 = load double, ptr %187, align 8, !tbaa !75, !noalias !281
  %189 = fmul double %188, 2.000000e+00
  store double %189, ptr %187, align 8, !tbaa !75, !noalias !281
  %190 = add nuw nsw i64 %186, 1
  %191 = icmp eq i64 %186, 0
  br i1 %191, label %185, label %192, !llvm.loop !228

192:                                              ; preds = %185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19, !noalias !281
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19, !noalias !286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !286
  br label %193

193:                                              ; preds = %192, %193
  %194 = phi i64 [ 0, %192 ], [ %200, %193 ]
  %195 = getelementptr inbounds [2 x double], ptr %20, i64 0, i64 %194
  %196 = load double, ptr %195, align 8, !tbaa !75, !noalias !286
  %197 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %194
  %198 = load double, ptr %197, align 8, !tbaa !75, !noalias !286
  %199 = fadd double %196, %198
  store double %199, ptr %197, align 8, !tbaa !75, !noalias !286
  %200 = add nuw nsw i64 %194, 1
  %201 = icmp eq i64 %194, 0
  br i1 %201, label %193, label %202, !llvm.loop !244

202:                                              ; preds = %193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19, !noalias !286
  %203 = load ptr, ptr %183, align 8, !tbaa !60
  %204 = getelementptr inbounds ptr, ptr %203, i64 5
  %205 = load ptr, ptr %204, align 8
  invoke void %205(ptr noundef nonnull align 8 dereferenceable(92) %183, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %206 unwind label %304

206:                                              ; preds = %202
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #19
  %207 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !129
  %209 = load i32, ptr %23, align 8, !tbaa !127
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds double, ptr %208, i64 %210
  %212 = icmp eq i32 %209, 0
  br i1 %212, label %224, label %213

213:                                              ; preds = %206
  %214 = load ptr, ptr %27, align 8, !tbaa !129
  br label %215

215:                                              ; preds = %213, %215
  %216 = phi ptr [ %218, %215 ], [ %214, %213 ]
  %217 = phi ptr [ %220, %215 ], [ %208, %213 ]
  %218 = getelementptr inbounds double, ptr %216, i64 1
  %219 = load double, ptr %216, align 8, !tbaa !75
  %220 = getelementptr inbounds double, ptr %217, i64 1
  %221 = load double, ptr %217, align 8, !tbaa !75
  %222 = call double @llvm.fmuladd.f64(double %219, double -1.000000e+00, double %221)
  store double %222, ptr %217, align 8, !tbaa !75
  %223 = icmp eq ptr %220, %211
  br i1 %223, label %224, label %215, !llvm.loop !157

224:                                              ; preds = %215, %206
  %225 = load ptr, ptr %157, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #19
  %226 = load ptr, ptr %159, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19, !noalias !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !289
  br label %227

227:                                              ; preds = %224, %227
  %228 = phi i64 [ 0, %224 ], [ %234, %227 ]
  %229 = getelementptr inbounds [2 x double], ptr %226, i64 0, i64 %228
  %230 = load double, ptr %229, align 8, !tbaa !75, !noalias !289
  %231 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %228
  %232 = load double, ptr %231, align 8, !tbaa !75, !noalias !289
  %233 = fsub double %232, %230
  store double %233, ptr %231, align 8, !tbaa !75, !noalias !289
  %234 = add nuw nsw i64 %228, 1
  %235 = icmp eq i64 %228, 0
  br i1 %235, label %227, label %236, !llvm.loop !248

236:                                              ; preds = %227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19, !noalias !289
  %237 = load ptr, ptr %225, align 8, !tbaa !60
  %238 = getelementptr inbounds ptr, ptr %237, i64 5
  %239 = load ptr, ptr %238, align 8
  invoke void %239(ptr noundef nonnull align 8 dereferenceable(92) %225, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %240 unwind label %306

240:                                              ; preds = %236
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #19
  %241 = load ptr, ptr %207, align 8, !tbaa !129
  %242 = load i32, ptr %23, align 8, !tbaa !127
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds double, ptr %241, i64 %243
  %245 = icmp eq i32 %242, 0
  br i1 %245, label %257, label %246

246:                                              ; preds = %240
  %247 = load ptr, ptr %27, align 8, !tbaa !129
  br label %248

248:                                              ; preds = %246, %248
  %249 = phi ptr [ %251, %248 ], [ %247, %246 ]
  %250 = phi ptr [ %253, %248 ], [ %241, %246 ]
  %251 = getelementptr inbounds double, ptr %249, i64 1
  %252 = load double, ptr %249, align 8, !tbaa !75
  %253 = getelementptr inbounds double, ptr %250, i64 1
  %254 = load double, ptr %250, align 8, !tbaa !75
  %255 = call double @llvm.fmuladd.f64(double %252, double -8.000000e+00, double %254)
  store double %255, ptr %250, align 8, !tbaa !75
  %256 = icmp eq ptr %253, %244
  br i1 %256, label %257, label %248, !llvm.loop !157

257:                                              ; preds = %248, %240
  %258 = load ptr, ptr %157, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #19
  %259 = load ptr, ptr %159, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19, !noalias !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !75, !noalias !292
  br label %260

260:                                              ; preds = %257, %260
  %261 = phi i64 [ 0, %257 ], [ %267, %260 ]
  %262 = getelementptr inbounds [2 x double], ptr %259, i64 0, i64 %261
  %263 = load double, ptr %262, align 8, !tbaa !75, !noalias !292
  %264 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 %261
  %265 = load double, ptr %264, align 8, !tbaa !75, !noalias !292
  %266 = fadd double %263, %265
  store double %266, ptr %264, align 8, !tbaa !75, !noalias !292
  %267 = add nuw nsw i64 %261, 1
  %268 = icmp eq i64 %261, 0
  br i1 %268, label %260, label %269, !llvm.loop !244

269:                                              ; preds = %260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19, !noalias !292
  %270 = load ptr, ptr %258, align 8, !tbaa !60
  %271 = getelementptr inbounds ptr, ptr %270, i64 5
  %272 = load ptr, ptr %271, align 8
  invoke void %272(ptr noundef nonnull align 8 dereferenceable(92) %258, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %273 unwind label %308

273:                                              ; preds = %269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #19
  %274 = load ptr, ptr %207, align 8, !tbaa !129
  %275 = load i32, ptr %23, align 8, !tbaa !127
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds double, ptr %274, i64 %276
  %278 = icmp eq i32 %275, 0
  br i1 %278, label %290, label %279

279:                                              ; preds = %273
  %280 = load ptr, ptr %27, align 8, !tbaa !129
  br label %281

281:                                              ; preds = %279, %281
  %282 = phi ptr [ %284, %281 ], [ %280, %279 ]
  %283 = phi ptr [ %286, %281 ], [ %274, %279 ]
  %284 = getelementptr inbounds double, ptr %282, i64 1
  %285 = load double, ptr %282, align 8, !tbaa !75
  %286 = getelementptr inbounds double, ptr %283, i64 1
  %287 = load double, ptr %283, align 8, !tbaa !75
  %288 = call double @llvm.fmuladd.f64(double %285, double 8.000000e+00, double %287)
  store double %288, ptr %283, align 8, !tbaa !75
  %289 = icmp eq ptr %286, %277
  br i1 %289, label %290, label %281, !llvm.loop !157

290:                                              ; preds = %281, %273
  %291 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %292 = load double, ptr %291, align 8, !tbaa !216
  %293 = fmul double %292, 1.200000e+01
  %294 = fdiv double 1.000000e+00, %293
  %295 = icmp eq i32 %275, 0
  br i1 %295, label %310, label %296

296:                                              ; preds = %290, %296
  %297 = phi ptr [ %298, %296 ], [ %274, %290 ]
  %298 = getelementptr inbounds double, ptr %297, i64 1
  %299 = load double, ptr %297, align 8, !tbaa !75
  %300 = fmul double %294, %299
  store double %300, ptr %297, align 8, !tbaa !75
  %301 = icmp eq ptr %298, %277
  br i1 %301, label %310, label %296, !llvm.loop !164

302:                                              ; preds = %178
  %303 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #19
  br label %315

304:                                              ; preds = %202
  %305 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #19
  br label %315

306:                                              ; preds = %236
  %307 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #19
  br label %315

308:                                              ; preds = %269
  %309 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #19
  br label %315

310:                                              ; preds = %296, %144, %92, %290, %131, %78, %41
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !60
  %311 = load ptr, ptr %27, align 8, !tbaa !129
  %312 = icmp eq ptr %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %310
  call void @_ZdaPv(ptr noundef %311) #21
  store ptr null, ptr %27, align 8, !tbaa !129
  br label %314

314:                                              ; preds = %310, %313
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #19
  ret void

315:                                              ; preds = %308, %306, %304, %302, %154, %106, %104, %102
  %316 = phi { ptr, i32 } [ %309, %308 ], [ %307, %306 ], [ %305, %304 ], [ %303, %302 ], [ %107, %106 ], [ %155, %154 ], [ %105, %104 ], [ %103, %102 ]
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !60
  %317 = load ptr, ptr %27, align 8, !tbaa !129
  %318 = icmp eq ptr %317, null
  br i1 %318, label %320, label %319

319:                                              ; preds = %315
  call void @_ZdaPv(ptr noundef %317) #21
  store ptr null, ptr %27, align 8, !tbaa !129
  br label %320

320:                                              ; preds = %315, %319
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #19
  br label %37
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %5 = alloca %"class.dealii::Point.28", align 8
  %6 = alloca %"class.dealii::Point.28", align 8
  %7 = alloca %"class.dealii::Point.28", align 8
  %8 = alloca %"class.dealii::Point.28", align 8
  %9 = alloca %"class.dealii::Point.28", align 8
  %10 = alloca %"class.dealii::Point.28", align 8
  %11 = alloca %"class.dealii::Point.28", align 8
  %12 = alloca %"class.dealii::Point.28", align 8
  %13 = alloca %"class.dealii::Point.28", align 8
  %14 = alloca %"class.std::vector.8", align 8
  %15 = alloca %"class.std::vector.23", align 8
  %16 = alloca %"class.dealii::Point.28", align 8
  %17 = alloca %"class.dealii::Point.28", align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !230
  %20 = load ptr, ptr %1, align 8, !tbaa !229
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %27 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !230
  %29 = load ptr, ptr %26, align 8, !tbaa !229
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = icmp eq i64 %32, 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #19
  %34 = and i64 %24, 4294967295
  %35 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %14, i64 0, i32 1
  %36 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %14, i64 0, i32 2
  %37 = icmp eq i64 %34, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br i1 %37, label %41, label %38

38:                                               ; preds = %4
  %39 = shl nuw nsw i64 %34, 3
  %40 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %39) #18
  br label %41

41:                                               ; preds = %38, %4
  %42 = phi ptr [ null, %4 ], [ %40, %38 ]
  store ptr %42, ptr %14, align 8, !tbaa !171
  store ptr %42, ptr %35, align 8, !tbaa !212
  %43 = getelementptr inbounds double, ptr %42, i64 %34
  store ptr %43, ptr %36, align 8, !tbaa !213
  br i1 %37, label %50, label %44

44:                                               ; preds = %41
  store double 0.000000e+00, ptr %42, align 8, !tbaa !75
  %45 = getelementptr double, ptr %42, i64 1
  %46 = icmp eq i64 %34, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = shl nuw nsw i64 %34, 3
  %49 = add nsw i64 %48, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %45, i8 0, i64 %49, i1 false), !tbaa !75
  br label %50

50:                                               ; preds = %41, %44, %47
  %51 = phi ptr [ %42, %41 ], [ %45, %44 ], [ %43, %47 ]
  store ptr %51, ptr %35, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #19
  %52 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %15, i64 0, i32 1
  %53 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %15, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br i1 %37, label %57, label %54

54:                                               ; preds = %50
  %55 = shl nuw nsw i64 %34, 4
  %56 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %55) #18
          to label %57 unwind label %77

57:                                               ; preds = %54, %50
  %58 = phi ptr [ null, %50 ], [ %56, %54 ]
  store ptr %58, ptr %15, align 8, !tbaa !229
  store ptr %58, ptr %52, align 8, !tbaa !230
  %59 = getelementptr inbounds %"class.dealii::Point.28", ptr %58, i64 %34
  store ptr %59, ptr %53, align 8, !tbaa !231
  br i1 %37, label %63, label %60

60:                                               ; preds = %57
  %61 = shl nuw nsw i64 %34, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %58, i8 0, i64 %61, i1 false), !tbaa !75
  %62 = getelementptr i8, ptr %58, i64 %61
  br label %63

63:                                               ; preds = %57, %60
  %64 = phi ptr [ %58, %57 ], [ %62, %60 ]
  store ptr %64, ptr %52, align 8, !tbaa !230
  %65 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !232
  switch i32 %66, label %418 [
    i32 0, label %72
    i32 1, label %165
    i32 2, label %67
  ]

67:                                               ; preds = %63
  %68 = icmp eq i32 %25, 0
  br i1 %68, label %224, label %69

69:                                               ; preds = %67
  %70 = and i64 %24, 4294967295
  %71 = getelementptr inbounds i8, ptr %9, i64 8
  br label %238

72:                                               ; preds = %63
  %73 = icmp eq i32 %25, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %72
  %75 = and i64 %24, 4294967295
  %76 = getelementptr inbounds i8, ptr %13, i64 8
  br label %93

77:                                               ; preds = %54
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %428

79:                                               ; preds = %108, %72
  %80 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !240
  %82 = load ptr, ptr %81, align 8, !tbaa !60
  %83 = getelementptr inbounds ptr, ptr %82, i64 6
  %84 = load ptr, ptr %83, align 8
  invoke void %84(ptr noundef nonnull align 8 dereferenceable(92) %81, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3)
          to label %85 unwind label %127

85:                                               ; preds = %79
  %86 = icmp eq i32 %25, 0
  br i1 %86, label %115, label %87

87:                                               ; preds = %85
  %88 = load ptr, ptr %1, align 8, !tbaa !229
  %89 = load ptr, ptr %26, align 8, !tbaa !229
  %90 = load ptr, ptr %15, align 8, !tbaa !229
  %91 = and i64 %24, 4294967295
  %92 = getelementptr inbounds i8, ptr %12, i64 8
  br label %131

93:                                               ; preds = %74, %108
  %94 = phi i64 [ 0, %74 ], [ %113, %108 ]
  %95 = shl nuw nsw i64 %94, 4
  %96 = getelementptr i8, ptr %20, i64 %95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #19, !noalias !295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %96, i64 16, i1 false), !tbaa !75, !noalias !295
  %97 = select i1 %33, i64 0, i64 %94
  %98 = getelementptr inbounds %"class.dealii::Point.28", ptr %29, i64 %97
  br label %99

99:                                               ; preds = %93, %99
  %100 = phi i64 [ 0, %93 ], [ %106, %99 ]
  %101 = getelementptr inbounds [2 x double], ptr %98, i64 0, i64 %100
  %102 = load double, ptr %101, align 8, !tbaa !75, !noalias !295
  %103 = getelementptr inbounds [2 x double], ptr %13, i64 0, i64 %100
  %104 = load double, ptr %103, align 8, !tbaa !75, !noalias !295
  %105 = fadd double %102, %104
  store double %105, ptr %103, align 8, !tbaa !75, !noalias !295
  %106 = add nuw nsw i64 %100, 1
  %107 = icmp eq i64 %100, 0
  br i1 %107, label %99, label %108, !llvm.loop !244

108:                                              ; preds = %99
  %109 = load double, ptr %76, align 8, !tbaa !75
  %110 = load double, ptr %13, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #19, !noalias !295
  %111 = getelementptr inbounds %"class.dealii::Point.28", ptr %58, i64 %94
  store double %110, ptr %111, align 8, !tbaa !75
  %112 = getelementptr inbounds [2 x double], ptr %111, i64 0, i64 1
  store double %109, ptr %112, align 8, !tbaa !75
  %113 = add nuw nsw i64 %94, 1
  %114 = icmp eq i64 %113, %75
  br i1 %114, label %79, label %93, !llvm.loop !298

115:                                              ; preds = %146, %85
  %116 = load ptr, ptr %80, align 8, !tbaa !240
  %117 = load ptr, ptr %116, align 8, !tbaa !60
  %118 = getelementptr inbounds ptr, ptr %117, i64 6
  %119 = load ptr, ptr %118, align 8
  invoke void %119(ptr noundef nonnull align 8 dereferenceable(92) %116, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
          to label %120 unwind label %127

120:                                              ; preds = %115
  %121 = icmp eq i32 %25, 0
  br i1 %121, label %418, label %122

122:                                              ; preds = %120
  %123 = load ptr, ptr %2, align 8, !tbaa !171
  %124 = load ptr, ptr %14, align 8, !tbaa !171
  %125 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %126 = and i64 %24, 4294967295
  br label %153

127:                                              ; preds = %372, %324, %268, %224, %179, %165, %115, %79
  %128 = landingpad { ptr, i32 }
          cleanup
  %129 = load ptr, ptr %15, align 8, !tbaa !229
  %130 = icmp eq ptr %129, null
  br i1 %130, label %428, label %427

131:                                              ; preds = %87, %146
  %132 = phi i64 [ 0, %87 ], [ %151, %146 ]
  %133 = shl nuw nsw i64 %132, 4
  %134 = getelementptr i8, ptr %88, i64 %133
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #19, !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %134, i64 16, i1 false), !tbaa !75, !noalias !299
  %135 = select i1 %33, i64 0, i64 %132
  %136 = getelementptr inbounds %"class.dealii::Point.28", ptr %89, i64 %135
  br label %137

137:                                              ; preds = %131, %137
  %138 = phi i64 [ 0, %131 ], [ %144, %137 ]
  %139 = getelementptr inbounds [2 x double], ptr %136, i64 0, i64 %138
  %140 = load double, ptr %139, align 8, !tbaa !75, !noalias !299
  %141 = getelementptr inbounds [2 x double], ptr %12, i64 0, i64 %138
  %142 = load double, ptr %141, align 8, !tbaa !75, !noalias !299
  %143 = fsub double %142, %140
  store double %143, ptr %141, align 8, !tbaa !75, !noalias !299
  %144 = add nuw nsw i64 %138, 1
  %145 = icmp eq i64 %138, 0
  br i1 %145, label %137, label %146, !llvm.loop !248

146:                                              ; preds = %137
  %147 = load double, ptr %92, align 8, !tbaa !75
  %148 = load double, ptr %12, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #19, !noalias !299
  %149 = getelementptr inbounds %"class.dealii::Point.28", ptr %90, i64 %132
  store double %148, ptr %149, align 8, !tbaa !75
  %150 = getelementptr inbounds [2 x double], ptr %149, i64 0, i64 1
  store double %147, ptr %150, align 8, !tbaa !75
  %151 = add nuw nsw i64 %132, 1
  %152 = icmp eq i64 %151, %91
  br i1 %152, label %115, label %131, !llvm.loop !302

153:                                              ; preds = %122, %153
  %154 = phi i64 [ 0, %122 ], [ %163, %153 ]
  %155 = getelementptr inbounds double, ptr %123, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !75
  %157 = getelementptr inbounds double, ptr %124, i64 %154
  %158 = load double, ptr %157, align 8, !tbaa !75
  %159 = fsub double %156, %158
  %160 = load double, ptr %125, align 8, !tbaa !216
  %161 = fmul double %160, 2.000000e+00
  %162 = fdiv double %159, %161
  store double %162, ptr %155, align 8, !tbaa !75
  %163 = add nuw nsw i64 %154, 1
  %164 = icmp eq i64 %163, %126
  br i1 %164, label %418, label %153, !llvm.loop !303

165:                                              ; preds = %63
  %166 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !240
  %168 = load ptr, ptr %167, align 8, !tbaa !60
  %169 = getelementptr inbounds ptr, ptr %168, i64 6
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(92) %167, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3)
          to label %171 unwind label %127

171:                                              ; preds = %165
  %172 = icmp eq i32 %25, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %171
  %174 = load ptr, ptr %1, align 8, !tbaa !229
  %175 = load ptr, ptr %26, align 8, !tbaa !229
  %176 = load ptr, ptr %15, align 8, !tbaa !229
  %177 = and i64 %24, 4294967295
  %178 = getelementptr inbounds i8, ptr %11, i64 8
  br label %191

179:                                              ; preds = %206, %171
  %180 = load ptr, ptr %166, align 8, !tbaa !240
  %181 = load ptr, ptr %180, align 8, !tbaa !60
  %182 = getelementptr inbounds ptr, ptr %181, i64 6
  %183 = load ptr, ptr %182, align 8
  invoke void %183(ptr noundef nonnull align 8 dereferenceable(92) %180, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
          to label %184 unwind label %127

184:                                              ; preds = %179
  %185 = icmp eq i32 %25, 0
  br i1 %185, label %418, label %186

186:                                              ; preds = %184
  %187 = load ptr, ptr %2, align 8, !tbaa !171
  %188 = load ptr, ptr %14, align 8, !tbaa !171
  %189 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %190 = and i64 %24, 4294967295
  br label %213

191:                                              ; preds = %173, %206
  %192 = phi i64 [ 0, %173 ], [ %211, %206 ]
  %193 = shl nuw nsw i64 %192, 4
  %194 = getelementptr i8, ptr %174, i64 %193
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #19, !noalias !304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %194, i64 16, i1 false), !tbaa !75, !noalias !304
  %195 = select i1 %33, i64 0, i64 %192
  %196 = getelementptr inbounds %"class.dealii::Point.28", ptr %175, i64 %195
  br label %197

197:                                              ; preds = %191, %197
  %198 = phi i64 [ 0, %191 ], [ %204, %197 ]
  %199 = getelementptr inbounds [2 x double], ptr %196, i64 0, i64 %198
  %200 = load double, ptr %199, align 8, !tbaa !75, !noalias !304
  %201 = getelementptr inbounds [2 x double], ptr %11, i64 0, i64 %198
  %202 = load double, ptr %201, align 8, !tbaa !75, !noalias !304
  %203 = fsub double %202, %200
  store double %203, ptr %201, align 8, !tbaa !75, !noalias !304
  %204 = add nuw nsw i64 %198, 1
  %205 = icmp eq i64 %198, 0
  br i1 %205, label %197, label %206, !llvm.loop !248

206:                                              ; preds = %197
  %207 = load double, ptr %178, align 8, !tbaa !75
  %208 = load double, ptr %11, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #19, !noalias !304
  %209 = getelementptr inbounds %"class.dealii::Point.28", ptr %176, i64 %192
  store double %208, ptr %209, align 8, !tbaa !75
  %210 = getelementptr inbounds [2 x double], ptr %209, i64 0, i64 1
  store double %207, ptr %210, align 8, !tbaa !75
  %211 = add nuw nsw i64 %192, 1
  %212 = icmp eq i64 %211, %177
  br i1 %212, label %179, label %191, !llvm.loop !307

213:                                              ; preds = %186, %213
  %214 = phi i64 [ 0, %186 ], [ %222, %213 ]
  %215 = getelementptr inbounds double, ptr %187, i64 %214
  %216 = load double, ptr %215, align 8, !tbaa !75
  %217 = getelementptr inbounds double, ptr %188, i64 %214
  %218 = load double, ptr %217, align 8, !tbaa !75
  %219 = fsub double %216, %218
  %220 = load double, ptr %189, align 8, !tbaa !216
  %221 = fdiv double %219, %220
  store double %221, ptr %215, align 8, !tbaa !75
  %222 = add nuw nsw i64 %214, 1
  %223 = icmp eq i64 %222, %190
  br i1 %223, label %418, label %213, !llvm.loop !308

224:                                              ; preds = %261, %67
  %225 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !240
  %227 = load ptr, ptr %226, align 8, !tbaa !60
  %228 = getelementptr inbounds ptr, ptr %227, i64 6
  %229 = load ptr, ptr %228, align 8
  invoke void %229(ptr noundef nonnull align 8 dereferenceable(92) %226, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3)
          to label %230 unwind label %127

230:                                              ; preds = %224
  %231 = icmp eq i32 %25, 0
  br i1 %231, label %268, label %232

232:                                              ; preds = %230
  %233 = load ptr, ptr %1, align 8, !tbaa !229
  %234 = load ptr, ptr %26, align 8, !tbaa !229
  %235 = load ptr, ptr %15, align 8, !tbaa !229
  %236 = and i64 %24, 4294967295
  %237 = getelementptr inbounds i8, ptr %7, i64 8
  br label %279

238:                                              ; preds = %69, %261
  %239 = phi i64 [ 0, %69 ], [ %266, %261 ]
  %240 = shl nuw nsw i64 %239, 4
  %241 = getelementptr i8, ptr %20, i64 %240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #19
  %242 = select i1 %33, i64 0, i64 %239
  %243 = getelementptr inbounds %"class.dealii::Point.28", ptr %29, i64 %242
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19, !noalias !309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %243, i64 16, i1 false), !tbaa !75, !noalias !309
  br label %244

244:                                              ; preds = %238, %244
  %245 = phi i64 [ 0, %238 ], [ %249, %244 ]
  %246 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %245
  %247 = load double, ptr %246, align 8, !tbaa !75, !noalias !309
  %248 = fmul double %247, 2.000000e+00
  store double %248, ptr %246, align 8, !tbaa !75, !noalias !309
  %249 = add nuw nsw i64 %245, 1
  %250 = icmp eq i64 %245, 0
  br i1 %250, label %244, label %251, !llvm.loop !228

251:                                              ; preds = %244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19, !noalias !309
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19, !noalias !314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %241, i64 16, i1 false), !tbaa !75, !noalias !314
  br label %252

252:                                              ; preds = %251, %252
  %253 = phi i64 [ 0, %251 ], [ %259, %252 ]
  %254 = getelementptr inbounds [2 x double], ptr %16, i64 0, i64 %253
  %255 = load double, ptr %254, align 8, !tbaa !75, !noalias !314
  %256 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %253
  %257 = load double, ptr %256, align 8, !tbaa !75, !noalias !314
  %258 = fsub double %257, %255
  store double %258, ptr %256, align 8, !tbaa !75, !noalias !314
  %259 = add nuw nsw i64 %253, 1
  %260 = icmp eq i64 %253, 0
  br i1 %260, label %252, label %261, !llvm.loop !248

261:                                              ; preds = %252
  %262 = load double, ptr %71, align 8, !tbaa !75
  %263 = load double, ptr %9, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19, !noalias !314
  %264 = getelementptr inbounds %"class.dealii::Point.28", ptr %58, i64 %239
  store double %263, ptr %264, align 8, !tbaa !75
  %265 = getelementptr inbounds [2 x double], ptr %264, i64 0, i64 1
  store double %262, ptr %265, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #19
  %266 = add nuw nsw i64 %239, 1
  %267 = icmp eq i64 %266, %70
  br i1 %267, label %224, label %238, !llvm.loop !317

268:                                              ; preds = %302, %230
  %269 = load ptr, ptr %225, align 8, !tbaa !240
  %270 = load ptr, ptr %269, align 8, !tbaa !60
  %271 = getelementptr inbounds ptr, ptr %270, i64 6
  %272 = load ptr, ptr %271, align 8
  invoke void %272(ptr noundef nonnull align 8 dereferenceable(92) %269, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
          to label %273 unwind label %127

273:                                              ; preds = %268
  %274 = icmp eq i32 %25, 0
  br i1 %274, label %324, label %275

275:                                              ; preds = %273
  %276 = load ptr, ptr %14, align 8, !tbaa !171
  %277 = load ptr, ptr %2, align 8, !tbaa !171
  %278 = and i64 %24, 4294967295
  br label %315

279:                                              ; preds = %232, %302
  %280 = phi i64 [ 0, %232 ], [ %307, %302 ]
  %281 = shl nuw nsw i64 %280, 4
  %282 = getelementptr i8, ptr %233, i64 %281
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #19
  %283 = select i1 %33, i64 0, i64 %280
  %284 = getelementptr inbounds %"class.dealii::Point.28", ptr %234, i64 %283
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19, !noalias !318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %284, i64 16, i1 false), !tbaa !75, !noalias !318
  br label %285

285:                                              ; preds = %279, %285
  %286 = phi i64 [ 0, %279 ], [ %290, %285 ]
  %287 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 %286
  %288 = load double, ptr %287, align 8, !tbaa !75, !noalias !318
  %289 = fmul double %288, 2.000000e+00
  store double %289, ptr %287, align 8, !tbaa !75, !noalias !318
  %290 = add nuw nsw i64 %286, 1
  %291 = icmp eq i64 %286, 0
  br i1 %291, label %285, label %292, !llvm.loop !228

292:                                              ; preds = %285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19, !noalias !318
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19, !noalias !323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %282, i64 16, i1 false), !tbaa !75, !noalias !323
  br label %293

293:                                              ; preds = %292, %293
  %294 = phi i64 [ 0, %292 ], [ %300, %293 ]
  %295 = getelementptr inbounds [2 x double], ptr %17, i64 0, i64 %294
  %296 = load double, ptr %295, align 8, !tbaa !75, !noalias !323
  %297 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 %294
  %298 = load double, ptr %297, align 8, !tbaa !75, !noalias !323
  %299 = fadd double %296, %298
  store double %299, ptr %297, align 8, !tbaa !75, !noalias !323
  %300 = add nuw nsw i64 %294, 1
  %301 = icmp eq i64 %294, 0
  br i1 %301, label %293, label %302, !llvm.loop !244

302:                                              ; preds = %293
  %303 = load double, ptr %237, align 8, !tbaa !75
  %304 = load double, ptr %7, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19, !noalias !323
  %305 = getelementptr inbounds %"class.dealii::Point.28", ptr %235, i64 %280
  store double %304, ptr %305, align 8, !tbaa !75
  %306 = getelementptr inbounds [2 x double], ptr %305, i64 0, i64 1
  store double %303, ptr %306, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #19
  %307 = add nuw nsw i64 %280, 1
  %308 = icmp eq i64 %307, %236
  br i1 %308, label %268, label %279, !llvm.loop !326

309:                                              ; preds = %315
  %310 = load ptr, ptr %1, align 8, !tbaa !229
  %311 = load ptr, ptr %26, align 8, !tbaa !229
  %312 = load ptr, ptr %15, align 8, !tbaa !229
  %313 = and i64 %24, 4294967295
  %314 = getelementptr inbounds i8, ptr %6, i64 8
  br label %335

315:                                              ; preds = %275, %315
  %316 = phi i64 [ 0, %275 ], [ %322, %315 ]
  %317 = getelementptr inbounds double, ptr %276, i64 %316
  %318 = load double, ptr %317, align 8, !tbaa !75
  %319 = getelementptr inbounds double, ptr %277, i64 %316
  %320 = load double, ptr %319, align 8, !tbaa !75
  %321 = fsub double %320, %318
  store double %321, ptr %319, align 8, !tbaa !75
  %322 = add nuw nsw i64 %316, 1
  %323 = icmp eq i64 %322, %278
  br i1 %323, label %309, label %315, !llvm.loop !327

324:                                              ; preds = %350, %273
  %325 = load ptr, ptr %225, align 8, !tbaa !240
  %326 = load ptr, ptr %325, align 8, !tbaa !60
  %327 = getelementptr inbounds ptr, ptr %326, i64 6
  %328 = load ptr, ptr %327, align 8
  invoke void %328(ptr noundef nonnull align 8 dereferenceable(92) %325, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
          to label %329 unwind label %127

329:                                              ; preds = %324
  %330 = icmp eq i32 %25, 0
  br i1 %330, label %372, label %331

331:                                              ; preds = %329
  %332 = load ptr, ptr %14, align 8, !tbaa !171
  %333 = load ptr, ptr %2, align 8, !tbaa !171
  %334 = and i64 %24, 4294967295
  br label %363

335:                                              ; preds = %309, %350
  %336 = phi i64 [ 0, %309 ], [ %355, %350 ]
  %337 = shl nuw nsw i64 %336, 4
  %338 = getelementptr i8, ptr %310, i64 %337
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19, !noalias !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %338, i64 16, i1 false), !tbaa !75, !noalias !328
  %339 = select i1 %33, i64 0, i64 %336
  %340 = getelementptr inbounds %"class.dealii::Point.28", ptr %311, i64 %339
  br label %341

341:                                              ; preds = %335, %341
  %342 = phi i64 [ 0, %335 ], [ %348, %341 ]
  %343 = getelementptr inbounds [2 x double], ptr %340, i64 0, i64 %342
  %344 = load double, ptr %343, align 8, !tbaa !75, !noalias !328
  %345 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %342
  %346 = load double, ptr %345, align 8, !tbaa !75, !noalias !328
  %347 = fadd double %344, %346
  store double %347, ptr %345, align 8, !tbaa !75, !noalias !328
  %348 = add nuw nsw i64 %342, 1
  %349 = icmp eq i64 %342, 0
  br i1 %349, label %341, label %350, !llvm.loop !244

350:                                              ; preds = %341
  %351 = load double, ptr %314, align 8, !tbaa !75
  %352 = load double, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19, !noalias !328
  %353 = getelementptr inbounds %"class.dealii::Point.28", ptr %312, i64 %336
  store double %352, ptr %353, align 8, !tbaa !75
  %354 = getelementptr inbounds [2 x double], ptr %353, i64 0, i64 1
  store double %351, ptr %354, align 8, !tbaa !75
  %355 = add nuw nsw i64 %336, 1
  %356 = icmp eq i64 %355, %313
  br i1 %356, label %324, label %335, !llvm.loop !331

357:                                              ; preds = %363
  %358 = load ptr, ptr %1, align 8, !tbaa !229
  %359 = load ptr, ptr %26, align 8, !tbaa !229
  %360 = load ptr, ptr %15, align 8, !tbaa !229
  %361 = and i64 %24, 4294967295
  %362 = getelementptr inbounds i8, ptr %5, i64 8
  br label %384

363:                                              ; preds = %331, %363
  %364 = phi i64 [ 0, %331 ], [ %370, %363 ]
  %365 = getelementptr inbounds double, ptr %332, i64 %364
  %366 = load double, ptr %365, align 8, !tbaa !75
  %367 = getelementptr inbounds double, ptr %333, i64 %364
  %368 = load double, ptr %367, align 8, !tbaa !75
  %369 = call double @llvm.fmuladd.f64(double %366, double 8.000000e+00, double %368)
  store double %369, ptr %367, align 8, !tbaa !75
  %370 = add nuw nsw i64 %364, 1
  %371 = icmp eq i64 %370, %334
  br i1 %371, label %357, label %363, !llvm.loop !332

372:                                              ; preds = %399, %329
  %373 = load ptr, ptr %225, align 8, !tbaa !240
  %374 = load ptr, ptr %373, align 8, !tbaa !60
  %375 = getelementptr inbounds ptr, ptr %374, i64 6
  %376 = load ptr, ptr %375, align 8
  invoke void %376(ptr noundef nonnull align 8 dereferenceable(92) %373, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
          to label %377 unwind label %127

377:                                              ; preds = %372
  %378 = icmp eq i32 %25, 0
  br i1 %378, label %418, label %379

379:                                              ; preds = %377
  %380 = load ptr, ptr %2, align 8, !tbaa !171
  %381 = load ptr, ptr %14, align 8, !tbaa !171
  %382 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %383 = and i64 %24, 4294967295
  br label %406

384:                                              ; preds = %357, %399
  %385 = phi i64 [ 0, %357 ], [ %404, %399 ]
  %386 = shl nuw nsw i64 %385, 4
  %387 = getelementptr i8, ptr %358, i64 %386
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19, !noalias !333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %387, i64 16, i1 false), !tbaa !75, !noalias !333
  %388 = select i1 %33, i64 0, i64 %385
  %389 = getelementptr inbounds %"class.dealii::Point.28", ptr %359, i64 %388
  br label %390

390:                                              ; preds = %384, %390
  %391 = phi i64 [ 0, %384 ], [ %397, %390 ]
  %392 = getelementptr inbounds [2 x double], ptr %389, i64 0, i64 %391
  %393 = load double, ptr %392, align 8, !tbaa !75, !noalias !333
  %394 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %391
  %395 = load double, ptr %394, align 8, !tbaa !75, !noalias !333
  %396 = fsub double %395, %393
  store double %396, ptr %394, align 8, !tbaa !75, !noalias !333
  %397 = add nuw nsw i64 %391, 1
  %398 = icmp eq i64 %391, 0
  br i1 %398, label %390, label %399, !llvm.loop !248

399:                                              ; preds = %390
  %400 = load double, ptr %362, align 8, !tbaa !75
  %401 = load double, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19, !noalias !333
  %402 = getelementptr inbounds %"class.dealii::Point.28", ptr %360, i64 %385
  store double %401, ptr %402, align 8, !tbaa !75
  %403 = getelementptr inbounds [2 x double], ptr %402, i64 0, i64 1
  store double %400, ptr %403, align 8, !tbaa !75
  %404 = add nuw nsw i64 %385, 1
  %405 = icmp eq i64 %404, %361
  br i1 %405, label %372, label %384, !llvm.loop !336

406:                                              ; preds = %379, %406
  %407 = phi i64 [ 0, %379 ], [ %416, %406 ]
  %408 = getelementptr inbounds double, ptr %380, i64 %407
  %409 = load double, ptr %408, align 8, !tbaa !75
  %410 = getelementptr inbounds double, ptr %381, i64 %407
  %411 = load double, ptr %410, align 8, !tbaa !75
  %412 = call double @llvm.fmuladd.f64(double %411, double -8.000000e+00, double %409)
  %413 = load double, ptr %382, align 8, !tbaa !216
  %414 = fmul double %413, 1.200000e+01
  %415 = fdiv double %412, %414
  store double %415, ptr %408, align 8, !tbaa !75
  %416 = add nuw nsw i64 %407, 1
  %417 = icmp eq i64 %416, %383
  br i1 %417, label %418, label %406, !llvm.loop !337

418:                                              ; preds = %406, %213, %153, %377, %184, %120, %63
  %419 = load ptr, ptr %15, align 8, !tbaa !229
  %420 = icmp eq ptr %419, null
  br i1 %420, label %422, label %421

421:                                              ; preds = %418
  call void @_ZdlPv(ptr noundef %419) #21
  br label %422

422:                                              ; preds = %418, %421
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #19
  %423 = load ptr, ptr %14, align 8, !tbaa !171
  %424 = icmp eq ptr %423, null
  br i1 %424, label %426, label %425

425:                                              ; preds = %422
  call void @_ZdlPv(ptr noundef %423) #21
  br label %426

426:                                              ; preds = %422, %425
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #19
  ret void

427:                                              ; preds = %127
  call void @_ZdlPv(ptr noundef %129) #21
  br label %428

428:                                              ; preds = %427, %127, %77
  %429 = phi { ptr, i32 } [ %78, %77 ], [ %128, %127 ], [ %128, %427 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #19
  %430 = load ptr, ptr %14, align 8, !tbaa !171
  %431 = icmp eq ptr %430, null
  br i1 %431, label %433, label %432

432:                                              ; preds = %428
  call void @_ZdlPv(ptr noundef %430) #21
  br label %433

433:                                              ; preds = %432, %428
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #19
  resume { ptr, i32 } %429
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii18FunctionDerivativeILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #3 comdat align 2 !prof !85 {
  ret i32 184
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EEC2ERKNS_8FunctionILi3EEERKNS_5PointILi3EEEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi3EEC5ERKNS_8FunctionILi3EEERKNS_5PointILi3EEEd) align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %5 = alloca %"class.dealii::Point.45", align 8
  %6 = getelementptr inbounds %"class.dealii::Function.32", ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !338
  %8 = getelementptr inbounds %"class.dealii::FunctionTime", ptr %1, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !59
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %7, double noundef %9)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 1, i64 2), ptr %10, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  store double %3, ptr %12, align 8, !tbaa !340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !75
  br label %13

13:                                               ; preds = %4, %13
  %14 = phi i64 [ 0, %4 ], [ %18, %13 ]
  %15 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %14
  %16 = load double, ptr %15, align 8, !tbaa !75
  %17 = fmul double %16, %3
  store double %17, ptr %15, align 8, !tbaa !75
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %20, label %13, !llvm.loop !352

20:                                               ; preds = %13
  %21 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %22 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %23 unwind label %29

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %25 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  store ptr %22, ptr %21, align 8, !tbaa !353
  store ptr %22, ptr %24, align 8, !tbaa !354
  %26 = getelementptr inbounds %"class.dealii::Point.45", ptr %22, i64 1
  store ptr %26, ptr %25, align 8, !tbaa !355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa !75
  %27 = getelementptr inbounds %"class.dealii::Point.45", ptr %22, i64 1
  store ptr %27, ptr %24, align 8, !tbaa !354
  %28 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 3
  store i32 0, ptr %28, align 8, !tbaa !356
  ret void

29:                                               ; preds = %20
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  resume { ptr, i32 } %30
}

declare void @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132), double noundef, i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EE11set_formulaENS_22AutoDerivativeFunctionILi3EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !356
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EEC2ERKNS_8FunctionILi3EEERKSt6vectorINS_5PointILi3EEESaIS8_EEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi3EEC5ERKNS_8FunctionILi3EEERKSt6vectorINS_5PointILi3EEESaIS8_EEd) align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %5 = alloca %"class.dealii::Point.45", align 8
  %6 = getelementptr inbounds %"class.dealii::Function.32", ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !338
  %8 = getelementptr inbounds %"class.dealii::FunctionTime", ptr %1, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !59
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %7, double noundef %9)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 1, i64 2), ptr %10, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  store double %3, ptr %12, align 8, !tbaa !340
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !354
  %16 = load ptr, ptr %2, align 8, !tbaa !353
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 24
  %21 = icmp ugt i64 %20, 384307168202282325
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %23 unwind label %48

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %4
  %25 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %26 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %27 = icmp eq ptr %15, %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %19) #18
          to label %30 unwind label %48

30:                                               ; preds = %28, %24
  %31 = phi ptr [ null, %24 ], [ %29, %28 ]
  store ptr %31, ptr %13, align 8, !tbaa !353
  store ptr %31, ptr %25, align 8, !tbaa !354
  %32 = getelementptr inbounds %"class.dealii::Point.45", ptr %31, i64 %20
  store ptr %32, ptr %26, align 8, !tbaa !355
  br i1 %27, label %35, label %33

33:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 %19, i1 false), !tbaa !75
  %34 = getelementptr i8, ptr %31, i64 %19
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %31, %30 ], [ %34, %33 ]
  store ptr %36, ptr %25, align 8, !tbaa !354
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %31 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 24
  %41 = icmp eq ptr %36, %31
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %2, align 8, !tbaa !353
  %44 = getelementptr inbounds i8, ptr %5, i64 16
  %45 = getelementptr inbounds i8, ptr %5, i64 8
  br label %50

46:                                               ; preds = %62, %35
  %47 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 3
  store i32 0, ptr %47, align 8, !tbaa !356
  ret void

48:                                               ; preds = %28, %22
  %49 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  resume { ptr, i32 } %49

50:                                               ; preds = %42, %62
  %51 = phi i64 [ 0, %42 ], [ %70, %62 ]
  %52 = phi i32 [ 0, %42 ], [ %69, %62 ]
  %53 = mul nuw nsw i64 %51, 24
  %54 = getelementptr i8, ptr %43, i64 %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19, !noalias !357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %54, i64 24, i1 false), !tbaa !75, !noalias !357
  br label %55

55:                                               ; preds = %50, %55
  %56 = phi i64 [ 0, %50 ], [ %60, %55 ]
  %57 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !75, !noalias !357
  %59 = fmul double %58, %3
  store double %59, ptr %57, align 8, !tbaa !75, !noalias !357
  %60 = add nuw nsw i64 %56, 1
  %61 = icmp eq i64 %60, 3
  br i1 %61, label %62, label %55, !llvm.loop !352

62:                                               ; preds = %55
  %63 = load double, ptr %44, align 8, !tbaa !75
  %64 = load double, ptr %45, align 8, !tbaa !75
  %65 = load double, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19, !noalias !357
  %66 = getelementptr inbounds %"class.dealii::Point.45", ptr %31, i64 %51
  store double %65, ptr %66, align 8, !tbaa !75
  %67 = getelementptr inbounds [3 x double], ptr %66, i64 0, i64 1
  store double %64, ptr %67, align 8, !tbaa !75
  %68 = getelementptr inbounds [3 x double], ptr %66, i64 0, i64 2
  store double %63, ptr %68, align 8, !tbaa !75
  %69 = add i32 %52, 1
  %70 = zext i32 %69 to i64
  %71 = icmp ugt i64 %40, %70
  br i1 %71, label %50, label %46, !llvm.loop !362
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !354
  %6 = load ptr, ptr %3, align 8, !tbaa !353
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  br label %16

14:                                               ; preds = %28, %2
  %15 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  store double %1, ptr %15, align 8, !tbaa !340
  ret void

16:                                               ; preds = %12, %28
  %17 = phi i64 [ 0, %12 ], [ %29, %28 ]
  %18 = load double, ptr %13, align 8, !tbaa !340
  %19 = fdiv double %1, %18
  %20 = getelementptr inbounds %"class.dealii::Point.45", ptr %6, i64 %17
  br label %21

21:                                               ; preds = %16, %21
  %22 = phi i64 [ 0, %16 ], [ %26, %21 ]
  %23 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !75
  %25 = fmul double %19, %24
  store double %25, ptr %23, align 8, !tbaa !75
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %21, !llvm.loop !352

28:                                               ; preds = %21
  %29 = add i64 %17, 1
  %30 = and i64 %29, 4294967295
  %31 = icmp ugt i64 %10, %30
  br i1 %31, label %16, label %14, !llvm.loop !363
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii18FunctionDerivativeILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #5 comdat align 2 !prof !85 {
  %4 = alloca %"class.dealii::Point.45", align 8
  %5 = alloca %"class.dealii::Point.45", align 8
  %6 = alloca %"class.dealii::Point.45", align 8
  %7 = alloca %"class.dealii::Point.45", align 8
  %8 = alloca %"class.dealii::Point.45", align 8
  %9 = alloca %"class.dealii::Point.45", align 8
  %10 = alloca %"class.dealii::Point.45", align 8
  %11 = alloca %"class.dealii::Point.45", align 8
  %12 = alloca %"class.dealii::Point.45", align 8
  %13 = alloca %"class.dealii::Point.45", align 8
  %14 = alloca %"class.dealii::Point.45", align 8
  %15 = alloca %"class.dealii::Point.45", align 8
  %16 = alloca %"class.dealii::Point.45", align 8
  %17 = alloca %"class.dealii::Point.45", align 8
  %18 = alloca %"class.dealii::Point.45", align 8
  %19 = alloca %"class.dealii::Point.45", align 8
  %20 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !356
  switch i32 %21, label %181 [
    i32 0, label %22
    i32 1, label %62
    i32 2, label %90
  ]

22:                                               ; preds = %3
  %23 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #19
  %25 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #19, !noalias !365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !365
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i64 [ 0, %22 ], [ %34, %27 ]
  %29 = getelementptr inbounds [3 x double], ptr %26, i64 0, i64 %28
  %30 = load double, ptr %29, align 8, !tbaa !75, !noalias !365
  %31 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 %28
  %32 = load double, ptr %31, align 8, !tbaa !75, !noalias !365
  %33 = fadd double %30, %32
  store double %33, ptr %31, align 8, !tbaa !75, !noalias !365
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, 3
  br i1 %35, label %36, label %27, !llvm.loop !368

36:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #19, !noalias !365
  %37 = load ptr, ptr %24, align 8, !tbaa !60
  %38 = getelementptr inbounds ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = call noundef double %39(ptr noundef nonnull align 8 dereferenceable(92) %24, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %2)
  %41 = load ptr, ptr %23, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #19
  %42 = load ptr, ptr %25, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #19, !noalias !369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !369
  br label %43

43:                                               ; preds = %36, %43
  %44 = phi i64 [ 0, %36 ], [ %50, %43 ]
  %45 = getelementptr inbounds [3 x double], ptr %42, i64 0, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !75, !noalias !369
  %47 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %44
  %48 = load double, ptr %47, align 8, !tbaa !75, !noalias !369
  %49 = fsub double %48, %46
  store double %49, ptr %47, align 8, !tbaa !75, !noalias !369
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, 3
  br i1 %51, label %52, label %43, !llvm.loop !372

52:                                               ; preds = %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #19, !noalias !369
  %53 = load ptr, ptr %41, align 8, !tbaa !60
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef double %55(ptr noundef nonnull align 8 dereferenceable(92) %41, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %2)
  %57 = fsub double %40, %56
  %58 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %59 = load double, ptr %58, align 8, !tbaa !340
  %60 = fmul double %59, 2.000000e+00
  %61 = fdiv double %57, %60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #19
  br label %181

62:                                               ; preds = %3
  %63 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !364
  %65 = load ptr, ptr %64, align 8, !tbaa !60
  %66 = getelementptr inbounds ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef double %67(ptr noundef nonnull align 8 dereferenceable(92) %64, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2)
  %69 = load ptr, ptr %63, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #19
  %70 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19, !noalias !373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !373
  br label %72

72:                                               ; preds = %62, %72
  %73 = phi i64 [ 0, %62 ], [ %79, %72 ]
  %74 = getelementptr inbounds [3 x double], ptr %71, i64 0, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !75, !noalias !373
  %76 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %73
  %77 = load double, ptr %76, align 8, !tbaa !75, !noalias !373
  %78 = fsub double %77, %75
  store double %78, ptr %76, align 8, !tbaa !75, !noalias !373
  %79 = add nuw nsw i64 %73, 1
  %80 = icmp eq i64 %79, 3
  br i1 %80, label %81, label %72, !llvm.loop !372

81:                                               ; preds = %72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19, !noalias !373
  %82 = load ptr, ptr %69, align 8, !tbaa !60
  %83 = getelementptr inbounds ptr, ptr %82, i64 4
  %84 = load ptr, ptr %83, align 8
  %85 = call noundef double %84(ptr noundef nonnull align 8 dereferenceable(92) %69, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef %2)
  %86 = fsub double %68, %85
  %87 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %88 = load double, ptr %87, align 8, !tbaa !340
  %89 = fdiv double %86, %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #19
  br label %181

90:                                               ; preds = %3
  %91 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #19
  %93 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %94, i64 24, i1 false), !tbaa !75
  br label %95

95:                                               ; preds = %90, %95
  %96 = phi i64 [ 0, %90 ], [ %100, %95 ]
  %97 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !75
  %99 = fmul double %98, 2.000000e+00
  store double %99, ptr %97, align 8, !tbaa !75
  %100 = add nuw nsw i64 %96, 1
  %101 = icmp eq i64 %100, 3
  br i1 %101, label %102, label %95, !llvm.loop !352

102:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19, !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !376
  br label %103

103:                                              ; preds = %102, %103
  %104 = phi i64 [ 0, %102 ], [ %110, %103 ]
  %105 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %104
  %106 = load double, ptr %105, align 8, !tbaa !75
  %107 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %104
  %108 = load double, ptr %107, align 8, !tbaa !75, !noalias !376
  %109 = fadd double %106, %108
  store double %109, ptr %107, align 8, !tbaa !75, !noalias !376
  %110 = add nuw nsw i64 %104, 1
  %111 = icmp eq i64 %110, 3
  br i1 %111, label %112, label %103, !llvm.loop !368

112:                                              ; preds = %103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19, !noalias !376
  %113 = load ptr, ptr %92, align 8, !tbaa !60
  %114 = getelementptr inbounds ptr, ptr %113, i64 4
  %115 = load ptr, ptr %114, align 8
  %116 = call noundef double %115(ptr noundef nonnull align 8 dereferenceable(92) %92, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %2)
  %117 = load ptr, ptr %91, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #19
  %118 = load ptr, ptr %93, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19, !noalias !379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !379
  br label %119

119:                                              ; preds = %112, %119
  %120 = phi i64 [ 0, %112 ], [ %126, %119 ]
  %121 = getelementptr inbounds [3 x double], ptr %118, i64 0, i64 %120
  %122 = load double, ptr %121, align 8, !tbaa !75, !noalias !379
  %123 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %120
  %124 = load double, ptr %123, align 8, !tbaa !75, !noalias !379
  %125 = fadd double %122, %124
  store double %125, ptr %123, align 8, !tbaa !75, !noalias !379
  %126 = add nuw nsw i64 %120, 1
  %127 = icmp eq i64 %126, 3
  br i1 %127, label %128, label %119, !llvm.loop !368

128:                                              ; preds = %119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19, !noalias !379
  %129 = load ptr, ptr %117, align 8, !tbaa !60
  %130 = getelementptr inbounds ptr, ptr %129, i64 4
  %131 = load ptr, ptr %130, align 8
  %132 = call noundef double %131(ptr noundef nonnull align 8 dereferenceable(92) %117, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef %2)
  %133 = load ptr, ptr %91, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #19
  %134 = load ptr, ptr %93, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19, !noalias !382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !382
  %135 = fneg double %116
  br label %136

136:                                              ; preds = %128, %136
  %137 = phi i64 [ 0, %128 ], [ %143, %136 ]
  %138 = getelementptr inbounds [3 x double], ptr %134, i64 0, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !75, !noalias !382
  %140 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %137
  %141 = load double, ptr %140, align 8, !tbaa !75, !noalias !382
  %142 = fsub double %141, %139
  store double %142, ptr %140, align 8, !tbaa !75, !noalias !382
  %143 = add nuw nsw i64 %137, 1
  %144 = icmp eq i64 %143, 3
  br i1 %144, label %145, label %136, !llvm.loop !372

145:                                              ; preds = %136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19, !noalias !382
  %146 = load ptr, ptr %133, align 8, !tbaa !60
  %147 = getelementptr inbounds ptr, ptr %146, i64 4
  %148 = load ptr, ptr %147, align 8
  %149 = call noundef double %148(ptr noundef nonnull align 8 dereferenceable(92) %133, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %2)
  %150 = load ptr, ptr %91, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #19
  %151 = load ptr, ptr %93, align 8, !tbaa !353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %151, i64 24, i1 false), !tbaa !75
  %152 = call double @llvm.fmuladd.f64(double %132, double 8.000000e+00, double %135)
  br label %153

153:                                              ; preds = %145, %153
  %154 = phi i64 [ 0, %145 ], [ %158, %153 ]
  %155 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %154
  %156 = load double, ptr %155, align 8, !tbaa !75
  %157 = fmul double %156, 2.000000e+00
  store double %157, ptr %155, align 8, !tbaa !75
  %158 = add nuw nsw i64 %154, 1
  %159 = icmp eq i64 %158, 3
  br i1 %159, label %160, label %153, !llvm.loop !352

160:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19, !noalias !385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !385
  br label %161

161:                                              ; preds = %160, %161
  %162 = phi i64 [ 0, %160 ], [ %168, %161 ]
  %163 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !75
  %165 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %162
  %166 = load double, ptr %165, align 8, !tbaa !75, !noalias !385
  %167 = fsub double %166, %164
  store double %167, ptr %165, align 8, !tbaa !75, !noalias !385
  %168 = add nuw nsw i64 %162, 1
  %169 = icmp eq i64 %168, 3
  br i1 %169, label %170, label %161, !llvm.loop !372

170:                                              ; preds = %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa !75
  %171 = call double @llvm.fmuladd.f64(double %149, double -8.000000e+00, double %152)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19, !noalias !385
  %172 = load ptr, ptr %150, align 8, !tbaa !60
  %173 = getelementptr inbounds ptr, ptr %172, i64 4
  %174 = load ptr, ptr %173, align 8
  %175 = call noundef double %174(ptr noundef nonnull align 8 dereferenceable(92) %150, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef %2)
  %176 = fadd double %171, %175
  %177 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %178 = load double, ptr %177, align 8, !tbaa !340
  %179 = fmul double %178, 1.200000e+01
  %180 = fdiv double %176, %179
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #19
  br label %181

181:                                              ; preds = %3, %170, %81, %52
  %182 = phi double [ %180, %170 ], [ %89, %81 ], [ %61, %52 ], [ 0.000000e+00, %3 ]
  ret double %182
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %4 = alloca %"class.dealii::Point.45", align 8
  %5 = alloca %"class.dealii::Point.45", align 8
  %6 = alloca %"class.dealii::Point.45", align 8
  %7 = alloca %"class.dealii::Point.45", align 8
  %8 = alloca %"class.dealii::Point.45", align 8
  %9 = alloca %"class.dealii::Point.45", align 8
  %10 = alloca %"class.dealii::Point.45", align 8
  %11 = alloca %"class.dealii::Point.45", align 8
  %12 = alloca %"class.dealii::Point.45", align 8
  %13 = alloca %"class.dealii::Vector", align 8
  %14 = alloca %"class.dealii::Point.45", align 8
  %15 = alloca %"class.dealii::Point.45", align 8
  %16 = alloca %"class.dealii::Point.45", align 8
  %17 = alloca %"class.dealii::Point.45", align 8
  %18 = alloca %"class.dealii::Point.45", align 8
  %19 = alloca %"class.dealii::Point.45", align 8
  %20 = alloca %"class.dealii::Point.45", align 8
  %21 = alloca %"class.dealii::Point.45", align 8
  %22 = alloca %"class.dealii::Point.45", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %13) #19
  %23 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !127
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !60
  %25 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 1
  %26 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 2
  %27 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 3
  %28 = icmp eq i32 %24, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  br label %41

30:                                               ; preds = %3
  %31 = zext i32 %24 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %32) #18
          to label %34 unwind label %39

34:                                               ; preds = %30
  store ptr %33, ptr %27, align 8, !tbaa !129
  store i32 %24, ptr %26, align 4, !tbaa !130
  store i32 %24, ptr %25, align 8, !tbaa !127
  %35 = zext i32 %24 to i64
  %36 = shl nuw nsw i64 %35, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %33, i8 0, i64 %36, i1 false), !tbaa !75
  br label %41

37:                                               ; preds = %320, %39
  %38 = phi { ptr, i32 } [ %40, %39 ], [ %316, %320 ]
  resume { ptr, i32 } %38

39:                                               ; preds = %30
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #19
  br label %37

41:                                               ; preds = %34, %29
  %42 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !356
  switch i32 %43, label %310 [
    i32 0, label %44
    i32 1, label %108
    i32 2, label %156
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #19
  %47 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #19, !noalias !388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !388
  br label %49

49:                                               ; preds = %44, %49
  %50 = phi i64 [ 0, %44 ], [ %56, %49 ]
  %51 = getelementptr inbounds [3 x double], ptr %48, i64 0, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !75, !noalias !388
  %53 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 %50
  %54 = load double, ptr %53, align 8, !tbaa !75, !noalias !388
  %55 = fadd double %52, %54
  store double %55, ptr %53, align 8, !tbaa !75, !noalias !388
  %56 = add nuw nsw i64 %50, 1
  %57 = icmp eq i64 %56, 3
  br i1 %57, label %58, label %49, !llvm.loop !368

58:                                               ; preds = %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #19, !noalias !388
  %59 = load ptr, ptr %46, align 8, !tbaa !60
  %60 = getelementptr inbounds ptr, ptr %59, i64 5
  %61 = load ptr, ptr %60, align 8
  invoke void %61(ptr noundef nonnull align 8 dereferenceable(92) %46, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %62 unwind label %102

62:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #19
  %63 = load ptr, ptr %45, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #19
  %64 = load ptr, ptr %47, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #19, !noalias !391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !391
  br label %65

65:                                               ; preds = %62, %65
  %66 = phi i64 [ 0, %62 ], [ %72, %65 ]
  %67 = getelementptr inbounds [3 x double], ptr %64, i64 0, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !75, !noalias !391
  %69 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %66
  %70 = load double, ptr %69, align 8, !tbaa !75, !noalias !391
  %71 = fsub double %70, %68
  store double %71, ptr %69, align 8, !tbaa !75, !noalias !391
  %72 = add nuw nsw i64 %66, 1
  %73 = icmp eq i64 %72, 3
  br i1 %73, label %74, label %65, !llvm.loop !372

74:                                               ; preds = %65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #19, !noalias !391
  %75 = load ptr, ptr %63, align 8, !tbaa !60
  %76 = getelementptr inbounds ptr, ptr %75, i64 5
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(92) %63, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %78 unwind label %104

78:                                               ; preds = %74
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #19
  %79 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %80 = load double, ptr %79, align 8, !tbaa !340
  %81 = fmul double %80, 2.000000e+00
  %82 = fdiv double 1.000000e+00, %81
  %83 = fdiv double -1.000000e+00, %81
  %84 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !129
  %86 = load i32, ptr %23, align 8, !tbaa !127
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds double, ptr %85, i64 %87
  %89 = icmp eq i32 %86, 0
  br i1 %89, label %310, label %90

90:                                               ; preds = %78
  %91 = load ptr, ptr %27, align 8, !tbaa !129
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi ptr [ %96, %92 ], [ %91, %90 ]
  %94 = phi ptr [ %100, %92 ], [ %85, %90 ]
  %95 = load double, ptr %94, align 8, !tbaa !75
  %96 = getelementptr inbounds double, ptr %93, i64 1
  %97 = load double, ptr %93, align 8, !tbaa !75
  %98 = fmul double %83, %97
  %99 = call double @llvm.fmuladd.f64(double %82, double %95, double %98)
  store double %99, ptr %94, align 8, !tbaa !75
  %100 = getelementptr inbounds double, ptr %94, i64 1
  %101 = icmp eq ptr %100, %88
  br i1 %101, label %310, label %92, !llvm.loop !137

102:                                              ; preds = %58
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #19
  br label %315

104:                                              ; preds = %74
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #19
  br label %315

106:                                              ; preds = %108
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %315

108:                                              ; preds = %41
  %109 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !364
  %111 = load ptr, ptr %110, align 8, !tbaa !60
  %112 = getelementptr inbounds ptr, ptr %111, i64 5
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(92) %110, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %114 unwind label %106

114:                                              ; preds = %108
  %115 = load ptr, ptr %109, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #19
  %116 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19, !noalias !394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !394
  br label %118

118:                                              ; preds = %114, %118
  %119 = phi i64 [ 0, %114 ], [ %125, %118 ]
  %120 = getelementptr inbounds [3 x double], ptr %117, i64 0, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !75, !noalias !394
  %122 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %119
  %123 = load double, ptr %122, align 8, !tbaa !75, !noalias !394
  %124 = fsub double %123, %121
  store double %124, ptr %122, align 8, !tbaa !75, !noalias !394
  %125 = add nuw nsw i64 %119, 1
  %126 = icmp eq i64 %125, 3
  br i1 %126, label %127, label %118, !llvm.loop !372

127:                                              ; preds = %118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19, !noalias !394
  %128 = load ptr, ptr %115, align 8, !tbaa !60
  %129 = getelementptr inbounds ptr, ptr %128, i64 5
  %130 = load ptr, ptr %129, align 8
  invoke void %130(ptr noundef nonnull align 8 dereferenceable(92) %115, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %131 unwind label %154

131:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #19
  %132 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %133 = load double, ptr %132, align 8, !tbaa !340
  %134 = fdiv double 1.000000e+00, %133
  %135 = fdiv double -1.000000e+00, %133
  %136 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !129
  %138 = load i32, ptr %23, align 8, !tbaa !127
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds double, ptr %137, i64 %139
  %141 = icmp eq i32 %138, 0
  br i1 %141, label %310, label %142

142:                                              ; preds = %131
  %143 = load ptr, ptr %27, align 8, !tbaa !129
  br label %144

144:                                              ; preds = %142, %144
  %145 = phi ptr [ %148, %144 ], [ %143, %142 ]
  %146 = phi ptr [ %152, %144 ], [ %137, %142 ]
  %147 = load double, ptr %146, align 8, !tbaa !75
  %148 = getelementptr inbounds double, ptr %145, i64 1
  %149 = load double, ptr %145, align 8, !tbaa !75
  %150 = fmul double %135, %149
  %151 = call double @llvm.fmuladd.f64(double %134, double %147, double %150)
  store double %151, ptr %146, align 8, !tbaa !75
  %152 = getelementptr inbounds double, ptr %146, i64 1
  %153 = icmp eq ptr %152, %140
  br i1 %153, label %310, label %144, !llvm.loop !137

154:                                              ; preds = %127
  %155 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #19
  br label %315

156:                                              ; preds = %41
  %157 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #19
  %159 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #19, !noalias !397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %160, i64 24, i1 false), !tbaa !75, !noalias !397
  br label %161

161:                                              ; preds = %156, %161
  %162 = phi i64 [ 0, %156 ], [ %166, %161 ]
  %163 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !75, !noalias !397
  %165 = fmul double %164, 2.000000e+00
  store double %165, ptr %163, align 8, !tbaa !75, !noalias !397
  %166 = add nuw nsw i64 %162, 1
  %167 = icmp eq i64 %166, 3
  br i1 %167, label %168, label %161, !llvm.loop !352

168:                                              ; preds = %161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19, !noalias !397
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19, !noalias !402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !402
  br label %169

169:                                              ; preds = %168, %169
  %170 = phi i64 [ 0, %168 ], [ %176, %169 ]
  %171 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 %170
  %172 = load double, ptr %171, align 8, !tbaa !75, !noalias !402
  %173 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %170
  %174 = load double, ptr %173, align 8, !tbaa !75, !noalias !402
  %175 = fsub double %174, %172
  store double %175, ptr %173, align 8, !tbaa !75, !noalias !402
  %176 = add nuw nsw i64 %170, 1
  %177 = icmp eq i64 %176, 3
  br i1 %177, label %178, label %169, !llvm.loop !372

178:                                              ; preds = %169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19, !noalias !402
  %179 = load ptr, ptr %158, align 8, !tbaa !60
  %180 = getelementptr inbounds ptr, ptr %179, i64 5
  %181 = load ptr, ptr %180, align 8
  invoke void %181(ptr noundef nonnull align 8 dereferenceable(92) %158, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %182 unwind label %302

182:                                              ; preds = %178
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #19
  %183 = load ptr, ptr %157, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #19
  %184 = load ptr, ptr %159, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19, !noalias !405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %184, i64 24, i1 false), !tbaa !75, !noalias !405
  br label %185

185:                                              ; preds = %182, %185
  %186 = phi i64 [ 0, %182 ], [ %190, %185 ]
  %187 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %186
  %188 = load double, ptr %187, align 8, !tbaa !75, !noalias !405
  %189 = fmul double %188, 2.000000e+00
  store double %189, ptr %187, align 8, !tbaa !75, !noalias !405
  %190 = add nuw nsw i64 %186, 1
  %191 = icmp eq i64 %190, 3
  br i1 %191, label %192, label %185, !llvm.loop !352

192:                                              ; preds = %185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19, !noalias !405
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19, !noalias !410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !410
  br label %193

193:                                              ; preds = %192, %193
  %194 = phi i64 [ 0, %192 ], [ %200, %193 ]
  %195 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 %194
  %196 = load double, ptr %195, align 8, !tbaa !75, !noalias !410
  %197 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %194
  %198 = load double, ptr %197, align 8, !tbaa !75, !noalias !410
  %199 = fadd double %196, %198
  store double %199, ptr %197, align 8, !tbaa !75, !noalias !410
  %200 = add nuw nsw i64 %194, 1
  %201 = icmp eq i64 %200, 3
  br i1 %201, label %202, label %193, !llvm.loop !368

202:                                              ; preds = %193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19, !noalias !410
  %203 = load ptr, ptr %183, align 8, !tbaa !60
  %204 = getelementptr inbounds ptr, ptr %203, i64 5
  %205 = load ptr, ptr %204, align 8
  invoke void %205(ptr noundef nonnull align 8 dereferenceable(92) %183, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %206 unwind label %304

206:                                              ; preds = %202
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #19
  %207 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !129
  %209 = load i32, ptr %23, align 8, !tbaa !127
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds double, ptr %208, i64 %210
  %212 = icmp eq i32 %209, 0
  br i1 %212, label %224, label %213

213:                                              ; preds = %206
  %214 = load ptr, ptr %27, align 8, !tbaa !129
  br label %215

215:                                              ; preds = %213, %215
  %216 = phi ptr [ %218, %215 ], [ %214, %213 ]
  %217 = phi ptr [ %220, %215 ], [ %208, %213 ]
  %218 = getelementptr inbounds double, ptr %216, i64 1
  %219 = load double, ptr %216, align 8, !tbaa !75
  %220 = getelementptr inbounds double, ptr %217, i64 1
  %221 = load double, ptr %217, align 8, !tbaa !75
  %222 = call double @llvm.fmuladd.f64(double %219, double -1.000000e+00, double %221)
  store double %222, ptr %217, align 8, !tbaa !75
  %223 = icmp eq ptr %220, %211
  br i1 %223, label %224, label %215, !llvm.loop !157

224:                                              ; preds = %215, %206
  %225 = load ptr, ptr %157, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #19
  %226 = load ptr, ptr %159, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19, !noalias !413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !413
  br label %227

227:                                              ; preds = %224, %227
  %228 = phi i64 [ 0, %224 ], [ %234, %227 ]
  %229 = getelementptr inbounds [3 x double], ptr %226, i64 0, i64 %228
  %230 = load double, ptr %229, align 8, !tbaa !75, !noalias !413
  %231 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %228
  %232 = load double, ptr %231, align 8, !tbaa !75, !noalias !413
  %233 = fsub double %232, %230
  store double %233, ptr %231, align 8, !tbaa !75, !noalias !413
  %234 = add nuw nsw i64 %228, 1
  %235 = icmp eq i64 %234, 3
  br i1 %235, label %236, label %227, !llvm.loop !372

236:                                              ; preds = %227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19, !noalias !413
  %237 = load ptr, ptr %225, align 8, !tbaa !60
  %238 = getelementptr inbounds ptr, ptr %237, i64 5
  %239 = load ptr, ptr %238, align 8
  invoke void %239(ptr noundef nonnull align 8 dereferenceable(92) %225, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %240 unwind label %306

240:                                              ; preds = %236
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #19
  %241 = load ptr, ptr %207, align 8, !tbaa !129
  %242 = load i32, ptr %23, align 8, !tbaa !127
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds double, ptr %241, i64 %243
  %245 = icmp eq i32 %242, 0
  br i1 %245, label %257, label %246

246:                                              ; preds = %240
  %247 = load ptr, ptr %27, align 8, !tbaa !129
  br label %248

248:                                              ; preds = %246, %248
  %249 = phi ptr [ %251, %248 ], [ %247, %246 ]
  %250 = phi ptr [ %253, %248 ], [ %241, %246 ]
  %251 = getelementptr inbounds double, ptr %249, i64 1
  %252 = load double, ptr %249, align 8, !tbaa !75
  %253 = getelementptr inbounds double, ptr %250, i64 1
  %254 = load double, ptr %250, align 8, !tbaa !75
  %255 = call double @llvm.fmuladd.f64(double %252, double -8.000000e+00, double %254)
  store double %255, ptr %250, align 8, !tbaa !75
  %256 = icmp eq ptr %253, %244
  br i1 %256, label %257, label %248, !llvm.loop !157

257:                                              ; preds = %248, %240
  %258 = load ptr, ptr %157, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #19
  %259 = load ptr, ptr %159, align 8, !tbaa !353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19, !noalias !416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !75, !noalias !416
  br label %260

260:                                              ; preds = %257, %260
  %261 = phi i64 [ 0, %257 ], [ %267, %260 ]
  %262 = getelementptr inbounds [3 x double], ptr %259, i64 0, i64 %261
  %263 = load double, ptr %262, align 8, !tbaa !75, !noalias !416
  %264 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %261
  %265 = load double, ptr %264, align 8, !tbaa !75, !noalias !416
  %266 = fadd double %263, %265
  store double %266, ptr %264, align 8, !tbaa !75, !noalias !416
  %267 = add nuw nsw i64 %261, 1
  %268 = icmp eq i64 %267, 3
  br i1 %268, label %269, label %260, !llvm.loop !368

269:                                              ; preds = %260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19, !noalias !416
  %270 = load ptr, ptr %258, align 8, !tbaa !60
  %271 = getelementptr inbounds ptr, ptr %270, i64 5
  %272 = load ptr, ptr %271, align 8
  invoke void %272(ptr noundef nonnull align 8 dereferenceable(92) %258, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %273 unwind label %308

273:                                              ; preds = %269
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #19
  %274 = load ptr, ptr %207, align 8, !tbaa !129
  %275 = load i32, ptr %23, align 8, !tbaa !127
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds double, ptr %274, i64 %276
  %278 = icmp eq i32 %275, 0
  br i1 %278, label %290, label %279

279:                                              ; preds = %273
  %280 = load ptr, ptr %27, align 8, !tbaa !129
  br label %281

281:                                              ; preds = %279, %281
  %282 = phi ptr [ %284, %281 ], [ %280, %279 ]
  %283 = phi ptr [ %286, %281 ], [ %274, %279 ]
  %284 = getelementptr inbounds double, ptr %282, i64 1
  %285 = load double, ptr %282, align 8, !tbaa !75
  %286 = getelementptr inbounds double, ptr %283, i64 1
  %287 = load double, ptr %283, align 8, !tbaa !75
  %288 = call double @llvm.fmuladd.f64(double %285, double 8.000000e+00, double %287)
  store double %288, ptr %283, align 8, !tbaa !75
  %289 = icmp eq ptr %286, %277
  br i1 %289, label %290, label %281, !llvm.loop !157

290:                                              ; preds = %281, %273
  %291 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %292 = load double, ptr %291, align 8, !tbaa !340
  %293 = fmul double %292, 1.200000e+01
  %294 = fdiv double 1.000000e+00, %293
  %295 = icmp eq i32 %275, 0
  br i1 %295, label %310, label %296

296:                                              ; preds = %290, %296
  %297 = phi ptr [ %298, %296 ], [ %274, %290 ]
  %298 = getelementptr inbounds double, ptr %297, i64 1
  %299 = load double, ptr %297, align 8, !tbaa !75
  %300 = fmul double %294, %299
  store double %300, ptr %297, align 8, !tbaa !75
  %301 = icmp eq ptr %298, %277
  br i1 %301, label %310, label %296, !llvm.loop !164

302:                                              ; preds = %178
  %303 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #19
  br label %315

304:                                              ; preds = %202
  %305 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #19
  br label %315

306:                                              ; preds = %236
  %307 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #19
  br label %315

308:                                              ; preds = %269
  %309 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #19
  br label %315

310:                                              ; preds = %296, %144, %92, %290, %131, %78, %41
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !60
  %311 = load ptr, ptr %27, align 8, !tbaa !129
  %312 = icmp eq ptr %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %310
  call void @_ZdaPv(ptr noundef %311) #21
  store ptr null, ptr %27, align 8, !tbaa !129
  br label %314

314:                                              ; preds = %310, %313
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #19
  ret void

315:                                              ; preds = %308, %306, %304, %302, %154, %106, %104, %102
  %316 = phi { ptr, i32 } [ %309, %308 ], [ %307, %306 ], [ %305, %304 ], [ %303, %302 ], [ %107, %106 ], [ %155, %154 ], [ %105, %104 ], [ %103, %102 ]
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !60
  %317 = load ptr, ptr %27, align 8, !tbaa !129
  %318 = icmp eq ptr %317, null
  br i1 %318, label %320, label %319

319:                                              ; preds = %315
  call void @_ZdaPv(ptr noundef %317) #21
  store ptr null, ptr %27, align 8, !tbaa !129
  br label %320

320:                                              ; preds = %315, %319
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #19
  br label %37
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %5 = alloca %"class.dealii::Point.45", align 8
  %6 = alloca %"class.dealii::Point.45", align 8
  %7 = alloca %"class.dealii::Point.45", align 8
  %8 = alloca %"class.dealii::Point.45", align 8
  %9 = alloca %"class.dealii::Point.45", align 8
  %10 = alloca %"class.dealii::Point.45", align 8
  %11 = alloca %"class.dealii::Point.45", align 8
  %12 = alloca %"class.dealii::Point.45", align 8
  %13 = alloca %"class.dealii::Point.45", align 8
  %14 = alloca %"class.std::vector.8", align 8
  %15 = alloca %"class.std::vector.40", align 8
  %16 = alloca %"class.dealii::Point.45", align 8
  %17 = alloca %"class.dealii::Point.45", align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !354
  %20 = load ptr, ptr %1, align 8, !tbaa !353
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 24
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %27 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !354
  %29 = load ptr, ptr %26, align 8, !tbaa !353
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = icmp eq i64 %32, 24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #19
  %34 = and i64 %24, 4294967295
  %35 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %14, i64 0, i32 1
  %36 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %14, i64 0, i32 2
  %37 = icmp eq i64 %34, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br i1 %37, label %41, label %38

38:                                               ; preds = %4
  %39 = shl nuw nsw i64 %34, 3
  %40 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %39) #18
  br label %41

41:                                               ; preds = %38, %4
  %42 = phi ptr [ null, %4 ], [ %40, %38 ]
  store ptr %42, ptr %14, align 8, !tbaa !171
  store ptr %42, ptr %35, align 8, !tbaa !212
  %43 = getelementptr inbounds double, ptr %42, i64 %34
  store ptr %43, ptr %36, align 8, !tbaa !213
  br i1 %37, label %50, label %44

44:                                               ; preds = %41
  store double 0.000000e+00, ptr %42, align 8, !tbaa !75
  %45 = getelementptr double, ptr %42, i64 1
  %46 = icmp eq i64 %34, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = shl nuw nsw i64 %34, 3
  %49 = add nsw i64 %48, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %45, i8 0, i64 %49, i1 false), !tbaa !75
  br label %50

50:                                               ; preds = %41, %44, %47
  %51 = phi ptr [ %42, %41 ], [ %45, %44 ], [ %43, %47 ]
  store ptr %51, ptr %35, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #19
  %52 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %15, i64 0, i32 1
  %53 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %15, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br i1 %37, label %57, label %54

54:                                               ; preds = %50
  %55 = mul nuw nsw i64 %34, 24
  %56 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %55) #18
          to label %57 unwind label %79

57:                                               ; preds = %54, %50
  %58 = phi ptr [ null, %50 ], [ %56, %54 ]
  store ptr %58, ptr %15, align 8, !tbaa !353
  store ptr %58, ptr %52, align 8, !tbaa !354
  %59 = getelementptr inbounds %"class.dealii::Point.45", ptr %58, i64 %34
  store ptr %59, ptr %53, align 8, !tbaa !355
  br i1 %37, label %63, label %60

60:                                               ; preds = %57
  %61 = mul nuw nsw i64 %34, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %58, i8 0, i64 %61, i1 false), !tbaa !75
  %62 = getelementptr i8, ptr %58, i64 %61
  br label %63

63:                                               ; preds = %57, %60
  %64 = phi ptr [ %58, %57 ], [ %62, %60 ]
  store ptr %64, ptr %52, align 8, !tbaa !354
  %65 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !356
  switch i32 %66, label %439 [
    i32 0, label %73
    i32 1, label %172
    i32 2, label %67
  ]

67:                                               ; preds = %63
  %68 = icmp eq i32 %25, 0
  br i1 %68, label %234, label %69

69:                                               ; preds = %67
  %70 = and i64 %24, 4294967295
  %71 = getelementptr inbounds i8, ptr %9, i64 16
  %72 = getelementptr inbounds i8, ptr %9, i64 8
  br label %249

73:                                               ; preds = %63
  %74 = icmp eq i32 %25, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %73
  %76 = and i64 %24, 4294967295
  %77 = getelementptr inbounds i8, ptr %13, i64 16
  %78 = getelementptr inbounds i8, ptr %13, i64 8
  br label %96

79:                                               ; preds = %54
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %449

81:                                               ; preds = %111, %73
  %82 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !364
  %84 = load ptr, ptr %83, align 8, !tbaa !60
  %85 = getelementptr inbounds ptr, ptr %84, i64 6
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(92) %83, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3)
          to label %87 unwind label %132

87:                                               ; preds = %81
  %88 = icmp eq i32 %25, 0
  br i1 %88, label %120, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr %1, align 8, !tbaa !353
  %91 = load ptr, ptr %26, align 8, !tbaa !353
  %92 = load ptr, ptr %15, align 8, !tbaa !353
  %93 = and i64 %24, 4294967295
  %94 = getelementptr inbounds i8, ptr %12, i64 16
  %95 = getelementptr inbounds i8, ptr %12, i64 8
  br label %136

96:                                               ; preds = %75, %111
  %97 = phi i64 [ 0, %75 ], [ %118, %111 ]
  %98 = mul nuw nsw i64 %97, 24
  %99 = getelementptr i8, ptr %20, i64 %98
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #19, !noalias !419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %99, i64 24, i1 false), !tbaa !75, !noalias !419
  %100 = select i1 %33, i64 0, i64 %97
  %101 = getelementptr inbounds %"class.dealii::Point.45", ptr %29, i64 %100
  br label %102

102:                                              ; preds = %96, %102
  %103 = phi i64 [ 0, %96 ], [ %109, %102 ]
  %104 = getelementptr inbounds [3 x double], ptr %101, i64 0, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !75, !noalias !419
  %106 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 %103
  %107 = load double, ptr %106, align 8, !tbaa !75, !noalias !419
  %108 = fadd double %105, %107
  store double %108, ptr %106, align 8, !tbaa !75, !noalias !419
  %109 = add nuw nsw i64 %103, 1
  %110 = icmp eq i64 %109, 3
  br i1 %110, label %111, label %102, !llvm.loop !368

111:                                              ; preds = %102
  %112 = load double, ptr %77, align 8, !tbaa !75
  %113 = load double, ptr %78, align 8, !tbaa !75
  %114 = load double, ptr %13, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #19, !noalias !419
  %115 = getelementptr inbounds %"class.dealii::Point.45", ptr %58, i64 %97
  store double %114, ptr %115, align 8, !tbaa !75
  %116 = getelementptr inbounds [3 x double], ptr %115, i64 0, i64 1
  store double %113, ptr %116, align 8, !tbaa !75
  %117 = getelementptr inbounds [3 x double], ptr %115, i64 0, i64 2
  store double %112, ptr %117, align 8, !tbaa !75
  %118 = add nuw nsw i64 %97, 1
  %119 = icmp eq i64 %118, %76
  br i1 %119, label %81, label %96, !llvm.loop !422

120:                                              ; preds = %151, %87
  %121 = load ptr, ptr %82, align 8, !tbaa !364
  %122 = load ptr, ptr %121, align 8, !tbaa !60
  %123 = getelementptr inbounds ptr, ptr %122, i64 6
  %124 = load ptr, ptr %123, align 8
  invoke void %124(ptr noundef nonnull align 8 dereferenceable(92) %121, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
          to label %125 unwind label %132

125:                                              ; preds = %120
  %126 = icmp eq i32 %25, 0
  br i1 %126, label %439, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %2, align 8, !tbaa !171
  %129 = load ptr, ptr %14, align 8, !tbaa !171
  %130 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %131 = and i64 %24, 4294967295
  br label %160

132:                                              ; preds = %391, %340, %281, %234, %187, %172, %120, %81
  %133 = landingpad { ptr, i32 }
          cleanup
  %134 = load ptr, ptr %15, align 8, !tbaa !353
  %135 = icmp eq ptr %134, null
  br i1 %135, label %449, label %448

136:                                              ; preds = %89, %151
  %137 = phi i64 [ 0, %89 ], [ %158, %151 ]
  %138 = mul nuw nsw i64 %137, 24
  %139 = getelementptr i8, ptr %90, i64 %138
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #19, !noalias !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %139, i64 24, i1 false), !tbaa !75, !noalias !423
  %140 = select i1 %33, i64 0, i64 %137
  %141 = getelementptr inbounds %"class.dealii::Point.45", ptr %91, i64 %140
  br label %142

142:                                              ; preds = %136, %142
  %143 = phi i64 [ 0, %136 ], [ %149, %142 ]
  %144 = getelementptr inbounds [3 x double], ptr %141, i64 0, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !75, !noalias !423
  %146 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 %143
  %147 = load double, ptr %146, align 8, !tbaa !75, !noalias !423
  %148 = fsub double %147, %145
  store double %148, ptr %146, align 8, !tbaa !75, !noalias !423
  %149 = add nuw nsw i64 %143, 1
  %150 = icmp eq i64 %149, 3
  br i1 %150, label %151, label %142, !llvm.loop !372

151:                                              ; preds = %142
  %152 = load double, ptr %94, align 8, !tbaa !75
  %153 = load double, ptr %95, align 8, !tbaa !75
  %154 = load double, ptr %12, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #19, !noalias !423
  %155 = getelementptr inbounds %"class.dealii::Point.45", ptr %92, i64 %137
  store double %154, ptr %155, align 8, !tbaa !75
  %156 = getelementptr inbounds [3 x double], ptr %155, i64 0, i64 1
  store double %153, ptr %156, align 8, !tbaa !75
  %157 = getelementptr inbounds [3 x double], ptr %155, i64 0, i64 2
  store double %152, ptr %157, align 8, !tbaa !75
  %158 = add nuw nsw i64 %137, 1
  %159 = icmp eq i64 %158, %93
  br i1 %159, label %120, label %136, !llvm.loop !426

160:                                              ; preds = %127, %160
  %161 = phi i64 [ 0, %127 ], [ %170, %160 ]
  %162 = getelementptr inbounds double, ptr %128, i64 %161
  %163 = load double, ptr %162, align 8, !tbaa !75
  %164 = getelementptr inbounds double, ptr %129, i64 %161
  %165 = load double, ptr %164, align 8, !tbaa !75
  %166 = fsub double %163, %165
  %167 = load double, ptr %130, align 8, !tbaa !340
  %168 = fmul double %167, 2.000000e+00
  %169 = fdiv double %166, %168
  store double %169, ptr %162, align 8, !tbaa !75
  %170 = add nuw nsw i64 %161, 1
  %171 = icmp eq i64 %170, %131
  br i1 %171, label %439, label %160, !llvm.loop !427

172:                                              ; preds = %63
  %173 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !364
  %175 = load ptr, ptr %174, align 8, !tbaa !60
  %176 = getelementptr inbounds ptr, ptr %175, i64 6
  %177 = load ptr, ptr %176, align 8
  invoke void %177(ptr noundef nonnull align 8 dereferenceable(92) %174, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3)
          to label %178 unwind label %132

178:                                              ; preds = %172
  %179 = icmp eq i32 %25, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %178
  %181 = load ptr, ptr %1, align 8, !tbaa !353
  %182 = load ptr, ptr %26, align 8, !tbaa !353
  %183 = load ptr, ptr %15, align 8, !tbaa !353
  %184 = and i64 %24, 4294967295
  %185 = getelementptr inbounds i8, ptr %11, i64 16
  %186 = getelementptr inbounds i8, ptr %11, i64 8
  br label %199

187:                                              ; preds = %214, %178
  %188 = load ptr, ptr %173, align 8, !tbaa !364
  %189 = load ptr, ptr %188, align 8, !tbaa !60
  %190 = getelementptr inbounds ptr, ptr %189, i64 6
  %191 = load ptr, ptr %190, align 8
  invoke void %191(ptr noundef nonnull align 8 dereferenceable(92) %188, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
          to label %192 unwind label %132

192:                                              ; preds = %187
  %193 = icmp eq i32 %25, 0
  br i1 %193, label %439, label %194

194:                                              ; preds = %192
  %195 = load ptr, ptr %2, align 8, !tbaa !171
  %196 = load ptr, ptr %14, align 8, !tbaa !171
  %197 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %198 = and i64 %24, 4294967295
  br label %223

199:                                              ; preds = %180, %214
  %200 = phi i64 [ 0, %180 ], [ %221, %214 ]
  %201 = mul nuw nsw i64 %200, 24
  %202 = getelementptr i8, ptr %181, i64 %201
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #19, !noalias !428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %202, i64 24, i1 false), !tbaa !75, !noalias !428
  %203 = select i1 %33, i64 0, i64 %200
  %204 = getelementptr inbounds %"class.dealii::Point.45", ptr %182, i64 %203
  br label %205

205:                                              ; preds = %199, %205
  %206 = phi i64 [ 0, %199 ], [ %212, %205 ]
  %207 = getelementptr inbounds [3 x double], ptr %204, i64 0, i64 %206
  %208 = load double, ptr %207, align 8, !tbaa !75, !noalias !428
  %209 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %206
  %210 = load double, ptr %209, align 8, !tbaa !75, !noalias !428
  %211 = fsub double %210, %208
  store double %211, ptr %209, align 8, !tbaa !75, !noalias !428
  %212 = add nuw nsw i64 %206, 1
  %213 = icmp eq i64 %212, 3
  br i1 %213, label %214, label %205, !llvm.loop !372

214:                                              ; preds = %205
  %215 = load double, ptr %185, align 8, !tbaa !75
  %216 = load double, ptr %186, align 8, !tbaa !75
  %217 = load double, ptr %11, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #19, !noalias !428
  %218 = getelementptr inbounds %"class.dealii::Point.45", ptr %183, i64 %200
  store double %217, ptr %218, align 8, !tbaa !75
  %219 = getelementptr inbounds [3 x double], ptr %218, i64 0, i64 1
  store double %216, ptr %219, align 8, !tbaa !75
  %220 = getelementptr inbounds [3 x double], ptr %218, i64 0, i64 2
  store double %215, ptr %220, align 8, !tbaa !75
  %221 = add nuw nsw i64 %200, 1
  %222 = icmp eq i64 %221, %184
  br i1 %222, label %187, label %199, !llvm.loop !431

223:                                              ; preds = %194, %223
  %224 = phi i64 [ 0, %194 ], [ %232, %223 ]
  %225 = getelementptr inbounds double, ptr %195, i64 %224
  %226 = load double, ptr %225, align 8, !tbaa !75
  %227 = getelementptr inbounds double, ptr %196, i64 %224
  %228 = load double, ptr %227, align 8, !tbaa !75
  %229 = fsub double %226, %228
  %230 = load double, ptr %197, align 8, !tbaa !340
  %231 = fdiv double %229, %230
  store double %231, ptr %225, align 8, !tbaa !75
  %232 = add nuw nsw i64 %224, 1
  %233 = icmp eq i64 %232, %198
  br i1 %233, label %439, label %223, !llvm.loop !432

234:                                              ; preds = %272, %67
  %235 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !364
  %237 = load ptr, ptr %236, align 8, !tbaa !60
  %238 = getelementptr inbounds ptr, ptr %237, i64 6
  %239 = load ptr, ptr %238, align 8
  invoke void %239(ptr noundef nonnull align 8 dereferenceable(92) %236, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3)
          to label %240 unwind label %132

240:                                              ; preds = %234
  %241 = icmp eq i32 %25, 0
  br i1 %241, label %281, label %242

242:                                              ; preds = %240
  %243 = load ptr, ptr %1, align 8, !tbaa !353
  %244 = load ptr, ptr %26, align 8, !tbaa !353
  %245 = load ptr, ptr %15, align 8, !tbaa !353
  %246 = and i64 %24, 4294967295
  %247 = getelementptr inbounds i8, ptr %7, i64 16
  %248 = getelementptr inbounds i8, ptr %7, i64 8
  br label %292

249:                                              ; preds = %69, %272
  %250 = phi i64 [ 0, %69 ], [ %279, %272 ]
  %251 = mul nuw nsw i64 %250, 24
  %252 = getelementptr i8, ptr %20, i64 %251
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #19
  %253 = select i1 %33, i64 0, i64 %250
  %254 = getelementptr inbounds %"class.dealii::Point.45", ptr %29, i64 %253
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19, !noalias !433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %254, i64 24, i1 false), !tbaa !75, !noalias !433
  br label %255

255:                                              ; preds = %249, %255
  %256 = phi i64 [ 0, %249 ], [ %260, %255 ]
  %257 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %256
  %258 = load double, ptr %257, align 8, !tbaa !75, !noalias !433
  %259 = fmul double %258, 2.000000e+00
  store double %259, ptr %257, align 8, !tbaa !75, !noalias !433
  %260 = add nuw nsw i64 %256, 1
  %261 = icmp eq i64 %260, 3
  br i1 %261, label %262, label %255, !llvm.loop !352

262:                                              ; preds = %255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19, !noalias !433
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #19, !noalias !438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %252, i64 24, i1 false), !tbaa !75, !noalias !438
  br label %263

263:                                              ; preds = %262, %263
  %264 = phi i64 [ 0, %262 ], [ %270, %263 ]
  %265 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 %264
  %266 = load double, ptr %265, align 8, !tbaa !75, !noalias !438
  %267 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %264
  %268 = load double, ptr %267, align 8, !tbaa !75, !noalias !438
  %269 = fsub double %268, %266
  store double %269, ptr %267, align 8, !tbaa !75, !noalias !438
  %270 = add nuw nsw i64 %264, 1
  %271 = icmp eq i64 %270, 3
  br i1 %271, label %272, label %263, !llvm.loop !372

272:                                              ; preds = %263
  %273 = load double, ptr %71, align 8, !tbaa !75
  %274 = load double, ptr %72, align 8, !tbaa !75
  %275 = load double, ptr %9, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19, !noalias !438
  %276 = getelementptr inbounds %"class.dealii::Point.45", ptr %58, i64 %250
  store double %275, ptr %276, align 8, !tbaa !75
  %277 = getelementptr inbounds [3 x double], ptr %276, i64 0, i64 1
  store double %274, ptr %277, align 8, !tbaa !75
  %278 = getelementptr inbounds [3 x double], ptr %276, i64 0, i64 2
  store double %273, ptr %278, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #19
  %279 = add nuw nsw i64 %250, 1
  %280 = icmp eq i64 %279, %70
  br i1 %280, label %234, label %249, !llvm.loop !441

281:                                              ; preds = %315, %240
  %282 = load ptr, ptr %235, align 8, !tbaa !364
  %283 = load ptr, ptr %282, align 8, !tbaa !60
  %284 = getelementptr inbounds ptr, ptr %283, i64 6
  %285 = load ptr, ptr %284, align 8
  invoke void %285(ptr noundef nonnull align 8 dereferenceable(92) %282, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
          to label %286 unwind label %132

286:                                              ; preds = %281
  %287 = icmp eq i32 %25, 0
  br i1 %287, label %340, label %288

288:                                              ; preds = %286
  %289 = load ptr, ptr %14, align 8, !tbaa !171
  %290 = load ptr, ptr %2, align 8, !tbaa !171
  %291 = and i64 %24, 4294967295
  br label %331

292:                                              ; preds = %242, %315
  %293 = phi i64 [ 0, %242 ], [ %322, %315 ]
  %294 = mul nuw nsw i64 %293, 24
  %295 = getelementptr i8, ptr %243, i64 %294
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #19
  %296 = select i1 %33, i64 0, i64 %293
  %297 = getelementptr inbounds %"class.dealii::Point.45", ptr %244, i64 %296
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19, !noalias !442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %297, i64 24, i1 false), !tbaa !75, !noalias !442
  br label %298

298:                                              ; preds = %292, %298
  %299 = phi i64 [ 0, %292 ], [ %303, %298 ]
  %300 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %299
  %301 = load double, ptr %300, align 8, !tbaa !75, !noalias !442
  %302 = fmul double %301, 2.000000e+00
  store double %302, ptr %300, align 8, !tbaa !75, !noalias !442
  %303 = add nuw nsw i64 %299, 1
  %304 = icmp eq i64 %303, 3
  br i1 %304, label %305, label %298, !llvm.loop !352

305:                                              ; preds = %298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19, !noalias !442
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19, !noalias !447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %295, i64 24, i1 false), !tbaa !75, !noalias !447
  br label %306

306:                                              ; preds = %305, %306
  %307 = phi i64 [ 0, %305 ], [ %313, %306 ]
  %308 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 %307
  %309 = load double, ptr %308, align 8, !tbaa !75, !noalias !447
  %310 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %307
  %311 = load double, ptr %310, align 8, !tbaa !75, !noalias !447
  %312 = fadd double %309, %311
  store double %312, ptr %310, align 8, !tbaa !75, !noalias !447
  %313 = add nuw nsw i64 %307, 1
  %314 = icmp eq i64 %313, 3
  br i1 %314, label %315, label %306, !llvm.loop !368

315:                                              ; preds = %306
  %316 = load double, ptr %247, align 8, !tbaa !75
  %317 = load double, ptr %248, align 8, !tbaa !75
  %318 = load double, ptr %7, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19, !noalias !447
  %319 = getelementptr inbounds %"class.dealii::Point.45", ptr %245, i64 %293
  store double %318, ptr %319, align 8, !tbaa !75
  %320 = getelementptr inbounds [3 x double], ptr %319, i64 0, i64 1
  store double %317, ptr %320, align 8, !tbaa !75
  %321 = getelementptr inbounds [3 x double], ptr %319, i64 0, i64 2
  store double %316, ptr %321, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #19
  %322 = add nuw nsw i64 %293, 1
  %323 = icmp eq i64 %322, %246
  br i1 %323, label %281, label %292, !llvm.loop !450

324:                                              ; preds = %331
  %325 = load ptr, ptr %1, align 8, !tbaa !353
  %326 = load ptr, ptr %26, align 8, !tbaa !353
  %327 = load ptr, ptr %15, align 8, !tbaa !353
  %328 = and i64 %24, 4294967295
  %329 = getelementptr inbounds i8, ptr %6, i64 16
  %330 = getelementptr inbounds i8, ptr %6, i64 8
  br label %351

331:                                              ; preds = %288, %331
  %332 = phi i64 [ 0, %288 ], [ %338, %331 ]
  %333 = getelementptr inbounds double, ptr %289, i64 %332
  %334 = load double, ptr %333, align 8, !tbaa !75
  %335 = getelementptr inbounds double, ptr %290, i64 %332
  %336 = load double, ptr %335, align 8, !tbaa !75
  %337 = fsub double %336, %334
  store double %337, ptr %335, align 8, !tbaa !75
  %338 = add nuw nsw i64 %332, 1
  %339 = icmp eq i64 %338, %291
  br i1 %339, label %324, label %331, !llvm.loop !451

340:                                              ; preds = %366, %286
  %341 = load ptr, ptr %235, align 8, !tbaa !364
  %342 = load ptr, ptr %341, align 8, !tbaa !60
  %343 = getelementptr inbounds ptr, ptr %342, i64 6
  %344 = load ptr, ptr %343, align 8
  invoke void %344(ptr noundef nonnull align 8 dereferenceable(92) %341, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
          to label %345 unwind label %132

345:                                              ; preds = %340
  %346 = icmp eq i32 %25, 0
  br i1 %346, label %391, label %347

347:                                              ; preds = %345
  %348 = load ptr, ptr %14, align 8, !tbaa !171
  %349 = load ptr, ptr %2, align 8, !tbaa !171
  %350 = and i64 %24, 4294967295
  br label %382

351:                                              ; preds = %324, %366
  %352 = phi i64 [ 0, %324 ], [ %373, %366 ]
  %353 = mul nuw nsw i64 %352, 24
  %354 = getelementptr i8, ptr %325, i64 %353
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19, !noalias !452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %354, i64 24, i1 false), !tbaa !75, !noalias !452
  %355 = select i1 %33, i64 0, i64 %352
  %356 = getelementptr inbounds %"class.dealii::Point.45", ptr %326, i64 %355
  br label %357

357:                                              ; preds = %351, %357
  %358 = phi i64 [ 0, %351 ], [ %364, %357 ]
  %359 = getelementptr inbounds [3 x double], ptr %356, i64 0, i64 %358
  %360 = load double, ptr %359, align 8, !tbaa !75, !noalias !452
  %361 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %358
  %362 = load double, ptr %361, align 8, !tbaa !75, !noalias !452
  %363 = fadd double %360, %362
  store double %363, ptr %361, align 8, !tbaa !75, !noalias !452
  %364 = add nuw nsw i64 %358, 1
  %365 = icmp eq i64 %364, 3
  br i1 %365, label %366, label %357, !llvm.loop !368

366:                                              ; preds = %357
  %367 = load double, ptr %329, align 8, !tbaa !75
  %368 = load double, ptr %330, align 8, !tbaa !75
  %369 = load double, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19, !noalias !452
  %370 = getelementptr inbounds %"class.dealii::Point.45", ptr %327, i64 %352
  store double %369, ptr %370, align 8, !tbaa !75
  %371 = getelementptr inbounds [3 x double], ptr %370, i64 0, i64 1
  store double %368, ptr %371, align 8, !tbaa !75
  %372 = getelementptr inbounds [3 x double], ptr %370, i64 0, i64 2
  store double %367, ptr %372, align 8, !tbaa !75
  %373 = add nuw nsw i64 %352, 1
  %374 = icmp eq i64 %373, %328
  br i1 %374, label %340, label %351, !llvm.loop !455

375:                                              ; preds = %382
  %376 = load ptr, ptr %1, align 8, !tbaa !353
  %377 = load ptr, ptr %26, align 8, !tbaa !353
  %378 = load ptr, ptr %15, align 8, !tbaa !353
  %379 = and i64 %24, 4294967295
  %380 = getelementptr inbounds i8, ptr %5, i64 16
  %381 = getelementptr inbounds i8, ptr %5, i64 8
  br label %403

382:                                              ; preds = %347, %382
  %383 = phi i64 [ 0, %347 ], [ %389, %382 ]
  %384 = getelementptr inbounds double, ptr %348, i64 %383
  %385 = load double, ptr %384, align 8, !tbaa !75
  %386 = getelementptr inbounds double, ptr %349, i64 %383
  %387 = load double, ptr %386, align 8, !tbaa !75
  %388 = call double @llvm.fmuladd.f64(double %385, double 8.000000e+00, double %387)
  store double %388, ptr %386, align 8, !tbaa !75
  %389 = add nuw nsw i64 %383, 1
  %390 = icmp eq i64 %389, %350
  br i1 %390, label %375, label %382, !llvm.loop !456

391:                                              ; preds = %418, %345
  %392 = load ptr, ptr %235, align 8, !tbaa !364
  %393 = load ptr, ptr %392, align 8, !tbaa !60
  %394 = getelementptr inbounds ptr, ptr %393, i64 6
  %395 = load ptr, ptr %394, align 8
  invoke void %395(ptr noundef nonnull align 8 dereferenceable(92) %392, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
          to label %396 unwind label %132

396:                                              ; preds = %391
  %397 = icmp eq i32 %25, 0
  br i1 %397, label %439, label %398

398:                                              ; preds = %396
  %399 = load ptr, ptr %2, align 8, !tbaa !171
  %400 = load ptr, ptr %14, align 8, !tbaa !171
  %401 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %402 = and i64 %24, 4294967295
  br label %427

403:                                              ; preds = %375, %418
  %404 = phi i64 [ 0, %375 ], [ %425, %418 ]
  %405 = mul nuw nsw i64 %404, 24
  %406 = getelementptr i8, ptr %376, i64 %405
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19, !noalias !457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %406, i64 24, i1 false), !tbaa !75, !noalias !457
  %407 = select i1 %33, i64 0, i64 %404
  %408 = getelementptr inbounds %"class.dealii::Point.45", ptr %377, i64 %407
  br label %409

409:                                              ; preds = %403, %409
  %410 = phi i64 [ 0, %403 ], [ %416, %409 ]
  %411 = getelementptr inbounds [3 x double], ptr %408, i64 0, i64 %410
  %412 = load double, ptr %411, align 8, !tbaa !75, !noalias !457
  %413 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %410
  %414 = load double, ptr %413, align 8, !tbaa !75, !noalias !457
  %415 = fsub double %414, %412
  store double %415, ptr %413, align 8, !tbaa !75, !noalias !457
  %416 = add nuw nsw i64 %410, 1
  %417 = icmp eq i64 %416, 3
  br i1 %417, label %418, label %409, !llvm.loop !372

418:                                              ; preds = %409
  %419 = load double, ptr %380, align 8, !tbaa !75
  %420 = load double, ptr %381, align 8, !tbaa !75
  %421 = load double, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19, !noalias !457
  %422 = getelementptr inbounds %"class.dealii::Point.45", ptr %378, i64 %404
  store double %421, ptr %422, align 8, !tbaa !75
  %423 = getelementptr inbounds [3 x double], ptr %422, i64 0, i64 1
  store double %420, ptr %423, align 8, !tbaa !75
  %424 = getelementptr inbounds [3 x double], ptr %422, i64 0, i64 2
  store double %419, ptr %424, align 8, !tbaa !75
  %425 = add nuw nsw i64 %404, 1
  %426 = icmp eq i64 %425, %379
  br i1 %426, label %391, label %403, !llvm.loop !460

427:                                              ; preds = %398, %427
  %428 = phi i64 [ 0, %398 ], [ %437, %427 ]
  %429 = getelementptr inbounds double, ptr %399, i64 %428
  %430 = load double, ptr %429, align 8, !tbaa !75
  %431 = getelementptr inbounds double, ptr %400, i64 %428
  %432 = load double, ptr %431, align 8, !tbaa !75
  %433 = call double @llvm.fmuladd.f64(double %432, double -8.000000e+00, double %430)
  %434 = load double, ptr %401, align 8, !tbaa !340
  %435 = fmul double %434, 1.200000e+01
  %436 = fdiv double %433, %435
  store double %436, ptr %429, align 8, !tbaa !75
  %437 = add nuw nsw i64 %428, 1
  %438 = icmp eq i64 %437, %402
  br i1 %438, label %439, label %427, !llvm.loop !461

439:                                              ; preds = %427, %223, %160, %396, %192, %125, %63
  %440 = load ptr, ptr %15, align 8, !tbaa !353
  %441 = icmp eq ptr %440, null
  br i1 %441, label %443, label %442

442:                                              ; preds = %439
  call void @_ZdlPv(ptr noundef %440) #21
  br label %443

443:                                              ; preds = %439, %442
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #19
  %444 = load ptr, ptr %14, align 8, !tbaa !171
  %445 = icmp eq ptr %444, null
  br i1 %445, label %447, label %446

446:                                              ; preds = %443
  call void @_ZdlPv(ptr noundef %444) #21
  br label %447

447:                                              ; preds = %443, %446
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #19
  ret void

448:                                              ; preds = %132
  call void @_ZdlPv(ptr noundef %134) #21
  br label %449

449:                                              ; preds = %448, %132, %79
  %450 = phi { ptr, i32 } [ %80, %79 ], [ %133, %132 ], [ %133, %448 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #19
  %451 = load ptr, ptr %14, align 8, !tbaa !171
  %452 = icmp eq ptr %451, null
  br i1 %452, label %454, label %453

453:                                              ; preds = %449
  call void @_ZdlPv(ptr noundef %451) #21
  br label %454

454:                                              ; preds = %453, %449
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #19
  resume { ptr, i32 } %450
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii18FunctionDerivativeILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #3 comdat align 2 !prof !85 {
  ret i32 184
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor") align 8, ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi1EED1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !60
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds i8, ptr %0, i64 144
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi1EED0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !60
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds i8, ptr %0, i64 144
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  tail call void @_ZdlPv(ptr noundef %2) #21
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #8 comdat align 2 !prof !85 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #4

declare void @_ZNK6dealii13ExceptionBase10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

declare void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.29") align 8, ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi2EED1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !60
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds i8, ptr %0, i64 144
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi2EED0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !60
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds i8, ptr %0, i64 144
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  tail call void @_ZdlPv(ptr noundef %2) #21
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #8 comdat align 2 !prof !85 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !353
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !353
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

declare void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.46") align 8, ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi3EED1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !60
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds i8, ptr %0, i64 144
  %4 = load ptr, ptr %3, align 8, !tbaa !353
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi3EED0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !60
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds i8, ptr %0, i64 144
  %4 = load ptr, ptr %3, align 8, !tbaa !353
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #19
  tail call void @_ZdlPv(ptr noundef %2) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #4

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #8 comdat align 2 !prof !85 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #7 comdat align 2 !annotation !40 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #21
  store ptr null, ptr %2, align 8, !tbaa !129
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE6reinitEjb(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #14 comdat align 2 !prof !462 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %12, !prof !463

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZdaPv(ptr noundef %7) #21
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %32

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !130
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %16, label %25, !prof !464

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !129
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !465

20:                                               ; preds = %16
  tail call void @_ZdaPv(ptr noundef %18) #21
  br label %21

21:                                               ; preds = %20, %16
  %22 = zext i32 %1 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %23) #18
  store ptr %24, ptr %17, align 8, !tbaa !129
  store i32 %1, ptr %13, align 4, !tbaa !130
  br label %25

25:                                               ; preds = %21, %12
  %26 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  store i32 %1, ptr %26, align 8, !tbaa !127
  br i1 %2, label %32, label %27, !prof !466

27:                                               ; preds = %25
  %28 = zext i32 %1 to i64
  %29 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !129
  %31 = shl nuw nsw i64 %28, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %31, i1 false), !tbaa !75
  br label %32

32:                                               ; preds = %27, %10, %25
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE4swapERS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #8 comdat align 2 !prof !85 {
  %3 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %3, align 8, !tbaa !467
  %6 = load i32, ptr %4, align 8, !tbaa !467
  store i32 %6, ptr %3, align 8, !tbaa !467
  store i32 %5, ptr %4, align 8, !tbaa !467
  %7 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Vector", ptr %1, i64 0, i32 2
  %9 = load i32, ptr %7, align 4, !tbaa !467
  %10 = load i32, ptr %8, align 4, !tbaa !467
  store i32 %10, ptr %7, align 4, !tbaa !467
  store i32 %9, ptr %8, align 4, !tbaa !467
  %11 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.dealii::Vector", ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %11, align 8, !tbaa !62
  %14 = load ptr, ptr %12, align 8, !tbaa !62
  store ptr %14, ptr %11, align 8, !tbaa !62
  store ptr %13, ptr %12, align 8, !tbaa !62
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN6dealii6VectorIdED2Ev, ptr @_ZdaPv, i64 38104}
!36 = !{ptr @_ZN6dealii6VectorIdED2Ev, ptr @_ZN6dealii11SubscriptorD2Ev, i64 38855}
!37 = !{ptr @_ZN6dealii6VectorIdE6reinitEjb, ptr @_ZdaPv, i64 128}
!38 = !{ptr @_ZN6dealii6VectorIdE6reinitEjb, ptr @_Znam, i64 24623}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"instr_prof_hash_mismatch"}
!41 = !{!42, !48, i64 88}
!42 = !{!"_ZTSN6dealii8FunctionILi1EEE", !43, i64 0, !47, i64 16, !48, i64 88}
!43 = !{!"_ZTSN6dealii12FunctionTimeE", !44, i64 8}
!44 = !{!"double", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"_ZTSN6dealii11SubscriptorE", !48, i64 8, !49, i64 16, !57, i64 64}
!48 = !{!"int", !45, i64 0}
!49 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !50, i64 0}
!50 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !51, i64 0}
!51 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !52, i64 0, !54, i64 8}
!52 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !53, i64 0}
!53 = !{!"_ZTSSt4lessIPKcE"}
!54 = !{!"_ZTSSt15_Rb_tree_header", !55, i64 0, !58, i64 32}
!55 = !{!"_ZTSSt18_Rb_tree_node_base", !56, i64 0, !57, i64 8, !57, i64 16, !57, i64 24}
!56 = !{!"_ZTSSt14_Rb_tree_color", !45, i64 0}
!57 = !{!"any pointer", !45, i64 0}
!58 = !{!"long", !45, i64 0}
!59 = !{!43, !44, i64 8}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !46, i64 0}
!62 = !{!57, !57, i64 0}
!63 = !{!64, !44, i64 144}
!64 = !{!"_ZTSN6dealii18FunctionDerivativeILi1EEE", !65, i64 0, !57, i64 136, !44, i64 144, !70, i64 152, !71, i64 160}
!65 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi1EEE", !42, i64 0, !44, i64 96, !66, i64 104, !70, i64 128}
!66 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE", !67, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!70 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi1EE17DifferenceFormulaE", !45, i64 0}
!71 = !{!"_ZTSSt6vectorIN6dealii5PointILi1EEESaIS2_EE", !72, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!75 = !{!44, !44, i64 0}
!76 = !{!77, !79}
!77 = distinct !{!77, !78, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!78 = distinct !{!78, !"_ZNK6dealii5PointILi1EEmlEd"}
!79 = distinct !{!79, !80, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!80 = distinct !{!80, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_"}
!81 = !{!74, !57, i64 0}
!82 = !{!74, !57, i64 8}
!83 = !{!74, !57, i64 16}
!84 = !{!64, !70, i64 152}
!85 = !{!"function_entry_count", i64 0}
!86 = !{!87, !89}
!87 = distinct !{!87, !88, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!88 = distinct !{!88, !"_ZNK6dealii5PointILi1EEmlEd"}
!89 = distinct !{!89, !90, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!90 = distinct !{!90, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_"}
!91 = distinct !{!91, !92, !93}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = distinct !{!94, !92, !93}
!95 = !{!64, !57, i64 136}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!98 = distinct !{!98, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!101 = distinct !{!101, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!104 = distinct !{!104, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!107 = distinct !{!107, !"_ZNK6dealii5PointILi1EEmlEd"}
!108 = distinct !{!108, !109, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!109 = distinct !{!109, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!112 = distinct !{!112, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!115 = distinct !{!115, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!118 = distinct !{!118, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!119 = !{!120, !122}
!120 = distinct !{!120, !121, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!121 = distinct !{!121, !"_ZNK6dealii5PointILi1EEmlEd"}
!122 = distinct !{!122, !123, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!123 = distinct !{!123, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!126 = distinct !{!126, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!127 = !{!128, !48, i64 72}
!128 = !{!"_ZTSN6dealii6VectorIdEE", !47, i64 0, !48, i64 72, !48, i64 76, !57, i64 80}
!129 = !{!128, !57, i64 80}
!130 = !{!128, !48, i64 76}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!133 = distinct !{!133, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!136 = distinct !{!136, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!137 = distinct !{!137, !92, !93}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!140 = distinct !{!140, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!141 = !{!142, !144}
!142 = distinct !{!142, !143, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!143 = distinct !{!143, !"_ZNK6dealii5PointILi1EEmlEd"}
!144 = distinct !{!144, !145, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!145 = distinct !{!145, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!148 = distinct !{!148, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!151 = distinct !{!151, !"_ZNK6dealii5PointILi1EEmlEd"}
!152 = distinct !{!152, !153, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!153 = distinct !{!153, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_"}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!156 = distinct !{!156, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!157 = distinct !{!157, !92, !93}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!160 = distinct !{!160, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!163 = distinct !{!163, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!164 = distinct !{!164, !92, !93}
!165 = !{!"function_entry_count", i64 38855}
!166 = !{!"branch_weights", i32 751, i32 38104}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!169 = distinct !{!169, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!170 = distinct !{!170, !92, !93}
!171 = !{!172, !57, i64 0}
!172 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!175 = distinct !{!175, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!176 = distinct !{!176, !92, !93}
!177 = distinct !{!177, !92, !93}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!180 = distinct !{!180, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!181 = distinct !{!181, !92, !93}
!182 = distinct !{!182, !92, !93}
!183 = !{!184, !186}
!184 = distinct !{!184, !185, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!185 = distinct !{!185, !"_ZNK6dealii5PointILi1EEmlEd"}
!186 = distinct !{!186, !187, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!187 = distinct !{!187, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!190 = distinct !{!190, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!191 = distinct !{!191, !92, !93}
!192 = !{!193, !195}
!193 = distinct !{!193, !194, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!194 = distinct !{!194, !"_ZNK6dealii5PointILi1EEmlEd"}
!195 = distinct !{!195, !196, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!196 = distinct !{!196, !"_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!199 = distinct !{!199, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!200 = distinct !{!200, !92, !93}
!201 = distinct !{!201, !92, !93}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!204 = distinct !{!204, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!205 = distinct !{!205, !92, !93}
!206 = distinct !{!206, !92, !93}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!209 = distinct !{!209, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!210 = distinct !{!210, !92, !93}
!211 = distinct !{!211, !92, !93}
!212 = !{!172, !57, i64 8}
!213 = !{!172, !57, i64 16}
!214 = !{!215, !48, i64 88}
!215 = !{!"_ZTSN6dealii8FunctionILi2EEE", !43, i64 0, !47, i64 16, !48, i64 88}
!216 = !{!217, !44, i64 144}
!217 = !{!"_ZTSN6dealii18FunctionDerivativeILi2EEE", !218, i64 0, !57, i64 136, !44, i64 144, !223, i64 152, !224, i64 160}
!218 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi2EEE", !215, i64 0, !44, i64 96, !219, i64 104, !223, i64 128}
!219 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE", !220, i64 0}
!220 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE", !221, i64 0}
!221 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implE", !222, i64 0}
!222 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!223 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi2EE17DifferenceFormulaE", !45, i64 0}
!224 = !{!"_ZTSSt6vectorIN6dealii5PointILi2EEESaIS2_EE", !225, i64 0}
!225 = !{!"_ZTSSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE", !226, i64 0}
!226 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implE", !227, i64 0}
!227 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!228 = distinct !{!228, !92, !93}
!229 = !{!227, !57, i64 0}
!230 = !{!227, !57, i64 8}
!231 = !{!227, !57, i64 16}
!232 = !{!217, !223, i64 152}
!233 = !{!234, !236}
!234 = distinct !{!234, !235, !"_ZNK6dealii5PointILi2EEmlEd: argument 0"}
!235 = distinct !{!235, !"_ZNK6dealii5PointILi2EEmlEd"}
!236 = distinct !{!236, !237, !"_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!237 = distinct !{!237, !"_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_"}
!238 = distinct !{!238, !92, !93}
!239 = distinct !{!239, !92, !93}
!240 = !{!217, !57, i64 136}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!243 = distinct !{!243, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!244 = distinct !{!244, !92, !93}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!247 = distinct !{!247, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!248 = distinct !{!248, !92, !93}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!251 = distinct !{!251, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!254 = distinct !{!254, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!257 = distinct !{!257, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!260 = distinct !{!260, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!263 = distinct !{!263, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!266 = distinct !{!266, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!269 = distinct !{!269, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!272 = distinct !{!272, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!273 = !{!274, !276}
!274 = distinct !{!274, !275, !"_ZNK6dealii5PointILi2EEmlEd: argument 0"}
!275 = distinct !{!275, !"_ZNK6dealii5PointILi2EEmlEd"}
!276 = distinct !{!276, !277, !"_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!277 = distinct !{!277, !"_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!280 = distinct !{!280, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!281 = !{!282, !284}
!282 = distinct !{!282, !283, !"_ZNK6dealii5PointILi2EEmlEd: argument 0"}
!283 = distinct !{!283, !"_ZNK6dealii5PointILi2EEmlEd"}
!284 = distinct !{!284, !285, !"_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!285 = distinct !{!285, !"_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!288 = distinct !{!288, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!291 = distinct !{!291, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!294 = distinct !{!294, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!297 = distinct !{!297, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!298 = distinct !{!298, !92, !93}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!301 = distinct !{!301, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!302 = distinct !{!302, !92, !93}
!303 = distinct !{!303, !92, !93}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!306 = distinct !{!306, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!307 = distinct !{!307, !92, !93}
!308 = distinct !{!308, !92, !93}
!309 = !{!310, !312}
!310 = distinct !{!310, !311, !"_ZNK6dealii5PointILi2EEmlEd: argument 0"}
!311 = distinct !{!311, !"_ZNK6dealii5PointILi2EEmlEd"}
!312 = distinct !{!312, !313, !"_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!313 = distinct !{!313, !"_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_"}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!316 = distinct !{!316, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!317 = distinct !{!317, !92, !93}
!318 = !{!319, !321}
!319 = distinct !{!319, !320, !"_ZNK6dealii5PointILi2EEmlEd: argument 0"}
!320 = distinct !{!320, !"_ZNK6dealii5PointILi2EEmlEd"}
!321 = distinct !{!321, !322, !"_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!322 = distinct !{!322, !"_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_"}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!325 = distinct !{!325, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!326 = distinct !{!326, !92, !93}
!327 = distinct !{!327, !92, !93}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!330 = distinct !{!330, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!331 = distinct !{!331, !92, !93}
!332 = distinct !{!332, !92, !93}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!335 = distinct !{!335, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!336 = distinct !{!336, !92, !93}
!337 = distinct !{!337, !92, !93}
!338 = !{!339, !48, i64 88}
!339 = !{!"_ZTSN6dealii8FunctionILi3EEE", !43, i64 0, !47, i64 16, !48, i64 88}
!340 = !{!341, !44, i64 144}
!341 = !{!"_ZTSN6dealii18FunctionDerivativeILi3EEE", !342, i64 0, !57, i64 136, !44, i64 144, !347, i64 152, !348, i64 160}
!342 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi3EEE", !339, i64 0, !44, i64 96, !343, i64 104, !347, i64 128}
!343 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE", !344, i64 0}
!344 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE", !345, i64 0}
!345 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implE", !346, i64 0}
!346 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!347 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi3EE17DifferenceFormulaE", !45, i64 0}
!348 = !{!"_ZTSSt6vectorIN6dealii5PointILi3EEESaIS2_EE", !349, i64 0}
!349 = !{!"_ZTSSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE", !350, i64 0}
!350 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implE", !351, i64 0}
!351 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!352 = distinct !{!352, !92, !93}
!353 = !{!351, !57, i64 0}
!354 = !{!351, !57, i64 8}
!355 = !{!351, !57, i64 16}
!356 = !{!341, !347, i64 152}
!357 = !{!358, !360}
!358 = distinct !{!358, !359, !"_ZNK6dealii5PointILi3EEmlEd: argument 0"}
!359 = distinct !{!359, !"_ZNK6dealii5PointILi3EEmlEd"}
!360 = distinct !{!360, !361, !"_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!361 = distinct !{!361, !"_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_"}
!362 = distinct !{!362, !92, !93}
!363 = distinct !{!363, !92, !93}
!364 = !{!341, !57, i64 136}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!367 = distinct !{!367, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!368 = distinct !{!368, !92, !93}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!371 = distinct !{!371, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!372 = distinct !{!372, !92, !93}
!373 = !{!374}
!374 = distinct !{!374, !375, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!375 = distinct !{!375, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!378 = distinct !{!378, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!381 = distinct !{!381, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!384 = distinct !{!384, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!387 = distinct !{!387, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!390 = distinct !{!390, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!391 = !{!392}
!392 = distinct !{!392, !393, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!393 = distinct !{!393, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!396 = distinct !{!396, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!397 = !{!398, !400}
!398 = distinct !{!398, !399, !"_ZNK6dealii5PointILi3EEmlEd: argument 0"}
!399 = distinct !{!399, !"_ZNK6dealii5PointILi3EEmlEd"}
!400 = distinct !{!400, !401, !"_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!401 = distinct !{!401, !"_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_"}
!402 = !{!403}
!403 = distinct !{!403, !404, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!404 = distinct !{!404, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!405 = !{!406, !408}
!406 = distinct !{!406, !407, !"_ZNK6dealii5PointILi3EEmlEd: argument 0"}
!407 = distinct !{!407, !"_ZNK6dealii5PointILi3EEmlEd"}
!408 = distinct !{!408, !409, !"_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!409 = distinct !{!409, !"_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_"}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!412 = distinct !{!412, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!415 = distinct !{!415, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!418 = distinct !{!418, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!421 = distinct !{!421, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!422 = distinct !{!422, !92, !93}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!425 = distinct !{!425, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!426 = distinct !{!426, !92, !93}
!427 = distinct !{!427, !92, !93}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!430 = distinct !{!430, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!431 = distinct !{!431, !92, !93}
!432 = distinct !{!432, !92, !93}
!433 = !{!434, !436}
!434 = distinct !{!434, !435, !"_ZNK6dealii5PointILi3EEmlEd: argument 0"}
!435 = distinct !{!435, !"_ZNK6dealii5PointILi3EEmlEd"}
!436 = distinct !{!436, !437, !"_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!437 = distinct !{!437, !"_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_"}
!438 = !{!439}
!439 = distinct !{!439, !440, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!440 = distinct !{!440, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!441 = distinct !{!441, !92, !93}
!442 = !{!443, !445}
!443 = distinct !{!443, !444, !"_ZNK6dealii5PointILi3EEmlEd: argument 0"}
!444 = distinct !{!444, !"_ZNK6dealii5PointILi3EEmlEd"}
!445 = distinct !{!445, !446, !"_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_: argument 0"}
!446 = distinct !{!446, !"_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!449 = distinct !{!449, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!450 = distinct !{!450, !92, !93}
!451 = distinct !{!451, !92, !93}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!454 = distinct !{!454, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!455 = distinct !{!455, !92, !93}
!456 = distinct !{!456, !92, !93}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!459 = distinct !{!459, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!460 = distinct !{!460, !92, !93}
!461 = distinct !{!461, !92, !93}
!462 = !{!"function_entry_count", i64 424370}
!463 = !{!"branch_weights", i32 0, i32 424370}
!464 = !{!"branch_weights", i32 24623, i32 399747}
!465 = !{!"branch_weights", i32 24495, i32 128}
!466 = !{!"branch_weights", i32 3947, i32 420423}
!467 = !{!48, !48, i64 0}
