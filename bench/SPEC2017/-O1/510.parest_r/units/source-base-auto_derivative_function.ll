; ModuleID = 'source/base/auto_derivative_function.cc'
source_filename = "source/base/auto_derivative_function.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::AutoDerivativeFunction" = type <{ %"class.dealii::Function.base", [4 x i8], double, %"class.std::vector", i32, [4 x i8] }>
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
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Vector" = type { %"class.dealii::Subscriptor", i32, i32, ptr }
%"class.dealii::Function" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32, [4 x i8] }>
%"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::AutoDerivativeFunction.13" = type <{ %"class.dealii::Function.base.15", [4 x i8], double, %"class.std::vector.16", i32, [4 x i8] }>
%"class.dealii::Function.base.15" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.22" = type { [2 x double] }
%"class.dealii::Point.23" = type { %"class.dealii::Tensor.22" }
%"class.dealii::Function.14" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32, [4 x i8] }>
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::AutoDerivativeFunction.34" = type <{ %"class.dealii::Function.base.36", [4 x i8], double, %"class.std::vector.37", i32, [4 x i8] }>
%"class.dealii::Function.base.36" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.std::vector.37" = type { %"struct.std::_Vector_base.38" }
%"struct.std::_Vector_base.38" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.43" = type { [3 x double] }
%"class.dealii::Point.44" = type { %"class.dealii::Tensor.43" }
%"class.dealii::Function.35" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32, [4 x i8] }>
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN6dealii22AutoDerivativeFunctionILi1EEC5Edjd = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi1EE5set_hEd = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi1EE11set_formulaENS1_17DifferenceFormulaE = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi1EED5Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi1EED0Ev = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE = comdat any

$_ZN6dealii6VectorIdED2Ev = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi1EE20get_formula_of_orderEj = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EEC5Edjd = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EE5set_hEd = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EE11set_formulaENS1_17DifferenceFormulaE = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EED5Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi2EED0Ev = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EE20get_formula_of_orderEj = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EEC5Edjd = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EE5set_hEd = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EE11set_formulaENS1_17DifferenceFormulaE = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EED5Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi3EED0Ev = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EE20get_formula_of_orderEj = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaD0Ev = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaD0Ev = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaD0Ev = comdat any

$_ZN6dealii6VectorIdED0Ev = comdat any

$_ZN6dealii6VectorIdE6reinitEjb = comdat any

$_ZN6dealii6VectorIdE4swapERS1_ = comdat any

$_ZTVN6dealii22AutoDerivativeFunctionILi1EEE = comdat any

$_ZTVN6dealii22AutoDerivativeFunctionILi2EEE = comdat any

$_ZTVN6dealii22AutoDerivativeFunctionILi3EEE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi1EEE = comdat any

$_ZTSN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi1EEE = comdat any

$_ZTVN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi2EEE = comdat any

$_ZTSN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi2EEE = comdat any

$_ZTVN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi3EEE = comdat any

$_ZTVN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaE = comdat any

$_ZTSN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaE = comdat any

$_ZTIN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaE = comdat any

$_ZTVN6dealii6VectorIdEE = comdat any

$_ZTSN6dealii6VectorIdEE = comdat any

$_ZTIN6dealii6VectorIdEE = comdat any

@_ZTVN6dealii22AutoDerivativeFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi1EEE, ptr @_ZN6dealii22AutoDerivativeFunctionILi1EED1Ev, ptr @_ZN6dealii22AutoDerivativeFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii22AutoDerivativeFunctionILi1EEE, ptr @_ZThn16_N6dealii22AutoDerivativeFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii22AutoDerivativeFunctionILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii22AutoDerivativeFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi2EEE, ptr @_ZN6dealii22AutoDerivativeFunctionILi2EED1Ev, ptr @_ZN6dealii22AutoDerivativeFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii22AutoDerivativeFunctionILi2EEE, ptr @_ZThn16_N6dealii22AutoDerivativeFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii22AutoDerivativeFunctionILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii22AutoDerivativeFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi3EEE, ptr @_ZN6dealii22AutoDerivativeFunctionILi3EED1Ev, ptr @_ZN6dealii22AutoDerivativeFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii22AutoDerivativeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii22AutoDerivativeFunctionILi3EEE, ptr @_ZThn16_N6dealii22AutoDerivativeFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii22AutoDerivativeFunctionILi3EED0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii22AutoDerivativeFunctionILi1EEE = weak_odr dso_local constant [40 x i8] c"N6dealii22AutoDerivativeFunctionILi1EEE\00", comdat, align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii12FunctionTimeE = external constant ptr
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi1EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii22AutoDerivativeFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTVN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii13ExceptionBase10print_infoERSo] }, comdat, align 8
@_ZTSN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaE = weak_odr dso_local constant [59 x i8] c"N6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaE\00", comdat, align 1
@_ZTIN6dealii13ExceptionBaseE = external constant ptr
@_ZTIN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii22AutoDerivativeFunctionILi2EEE = weak_odr dso_local constant [40 x i8] c"N6dealii22AutoDerivativeFunctionILi2EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi2EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii22AutoDerivativeFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTVN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii13ExceptionBase10print_infoERSo] }, comdat, align 8
@_ZTSN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaE = weak_odr dso_local constant [59 x i8] c"N6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaE\00", comdat, align 1
@_ZTIN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii22AutoDerivativeFunctionILi3EEE = weak_odr dso_local constant [40 x i8] c"N6dealii22AutoDerivativeFunctionILi3EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi3EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii22AutoDerivativeFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTVN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii13ExceptionBase10print_infoERSo] }, comdat, align 8
@_ZTSN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaE = weak_odr dso_local constant [59 x i8] c"N6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaE\00", comdat, align 1
@_ZTIN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTVN6dealii6VectorIdEE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii6VectorIdEE, ptr @_ZN6dealii6VectorIdED2Ev, ptr @_ZN6dealii6VectorIdED0Ev, ptr @_ZN6dealii6VectorIdE6reinitEjb, ptr @_ZN6dealii6VectorIdE4swapERS1_] }, comdat, align 8
@_ZTSN6dealii6VectorIdEE = linkonce_odr dso_local constant [20 x i8] c"N6dealii6VectorIdEE\00", comdat, align 1
@_ZTIN6dealii6VectorIdEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii6VectorIdEE, ptr @_ZTIN6dealii11SubscriptorE }, comdat, align 8
@switch.table._ZN6dealii22AutoDerivativeFunctionILi3EE20get_formula_of_orderEj = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 0, i32 2, i32 2], align 4

@_ZN6dealii22AutoDerivativeFunctionILi1EEC1Edjd = weak_odr dso_local unnamed_addr alias void (ptr, double, i32, double), ptr @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd
@_ZN6dealii22AutoDerivativeFunctionILi1EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev
@_ZN6dealii22AutoDerivativeFunctionILi2EEC1Edjd = weak_odr dso_local unnamed_addr alias void (ptr, double, i32, double), ptr @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd
@_ZN6dealii22AutoDerivativeFunctionILi2EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev
@_ZN6dealii22AutoDerivativeFunctionILi3EEC1Edjd = weak_odr dso_local unnamed_addr alias void (ptr, double, i32, double), ptr @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd
@_ZN6dealii22AutoDerivativeFunctionILi3EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, i32 noundef %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii22AutoDerivativeFunctionILi1EEC5Edjd) align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef %3)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  store double 1.000000e+00, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %8 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17
          to label %9 unwind label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  store ptr %8, ptr %7, align 8, !tbaa !67
  store ptr %8, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %"class.dealii::Tensor", ptr %8, i64 1
  store ptr %12, ptr %11, align 8, !tbaa !69
  store double 0.000000e+00, ptr %8, align 8, !tbaa !70
  %13 = getelementptr inbounds %"class.dealii::Tensor", ptr %8, i64 1
  store ptr %13, ptr %10, align 8, !tbaa !68
  %14 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 4
  store i32 0, ptr %14, align 8, !tbaa !71
  store double %1, ptr %6, align 8, !tbaa !44
  store double %1, ptr %8, align 8, !tbaa !70
  store i32 0, ptr %14, align 8, !tbaa !71
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #18
  resume { ptr, i32 } %16
}

declare void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  store double %1, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store double %1, ptr %5, align 8, !tbaa !70
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EE11set_formulaENS1_17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #4 comdat($_ZN6dealii22AutoDerivativeFunctionILi1EED5Ev) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !41
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #19
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #7 comdat($_ZN6dealii22AutoDerivativeFunctionILi1EED5Ev) align 2 !annotation !40 {
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !annotation !40 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #18
  tail call void @_ZdlPv(ptr noundef %2) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #3 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = alloca %"class.dealii::Point", align 8
  store double 0.000000e+00, ptr %0, align 8, !tbaa !70
  %12 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !71
  switch i32 %13, label %89 [
    i32 1, label %14
    i32 0, label %32
    i32 2, label %53
  ]

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store double 0.000000e+00, ptr %5, align 8, !tbaa !70
  %15 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = load double, ptr %2, align 8, !tbaa !70, !noalias !73
  %18 = load double, ptr %16, align 8, !tbaa !70, !noalias !73
  %19 = fsub double %17, %18
  store double %19, ptr %5, align 8, !tbaa !70
  %20 = load ptr, ptr %1, align 8, !tbaa !41
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef double %22(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3)
  %24 = load ptr, ptr %1, align 8, !tbaa !41
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = call noundef double %26(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %3)
  %28 = fsub double %23, %27
  %29 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 2
  %30 = load double, ptr %29, align 8, !tbaa !44
  %31 = fdiv double %28, %30
  store double %31, ptr %0, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %89

32:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store double 0.000000e+00, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store double 0.000000e+00, ptr %7, align 8, !tbaa !70
  %33 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = load double, ptr %2, align 8, !tbaa !70, !noalias !76
  %36 = load double, ptr %34, align 8, !tbaa !70, !noalias !77
  %37 = fadd double %35, %36
  store double %37, ptr %6, align 8, !tbaa !70
  %38 = load double, ptr %34, align 8, !tbaa !70, !noalias !80
  %39 = fsub double %35, %38
  store double %39, ptr %7, align 8, !tbaa !70
  %40 = load ptr, ptr %1, align 8, !tbaa !41
  %41 = getelementptr inbounds ptr, ptr %40, i64 4
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef double %42(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %3)
  %44 = load ptr, ptr %1, align 8, !tbaa !41
  %45 = getelementptr inbounds ptr, ptr %44, i64 4
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef double %46(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %3)
  %48 = fsub double %43, %47
  %49 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 2
  %50 = load double, ptr %49, align 8, !tbaa !44
  %51 = fmul double %50, 2.000000e+00
  %52 = fdiv double %48, %51
  store double %52, ptr %0, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %89

53:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store double 0.000000e+00, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store double 0.000000e+00, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store double 0.000000e+00, ptr %10, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store double 0.000000e+00, ptr %11, align 8, !tbaa !70
  %54 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !67
  %56 = load double, ptr %2, align 8, !tbaa !70, !noalias !76
  %57 = load double, ptr %55, align 8, !tbaa !70, !noalias !83
  %58 = fadd double %56, %57
  store double %58, ptr %9, align 8, !tbaa !70
  %59 = load double, ptr %55, align 8, !tbaa !70, !noalias !86
  %60 = fadd double %58, %59
  store double %60, ptr %8, align 8, !tbaa !70
  %61 = load double, ptr %55, align 8, !tbaa !70, !noalias !89
  %62 = fsub double %56, %61
  store double %62, ptr %10, align 8, !tbaa !70
  %63 = load double, ptr %55, align 8, !tbaa !70, !noalias !92
  %64 = fsub double %62, %63
  store double %64, ptr %11, align 8, !tbaa !70
  %65 = load ptr, ptr %1, align 8, !tbaa !41
  %66 = getelementptr inbounds ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = call noundef double %67(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %3)
  %69 = fneg double %68
  %70 = load ptr, ptr %1, align 8, !tbaa !41
  %71 = getelementptr inbounds ptr, ptr %70, i64 4
  %72 = load ptr, ptr %71, align 8
  %73 = call noundef double %72(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %3)
  %74 = call double @llvm.fmuladd.f64(double %73, double 8.000000e+00, double %69)
  %75 = load ptr, ptr %1, align 8, !tbaa !41
  %76 = getelementptr inbounds ptr, ptr %75, i64 4
  %77 = load ptr, ptr %76, align 8
  %78 = call noundef double %77(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %3)
  %79 = call double @llvm.fmuladd.f64(double %78, double -8.000000e+00, double %74)
  %80 = load ptr, ptr %1, align 8, !tbaa !41
  %81 = getelementptr inbounds ptr, ptr %80, i64 4
  %82 = load ptr, ptr %81, align 8
  %83 = call noundef double %82(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %3)
  %84 = fadd double %79, %83
  %85 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 2
  %86 = load double, ptr %85, align 8, !tbaa !44
  %87 = fmul double %86, 1.200000e+01
  %88 = fdiv double %84, %87
  store double %88, ptr %0, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %89

89:                                               ; preds = %4, %53, %32, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %4 = alloca %"class.dealii::Point", align 8
  %5 = alloca %"class.dealii::Vector", align 8
  %6 = alloca %"class.dealii::Vector", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Vector", align 8
  %10 = alloca %"class.dealii::Vector", align 8
  %11 = alloca %"class.dealii::Point", align 8
  %12 = alloca %"class.dealii::Point", align 8
  %13 = alloca %"class.dealii::Point", align 8
  %14 = alloca %"class.dealii::Point", align 8
  %15 = alloca %"class.dealii::Vector", align 8
  %16 = alloca %"class.dealii::Vector", align 8
  %17 = alloca %"class.dealii::Vector", align 8
  %18 = alloca %"class.dealii::Vector", align 8
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !71
  switch i32 %20, label %384 [
    i32 1, label %21
    i32 0, label %115
    i32 2, label %210
  ]

21:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store double 0.000000e+00, ptr %4, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #18
  %22 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !95
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !41
  %24 = getelementptr inbounds %"class.dealii::Vector", ptr %5, i64 0, i32 1
  %25 = getelementptr inbounds %"class.dealii::Vector", ptr %5, i64 0, i32 2
  %26 = getelementptr inbounds %"class.dealii::Vector", ptr %5, i64 0, i32 3
  %27 = icmp eq i32 %23, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  br label %40

29:                                               ; preds = %21
  %30 = zext i32 %23 to i64
  %31 = shl nuw nsw i64 %30, 3
  %32 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %31) #17
          to label %33 unwind label %38

33:                                               ; preds = %29
  store ptr %32, ptr %26, align 8, !tbaa !96
  store i32 %23, ptr %25, align 4, !tbaa !98
  store i32 %23, ptr %24, align 8, !tbaa !99
  %34 = zext i32 %23 to i64
  %35 = shl nuw nsw i64 %34, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %32, i8 0, i64 %35, i1 false), !tbaa !70
  br label %40

36:                                               ; preds = %114, %209, %383, %225, %130, %38
  %37 = phi { ptr, i32 } [ %39, %38 ], [ %131, %130 ], [ %226, %225 ], [ %379, %383 ], [ %205, %209 ], [ %110, %114 ]
  resume { ptr, i32 } %37

38:                                               ; preds = %29
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #18
  br label %36

40:                                               ; preds = %33, %28
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #18
  %41 = load i32, ptr %22, align 8, !tbaa !95
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %42 unwind label %69

42:                                               ; preds = %40
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !41
  %43 = getelementptr inbounds %"class.dealii::Vector", ptr %6, i64 0, i32 1
  %44 = getelementptr inbounds %"class.dealii::Vector", ptr %6, i64 0, i32 2
  %45 = getelementptr inbounds %"class.dealii::Vector", ptr %6, i64 0, i32 3
  %46 = icmp eq i32 %41, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  br label %57

48:                                               ; preds = %42
  %49 = zext i32 %41 to i64
  %50 = shl nuw nsw i64 %49, 3
  %51 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %50) #17
          to label %52 unwind label %55

52:                                               ; preds = %48
  store ptr %51, ptr %45, align 8, !tbaa !96
  store i32 %41, ptr %44, align 4, !tbaa !98
  store i32 %41, ptr %43, align 8, !tbaa !99
  %53 = zext i32 %41 to i64
  %54 = shl nuw nsw i64 %53, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %51, i8 0, i64 %54, i1 false), !tbaa !70
  br label %57

55:                                               ; preds = %48
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #18
  br label %109

57:                                               ; preds = %52, %47
  %58 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  %59 = load double, ptr %58, align 8, !tbaa !44
  %60 = fdiv double 1.000000e+00, %59
  %61 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !67
  %63 = load double, ptr %1, align 8, !tbaa !70, !noalias !100
  %64 = load double, ptr %62, align 8, !tbaa !70, !noalias !100
  %65 = fsub double %63, %64
  store double %65, ptr %4, align 8, !tbaa !70
  %66 = load ptr, ptr %0, align 8, !tbaa !41
  %67 = getelementptr inbounds ptr, ptr %66, i64 5
  %68 = load ptr, ptr %67, align 8
  invoke void %68(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %71 unwind label %92

69:                                               ; preds = %40
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %109

71:                                               ; preds = %57
  %72 = load ptr, ptr %0, align 8, !tbaa !41
  %73 = getelementptr inbounds ptr, ptr %72, i64 5
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(88) %6)
          to label %75 unwind label %92

75:                                               ; preds = %71
  %76 = load i32, ptr %22, align 8, !tbaa !95
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %26, align 8, !tbaa !96
  %80 = load ptr, ptr %45, align 8, !tbaa !96
  %81 = load ptr, ptr %2, align 8, !tbaa !67
  %82 = zext i32 %76 to i64
  br label %96

83:                                               ; preds = %96, %75
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !41
  %84 = load ptr, ptr %45, align 8, !tbaa !96
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  call void @_ZdaPv(ptr noundef %84) #19
  store ptr null, ptr %45, align 8, !tbaa !96
  br label %87

87:                                               ; preds = %83, %86
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !41
  %88 = load ptr, ptr %26, align 8, !tbaa !96
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  call void @_ZdaPv(ptr noundef %88) #19
  store ptr null, ptr %26, align 8, !tbaa !96
  br label %91

91:                                               ; preds = %87, %90
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %384

92:                                               ; preds = %71, %57
  %93 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !41
  %94 = load ptr, ptr %45, align 8, !tbaa !96
  %95 = icmp eq ptr %94, null
  br i1 %95, label %108, label %107

96:                                               ; preds = %78, %96
  %97 = phi i64 [ 0, %78 ], [ %105, %96 ]
  %98 = getelementptr inbounds double, ptr %79, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !70
  %100 = getelementptr inbounds double, ptr %80, i64 %97
  %101 = load double, ptr %100, align 8, !tbaa !70
  %102 = fsub double %99, %101
  %103 = fmul double %60, %102
  %104 = getelementptr inbounds %"class.dealii::Tensor", ptr %81, i64 %97
  store double %103, ptr %104, align 8, !tbaa !70
  %105 = add nuw nsw i64 %97, 1
  %106 = icmp eq i64 %105, %82
  br i1 %106, label %83, label %96, !llvm.loop !103

107:                                              ; preds = %92
  call void @_ZdaPv(ptr noundef %94) #19
  store ptr null, ptr %45, align 8, !tbaa !96
  br label %108

108:                                              ; preds = %92, %107
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #18
  br label %109

109:                                              ; preds = %69, %55, %108
  %110 = phi { ptr, i32 } [ %93, %108 ], [ %70, %69 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !41
  %111 = load ptr, ptr %26, align 8, !tbaa !96
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  call void @_ZdaPv(ptr noundef %111) #19
  store ptr null, ptr %26, align 8, !tbaa !96
  br label %114

114:                                              ; preds = %109, %113
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %36

115:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store double 0.000000e+00, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store double 0.000000e+00, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %9) #18
  %116 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !95
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %9)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !41
  %118 = getelementptr inbounds %"class.dealii::Vector", ptr %9, i64 0, i32 1
  %119 = getelementptr inbounds %"class.dealii::Vector", ptr %9, i64 0, i32 2
  %120 = getelementptr inbounds %"class.dealii::Vector", ptr %9, i64 0, i32 3
  %121 = icmp eq i32 %117, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %118, i8 0, i64 16, i1 false)
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %118, i8 0, i64 16, i1 false)
  br label %132

123:                                              ; preds = %115
  %124 = zext i32 %117 to i64
  %125 = shl nuw nsw i64 %124, 3
  %126 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %125) #17
          to label %127 unwind label %130

127:                                              ; preds = %123
  store ptr %126, ptr %120, align 8, !tbaa !96
  store i32 %117, ptr %119, align 4, !tbaa !98
  store i32 %117, ptr %118, align 8, !tbaa !99
  %128 = zext i32 %117 to i64
  %129 = shl nuw nsw i64 %128, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %126, i8 0, i64 %129, i1 false), !tbaa !70
  br label %132

130:                                              ; preds = %123
  %131 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #18
  br label %36

132:                                              ; preds = %127, %122
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #18
  %133 = load i32, ptr %116, align 8, !tbaa !95
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %134 unwind label %164

134:                                              ; preds = %132
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !41
  %135 = getelementptr inbounds %"class.dealii::Vector", ptr %10, i64 0, i32 1
  %136 = getelementptr inbounds %"class.dealii::Vector", ptr %10, i64 0, i32 2
  %137 = getelementptr inbounds %"class.dealii::Vector", ptr %10, i64 0, i32 3
  %138 = icmp eq i32 %133, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %135, i8 0, i64 16, i1 false)
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %135, i8 0, i64 16, i1 false)
  br label %149

140:                                              ; preds = %134
  %141 = zext i32 %133 to i64
  %142 = shl nuw nsw i64 %141, 3
  %143 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %142) #17
          to label %144 unwind label %147

144:                                              ; preds = %140
  store ptr %143, ptr %137, align 8, !tbaa !96
  store i32 %133, ptr %136, align 4, !tbaa !98
  store i32 %133, ptr %135, align 8, !tbaa !99
  %145 = zext i32 %133 to i64
  %146 = shl nuw nsw i64 %145, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %143, i8 0, i64 %146, i1 false), !tbaa !70
  br label %149

147:                                              ; preds = %140
  %148 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %10) #18
  br label %204

149:                                              ; preds = %144, %139
  %150 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  %151 = load double, ptr %150, align 8, !tbaa !44
  %152 = fmul double %151, 2.000000e+00
  %153 = fdiv double 1.000000e+00, %152
  %154 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !67
  %156 = load double, ptr %1, align 8, !tbaa !70, !noalias !76
  %157 = load double, ptr %155, align 8, !tbaa !70, !noalias !106
  %158 = fadd double %156, %157
  store double %158, ptr %7, align 8, !tbaa !70
  %159 = load double, ptr %155, align 8, !tbaa !70, !noalias !109
  %160 = fsub double %156, %159
  store double %160, ptr %8, align 8, !tbaa !70
  %161 = load ptr, ptr %0, align 8, !tbaa !41
  %162 = getelementptr inbounds ptr, ptr %161, i64 5
  %163 = load ptr, ptr %162, align 8
  invoke void %163(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(88) %9)
          to label %166 unwind label %187

164:                                              ; preds = %132
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %204

166:                                              ; preds = %149
  %167 = load ptr, ptr %0, align 8, !tbaa !41
  %168 = getelementptr inbounds ptr, ptr %167, i64 5
  %169 = load ptr, ptr %168, align 8
  invoke void %169(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(88) %10)
          to label %170 unwind label %187

170:                                              ; preds = %166
  %171 = load i32, ptr %116, align 8, !tbaa !95
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr %120, align 8, !tbaa !96
  %175 = load ptr, ptr %137, align 8, !tbaa !96
  %176 = load ptr, ptr %2, align 8, !tbaa !67
  %177 = zext i32 %171 to i64
  br label %191

178:                                              ; preds = %191, %170
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !41
  %179 = load ptr, ptr %137, align 8, !tbaa !96
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  call void @_ZdaPv(ptr noundef %179) #19
  store ptr null, ptr %137, align 8, !tbaa !96
  br label %182

182:                                              ; preds = %178, %181
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %10) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !41
  %183 = load ptr, ptr %120, align 8, !tbaa !96
  %184 = icmp eq ptr %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  call void @_ZdaPv(ptr noundef %183) #19
  store ptr null, ptr %120, align 8, !tbaa !96
  br label %186

186:                                              ; preds = %182, %185
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %384

187:                                              ; preds = %166, %149
  %188 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %10, align 8, !tbaa !41
  %189 = load ptr, ptr %137, align 8, !tbaa !96
  %190 = icmp eq ptr %189, null
  br i1 %190, label %203, label %202

191:                                              ; preds = %173, %191
  %192 = phi i64 [ 0, %173 ], [ %200, %191 ]
  %193 = getelementptr inbounds double, ptr %174, i64 %192
  %194 = load double, ptr %193, align 8, !tbaa !70
  %195 = getelementptr inbounds double, ptr %175, i64 %192
  %196 = load double, ptr %195, align 8, !tbaa !70
  %197 = fsub double %194, %196
  %198 = fmul double %153, %197
  %199 = getelementptr inbounds %"class.dealii::Tensor", ptr %176, i64 %192
  store double %198, ptr %199, align 8, !tbaa !70
  %200 = add nuw nsw i64 %192, 1
  %201 = icmp eq i64 %200, %177
  br i1 %201, label %178, label %191, !llvm.loop !112

202:                                              ; preds = %187
  call void @_ZdaPv(ptr noundef %189) #19
  store ptr null, ptr %137, align 8, !tbaa !96
  br label %203

203:                                              ; preds = %187, %202
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %10) #18
  br label %204

204:                                              ; preds = %164, %147, %203
  %205 = phi { ptr, i32 } [ %188, %203 ], [ %165, %164 ], [ %148, %147 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !41
  %206 = load ptr, ptr %120, align 8, !tbaa !96
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  call void @_ZdaPv(ptr noundef %206) #19
  store ptr null, ptr %120, align 8, !tbaa !96
  br label %209

209:                                              ; preds = %204, %208
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %9) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %36

210:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store double 0.000000e+00, ptr %11, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  store double 0.000000e+00, ptr %12, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  store double 0.000000e+00, ptr %13, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  store double 0.000000e+00, ptr %14, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %15) #18
  %211 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %212 = load i32, ptr %211, align 8, !tbaa !95
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %15)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %15, align 8, !tbaa !41
  %213 = getelementptr inbounds %"class.dealii::Vector", ptr %15, i64 0, i32 1
  %214 = getelementptr inbounds %"class.dealii::Vector", ptr %15, i64 0, i32 2
  %215 = getelementptr inbounds %"class.dealii::Vector", ptr %15, i64 0, i32 3
  %216 = icmp eq i32 %212, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %213, i8 0, i64 16, i1 false)
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %213, i8 0, i64 16, i1 false)
  br label %227

218:                                              ; preds = %210
  %219 = zext i32 %212 to i64
  %220 = shl nuw nsw i64 %219, 3
  %221 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %220) #17
          to label %222 unwind label %225

222:                                              ; preds = %218
  store ptr %221, ptr %215, align 8, !tbaa !96
  store i32 %212, ptr %214, align 4, !tbaa !98
  store i32 %212, ptr %213, align 8, !tbaa !99
  %223 = zext i32 %212 to i64
  %224 = shl nuw nsw i64 %223, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %221, i8 0, i64 %224, i1 false), !tbaa !70
  br label %227

225:                                              ; preds = %218
  %226 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %15) #18
  br label %36

227:                                              ; preds = %222, %217
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %16) #18
  %228 = load i32, ptr %211, align 8, !tbaa !95
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16)
          to label %229 unwind label %297

229:                                              ; preds = %227
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !41
  %230 = getelementptr inbounds %"class.dealii::Vector", ptr %16, i64 0, i32 1
  %231 = getelementptr inbounds %"class.dealii::Vector", ptr %16, i64 0, i32 2
  %232 = getelementptr inbounds %"class.dealii::Vector", ptr %16, i64 0, i32 3
  %233 = icmp eq i32 %228, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %230, i8 0, i64 16, i1 false)
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %230, i8 0, i64 16, i1 false)
  br label %244

235:                                              ; preds = %229
  %236 = zext i32 %228 to i64
  %237 = shl nuw nsw i64 %236, 3
  %238 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %237) #17
          to label %239 unwind label %242

239:                                              ; preds = %235
  store ptr %238, ptr %232, align 8, !tbaa !96
  store i32 %228, ptr %231, align 4, !tbaa !98
  store i32 %228, ptr %230, align 8, !tbaa !99
  %240 = zext i32 %228 to i64
  %241 = shl nuw nsw i64 %240, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %238, i8 0, i64 %241, i1 false), !tbaa !70
  br label %244

242:                                              ; preds = %235
  %243 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #18
  br label %378

244:                                              ; preds = %239, %234
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %17) #18
  %245 = load i32, ptr %211, align 8, !tbaa !95
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %246 unwind label %299

246:                                              ; preds = %244
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !41
  %247 = getelementptr inbounds %"class.dealii::Vector", ptr %17, i64 0, i32 1
  %248 = getelementptr inbounds %"class.dealii::Vector", ptr %17, i64 0, i32 2
  %249 = getelementptr inbounds %"class.dealii::Vector", ptr %17, i64 0, i32 3
  %250 = icmp eq i32 %245, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %247, i8 0, i64 16, i1 false)
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %247, i8 0, i64 16, i1 false)
  br label %261

252:                                              ; preds = %246
  %253 = zext i32 %245 to i64
  %254 = shl nuw nsw i64 %253, 3
  %255 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %254) #17
          to label %256 unwind label %259

256:                                              ; preds = %252
  store ptr %255, ptr %249, align 8, !tbaa !96
  store i32 %245, ptr %248, align 4, !tbaa !98
  store i32 %245, ptr %247, align 8, !tbaa !99
  %257 = zext i32 %245 to i64
  %258 = shl nuw nsw i64 %257, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %255, i8 0, i64 %258, i1 false), !tbaa !70
  br label %261

259:                                              ; preds = %252
  %260 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17) #18
  br label %372

261:                                              ; preds = %256, %251
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %18) #18
  %262 = load i32, ptr %211, align 8, !tbaa !95
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %18)
          to label %263 unwind label %301

263:                                              ; preds = %261
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !41
  %264 = getelementptr inbounds %"class.dealii::Vector", ptr %18, i64 0, i32 1
  %265 = getelementptr inbounds %"class.dealii::Vector", ptr %18, i64 0, i32 2
  %266 = getelementptr inbounds %"class.dealii::Vector", ptr %18, i64 0, i32 3
  %267 = icmp eq i32 %262, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %264, i8 0, i64 16, i1 false)
  br i1 %267, label %268, label %269

268:                                              ; preds = %263
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %264, i8 0, i64 16, i1 false)
  br label %278

269:                                              ; preds = %263
  %270 = zext i32 %262 to i64
  %271 = shl nuw nsw i64 %270, 3
  %272 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %271) #17
          to label %273 unwind label %276

273:                                              ; preds = %269
  store ptr %272, ptr %266, align 8, !tbaa !96
  store i32 %262, ptr %265, align 4, !tbaa !98
  store i32 %262, ptr %264, align 8, !tbaa !99
  %274 = zext i32 %262 to i64
  %275 = shl nuw nsw i64 %274, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %272, i8 0, i64 %275, i1 false), !tbaa !70
  br label %278

276:                                              ; preds = %269
  %277 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %18) #18
  br label %366

278:                                              ; preds = %273, %268
  %279 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  %280 = load double, ptr %279, align 8, !tbaa !44
  %281 = fmul double %280, 1.200000e+01
  %282 = fdiv double 1.000000e+00, %281
  %283 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %284 = load ptr, ptr %283, align 8, !tbaa !67
  %285 = load double, ptr %1, align 8, !tbaa !70, !noalias !76
  %286 = load double, ptr %284, align 8, !tbaa !70, !noalias !113
  %287 = fadd double %285, %286
  store double %287, ptr %12, align 8, !tbaa !70
  %288 = load double, ptr %284, align 8, !tbaa !70, !noalias !116
  %289 = fadd double %287, %288
  store double %289, ptr %11, align 8, !tbaa !70
  %290 = load double, ptr %284, align 8, !tbaa !70, !noalias !119
  %291 = fsub double %285, %290
  store double %291, ptr %13, align 8, !tbaa !70
  %292 = load double, ptr %284, align 8, !tbaa !70, !noalias !122
  %293 = fsub double %291, %292
  store double %293, ptr %14, align 8, !tbaa !70
  %294 = load ptr, ptr %0, align 8, !tbaa !41
  %295 = getelementptr inbounds ptr, ptr %294, i64 5
  %296 = load ptr, ptr %295, align 8
  invoke void %296(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(88) %15)
          to label %303 unwind label %342

297:                                              ; preds = %227
  %298 = landingpad { ptr, i32 }
          cleanup
  br label %378

299:                                              ; preds = %244
  %300 = landingpad { ptr, i32 }
          cleanup
  br label %372

301:                                              ; preds = %261
  %302 = landingpad { ptr, i32 }
          cleanup
  br label %366

303:                                              ; preds = %278
  %304 = load ptr, ptr %0, align 8, !tbaa !41
  %305 = getelementptr inbounds ptr, ptr %304, i64 5
  %306 = load ptr, ptr %305, align 8
  invoke void %306(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(88) %16)
          to label %307 unwind label %342

307:                                              ; preds = %303
  %308 = load ptr, ptr %0, align 8, !tbaa !41
  %309 = getelementptr inbounds ptr, ptr %308, i64 5
  %310 = load ptr, ptr %309, align 8
  invoke void %310(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(88) %17)
          to label %311 unwind label %342

311:                                              ; preds = %307
  %312 = load ptr, ptr %0, align 8, !tbaa !41
  %313 = getelementptr inbounds ptr, ptr %312, i64 5
  %314 = load ptr, ptr %313, align 8
  invoke void %314(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(88) %18)
          to label %315 unwind label %342

315:                                              ; preds = %311
  %316 = load i32, ptr %211, align 8, !tbaa !95
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %325, label %318

318:                                              ; preds = %315
  %319 = load ptr, ptr %215, align 8, !tbaa !96
  %320 = load ptr, ptr %232, align 8, !tbaa !96
  %321 = load ptr, ptr %249, align 8, !tbaa !96
  %322 = load ptr, ptr %266, align 8, !tbaa !96
  %323 = load ptr, ptr %2, align 8, !tbaa !67
  %324 = zext i32 %316 to i64
  br label %346

325:                                              ; preds = %346, %315
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !41
  %326 = load ptr, ptr %266, align 8, !tbaa !96
  %327 = icmp eq ptr %326, null
  br i1 %327, label %329, label %328

328:                                              ; preds = %325
  call void @_ZdaPv(ptr noundef %326) #19
  store ptr null, ptr %266, align 8, !tbaa !96
  br label %329

329:                                              ; preds = %325, %328
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %18) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !41
  %330 = load ptr, ptr %249, align 8, !tbaa !96
  %331 = icmp eq ptr %330, null
  br i1 %331, label %333, label %332

332:                                              ; preds = %329
  call void @_ZdaPv(ptr noundef %330) #19
  store ptr null, ptr %249, align 8, !tbaa !96
  br label %333

333:                                              ; preds = %329, %332
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !41
  %334 = load ptr, ptr %232, align 8, !tbaa !96
  %335 = icmp eq ptr %334, null
  br i1 %335, label %337, label %336

336:                                              ; preds = %333
  call void @_ZdaPv(ptr noundef %334) #19
  store ptr null, ptr %232, align 8, !tbaa !96
  br label %337

337:                                              ; preds = %333, %336
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %16) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %15, align 8, !tbaa !41
  %338 = load ptr, ptr %215, align 8, !tbaa !96
  %339 = icmp eq ptr %338, null
  br i1 %339, label %341, label %340

340:                                              ; preds = %337
  call void @_ZdaPv(ptr noundef %338) #19
  store ptr null, ptr %215, align 8, !tbaa !96
  br label %341

341:                                              ; preds = %337, %340
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %15) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %384

342:                                              ; preds = %311, %307, %303, %278
  %343 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !41
  %344 = load ptr, ptr %266, align 8, !tbaa !96
  %345 = icmp eq ptr %344, null
  br i1 %345, label %365, label %364

346:                                              ; preds = %318, %346
  %347 = phi i64 [ 0, %318 ], [ %362, %346 ]
  %348 = getelementptr inbounds double, ptr %319, i64 %347
  %349 = load double, ptr %348, align 8, !tbaa !70
  %350 = fneg double %349
  %351 = getelementptr inbounds double, ptr %320, i64 %347
  %352 = load double, ptr %351, align 8, !tbaa !70
  %353 = call double @llvm.fmuladd.f64(double %352, double 8.000000e+00, double %350)
  %354 = getelementptr inbounds double, ptr %321, i64 %347
  %355 = load double, ptr %354, align 8, !tbaa !70
  %356 = call double @llvm.fmuladd.f64(double %355, double -8.000000e+00, double %353)
  %357 = getelementptr inbounds double, ptr %322, i64 %347
  %358 = load double, ptr %357, align 8, !tbaa !70
  %359 = fadd double %356, %358
  %360 = fmul double %282, %359
  %361 = getelementptr inbounds %"class.dealii::Tensor", ptr %323, i64 %347
  store double %360, ptr %361, align 8, !tbaa !70
  %362 = add nuw nsw i64 %347, 1
  %363 = icmp eq i64 %362, %324
  br i1 %363, label %325, label %346, !llvm.loop !125

364:                                              ; preds = %342
  call void @_ZdaPv(ptr noundef %344) #19
  store ptr null, ptr %266, align 8, !tbaa !96
  br label %365

365:                                              ; preds = %342, %364
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %18) #18
  br label %366

366:                                              ; preds = %301, %276, %365
  %367 = phi { ptr, i32 } [ %343, %365 ], [ %302, %301 ], [ %277, %276 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !41
  %368 = load ptr, ptr %249, align 8, !tbaa !96
  %369 = icmp eq ptr %368, null
  br i1 %369, label %371, label %370

370:                                              ; preds = %366
  call void @_ZdaPv(ptr noundef %368) #19
  store ptr null, ptr %249, align 8, !tbaa !96
  br label %371

371:                                              ; preds = %366, %370
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17) #18
  br label %372

372:                                              ; preds = %299, %259, %371
  %373 = phi { ptr, i32 } [ %367, %371 ], [ %300, %299 ], [ %260, %259 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !41
  %374 = load ptr, ptr %232, align 8, !tbaa !96
  %375 = icmp eq ptr %374, null
  br i1 %375, label %377, label %376

376:                                              ; preds = %372
  call void @_ZdaPv(ptr noundef %374) #19
  store ptr null, ptr %232, align 8, !tbaa !96
  br label %377

377:                                              ; preds = %372, %376
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #18
  br label %378

378:                                              ; preds = %297, %242, %377
  %379 = phi { ptr, i32 } [ %373, %377 ], [ %298, %297 ], [ %243, %242 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %16) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %15, align 8, !tbaa !41
  %380 = load ptr, ptr %215, align 8, !tbaa !96
  %381 = icmp eq ptr %380, null
  br i1 %381, label %383, label %382

382:                                              ; preds = %378
  call void @_ZdaPv(ptr noundef %380) #19
  store ptr null, ptr %215, align 8, !tbaa !96
  br label %383

383:                                              ; preds = %378, %382
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %15) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %36

384:                                              ; preds = %3, %341, %186, %91
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #11 comdat align 2 !prof !126 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !127

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #19
  store ptr null, ptr %2, align 8, !tbaa !96
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #3 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = alloca %"class.dealii::Point", align 8
  %12 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !71
  switch i32 %13, label %157 [
    i32 1, label %14
    i32 0, label %54
    i32 2, label %98
  ]

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store double 0.000000e+00, ptr %5, align 8, !tbaa !70
  %15 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  %17 = load ptr, ptr %1, align 8, !tbaa !130
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %23

22:                                               ; preds = %23, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %157

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %17, %19 ], [ %48, %23 ]
  %25 = phi i64 [ 0, %19 ], [ %46, %23 ]
  %26 = phi i32 [ 0, %19 ], [ %45, %23 ]
  %27 = getelementptr inbounds %"class.dealii::Point", ptr %24, i64 %25
  %28 = load ptr, ptr %20, align 8, !tbaa !67
  %29 = load double, ptr %27, align 8, !tbaa !70, !noalias !131
  %30 = load double, ptr %28, align 8, !tbaa !70, !noalias !131
  %31 = fsub double %29, %30
  store double %31, ptr %5, align 8, !tbaa !70
  %32 = load ptr, ptr %0, align 8, !tbaa !41
  %33 = getelementptr inbounds ptr, ptr %32, i64 4
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef double %34(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef %3)
  %36 = load ptr, ptr %0, align 8, !tbaa !41
  %37 = getelementptr inbounds ptr, ptr %36, i64 4
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef double %38(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %3)
  %40 = fsub double %35, %39
  %41 = load double, ptr %21, align 8, !tbaa !44
  %42 = fdiv double %40, %41
  %43 = load ptr, ptr %2, align 8, !tbaa !67
  %44 = getelementptr inbounds %"class.dealii::Tensor", ptr %43, i64 %25
  store double %42, ptr %44, align 8, !tbaa !70
  %45 = add i32 %26, 1
  %46 = zext i32 %45 to i64
  %47 = load ptr, ptr %15, align 8, !tbaa !128
  %48 = load ptr, ptr %1, align 8, !tbaa !130
  %49 = ptrtoint ptr %47 to i64
  %50 = ptrtoint ptr %48 to i64
  %51 = sub i64 %49, %50
  %52 = ashr exact i64 %51, 3
  %53 = icmp ugt i64 %52, %46
  br i1 %53, label %23, label %22, !llvm.loop !134

54:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store double 0.000000e+00, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store double 0.000000e+00, ptr %7, align 8, !tbaa !70
  %55 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !128
  %57 = load ptr, ptr %1, align 8, !tbaa !130
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %61 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %63

62:                                               ; preds = %63, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %157

63:                                               ; preds = %59, %63
  %64 = phi ptr [ %57, %59 ], [ %92, %63 ]
  %65 = phi i64 [ 0, %59 ], [ %90, %63 ]
  %66 = phi i32 [ 0, %59 ], [ %89, %63 ]
  %67 = getelementptr inbounds %"class.dealii::Point", ptr %64, i64 %65
  %68 = load ptr, ptr %60, align 8, !tbaa !67
  %69 = load double, ptr %67, align 8, !tbaa !70, !noalias !135
  %70 = load double, ptr %68, align 8, !tbaa !70, !noalias !135
  %71 = fadd double %69, %70
  store double %71, ptr %6, align 8, !tbaa !70
  %72 = load double, ptr %67, align 8, !tbaa !70, !noalias !138
  %73 = load double, ptr %68, align 8, !tbaa !70, !noalias !138
  %74 = fsub double %72, %73
  store double %74, ptr %7, align 8, !tbaa !70
  %75 = load ptr, ptr %0, align 8, !tbaa !41
  %76 = getelementptr inbounds ptr, ptr %75, i64 4
  %77 = load ptr, ptr %76, align 8
  %78 = call noundef double %77(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %3)
  %79 = load ptr, ptr %0, align 8, !tbaa !41
  %80 = getelementptr inbounds ptr, ptr %79, i64 4
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef double %81(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %3)
  %83 = fsub double %78, %82
  %84 = load double, ptr %61, align 8, !tbaa !44
  %85 = fmul double %84, 2.000000e+00
  %86 = fdiv double %83, %85
  %87 = load ptr, ptr %2, align 8, !tbaa !67
  %88 = getelementptr inbounds %"class.dealii::Tensor", ptr %87, i64 %65
  store double %86, ptr %88, align 8, !tbaa !70
  %89 = add i32 %66, 1
  %90 = zext i32 %89 to i64
  %91 = load ptr, ptr %55, align 8, !tbaa !128
  %92 = load ptr, ptr %1, align 8, !tbaa !130
  %93 = ptrtoint ptr %91 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = ashr exact i64 %95, 3
  %97 = icmp ugt i64 %96, %90
  br i1 %97, label %63, label %62, !llvm.loop !141

98:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store double 0.000000e+00, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store double 0.000000e+00, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store double 0.000000e+00, ptr %10, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store double 0.000000e+00, ptr %11, align 8, !tbaa !70
  %99 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !128
  %101 = load ptr, ptr %1, align 8, !tbaa !130
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %105 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %107

106:                                              ; preds = %107, %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %157

107:                                              ; preds = %103, %107
  %108 = phi ptr [ %101, %103 ], [ %151, %107 ]
  %109 = phi i64 [ 0, %103 ], [ %149, %107 ]
  %110 = phi i32 [ 0, %103 ], [ %148, %107 ]
  %111 = getelementptr inbounds %"class.dealii::Point", ptr %108, i64 %109
  %112 = load ptr, ptr %104, align 8, !tbaa !67
  %113 = load double, ptr %111, align 8, !tbaa !70, !noalias !142
  %114 = load double, ptr %112, align 8, !tbaa !70, !noalias !142
  %115 = fadd double %113, %114
  store double %115, ptr %9, align 8, !tbaa !70
  %116 = load double, ptr %112, align 8, !tbaa !70, !noalias !145
  %117 = fadd double %115, %116
  store double %117, ptr %8, align 8, !tbaa !70
  %118 = load double, ptr %111, align 8, !tbaa !70, !noalias !148
  %119 = load double, ptr %112, align 8, !tbaa !70, !noalias !148
  %120 = fsub double %118, %119
  store double %120, ptr %10, align 8, !tbaa !70
  %121 = load double, ptr %112, align 8, !tbaa !70, !noalias !151
  %122 = fsub double %120, %121
  store double %122, ptr %11, align 8, !tbaa !70
  %123 = load ptr, ptr %0, align 8, !tbaa !41
  %124 = getelementptr inbounds ptr, ptr %123, i64 4
  %125 = load ptr, ptr %124, align 8
  %126 = call noundef double %125(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %3)
  %127 = fneg double %126
  %128 = load ptr, ptr %0, align 8, !tbaa !41
  %129 = getelementptr inbounds ptr, ptr %128, i64 4
  %130 = load ptr, ptr %129, align 8
  %131 = call noundef double %130(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %3)
  %132 = call double @llvm.fmuladd.f64(double %131, double 8.000000e+00, double %127)
  %133 = load ptr, ptr %0, align 8, !tbaa !41
  %134 = getelementptr inbounds ptr, ptr %133, i64 4
  %135 = load ptr, ptr %134, align 8
  %136 = call noundef double %135(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %3)
  %137 = call double @llvm.fmuladd.f64(double %136, double -8.000000e+00, double %132)
  %138 = load ptr, ptr %0, align 8, !tbaa !41
  %139 = getelementptr inbounds ptr, ptr %138, i64 4
  %140 = load ptr, ptr %139, align 8
  %141 = call noundef double %140(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %3)
  %142 = fadd double %137, %141
  %143 = load double, ptr %105, align 8, !tbaa !44
  %144 = fmul double %143, 1.200000e+01
  %145 = fdiv double %142, %144
  %146 = load ptr, ptr %2, align 8, !tbaa !67
  %147 = getelementptr inbounds %"class.dealii::Tensor", ptr %146, i64 %109
  store double %145, ptr %147, align 8, !tbaa !70
  %148 = add i32 %110, 1
  %149 = zext i32 %148 to i64
  %150 = load ptr, ptr %99, align 8, !tbaa !128
  %151 = load ptr, ptr %1, align 8, !tbaa !130
  %152 = ptrtoint ptr %150 to i64
  %153 = ptrtoint ptr %151 to i64
  %154 = sub i64 %152, %153
  %155 = ashr exact i64 %154, 3
  %156 = icmp ugt i64 %155, %149
  br i1 %156, label %107, label %106, !llvm.loop !154

157:                                              ; preds = %4, %106, %62, %22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 !prof !72 {
  %4 = alloca %"class.dealii::Point", align 8
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !71
  switch i32 %13, label %200 [
    i32 1, label %14
    i32 0, label %69
    i32 2, label %126
  ]

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store double 0.000000e+00, ptr %4, align 8, !tbaa !70
  %15 = load ptr, ptr %11, align 8, !tbaa !128
  %16 = load ptr, ptr %1, align 8, !tbaa !130
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %21 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %23

22:                                               ; preds = %34, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %200

23:                                               ; preds = %18, %34
  %24 = phi ptr [ %16, %18 ], [ %38, %34 ]
  %25 = phi i64 [ 0, %18 ], [ %36, %34 ]
  %26 = phi i32 [ 0, %18 ], [ %35, %34 ]
  %27 = getelementptr inbounds %"class.dealii::Point", ptr %24, i64 %25
  %28 = load ptr, ptr %19, align 8, !tbaa !67
  %29 = load double, ptr %27, align 8, !tbaa !70, !noalias !155
  %30 = load double, ptr %28, align 8, !tbaa !70, !noalias !155
  %31 = fsub double %29, %30
  store double %31, ptr %4, align 8, !tbaa !70
  %32 = load i32, ptr %20, align 8, !tbaa !95
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %44, %23
  %35 = add i32 %26, 1
  %36 = zext i32 %35 to i64
  %37 = load ptr, ptr %11, align 8, !tbaa !128
  %38 = load ptr, ptr %1, align 8, !tbaa !130
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = ashr exact i64 %41, 3
  %43 = icmp ugt i64 %42, %36
  br i1 %43, label %23, label %22, !llvm.loop !158

44:                                               ; preds = %23, %44
  %45 = phi i64 [ %65, %44 ], [ 0, %23 ]
  %46 = load ptr, ptr %1, align 8, !tbaa !130
  %47 = getelementptr inbounds %"class.dealii::Point", ptr %46, i64 %25
  %48 = load ptr, ptr %0, align 8, !tbaa !41
  %49 = getelementptr inbounds ptr, ptr %48, i64 4
  %50 = load ptr, ptr %49, align 8
  %51 = trunc i64 %45 to i32
  %52 = call noundef double %50(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %47, i32 noundef %51)
  %53 = load ptr, ptr %0, align 8, !tbaa !41
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = trunc i64 %45 to i32
  %57 = call noundef double %55(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %56)
  %58 = fsub double %52, %57
  %59 = load double, ptr %21, align 8, !tbaa !44
  %60 = fdiv double %58, %59
  %61 = load ptr, ptr %2, align 8, !tbaa !159
  %62 = getelementptr inbounds %"class.std::vector", ptr %61, i64 %25
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  %64 = getelementptr inbounds %"class.dealii::Tensor", ptr %63, i64 %45
  store double %60, ptr %64, align 8, !tbaa !70
  %65 = add nuw nsw i64 %45, 1
  %66 = load i32, ptr %20, align 8, !tbaa !95
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %44, label %34, !llvm.loop !161

69:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store double 0.000000e+00, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store double 0.000000e+00, ptr %6, align 8, !tbaa !70
  %70 = load ptr, ptr %11, align 8, !tbaa !128
  %71 = load ptr, ptr %1, align 8, !tbaa !130
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %75 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %76 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %78

77:                                               ; preds = %92, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %200

78:                                               ; preds = %73, %92
  %79 = phi ptr [ %71, %73 ], [ %96, %92 ]
  %80 = phi i64 [ 0, %73 ], [ %94, %92 ]
  %81 = phi i32 [ 0, %73 ], [ %93, %92 ]
  %82 = getelementptr inbounds %"class.dealii::Point", ptr %79, i64 %80
  %83 = load ptr, ptr %74, align 8, !tbaa !67
  %84 = load double, ptr %82, align 8, !tbaa !70, !noalias !162
  %85 = load double, ptr %83, align 8, !tbaa !70, !noalias !162
  %86 = fadd double %84, %85
  store double %86, ptr %5, align 8, !tbaa !70
  %87 = load double, ptr %82, align 8, !tbaa !70, !noalias !165
  %88 = load double, ptr %83, align 8, !tbaa !70, !noalias !165
  %89 = fsub double %87, %88
  store double %89, ptr %6, align 8, !tbaa !70
  %90 = load i32, ptr %75, align 8, !tbaa !95
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %102, %78
  %93 = add i32 %81, 1
  %94 = zext i32 %93 to i64
  %95 = load ptr, ptr %11, align 8, !tbaa !128
  %96 = load ptr, ptr %1, align 8, !tbaa !130
  %97 = ptrtoint ptr %95 to i64
  %98 = ptrtoint ptr %96 to i64
  %99 = sub i64 %97, %98
  %100 = ashr exact i64 %99, 3
  %101 = icmp ugt i64 %100, %94
  br i1 %101, label %78, label %77, !llvm.loop !168

102:                                              ; preds = %78, %102
  %103 = phi i64 [ %122, %102 ], [ 0, %78 ]
  %104 = load ptr, ptr %0, align 8, !tbaa !41
  %105 = getelementptr inbounds ptr, ptr %104, i64 4
  %106 = load ptr, ptr %105, align 8
  %107 = trunc i64 %103 to i32
  %108 = call noundef double %106(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %107)
  %109 = load ptr, ptr %0, align 8, !tbaa !41
  %110 = getelementptr inbounds ptr, ptr %109, i64 4
  %111 = load ptr, ptr %110, align 8
  %112 = trunc i64 %103 to i32
  %113 = call noundef double %111(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %112)
  %114 = fsub double %108, %113
  %115 = load double, ptr %76, align 8, !tbaa !44
  %116 = fmul double %115, 2.000000e+00
  %117 = fdiv double %114, %116
  %118 = load ptr, ptr %2, align 8, !tbaa !159
  %119 = getelementptr inbounds %"class.std::vector", ptr %118, i64 %80
  %120 = load ptr, ptr %119, align 8, !tbaa !67
  %121 = getelementptr inbounds %"class.dealii::Tensor", ptr %120, i64 %103
  store double %117, ptr %121, align 8, !tbaa !70
  %122 = add nuw nsw i64 %103, 1
  %123 = load i32, ptr %75, align 8, !tbaa !95
  %124 = zext i32 %123 to i64
  %125 = icmp ult i64 %122, %124
  br i1 %125, label %102, label %92, !llvm.loop !169

126:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store double 0.000000e+00, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store double 0.000000e+00, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store double 0.000000e+00, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store double 0.000000e+00, ptr %10, align 8, !tbaa !70
  %127 = load ptr, ptr %11, align 8, !tbaa !128
  %128 = load ptr, ptr %1, align 8, !tbaa !130
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %132 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %133 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %135

134:                                              ; preds = %153, %126
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %200

135:                                              ; preds = %130, %153
  %136 = phi ptr [ %128, %130 ], [ %157, %153 ]
  %137 = phi i64 [ 0, %130 ], [ %155, %153 ]
  %138 = phi i32 [ 0, %130 ], [ %154, %153 ]
  %139 = getelementptr inbounds %"class.dealii::Point", ptr %136, i64 %137
  %140 = load ptr, ptr %131, align 8, !tbaa !67
  %141 = load double, ptr %139, align 8, !tbaa !70, !noalias !170
  %142 = load double, ptr %140, align 8, !tbaa !70, !noalias !170
  %143 = fadd double %141, %142
  store double %143, ptr %8, align 8, !tbaa !70
  %144 = load double, ptr %140, align 8, !tbaa !70, !noalias !173
  %145 = fadd double %143, %144
  store double %145, ptr %7, align 8, !tbaa !70
  %146 = load double, ptr %139, align 8, !tbaa !70, !noalias !176
  %147 = load double, ptr %140, align 8, !tbaa !70, !noalias !176
  %148 = fsub double %146, %147
  store double %148, ptr %9, align 8, !tbaa !70
  %149 = load double, ptr %140, align 8, !tbaa !70, !noalias !179
  %150 = fsub double %148, %149
  store double %150, ptr %10, align 8, !tbaa !70
  %151 = load i32, ptr %132, align 8, !tbaa !95
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %163, %135
  %154 = add i32 %138, 1
  %155 = zext i32 %154 to i64
  %156 = load ptr, ptr %11, align 8, !tbaa !128
  %157 = load ptr, ptr %1, align 8, !tbaa !130
  %158 = ptrtoint ptr %156 to i64
  %159 = ptrtoint ptr %157 to i64
  %160 = sub i64 %158, %159
  %161 = ashr exact i64 %160, 3
  %162 = icmp ugt i64 %161, %155
  br i1 %162, label %135, label %134, !llvm.loop !182

163:                                              ; preds = %135, %163
  %164 = phi i64 [ %196, %163 ], [ 0, %135 ]
  %165 = load ptr, ptr %0, align 8, !tbaa !41
  %166 = getelementptr inbounds ptr, ptr %165, i64 4
  %167 = load ptr, ptr %166, align 8
  %168 = trunc i64 %164 to i32
  %169 = call noundef double %167(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %168)
  %170 = fneg double %169
  %171 = load ptr, ptr %0, align 8, !tbaa !41
  %172 = getelementptr inbounds ptr, ptr %171, i64 4
  %173 = load ptr, ptr %172, align 8
  %174 = trunc i64 %164 to i32
  %175 = call noundef double %173(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %174)
  %176 = call double @llvm.fmuladd.f64(double %175, double 8.000000e+00, double %170)
  %177 = load ptr, ptr %0, align 8, !tbaa !41
  %178 = getelementptr inbounds ptr, ptr %177, i64 4
  %179 = load ptr, ptr %178, align 8
  %180 = trunc i64 %164 to i32
  %181 = call noundef double %179(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %180)
  %182 = call double @llvm.fmuladd.f64(double %181, double -8.000000e+00, double %176)
  %183 = load ptr, ptr %0, align 8, !tbaa !41
  %184 = getelementptr inbounds ptr, ptr %183, i64 4
  %185 = load ptr, ptr %184, align 8
  %186 = trunc i64 %164 to i32
  %187 = call noundef double %185(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %186)
  %188 = fadd double %182, %187
  %189 = load double, ptr %133, align 8, !tbaa !44
  %190 = fmul double %189, 1.200000e+01
  %191 = fdiv double %188, %190
  %192 = load ptr, ptr %2, align 8, !tbaa !159
  %193 = getelementptr inbounds %"class.std::vector", ptr %192, i64 %137
  %194 = load ptr, ptr %193, align 8, !tbaa !67
  %195 = getelementptr inbounds %"class.dealii::Tensor", ptr %194, i64 %164
  store double %191, ptr %195, align 8, !tbaa !70
  %196 = add nuw nsw i64 %164, 1
  %197 = load i32, ptr %132, align 8, !tbaa !95
  %198 = zext i32 %197 to i64
  %199 = icmp ult i64 %196, %198
  br i1 %199, label %163, label %153, !llvm.loop !183

200:                                              ; preds = %3, %134, %77, %22
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii22AutoDerivativeFunctionILi1EE20get_formula_of_orderEj(i32 noundef %0) local_unnamed_addr #4 comdat align 2 !prof !72 {
  %2 = icmp ult i32 %0, 5
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [5 x i32], ptr @switch.table._ZN6dealii22AutoDerivativeFunctionILi3EE20get_formula_of_orderEj, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, i32 noundef %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii22AutoDerivativeFunctionILi2EEC5Edjd) align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef %3)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  store double 1.000000e+00, ptr %6, align 8, !tbaa !184
  %7 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %8 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17
          to label %9 unwind label %22

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  store ptr %8, ptr %7, align 8, !tbaa !192
  store ptr %8, ptr %10, align 8, !tbaa !193
  %12 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %8, i64 2
  store ptr %12, ptr %11, align 8, !tbaa !194
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false), !tbaa !70
  %13 = getelementptr inbounds i8, ptr %8, i64 32
  store ptr %13, ptr %10, align 8, !tbaa !193
  %14 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 4
  store i32 0, ptr %14, align 8, !tbaa !195
  store double %1, ptr %6, align 8, !tbaa !184
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi i64 [ 0, %9 ], [ %19, %15 ]
  %17 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %8, i64 %16
  %18 = getelementptr inbounds [2 x double], ptr %17, i64 0, i64 %16
  store double %1, ptr %18, align 8, !tbaa !70
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %16, 0
  br i1 %20, label %15, label %21, !llvm.loop !196

21:                                               ; preds = %15
  store i32 0, ptr %14, align 8, !tbaa !195
  ret void

22:                                               ; preds = %4
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #18
  resume { ptr, i32 } %23
}

declare void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  store double %1, ptr %3, align 8, !tbaa !184
  %4 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  br label %7

6:                                                ; preds = %7
  ret void

7:                                                ; preds = %2, %7
  %8 = phi i64 [ 0, %2 ], [ %12, %7 ]
  %9 = load double, ptr %3, align 8, !tbaa !184
  %10 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %5, i64 %8
  %11 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %8
  store double %9, ptr %11, align 8, !tbaa !70
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %8, 0
  br i1 %13, label %7, label %6, !llvm.loop !196
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EE11set_formulaENS1_17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 8, !tbaa !195
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #4 comdat($_ZN6dealii22AutoDerivativeFunctionILi2EED5Ev) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !41
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !192
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #19
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #7 comdat($_ZN6dealii22AutoDerivativeFunctionILi2EED5Ev) align 2 !annotation !40 {
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !annotation !40 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #18
  tail call void @_ZdlPv(ptr noundef %2) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #3 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Point.23", align 8
  %6 = alloca %"class.dealii::Point.23", align 8
  %7 = alloca %"class.dealii::Point.23", align 8
  %8 = alloca %"class.dealii::Point.23", align 8
  %9 = alloca %"class.dealii::Point.23", align 8
  %10 = alloca %"class.dealii::Point.23", align 8
  %11 = alloca %"class.dealii::Point.23", align 8
  %12 = alloca %"class.dealii::Point.23", align 8
  %13 = alloca %"class.dealii::Point.23", align 8
  %14 = alloca %"class.dealii::Point.23", align 8
  %15 = alloca %"class.dealii::Point.23", align 8
  %16 = alloca %"class.dealii::Point.23", align 8
  %17 = alloca %"class.dealii::Point.23", align 8
  %18 = alloca %"class.dealii::Point.23", align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !70
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !195
  switch i32 %20, label %198 [
    i32 1, label %21
    i32 0, label %57
    i32 2, label %108
  ]

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !tbaa !70
  %22 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds [2 x double], ptr %12, i64 0, i64 1
  %24 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 2
  %25 = getelementptr inbounds i8, ptr %11, i64 8
  br label %27

26:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  br label %198

27:                                               ; preds = %21, %40
  %28 = phi i64 [ 0, %21 ], [ %55, %40 ]
  %29 = load ptr, ptr %22, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18, !noalias !197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !70, !noalias !197
  %30 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %29, i64 %28
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ 0, %27 ], [ %38, %31 ]
  %33 = getelementptr inbounds [2 x double], ptr %30, i64 0, i64 %32
  %34 = load double, ptr %33, align 8, !tbaa !70, !noalias !197
  %35 = getelementptr inbounds [2 x double], ptr %11, i64 0, i64 %32
  %36 = load double, ptr %35, align 8, !tbaa !70, !noalias !197
  %37 = fsub double %36, %34
  store double %37, ptr %35, align 8, !tbaa !70, !noalias !197
  %38 = add nuw nsw i64 %32, 1
  %39 = icmp eq i64 %32, 0
  br i1 %39, label %31, label %40, !llvm.loop !200

40:                                               ; preds = %31
  %41 = load double, ptr %25, align 8, !tbaa !70
  %42 = load double, ptr %11, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18, !noalias !197
  store double %42, ptr %12, align 8, !tbaa !70
  store double %41, ptr %23, align 8, !tbaa !70
  %43 = load ptr, ptr %1, align 8, !tbaa !41
  %44 = getelementptr inbounds ptr, ptr %43, i64 4
  %45 = load ptr, ptr %44, align 8
  %46 = call noundef double %45(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3)
  %47 = load ptr, ptr %1, align 8, !tbaa !41
  %48 = getelementptr inbounds ptr, ptr %47, i64 4
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef double %49(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %3)
  %51 = fsub double %46, %50
  %52 = load double, ptr %24, align 8, !tbaa !184
  %53 = fdiv double %51, %52
  %54 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %28
  store double %53, ptr %54, align 8, !tbaa !70
  %55 = add nuw nsw i64 %28, 1
  %56 = icmp eq i64 %28, 0
  br i1 %56, label %27, label %26, !llvm.loop !201

57:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false), !tbaa !70
  %58 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 3
  %59 = getelementptr inbounds [2 x double], ptr %13, i64 0, i64 1
  %60 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %61 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 2
  %62 = getelementptr inbounds i8, ptr %9, i64 8
  %63 = getelementptr inbounds i8, ptr %10, i64 8
  br label %65

64:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  br label %198

65:                                               ; preds = %57, %90
  %66 = phi i64 [ 0, %57 ], [ %106, %90 ]
  %67 = load ptr, ptr %58, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18, !noalias !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !70, !noalias !202
  %68 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %67, i64 %66
  br label %69

69:                                               ; preds = %65, %69
  %70 = phi i64 [ 0, %65 ], [ %76, %69 ]
  %71 = getelementptr inbounds [2 x double], ptr %68, i64 0, i64 %70
  %72 = load double, ptr %71, align 8, !tbaa !70, !noalias !202
  %73 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %70
  %74 = load double, ptr %73, align 8, !tbaa !70, !noalias !202
  %75 = fadd double %72, %74
  store double %75, ptr %73, align 8, !tbaa !70, !noalias !202
  %76 = add nuw nsw i64 %70, 1
  %77 = icmp eq i64 %70, 0
  br i1 %77, label %69, label %78, !llvm.loop !205

78:                                               ; preds = %69
  %79 = load double, ptr %63, align 8, !tbaa !70
  %80 = load double, ptr %10, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18, !noalias !202
  store double %80, ptr %13, align 8, !tbaa !70
  store double %79, ptr %59, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18, !noalias !206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !70, !noalias !206
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi i64 [ 0, %78 ], [ %88, %81 ]
  %83 = getelementptr inbounds [2 x double], ptr %68, i64 0, i64 %82
  %84 = load double, ptr %83, align 8, !tbaa !70, !noalias !206
  %85 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %82
  %86 = load double, ptr %85, align 8, !tbaa !70, !noalias !206
  %87 = fsub double %86, %84
  store double %87, ptr %85, align 8, !tbaa !70, !noalias !206
  %88 = add nuw nsw i64 %82, 1
  %89 = icmp eq i64 %82, 0
  br i1 %89, label %81, label %90, !llvm.loop !200

90:                                               ; preds = %81
  %91 = load double, ptr %62, align 8, !tbaa !70
  %92 = load double, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18, !noalias !206
  store double %92, ptr %14, align 8, !tbaa !70
  store double %91, ptr %60, align 8, !tbaa !70
  %93 = load ptr, ptr %1, align 8, !tbaa !41
  %94 = getelementptr inbounds ptr, ptr %93, i64 4
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef double %95(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %3)
  %97 = load ptr, ptr %1, align 8, !tbaa !41
  %98 = getelementptr inbounds ptr, ptr %97, i64 4
  %99 = load ptr, ptr %98, align 8
  %100 = call noundef double %99(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %3)
  %101 = fsub double %96, %100
  %102 = load double, ptr %61, align 8, !tbaa !184
  %103 = fmul double %102, 2.000000e+00
  %104 = fdiv double %101, %103
  %105 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %66
  store double %104, ptr %105, align 8, !tbaa !70
  %106 = add nuw nsw i64 %66, 1
  %107 = icmp eq i64 %66, 0
  br i1 %107, label %65, label %64, !llvm.loop !209

108:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false), !tbaa !70
  %109 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 3
  %110 = getelementptr inbounds [2 x double], ptr %16, i64 0, i64 1
  %111 = getelementptr inbounds [2 x double], ptr %15, i64 0, i64 1
  %112 = getelementptr inbounds [2 x double], ptr %17, i64 0, i64 1
  %113 = getelementptr inbounds [2 x double], ptr %18, i64 0, i64 1
  %114 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 2
  %115 = getelementptr inbounds i8, ptr %5, i64 8
  %116 = getelementptr inbounds i8, ptr %8, i64 8
  %117 = getelementptr inbounds i8, ptr %7, i64 8
  %118 = getelementptr inbounds i8, ptr %6, i64 8
  br label %120

119:                                              ; preds = %169
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  br label %198

120:                                              ; preds = %108, %169
  %121 = phi i64 [ 0, %108 ], [ %196, %169 ]
  %122 = load ptr, ptr %109, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18, !noalias !210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !70, !noalias !210
  %123 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %122, i64 %121
  br label %124

124:                                              ; preds = %120, %124
  %125 = phi i64 [ 0, %120 ], [ %131, %124 ]
  %126 = getelementptr inbounds [2 x double], ptr %123, i64 0, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !70, !noalias !210
  %128 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 %125
  %129 = load double, ptr %128, align 8, !tbaa !70, !noalias !210
  %130 = fadd double %127, %129
  store double %130, ptr %128, align 8, !tbaa !70, !noalias !210
  %131 = add nuw nsw i64 %125, 1
  %132 = icmp eq i64 %125, 0
  br i1 %132, label %124, label %133, !llvm.loop !205

133:                                              ; preds = %124
  %134 = load double, ptr %116, align 8, !tbaa !70
  %135 = load double, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18, !noalias !210
  store double %135, ptr %16, align 8, !tbaa !70
  store double %134, ptr %110, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18, !noalias !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa !70, !noalias !213
  br label %136

136:                                              ; preds = %133, %136
  %137 = phi i64 [ 0, %133 ], [ %143, %136 ]
  %138 = getelementptr inbounds [2 x double], ptr %123, i64 0, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !70, !noalias !213
  %140 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 %137
  %141 = load double, ptr %140, align 8, !tbaa !70, !noalias !213
  %142 = fadd double %139, %141
  store double %142, ptr %140, align 8, !tbaa !70, !noalias !213
  %143 = add nuw nsw i64 %137, 1
  %144 = icmp eq i64 %137, 0
  br i1 %144, label %136, label %145, !llvm.loop !205

145:                                              ; preds = %136
  %146 = load double, ptr %117, align 8, !tbaa !70
  %147 = load double, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18, !noalias !213
  store double %147, ptr %15, align 8, !tbaa !70
  store double %146, ptr %111, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18, !noalias !216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !70, !noalias !216
  br label %148

148:                                              ; preds = %145, %148
  %149 = phi i64 [ 0, %145 ], [ %155, %148 ]
  %150 = getelementptr inbounds [2 x double], ptr %123, i64 0, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !70, !noalias !216
  %152 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %149
  %153 = load double, ptr %152, align 8, !tbaa !70, !noalias !216
  %154 = fsub double %153, %151
  store double %154, ptr %152, align 8, !tbaa !70, !noalias !216
  %155 = add nuw nsw i64 %149, 1
  %156 = icmp eq i64 %149, 0
  br i1 %156, label %148, label %157, !llvm.loop !200

157:                                              ; preds = %148
  %158 = load double, ptr %118, align 8, !tbaa !70
  %159 = load double, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18, !noalias !216
  store double %159, ptr %17, align 8, !tbaa !70
  store double %158, ptr %112, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18, !noalias !219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa !70, !noalias !219
  br label %160

160:                                              ; preds = %157, %160
  %161 = phi i64 [ 0, %157 ], [ %167, %160 ]
  %162 = getelementptr inbounds [2 x double], ptr %123, i64 0, i64 %161
  %163 = load double, ptr %162, align 8, !tbaa !70, !noalias !219
  %164 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %161
  %165 = load double, ptr %164, align 8, !tbaa !70, !noalias !219
  %166 = fsub double %165, %163
  store double %166, ptr %164, align 8, !tbaa !70, !noalias !219
  %167 = add nuw nsw i64 %161, 1
  %168 = icmp eq i64 %161, 0
  br i1 %168, label %160, label %169, !llvm.loop !200

169:                                              ; preds = %160
  %170 = load double, ptr %115, align 8, !tbaa !70
  %171 = load double, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18, !noalias !219
  store double %171, ptr %18, align 8, !tbaa !70
  store double %170, ptr %113, align 8, !tbaa !70
  %172 = load ptr, ptr %1, align 8, !tbaa !41
  %173 = getelementptr inbounds ptr, ptr %172, i64 4
  %174 = load ptr, ptr %173, align 8
  %175 = call noundef double %174(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %3)
  %176 = fneg double %175
  %177 = load ptr, ptr %1, align 8, !tbaa !41
  %178 = getelementptr inbounds ptr, ptr %177, i64 4
  %179 = load ptr, ptr %178, align 8
  %180 = call noundef double %179(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %3)
  %181 = call double @llvm.fmuladd.f64(double %180, double 8.000000e+00, double %176)
  %182 = load ptr, ptr %1, align 8, !tbaa !41
  %183 = getelementptr inbounds ptr, ptr %182, i64 4
  %184 = load ptr, ptr %183, align 8
  %185 = call noundef double %184(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %3)
  %186 = call double @llvm.fmuladd.f64(double %185, double -8.000000e+00, double %181)
  %187 = load ptr, ptr %1, align 8, !tbaa !41
  %188 = getelementptr inbounds ptr, ptr %187, i64 4
  %189 = load ptr, ptr %188, align 8
  %190 = call noundef double %189(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %3)
  %191 = fadd double %186, %190
  %192 = load double, ptr %114, align 8, !tbaa !184
  %193 = fmul double %192, 1.200000e+01
  %194 = fdiv double %191, %193
  %195 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %121
  store double %194, ptr %195, align 8, !tbaa !70
  %196 = add nuw nsw i64 %121, 1
  %197 = icmp eq i64 %121, 0
  br i1 %197, label %120, label %119, !llvm.loop !222

198:                                              ; preds = %4, %119, %64, %26
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %4 = alloca %"class.dealii::Point.23", align 8
  %5 = alloca %"class.dealii::Point.23", align 8
  %6 = alloca %"class.dealii::Point.23", align 8
  %7 = alloca %"class.dealii::Point.23", align 8
  %8 = alloca %"class.dealii::Point.23", align 8
  %9 = alloca %"class.dealii::Point.23", align 8
  %10 = alloca %"class.dealii::Point.23", align 8
  %11 = alloca %"class.dealii::Point.23", align 8
  %12 = alloca %"class.dealii::Vector", align 8
  %13 = alloca %"class.dealii::Vector", align 8
  %14 = alloca %"class.dealii::Point.23", align 8
  %15 = alloca %"class.dealii::Point.23", align 8
  %16 = alloca %"class.dealii::Vector", align 8
  %17 = alloca %"class.dealii::Vector", align 8
  %18 = alloca %"class.dealii::Point.23", align 8
  %19 = alloca %"class.dealii::Point.23", align 8
  %20 = alloca %"class.dealii::Point.23", align 8
  %21 = alloca %"class.dealii::Point.23", align 8
  %22 = alloca %"class.dealii::Vector", align 8
  %23 = alloca %"class.dealii::Vector", align 8
  %24 = alloca %"class.dealii::Vector", align 8
  %25 = alloca %"class.dealii::Vector", align 8
  %26 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !195
  switch i32 %27, label %493 [
    i32 1, label %28
    i32 0, label %140
    i32 2, label %265
  ]

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %12) #18
  %29 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !223
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %12)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !41
  %31 = getelementptr inbounds %"class.dealii::Vector", ptr %12, i64 0, i32 1
  %32 = getelementptr inbounds %"class.dealii::Vector", ptr %12, i64 0, i32 2
  %33 = getelementptr inbounds %"class.dealii::Vector", ptr %12, i64 0, i32 3
  %34 = icmp eq i32 %30, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  br label %47

36:                                               ; preds = %28
  %37 = zext i32 %30 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %38) #17
          to label %40 unwind label %45

40:                                               ; preds = %36
  store ptr %39, ptr %33, align 8, !tbaa !96
  store i32 %30, ptr %32, align 4, !tbaa !98
  store i32 %30, ptr %31, align 8, !tbaa !99
  %41 = zext i32 %30 to i64
  %42 = shl nuw nsw i64 %41, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %39, i8 0, i64 %42, i1 false), !tbaa !70
  br label %47

43:                                               ; preds = %139, %264, %492, %280, %155, %45
  %44 = phi { ptr, i32 } [ %46, %45 ], [ %156, %155 ], [ %281, %280 ], [ %488, %492 ], [ %260, %264 ], [ %135, %139 ]
  resume { ptr, i32 } %44

45:                                               ; preds = %36
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %12) #18
  br label %43

47:                                               ; preds = %40, %35
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %13) #18
  %48 = load i32, ptr %29, align 8, !tbaa !223
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13)
          to label %49 unwind label %80

49:                                               ; preds = %47
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !41
  %50 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 1
  %51 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 2
  %52 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 3
  %53 = icmp eq i32 %48, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  br label %64

55:                                               ; preds = %49
  %56 = zext i32 %48 to i64
  %57 = shl nuw nsw i64 %56, 3
  %58 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %57) #17
          to label %59 unwind label %62

59:                                               ; preds = %55
  store ptr %58, ptr %52, align 8, !tbaa !96
  store i32 %48, ptr %51, align 4, !tbaa !98
  store i32 %48, ptr %50, align 8, !tbaa !99
  %60 = zext i32 %48 to i64
  %61 = shl nuw nsw i64 %60, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %58, i8 0, i64 %61, i1 false), !tbaa !70
  br label %64

62:                                               ; preds = %55
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #18
  br label %134

64:                                               ; preds = %59, %54
  %65 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %66 = load double, ptr %65, align 8, !tbaa !184
  %67 = fdiv double 1.000000e+00, %66
  %68 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %69 = getelementptr inbounds [2 x double], ptr %11, i64 0, i64 1
  %70 = getelementptr inbounds i8, ptr %10, i64 8
  br label %82

71:                                               ; preds = %114
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !41
  %72 = load ptr, ptr %52, align 8, !tbaa !96
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  call void @_ZdaPv(ptr noundef %72) #19
  store ptr null, ptr %52, align 8, !tbaa !96
  br label %75

75:                                               ; preds = %71, %74
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !41
  %76 = load ptr, ptr %33, align 8, !tbaa !96
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call void @_ZdaPv(ptr noundef %76) #19
  store ptr null, ptr %33, align 8, !tbaa !96
  br label %79

79:                                               ; preds = %75, %78
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %12) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  br label %493

80:                                               ; preds = %47
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %134

82:                                               ; preds = %64, %114
  %83 = phi i64 [ 0, %64 ], [ %115, %114 ]
  %84 = load ptr, ptr %68, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18, !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !70, !noalias !224
  %85 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %84, i64 %83
  br label %86

86:                                               ; preds = %82, %86
  %87 = phi i64 [ 0, %82 ], [ %93, %86 ]
  %88 = getelementptr inbounds [2 x double], ptr %85, i64 0, i64 %87
  %89 = load double, ptr %88, align 8, !tbaa !70, !noalias !224
  %90 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %87
  %91 = load double, ptr %90, align 8, !tbaa !70, !noalias !224
  %92 = fsub double %91, %89
  store double %92, ptr %90, align 8, !tbaa !70, !noalias !224
  %93 = add nuw nsw i64 %87, 1
  %94 = icmp eq i64 %87, 0
  br i1 %94, label %86, label %95, !llvm.loop !200

95:                                               ; preds = %86
  %96 = load double, ptr %70, align 8, !tbaa !70
  %97 = load double, ptr %10, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18, !noalias !224
  store double %97, ptr %11, align 8, !tbaa !70
  store double %96, ptr %69, align 8, !tbaa !70
  %98 = load ptr, ptr %0, align 8, !tbaa !41
  %99 = getelementptr inbounds ptr, ptr %98, i64 5
  %100 = load ptr, ptr %99, align 8
  invoke void %100(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %12)
          to label %101 unwind label %117

101:                                              ; preds = %95
  %102 = load ptr, ptr %0, align 8, !tbaa !41
  %103 = getelementptr inbounds ptr, ptr %102, i64 5
  %104 = load ptr, ptr %103, align 8
  invoke void %104(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %105 unwind label %117

105:                                              ; preds = %101
  %106 = load i32, ptr %29, align 8, !tbaa !223
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %33, align 8, !tbaa !96
  %110 = load ptr, ptr %52, align 8, !tbaa !96
  %111 = load ptr, ptr %2, align 8, !tbaa !192
  %112 = getelementptr inbounds [2 x double], ptr %111, i64 0, i64 %83
  %113 = zext i32 %106 to i64
  br label %121

114:                                              ; preds = %121, %105
  %115 = add nuw nsw i64 %83, 1
  %116 = icmp eq i64 %83, 0
  br i1 %116, label %82, label %71, !llvm.loop !227

117:                                              ; preds = %101, %95
  %118 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !41
  %119 = load ptr, ptr %52, align 8, !tbaa !96
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %132

121:                                              ; preds = %108, %121
  %122 = phi i64 [ 0, %108 ], [ %130, %121 ]
  %123 = getelementptr inbounds double, ptr %109, i64 %122
  %124 = load double, ptr %123, align 8, !tbaa !70
  %125 = getelementptr inbounds double, ptr %110, i64 %122
  %126 = load double, ptr %125, align 8, !tbaa !70
  %127 = fsub double %124, %126
  %128 = fmul double %67, %127
  %129 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %112, i64 %122
  store double %128, ptr %129, align 8, !tbaa !70
  %130 = add nuw nsw i64 %122, 1
  %131 = icmp eq i64 %130, %113
  br i1 %131, label %114, label %121, !llvm.loop !228

132:                                              ; preds = %117
  call void @_ZdaPv(ptr noundef %119) #19
  store ptr null, ptr %52, align 8, !tbaa !96
  br label %133

133:                                              ; preds = %117, %132
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #18
  br label %134

134:                                              ; preds = %80, %62, %133
  %135 = phi { ptr, i32 } [ %118, %133 ], [ %81, %80 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !41
  %136 = load ptr, ptr %33, align 8, !tbaa !96
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @_ZdaPv(ptr noundef %136) #19
  store ptr null, ptr %33, align 8, !tbaa !96
  br label %139

139:                                              ; preds = %134, %138
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %12) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  br label %43

140:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %16) #18
  %141 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %142 = load i32, ptr %141, align 8, !tbaa !223
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !41
  %143 = getelementptr inbounds %"class.dealii::Vector", ptr %16, i64 0, i32 1
  %144 = getelementptr inbounds %"class.dealii::Vector", ptr %16, i64 0, i32 2
  %145 = getelementptr inbounds %"class.dealii::Vector", ptr %16, i64 0, i32 3
  %146 = icmp eq i32 %142, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %143, i8 0, i64 16, i1 false)
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %143, i8 0, i64 16, i1 false)
  br label %157

148:                                              ; preds = %140
  %149 = zext i32 %142 to i64
  %150 = shl nuw nsw i64 %149, 3
  %151 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %150) #17
          to label %152 unwind label %155

152:                                              ; preds = %148
  store ptr %151, ptr %145, align 8, !tbaa !96
  store i32 %142, ptr %144, align 4, !tbaa !98
  store i32 %142, ptr %143, align 8, !tbaa !99
  %153 = zext i32 %142 to i64
  %154 = shl nuw nsw i64 %153, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %151, i8 0, i64 %154, i1 false), !tbaa !70
  br label %157

155:                                              ; preds = %148
  %156 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #18
  br label %43

157:                                              ; preds = %152, %147
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %17) #18
  %158 = load i32, ptr %141, align 8, !tbaa !223
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %159 unwind label %193

159:                                              ; preds = %157
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !41
  %160 = getelementptr inbounds %"class.dealii::Vector", ptr %17, i64 0, i32 1
  %161 = getelementptr inbounds %"class.dealii::Vector", ptr %17, i64 0, i32 2
  %162 = getelementptr inbounds %"class.dealii::Vector", ptr %17, i64 0, i32 3
  %163 = icmp eq i32 %158, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %160, i8 0, i64 16, i1 false)
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %160, i8 0, i64 16, i1 false)
  br label %174

165:                                              ; preds = %159
  %166 = zext i32 %158 to i64
  %167 = shl nuw nsw i64 %166, 3
  %168 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %167) #17
          to label %169 unwind label %172

169:                                              ; preds = %165
  store ptr %168, ptr %162, align 8, !tbaa !96
  store i32 %158, ptr %161, align 4, !tbaa !98
  store i32 %158, ptr %160, align 8, !tbaa !99
  %170 = zext i32 %158 to i64
  %171 = shl nuw nsw i64 %170, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %168, i8 0, i64 %171, i1 false), !tbaa !70
  br label %174

172:                                              ; preds = %165
  %173 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17) #18
  br label %259

174:                                              ; preds = %169, %164
  %175 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %176 = load double, ptr %175, align 8, !tbaa !184
  %177 = fmul double %176, 2.000000e+00
  %178 = fdiv double 1.000000e+00, %177
  %179 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %180 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %181 = getelementptr inbounds [2 x double], ptr %15, i64 0, i64 1
  %182 = getelementptr inbounds i8, ptr %9, i64 8
  %183 = getelementptr inbounds i8, ptr %8, i64 8
  br label %195

184:                                              ; preds = %239
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !41
  %185 = load ptr, ptr %162, align 8, !tbaa !96
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  call void @_ZdaPv(ptr noundef %185) #19
  store ptr null, ptr %162, align 8, !tbaa !96
  br label %188

188:                                              ; preds = %184, %187
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !41
  %189 = load ptr, ptr %145, align 8, !tbaa !96
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  call void @_ZdaPv(ptr noundef %189) #19
  store ptr null, ptr %145, align 8, !tbaa !96
  br label %192

192:                                              ; preds = %188, %191
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  br label %493

193:                                              ; preds = %157
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %259

195:                                              ; preds = %174, %239
  %196 = phi i64 [ 0, %174 ], [ %240, %239 ]
  %197 = load ptr, ptr %179, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18, !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !70, !noalias !229
  %198 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %197, i64 %196
  br label %199

199:                                              ; preds = %195, %199
  %200 = phi i64 [ 0, %195 ], [ %206, %199 ]
  %201 = getelementptr inbounds [2 x double], ptr %198, i64 0, i64 %200
  %202 = load double, ptr %201, align 8, !tbaa !70, !noalias !229
  %203 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %200
  %204 = load double, ptr %203, align 8, !tbaa !70, !noalias !229
  %205 = fadd double %202, %204
  store double %205, ptr %203, align 8, !tbaa !70, !noalias !229
  %206 = add nuw nsw i64 %200, 1
  %207 = icmp eq i64 %200, 0
  br i1 %207, label %199, label %208, !llvm.loop !205

208:                                              ; preds = %199
  %209 = load double, ptr %182, align 8, !tbaa !70
  %210 = load double, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18, !noalias !229
  store double %210, ptr %14, align 8, !tbaa !70
  store double %209, ptr %180, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18, !noalias !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !70, !noalias !232
  br label %211

211:                                              ; preds = %208, %211
  %212 = phi i64 [ 0, %208 ], [ %218, %211 ]
  %213 = getelementptr inbounds [2 x double], ptr %198, i64 0, i64 %212
  %214 = load double, ptr %213, align 8, !tbaa !70, !noalias !232
  %215 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 %212
  %216 = load double, ptr %215, align 8, !tbaa !70, !noalias !232
  %217 = fsub double %216, %214
  store double %217, ptr %215, align 8, !tbaa !70, !noalias !232
  %218 = add nuw nsw i64 %212, 1
  %219 = icmp eq i64 %212, 0
  br i1 %219, label %211, label %220, !llvm.loop !200

220:                                              ; preds = %211
  %221 = load double, ptr %183, align 8, !tbaa !70
  %222 = load double, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18, !noalias !232
  store double %222, ptr %15, align 8, !tbaa !70
  store double %221, ptr %181, align 8, !tbaa !70
  %223 = load ptr, ptr %0, align 8, !tbaa !41
  %224 = getelementptr inbounds ptr, ptr %223, i64 5
  %225 = load ptr, ptr %224, align 8
  invoke void %225(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(88) %16)
          to label %226 unwind label %242

226:                                              ; preds = %220
  %227 = load ptr, ptr %0, align 8, !tbaa !41
  %228 = getelementptr inbounds ptr, ptr %227, i64 5
  %229 = load ptr, ptr %228, align 8
  invoke void %229(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(88) %17)
          to label %230 unwind label %242

230:                                              ; preds = %226
  %231 = load i32, ptr %141, align 8, !tbaa !223
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %145, align 8, !tbaa !96
  %235 = load ptr, ptr %162, align 8, !tbaa !96
  %236 = load ptr, ptr %2, align 8, !tbaa !192
  %237 = getelementptr inbounds [2 x double], ptr %236, i64 0, i64 %196
  %238 = zext i32 %231 to i64
  br label %246

239:                                              ; preds = %246, %230
  %240 = add nuw nsw i64 %196, 1
  %241 = icmp eq i64 %196, 0
  br i1 %241, label %195, label %184, !llvm.loop !235

242:                                              ; preds = %226, %220
  %243 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !41
  %244 = load ptr, ptr %162, align 8, !tbaa !96
  %245 = icmp eq ptr %244, null
  br i1 %245, label %258, label %257

246:                                              ; preds = %233, %246
  %247 = phi i64 [ 0, %233 ], [ %255, %246 ]
  %248 = getelementptr inbounds double, ptr %234, i64 %247
  %249 = load double, ptr %248, align 8, !tbaa !70
  %250 = getelementptr inbounds double, ptr %235, i64 %247
  %251 = load double, ptr %250, align 8, !tbaa !70
  %252 = fsub double %249, %251
  %253 = fmul double %178, %252
  %254 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %237, i64 %247
  store double %253, ptr %254, align 8, !tbaa !70
  %255 = add nuw nsw i64 %247, 1
  %256 = icmp eq i64 %255, %238
  br i1 %256, label %239, label %246, !llvm.loop !236

257:                                              ; preds = %242
  call void @_ZdaPv(ptr noundef %244) #19
  store ptr null, ptr %162, align 8, !tbaa !96
  br label %258

258:                                              ; preds = %242, %257
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17) #18
  br label %259

259:                                              ; preds = %193, %172, %258
  %260 = phi { ptr, i32 } [ %243, %258 ], [ %194, %193 ], [ %173, %172 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !41
  %261 = load ptr, ptr %145, align 8, !tbaa !96
  %262 = icmp eq ptr %261, null
  br i1 %262, label %264, label %263

263:                                              ; preds = %259
  call void @_ZdaPv(ptr noundef %261) #19
  store ptr null, ptr %145, align 8, !tbaa !96
  br label %264

264:                                              ; preds = %259, %263
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  br label %43

265:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %22) #18
  %266 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %267 = load i32, ptr %266, align 8, !tbaa !223
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %22)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !41
  %268 = getelementptr inbounds %"class.dealii::Vector", ptr %22, i64 0, i32 1
  %269 = getelementptr inbounds %"class.dealii::Vector", ptr %22, i64 0, i32 2
  %270 = getelementptr inbounds %"class.dealii::Vector", ptr %22, i64 0, i32 3
  %271 = icmp eq i32 %267, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %268, i8 0, i64 16, i1 false)
  br i1 %271, label %272, label %273

272:                                              ; preds = %265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %268, i8 0, i64 16, i1 false)
  br label %282

273:                                              ; preds = %265
  %274 = zext i32 %267 to i64
  %275 = shl nuw nsw i64 %274, 3
  %276 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %275) #17
          to label %277 unwind label %280

277:                                              ; preds = %273
  store ptr %276, ptr %270, align 8, !tbaa !96
  store i32 %267, ptr %269, align 4, !tbaa !98
  store i32 %267, ptr %268, align 8, !tbaa !99
  %278 = zext i32 %267 to i64
  %279 = shl nuw nsw i64 %278, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %276, i8 0, i64 %279, i1 false), !tbaa !70
  br label %282

280:                                              ; preds = %273
  %281 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %22) #18
  br label %43

282:                                              ; preds = %277, %272
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %23) #18
  %283 = load i32, ptr %266, align 8, !tbaa !223
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %284 unwind label %364

284:                                              ; preds = %282
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !41
  %285 = getelementptr inbounds %"class.dealii::Vector", ptr %23, i64 0, i32 1
  %286 = getelementptr inbounds %"class.dealii::Vector", ptr %23, i64 0, i32 2
  %287 = getelementptr inbounds %"class.dealii::Vector", ptr %23, i64 0, i32 3
  %288 = icmp eq i32 %283, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %285, i8 0, i64 16, i1 false)
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %285, i8 0, i64 16, i1 false)
  br label %299

290:                                              ; preds = %284
  %291 = zext i32 %283 to i64
  %292 = shl nuw nsw i64 %291, 3
  %293 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %292) #17
          to label %294 unwind label %297

294:                                              ; preds = %290
  store ptr %293, ptr %287, align 8, !tbaa !96
  store i32 %283, ptr %286, align 4, !tbaa !98
  store i32 %283, ptr %285, align 8, !tbaa !99
  %295 = zext i32 %283 to i64
  %296 = shl nuw nsw i64 %295, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %293, i8 0, i64 %296, i1 false), !tbaa !70
  br label %299

297:                                              ; preds = %290
  %298 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #18
  br label %487

299:                                              ; preds = %294, %289
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %24) #18
  %300 = load i32, ptr %266, align 8, !tbaa !223
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %24)
          to label %301 unwind label %366

301:                                              ; preds = %299
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %24, align 8, !tbaa !41
  %302 = getelementptr inbounds %"class.dealii::Vector", ptr %24, i64 0, i32 1
  %303 = getelementptr inbounds %"class.dealii::Vector", ptr %24, i64 0, i32 2
  %304 = getelementptr inbounds %"class.dealii::Vector", ptr %24, i64 0, i32 3
  %305 = icmp eq i32 %300, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %302, i8 0, i64 16, i1 false)
  br i1 %305, label %306, label %307

306:                                              ; preds = %301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %302, i8 0, i64 16, i1 false)
  br label %316

307:                                              ; preds = %301
  %308 = zext i32 %300 to i64
  %309 = shl nuw nsw i64 %308, 3
  %310 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %309) #17
          to label %311 unwind label %314

311:                                              ; preds = %307
  store ptr %310, ptr %304, align 8, !tbaa !96
  store i32 %300, ptr %303, align 4, !tbaa !98
  store i32 %300, ptr %302, align 8, !tbaa !99
  %312 = zext i32 %300 to i64
  %313 = shl nuw nsw i64 %312, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %310, i8 0, i64 %313, i1 false), !tbaa !70
  br label %316

314:                                              ; preds = %307
  %315 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %24) #18
  br label %481

316:                                              ; preds = %311, %306
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %25) #18
  %317 = load i32, ptr %266, align 8, !tbaa !223
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25)
          to label %318 unwind label %368

318:                                              ; preds = %316
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !41
  %319 = getelementptr inbounds %"class.dealii::Vector", ptr %25, i64 0, i32 1
  %320 = getelementptr inbounds %"class.dealii::Vector", ptr %25, i64 0, i32 2
  %321 = getelementptr inbounds %"class.dealii::Vector", ptr %25, i64 0, i32 3
  %322 = icmp eq i32 %317, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %319, i8 0, i64 16, i1 false)
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %319, i8 0, i64 16, i1 false)
  br label %333

324:                                              ; preds = %318
  %325 = zext i32 %317 to i64
  %326 = shl nuw nsw i64 %325, 3
  %327 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %326) #17
          to label %328 unwind label %331

328:                                              ; preds = %324
  store ptr %327, ptr %321, align 8, !tbaa !96
  store i32 %317, ptr %320, align 4, !tbaa !98
  store i32 %317, ptr %319, align 8, !tbaa !99
  %329 = zext i32 %317 to i64
  %330 = shl nuw nsw i64 %329, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %327, i8 0, i64 %330, i1 false), !tbaa !70
  br label %333

331:                                              ; preds = %324
  %332 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #18
  br label %475

333:                                              ; preds = %328, %323
  %334 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %335 = load double, ptr %334, align 8, !tbaa !184
  %336 = fmul double %335, 1.200000e+01
  %337 = fdiv double 1.000000e+00, %336
  %338 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %339 = getelementptr inbounds [2 x double], ptr %19, i64 0, i64 1
  %340 = getelementptr inbounds [2 x double], ptr %18, i64 0, i64 1
  %341 = getelementptr inbounds [2 x double], ptr %20, i64 0, i64 1
  %342 = getelementptr inbounds [2 x double], ptr %21, i64 0, i64 1
  %343 = getelementptr inbounds i8, ptr %7, i64 8
  %344 = getelementptr inbounds i8, ptr %6, i64 8
  %345 = getelementptr inbounds i8, ptr %5, i64 8
  %346 = getelementptr inbounds i8, ptr %4, i64 8
  br label %370

347:                                              ; preds = %448
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !41
  %348 = load ptr, ptr %321, align 8, !tbaa !96
  %349 = icmp eq ptr %348, null
  br i1 %349, label %351, label %350

350:                                              ; preds = %347
  call void @_ZdaPv(ptr noundef %348) #19
  store ptr null, ptr %321, align 8, !tbaa !96
  br label %351

351:                                              ; preds = %347, %350
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %25) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %24, align 8, !tbaa !41
  %352 = load ptr, ptr %304, align 8, !tbaa !96
  %353 = icmp eq ptr %352, null
  br i1 %353, label %355, label %354

354:                                              ; preds = %351
  call void @_ZdaPv(ptr noundef %352) #19
  store ptr null, ptr %304, align 8, !tbaa !96
  br label %355

355:                                              ; preds = %351, %354
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %24) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %24) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !41
  %356 = load ptr, ptr %287, align 8, !tbaa !96
  %357 = icmp eq ptr %356, null
  br i1 %357, label %359, label %358

358:                                              ; preds = %355
  call void @_ZdaPv(ptr noundef %356) #19
  store ptr null, ptr %287, align 8, !tbaa !96
  br label %359

359:                                              ; preds = %355, %358
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %23) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !41
  %360 = load ptr, ptr %270, align 8, !tbaa !96
  %361 = icmp eq ptr %360, null
  br i1 %361, label %363, label %362

362:                                              ; preds = %359
  call void @_ZdaPv(ptr noundef %360) #19
  store ptr null, ptr %270, align 8, !tbaa !96
  br label %363

363:                                              ; preds = %359, %362
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %22) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #18
  br label %493

364:                                              ; preds = %282
  %365 = landingpad { ptr, i32 }
          cleanup
  br label %487

366:                                              ; preds = %299
  %367 = landingpad { ptr, i32 }
          cleanup
  br label %481

368:                                              ; preds = %316
  %369 = landingpad { ptr, i32 }
          cleanup
  br label %475

370:                                              ; preds = %333, %448
  %371 = phi i64 [ 0, %333 ], [ %449, %448 ]
  %372 = load ptr, ptr %338, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18, !noalias !237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !70, !noalias !237
  %373 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %372, i64 %371
  br label %374

374:                                              ; preds = %370, %374
  %375 = phi i64 [ 0, %370 ], [ %381, %374 ]
  %376 = getelementptr inbounds [2 x double], ptr %373, i64 0, i64 %375
  %377 = load double, ptr %376, align 8, !tbaa !70, !noalias !237
  %378 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 %375
  %379 = load double, ptr %378, align 8, !tbaa !70, !noalias !237
  %380 = fadd double %377, %379
  store double %380, ptr %378, align 8, !tbaa !70, !noalias !237
  %381 = add nuw nsw i64 %375, 1
  %382 = icmp eq i64 %375, 0
  br i1 %382, label %374, label %383, !llvm.loop !205

383:                                              ; preds = %374
  %384 = load double, ptr %343, align 8, !tbaa !70
  %385 = load double, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18, !noalias !237
  store double %385, ptr %19, align 8, !tbaa !70
  store double %384, ptr %339, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18, !noalias !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa !70, !noalias !240
  br label %386

386:                                              ; preds = %383, %386
  %387 = phi i64 [ 0, %383 ], [ %393, %386 ]
  %388 = getelementptr inbounds [2 x double], ptr %373, i64 0, i64 %387
  %389 = load double, ptr %388, align 8, !tbaa !70, !noalias !240
  %390 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %387
  %391 = load double, ptr %390, align 8, !tbaa !70, !noalias !240
  %392 = fadd double %389, %391
  store double %392, ptr %390, align 8, !tbaa !70, !noalias !240
  %393 = add nuw nsw i64 %387, 1
  %394 = icmp eq i64 %387, 0
  br i1 %394, label %386, label %395, !llvm.loop !205

395:                                              ; preds = %386
  %396 = load double, ptr %344, align 8, !tbaa !70
  %397 = load double, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18, !noalias !240
  store double %397, ptr %18, align 8, !tbaa !70
  store double %396, ptr %340, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18, !noalias !243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa !70, !noalias !243
  br label %398

398:                                              ; preds = %395, %398
  %399 = phi i64 [ 0, %395 ], [ %405, %398 ]
  %400 = getelementptr inbounds [2 x double], ptr %373, i64 0, i64 %399
  %401 = load double, ptr %400, align 8, !tbaa !70, !noalias !243
  %402 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %399
  %403 = load double, ptr %402, align 8, !tbaa !70, !noalias !243
  %404 = fsub double %403, %401
  store double %404, ptr %402, align 8, !tbaa !70, !noalias !243
  %405 = add nuw nsw i64 %399, 1
  %406 = icmp eq i64 %399, 0
  br i1 %406, label %398, label %407, !llvm.loop !200

407:                                              ; preds = %398
  %408 = load double, ptr %345, align 8, !tbaa !70
  %409 = load double, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18, !noalias !243
  store double %409, ptr %20, align 8, !tbaa !70
  store double %408, ptr %341, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18, !noalias !246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !tbaa !70, !noalias !246
  br label %410

410:                                              ; preds = %407, %410
  %411 = phi i64 [ 0, %407 ], [ %417, %410 ]
  %412 = getelementptr inbounds [2 x double], ptr %373, i64 0, i64 %411
  %413 = load double, ptr %412, align 8, !tbaa !70, !noalias !246
  %414 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 %411
  %415 = load double, ptr %414, align 8, !tbaa !70, !noalias !246
  %416 = fsub double %415, %413
  store double %416, ptr %414, align 8, !tbaa !70, !noalias !246
  %417 = add nuw nsw i64 %411, 1
  %418 = icmp eq i64 %411, 0
  br i1 %418, label %410, label %419, !llvm.loop !200

419:                                              ; preds = %410
  %420 = load double, ptr %346, align 8, !tbaa !70
  %421 = load double, ptr %4, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18, !noalias !246
  store double %421, ptr %21, align 8, !tbaa !70
  store double %420, ptr %342, align 8, !tbaa !70
  %422 = load ptr, ptr %0, align 8, !tbaa !41
  %423 = getelementptr inbounds ptr, ptr %422, i64 5
  %424 = load ptr, ptr %423, align 8
  invoke void %424(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(88) %22)
          to label %425 unwind label %451

425:                                              ; preds = %419
  %426 = load ptr, ptr %0, align 8, !tbaa !41
  %427 = getelementptr inbounds ptr, ptr %426, i64 5
  %428 = load ptr, ptr %427, align 8
  invoke void %428(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(88) %23)
          to label %429 unwind label %451

429:                                              ; preds = %425
  %430 = load ptr, ptr %0, align 8, !tbaa !41
  %431 = getelementptr inbounds ptr, ptr %430, i64 5
  %432 = load ptr, ptr %431, align 8
  invoke void %432(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(88) %24)
          to label %433 unwind label %451

433:                                              ; preds = %429
  %434 = load ptr, ptr %0, align 8, !tbaa !41
  %435 = getelementptr inbounds ptr, ptr %434, i64 5
  %436 = load ptr, ptr %435, align 8
  invoke void %436(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(88) %25)
          to label %437 unwind label %451

437:                                              ; preds = %433
  %438 = load i32, ptr %266, align 8, !tbaa !223
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %448, label %440

440:                                              ; preds = %437
  %441 = load ptr, ptr %270, align 8, !tbaa !96
  %442 = load ptr, ptr %287, align 8, !tbaa !96
  %443 = load ptr, ptr %304, align 8, !tbaa !96
  %444 = load ptr, ptr %321, align 8, !tbaa !96
  %445 = load ptr, ptr %2, align 8, !tbaa !192
  %446 = getelementptr inbounds [2 x double], ptr %445, i64 0, i64 %371
  %447 = zext i32 %438 to i64
  br label %455

448:                                              ; preds = %455, %437
  %449 = add nuw nsw i64 %371, 1
  %450 = icmp eq i64 %371, 0
  br i1 %450, label %370, label %347, !llvm.loop !249

451:                                              ; preds = %433, %429, %425, %419
  %452 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !41
  %453 = load ptr, ptr %321, align 8, !tbaa !96
  %454 = icmp eq ptr %453, null
  br i1 %454, label %474, label %473

455:                                              ; preds = %440, %455
  %456 = phi i64 [ 0, %440 ], [ %471, %455 ]
  %457 = getelementptr inbounds double, ptr %441, i64 %456
  %458 = load double, ptr %457, align 8, !tbaa !70
  %459 = fneg double %458
  %460 = getelementptr inbounds double, ptr %442, i64 %456
  %461 = load double, ptr %460, align 8, !tbaa !70
  %462 = call double @llvm.fmuladd.f64(double %461, double 8.000000e+00, double %459)
  %463 = getelementptr inbounds double, ptr %443, i64 %456
  %464 = load double, ptr %463, align 8, !tbaa !70
  %465 = call double @llvm.fmuladd.f64(double %464, double -8.000000e+00, double %462)
  %466 = getelementptr inbounds double, ptr %444, i64 %456
  %467 = load double, ptr %466, align 8, !tbaa !70
  %468 = fadd double %465, %467
  %469 = fmul double %337, %468
  %470 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %446, i64 %456
  store double %469, ptr %470, align 8, !tbaa !70
  %471 = add nuw nsw i64 %456, 1
  %472 = icmp eq i64 %471, %447
  br i1 %472, label %448, label %455, !llvm.loop !250

473:                                              ; preds = %451
  call void @_ZdaPv(ptr noundef %453) #19
  store ptr null, ptr %321, align 8, !tbaa !96
  br label %474

474:                                              ; preds = %451, %473
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #18
  br label %475

475:                                              ; preds = %368, %331, %474
  %476 = phi { ptr, i32 } [ %452, %474 ], [ %369, %368 ], [ %332, %331 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %25) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %24, align 8, !tbaa !41
  %477 = load ptr, ptr %304, align 8, !tbaa !96
  %478 = icmp eq ptr %477, null
  br i1 %478, label %480, label %479

479:                                              ; preds = %475
  call void @_ZdaPv(ptr noundef %477) #19
  store ptr null, ptr %304, align 8, !tbaa !96
  br label %480

480:                                              ; preds = %475, %479
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %24) #18
  br label %481

481:                                              ; preds = %366, %314, %480
  %482 = phi { ptr, i32 } [ %476, %480 ], [ %367, %366 ], [ %315, %314 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %24) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !41
  %483 = load ptr, ptr %287, align 8, !tbaa !96
  %484 = icmp eq ptr %483, null
  br i1 %484, label %486, label %485

485:                                              ; preds = %481
  call void @_ZdaPv(ptr noundef %483) #19
  store ptr null, ptr %287, align 8, !tbaa !96
  br label %486

486:                                              ; preds = %481, %485
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #18
  br label %487

487:                                              ; preds = %364, %297, %486
  %488 = phi { ptr, i32 } [ %482, %486 ], [ %365, %364 ], [ %298, %297 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %23) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !41
  %489 = load ptr, ptr %270, align 8, !tbaa !96
  %490 = icmp eq ptr %489, null
  br i1 %490, label %492, label %491

491:                                              ; preds = %487
  call void @_ZdaPv(ptr noundef %489) #19
  store ptr null, ptr %270, align 8, !tbaa !96
  br label %492

492:                                              ; preds = %487, %491
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %22) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #18
  br label %43

493:                                              ; preds = %3, %363, %192, %79
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #3 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Point.23", align 8
  %6 = alloca %"class.dealii::Point.23", align 8
  %7 = alloca %"class.dealii::Point.23", align 8
  %8 = alloca %"class.dealii::Point.23", align 8
  %9 = alloca %"class.dealii::Point.23", align 8
  %10 = alloca %"class.dealii::Point.23", align 8
  %11 = alloca %"class.dealii::Point.23", align 8
  %12 = alloca %"class.dealii::Point.23", align 8
  %13 = alloca %"class.dealii::Point.23", align 8
  %14 = alloca %"class.dealii::Point.23", align 8
  %15 = alloca %"class.dealii::Point.23", align 8
  %16 = alloca %"class.dealii::Point.23", align 8
  %17 = alloca %"class.dealii::Point.23", align 8
  %18 = alloca %"class.dealii::Point.23", align 8
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !195
  switch i32 %20, label %264 [
    i32 1, label %21
    i32 0, label %79
    i32 2, label %152
  ]

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !tbaa !70
  %22 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !251
  %24 = load ptr, ptr %1, align 8, !tbaa !253
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %28 = getelementptr inbounds [2 x double], ptr %12, i64 0, i64 1
  %29 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %30 = getelementptr inbounds i8, ptr %11, i64 8
  br label %31

31:                                               ; preds = %26, %35
  %32 = phi i64 [ 0, %26 ], [ %37, %35 ]
  %33 = phi i32 [ 0, %26 ], [ %36, %35 ]
  br label %45

34:                                               ; preds = %35, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  br label %264

35:                                               ; preds = %60
  %36 = add i32 %33, 1
  %37 = zext i32 %36 to i64
  %38 = load ptr, ptr %22, align 8, !tbaa !251
  %39 = load ptr, ptr %1, align 8, !tbaa !253
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = ashr exact i64 %42, 4
  %44 = icmp ugt i64 %43, %37
  br i1 %44, label %31, label %34, !llvm.loop !254

45:                                               ; preds = %31, %60
  %46 = phi i64 [ 0, %31 ], [ %77, %60 ]
  %47 = load ptr, ptr %1, align 8, !tbaa !253
  %48 = getelementptr inbounds %"class.dealii::Point.23", ptr %47, i64 %32
  %49 = load ptr, ptr %27, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18, !noalias !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %48, i64 16, i1 false), !tbaa !70, !noalias !255
  %50 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %49, i64 %46
  br label %51

51:                                               ; preds = %45, %51
  %52 = phi i64 [ 0, %45 ], [ %58, %51 ]
  %53 = getelementptr inbounds [2 x double], ptr %50, i64 0, i64 %52
  %54 = load double, ptr %53, align 8, !tbaa !70, !noalias !255
  %55 = getelementptr inbounds [2 x double], ptr %11, i64 0, i64 %52
  %56 = load double, ptr %55, align 8, !tbaa !70, !noalias !255
  %57 = fsub double %56, %54
  store double %57, ptr %55, align 8, !tbaa !70, !noalias !255
  %58 = add nuw nsw i64 %52, 1
  %59 = icmp eq i64 %52, 0
  br i1 %59, label %51, label %60, !llvm.loop !200

60:                                               ; preds = %51
  %61 = load double, ptr %30, align 8, !tbaa !70
  %62 = load double, ptr %11, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18, !noalias !255
  store double %62, ptr %12, align 8, !tbaa !70
  store double %61, ptr %28, align 8, !tbaa !70
  %63 = load ptr, ptr %0, align 8, !tbaa !41
  %64 = getelementptr inbounds ptr, ptr %63, i64 4
  %65 = load ptr, ptr %64, align 8
  %66 = call noundef double %65(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %48, i32 noundef %3)
  %67 = load ptr, ptr %0, align 8, !tbaa !41
  %68 = getelementptr inbounds ptr, ptr %67, i64 4
  %69 = load ptr, ptr %68, align 8
  %70 = call noundef double %69(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %3)
  %71 = fsub double %66, %70
  %72 = load double, ptr %29, align 8, !tbaa !184
  %73 = fdiv double %71, %72
  %74 = load ptr, ptr %2, align 8, !tbaa !192
  %75 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %74, i64 %32
  %76 = getelementptr inbounds [2 x double], ptr %75, i64 0, i64 %46
  store double %73, ptr %76, align 8, !tbaa !70
  %77 = add nuw nsw i64 %46, 1
  %78 = icmp eq i64 %46, 0
  br i1 %78, label %45, label %35, !llvm.loop !258

79:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false), !tbaa !70
  %80 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !251
  %82 = load ptr, ptr %1, align 8, !tbaa !253
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %86 = getelementptr inbounds [2 x double], ptr %13, i64 0, i64 1
  %87 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %88 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %89 = getelementptr inbounds i8, ptr %9, i64 8
  %90 = getelementptr inbounds i8, ptr %10, i64 8
  br label %91

91:                                               ; preds = %84, %95
  %92 = phi i64 [ 0, %84 ], [ %97, %95 ]
  %93 = phi i32 [ 0, %84 ], [ %96, %95 ]
  br label %105

94:                                               ; preds = %95, %79
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  br label %264

95:                                               ; preds = %132
  %96 = add i32 %93, 1
  %97 = zext i32 %96 to i64
  %98 = load ptr, ptr %80, align 8, !tbaa !251
  %99 = load ptr, ptr %1, align 8, !tbaa !253
  %100 = ptrtoint ptr %98 to i64
  %101 = ptrtoint ptr %99 to i64
  %102 = sub i64 %100, %101
  %103 = ashr exact i64 %102, 4
  %104 = icmp ugt i64 %103, %97
  br i1 %104, label %91, label %94, !llvm.loop !259

105:                                              ; preds = %91, %132
  %106 = phi i64 [ 0, %91 ], [ %150, %132 ]
  %107 = load ptr, ptr %1, align 8, !tbaa !253
  %108 = getelementptr %"class.dealii::Point.23", ptr %107, i64 %92
  %109 = load ptr, ptr %85, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18, !noalias !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %108, i64 16, i1 false), !tbaa !70, !noalias !260
  %110 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %109, i64 %106
  br label %111

111:                                              ; preds = %105, %111
  %112 = phi i64 [ 0, %105 ], [ %118, %111 ]
  %113 = getelementptr inbounds [2 x double], ptr %110, i64 0, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !70, !noalias !260
  %115 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %112
  %116 = load double, ptr %115, align 8, !tbaa !70, !noalias !260
  %117 = fadd double %114, %116
  store double %117, ptr %115, align 8, !tbaa !70, !noalias !260
  %118 = add nuw nsw i64 %112, 1
  %119 = icmp eq i64 %112, 0
  br i1 %119, label %111, label %120, !llvm.loop !205

120:                                              ; preds = %111
  %121 = load double, ptr %90, align 8, !tbaa !70
  %122 = load double, ptr %10, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18, !noalias !260
  store double %122, ptr %13, align 8, !tbaa !70
  store double %121, ptr %86, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18, !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %108, i64 16, i1 false), !tbaa !70, !noalias !263
  br label %123

123:                                              ; preds = %120, %123
  %124 = phi i64 [ 0, %120 ], [ %130, %123 ]
  %125 = getelementptr inbounds [2 x double], ptr %110, i64 0, i64 %124
  %126 = load double, ptr %125, align 8, !tbaa !70, !noalias !263
  %127 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %124
  %128 = load double, ptr %127, align 8, !tbaa !70, !noalias !263
  %129 = fsub double %128, %126
  store double %129, ptr %127, align 8, !tbaa !70, !noalias !263
  %130 = add nuw nsw i64 %124, 1
  %131 = icmp eq i64 %124, 0
  br i1 %131, label %123, label %132, !llvm.loop !200

132:                                              ; preds = %123
  %133 = load double, ptr %89, align 8, !tbaa !70
  %134 = load double, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18, !noalias !263
  store double %134, ptr %14, align 8, !tbaa !70
  store double %133, ptr %87, align 8, !tbaa !70
  %135 = load ptr, ptr %0, align 8, !tbaa !41
  %136 = getelementptr inbounds ptr, ptr %135, i64 4
  %137 = load ptr, ptr %136, align 8
  %138 = call noundef double %137(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %3)
  %139 = load ptr, ptr %0, align 8, !tbaa !41
  %140 = getelementptr inbounds ptr, ptr %139, i64 4
  %141 = load ptr, ptr %140, align 8
  %142 = call noundef double %141(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %3)
  %143 = fsub double %138, %142
  %144 = load double, ptr %88, align 8, !tbaa !184
  %145 = fmul double %144, 2.000000e+00
  %146 = fdiv double %143, %145
  %147 = load ptr, ptr %2, align 8, !tbaa !192
  %148 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %147, i64 %92
  %149 = getelementptr inbounds [2 x double], ptr %148, i64 0, i64 %106
  store double %146, ptr %149, align 8, !tbaa !70
  %150 = add nuw nsw i64 %106, 1
  %151 = icmp eq i64 %106, 0
  br i1 %151, label %105, label %95, !llvm.loop !266

152:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false), !tbaa !70
  %153 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !251
  %155 = load ptr, ptr %1, align 8, !tbaa !253
  %156 = icmp eq ptr %154, %155
  br i1 %156, label %171, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %159 = getelementptr inbounds [2 x double], ptr %16, i64 0, i64 1
  %160 = getelementptr inbounds [2 x double], ptr %15, i64 0, i64 1
  %161 = getelementptr inbounds [2 x double], ptr %17, i64 0, i64 1
  %162 = getelementptr inbounds [2 x double], ptr %18, i64 0, i64 1
  %163 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %164 = getelementptr inbounds i8, ptr %5, i64 8
  %165 = getelementptr inbounds i8, ptr %8, i64 8
  %166 = getelementptr inbounds i8, ptr %7, i64 8
  %167 = getelementptr inbounds i8, ptr %6, i64 8
  br label %168

168:                                              ; preds = %157, %172
  %169 = phi i64 [ 0, %157 ], [ %174, %172 ]
  %170 = phi i32 [ 0, %157 ], [ %173, %172 ]
  br label %182

171:                                              ; preds = %172, %152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  br label %264

172:                                              ; preds = %233
  %173 = add i32 %170, 1
  %174 = zext i32 %173 to i64
  %175 = load ptr, ptr %153, align 8, !tbaa !251
  %176 = load ptr, ptr %1, align 8, !tbaa !253
  %177 = ptrtoint ptr %175 to i64
  %178 = ptrtoint ptr %176 to i64
  %179 = sub i64 %177, %178
  %180 = ashr exact i64 %179, 4
  %181 = icmp ugt i64 %180, %174
  br i1 %181, label %168, label %171, !llvm.loop !267

182:                                              ; preds = %168, %233
  %183 = phi i64 [ 0, %168 ], [ %262, %233 ]
  %184 = load ptr, ptr %1, align 8, !tbaa !253
  %185 = getelementptr %"class.dealii::Point.23", ptr %184, i64 %169
  %186 = load ptr, ptr %158, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18, !noalias !268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %185, i64 16, i1 false), !tbaa !70, !noalias !268
  %187 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %186, i64 %183
  br label %188

188:                                              ; preds = %182, %188
  %189 = phi i64 [ 0, %182 ], [ %195, %188 ]
  %190 = getelementptr inbounds [2 x double], ptr %187, i64 0, i64 %189
  %191 = load double, ptr %190, align 8, !tbaa !70, !noalias !268
  %192 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 %189
  %193 = load double, ptr %192, align 8, !tbaa !70, !noalias !268
  %194 = fadd double %191, %193
  store double %194, ptr %192, align 8, !tbaa !70, !noalias !268
  %195 = add nuw nsw i64 %189, 1
  %196 = icmp eq i64 %189, 0
  br i1 %196, label %188, label %197, !llvm.loop !205

197:                                              ; preds = %188
  %198 = load double, ptr %165, align 8, !tbaa !70
  %199 = load double, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18, !noalias !268
  store double %199, ptr %16, align 8, !tbaa !70
  store double %198, ptr %159, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18, !noalias !271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa !70, !noalias !271
  br label %200

200:                                              ; preds = %197, %200
  %201 = phi i64 [ 0, %197 ], [ %207, %200 ]
  %202 = getelementptr inbounds [2 x double], ptr %187, i64 0, i64 %201
  %203 = load double, ptr %202, align 8, !tbaa !70, !noalias !271
  %204 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 %201
  %205 = load double, ptr %204, align 8, !tbaa !70, !noalias !271
  %206 = fadd double %203, %205
  store double %206, ptr %204, align 8, !tbaa !70, !noalias !271
  %207 = add nuw nsw i64 %201, 1
  %208 = icmp eq i64 %201, 0
  br i1 %208, label %200, label %209, !llvm.loop !205

209:                                              ; preds = %200
  %210 = load double, ptr %166, align 8, !tbaa !70
  %211 = load double, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18, !noalias !271
  store double %211, ptr %15, align 8, !tbaa !70
  store double %210, ptr %160, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18, !noalias !274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %185, i64 16, i1 false), !tbaa !70, !noalias !274
  br label %212

212:                                              ; preds = %209, %212
  %213 = phi i64 [ 0, %209 ], [ %219, %212 ]
  %214 = getelementptr inbounds [2 x double], ptr %187, i64 0, i64 %213
  %215 = load double, ptr %214, align 8, !tbaa !70, !noalias !274
  %216 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %213
  %217 = load double, ptr %216, align 8, !tbaa !70, !noalias !274
  %218 = fsub double %217, %215
  store double %218, ptr %216, align 8, !tbaa !70, !noalias !274
  %219 = add nuw nsw i64 %213, 1
  %220 = icmp eq i64 %213, 0
  br i1 %220, label %212, label %221, !llvm.loop !200

221:                                              ; preds = %212
  %222 = load double, ptr %167, align 8, !tbaa !70
  %223 = load double, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18, !noalias !274
  store double %223, ptr %17, align 8, !tbaa !70
  store double %222, ptr %161, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18, !noalias !277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa !70, !noalias !277
  br label %224

224:                                              ; preds = %221, %224
  %225 = phi i64 [ 0, %221 ], [ %231, %224 ]
  %226 = getelementptr inbounds [2 x double], ptr %187, i64 0, i64 %225
  %227 = load double, ptr %226, align 8, !tbaa !70, !noalias !277
  %228 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %225
  %229 = load double, ptr %228, align 8, !tbaa !70, !noalias !277
  %230 = fsub double %229, %227
  store double %230, ptr %228, align 8, !tbaa !70, !noalias !277
  %231 = add nuw nsw i64 %225, 1
  %232 = icmp eq i64 %225, 0
  br i1 %232, label %224, label %233, !llvm.loop !200

233:                                              ; preds = %224
  %234 = load double, ptr %164, align 8, !tbaa !70
  %235 = load double, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18, !noalias !277
  store double %235, ptr %18, align 8, !tbaa !70
  store double %234, ptr %162, align 8, !tbaa !70
  %236 = load ptr, ptr %0, align 8, !tbaa !41
  %237 = getelementptr inbounds ptr, ptr %236, i64 4
  %238 = load ptr, ptr %237, align 8
  %239 = call noundef double %238(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %3)
  %240 = fneg double %239
  %241 = load ptr, ptr %0, align 8, !tbaa !41
  %242 = getelementptr inbounds ptr, ptr %241, i64 4
  %243 = load ptr, ptr %242, align 8
  %244 = call noundef double %243(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %3)
  %245 = call double @llvm.fmuladd.f64(double %244, double 8.000000e+00, double %240)
  %246 = load ptr, ptr %0, align 8, !tbaa !41
  %247 = getelementptr inbounds ptr, ptr %246, i64 4
  %248 = load ptr, ptr %247, align 8
  %249 = call noundef double %248(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %3)
  %250 = call double @llvm.fmuladd.f64(double %249, double -8.000000e+00, double %245)
  %251 = load ptr, ptr %0, align 8, !tbaa !41
  %252 = getelementptr inbounds ptr, ptr %251, i64 4
  %253 = load ptr, ptr %252, align 8
  %254 = call noundef double %253(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %3)
  %255 = fadd double %250, %254
  %256 = load double, ptr %163, align 8, !tbaa !184
  %257 = fmul double %256, 1.200000e+01
  %258 = fdiv double %255, %257
  %259 = load ptr, ptr %2, align 8, !tbaa !192
  %260 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %259, i64 %169
  %261 = getelementptr inbounds [2 x double], ptr %260, i64 0, i64 %183
  store double %258, ptr %261, align 8, !tbaa !70
  %262 = add nuw nsw i64 %183, 1
  %263 = icmp eq i64 %183, 0
  br i1 %263, label %182, label %172, !llvm.loop !280

264:                                              ; preds = %4, %171, %94, %34
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 !prof !72 {
  %4 = alloca %"class.dealii::Point.23", align 8
  %5 = alloca %"class.dealii::Point.23", align 8
  %6 = alloca %"class.dealii::Point.23", align 8
  %7 = alloca %"class.dealii::Point.23", align 8
  %8 = alloca %"class.dealii::Point.23", align 8
  %9 = alloca %"class.dealii::Point.23", align 8
  %10 = alloca %"class.dealii::Point.23", align 8
  %11 = alloca %"class.dealii::Point.23", align 8
  %12 = alloca %"class.dealii::Point.23", align 8
  %13 = alloca %"class.dealii::Point.23", align 8
  %14 = alloca %"class.dealii::Point.23", align 8
  %15 = alloca %"class.dealii::Point.23", align 8
  %16 = alloca %"class.dealii::Point.23", align 8
  %17 = alloca %"class.dealii::Point.23", align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !195
  switch i32 %20, label %307 [
    i32 1, label %21
    i32 0, label %94
    i32 2, label %180
  ]

21:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !tbaa !70
  %22 = load ptr, ptr %18, align 8, !tbaa !251
  %23 = load ptr, ptr %1, align 8, !tbaa !253
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %27 = getelementptr inbounds [2 x double], ptr %11, i64 0, i64 1
  %28 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %30 = getelementptr inbounds i8, ptr %10, i64 8
  br label %31

31:                                               ; preds = %25, %35
  %32 = phi i64 [ 0, %25 ], [ %37, %35 ]
  %33 = phi i32 [ 0, %25 ], [ %36, %35 ]
  br label %45

34:                                               ; preds = %35, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  br label %307

35:                                               ; preds = %65
  %36 = add i32 %33, 1
  %37 = zext i32 %36 to i64
  %38 = load ptr, ptr %18, align 8, !tbaa !251
  %39 = load ptr, ptr %1, align 8, !tbaa !253
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = ashr exact i64 %42, 4
  %44 = icmp ugt i64 %43, %37
  br i1 %44, label %31, label %34, !llvm.loop !281

45:                                               ; preds = %31, %65
  %46 = phi i64 [ 0, %31 ], [ %66, %65 ]
  %47 = load ptr, ptr %1, align 8, !tbaa !253
  %48 = getelementptr inbounds %"class.dealii::Point.23", ptr %47, i64 %32
  %49 = load ptr, ptr %26, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18, !noalias !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %48, i64 16, i1 false), !tbaa !70, !noalias !282
  %50 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %49, i64 %46
  br label %51

51:                                               ; preds = %45, %51
  %52 = phi i64 [ 0, %45 ], [ %58, %51 ]
  %53 = getelementptr inbounds [2 x double], ptr %50, i64 0, i64 %52
  %54 = load double, ptr %53, align 8, !tbaa !70, !noalias !282
  %55 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %52
  %56 = load double, ptr %55, align 8, !tbaa !70, !noalias !282
  %57 = fsub double %56, %54
  store double %57, ptr %55, align 8, !tbaa !70, !noalias !282
  %58 = add nuw nsw i64 %52, 1
  %59 = icmp eq i64 %52, 0
  br i1 %59, label %51, label %60, !llvm.loop !200

60:                                               ; preds = %51
  %61 = load double, ptr %30, align 8, !tbaa !70
  %62 = load double, ptr %10, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18, !noalias !282
  store double %62, ptr %11, align 8, !tbaa !70
  store double %61, ptr %27, align 8, !tbaa !70
  %63 = load i32, ptr %28, align 8, !tbaa !223
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %68, %60
  %66 = add nuw nsw i64 %46, 1
  %67 = icmp eq i64 %46, 0
  br i1 %67, label %45, label %35, !llvm.loop !285

68:                                               ; preds = %60, %68
  %69 = phi i64 [ %90, %68 ], [ 0, %60 ]
  %70 = load ptr, ptr %1, align 8, !tbaa !253
  %71 = getelementptr inbounds %"class.dealii::Point.23", ptr %70, i64 %32
  %72 = load ptr, ptr %0, align 8, !tbaa !41
  %73 = getelementptr inbounds ptr, ptr %72, i64 4
  %74 = load ptr, ptr %73, align 8
  %75 = trunc i64 %69 to i32
  %76 = call noundef double %74(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %71, i32 noundef %75)
  %77 = load ptr, ptr %0, align 8, !tbaa !41
  %78 = getelementptr inbounds ptr, ptr %77, i64 4
  %79 = load ptr, ptr %78, align 8
  %80 = trunc i64 %69 to i32
  %81 = call noundef double %79(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %80)
  %82 = fsub double %76, %81
  %83 = load double, ptr %29, align 8, !tbaa !184
  %84 = fdiv double %82, %83
  %85 = load ptr, ptr %2, align 8, !tbaa !286
  %86 = getelementptr inbounds %"class.std::vector.16", ptr %85, i64 %32
  %87 = load ptr, ptr %86, align 8, !tbaa !192
  %88 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %87, i64 %69
  %89 = getelementptr inbounds [2 x double], ptr %88, i64 0, i64 %46
  store double %84, ptr %89, align 8, !tbaa !70
  %90 = add nuw nsw i64 %69, 1
  %91 = load i32, ptr %28, align 8, !tbaa !223
  %92 = zext i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %68, label %65, !llvm.loop !288

94:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false), !tbaa !70
  %95 = load ptr, ptr %18, align 8, !tbaa !251
  %96 = load ptr, ptr %1, align 8, !tbaa !253
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %109, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %100 = getelementptr inbounds [2 x double], ptr %12, i64 0, i64 1
  %101 = getelementptr inbounds [2 x double], ptr %13, i64 0, i64 1
  %102 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %103 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %104 = getelementptr inbounds i8, ptr %9, i64 8
  %105 = getelementptr inbounds i8, ptr %8, i64 8
  br label %106

106:                                              ; preds = %98, %110
  %107 = phi i64 [ 0, %98 ], [ %112, %110 ]
  %108 = phi i32 [ 0, %98 ], [ %111, %110 ]
  br label %120

109:                                              ; preds = %110, %94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  br label %307

110:                                              ; preds = %152
  %111 = add i32 %108, 1
  %112 = zext i32 %111 to i64
  %113 = load ptr, ptr %18, align 8, !tbaa !251
  %114 = load ptr, ptr %1, align 8, !tbaa !253
  %115 = ptrtoint ptr %113 to i64
  %116 = ptrtoint ptr %114 to i64
  %117 = sub i64 %115, %116
  %118 = ashr exact i64 %117, 4
  %119 = icmp ugt i64 %118, %112
  br i1 %119, label %106, label %109, !llvm.loop !289

120:                                              ; preds = %106, %152
  %121 = phi i64 [ 0, %106 ], [ %153, %152 ]
  %122 = load ptr, ptr %1, align 8, !tbaa !253
  %123 = getelementptr %"class.dealii::Point.23", ptr %122, i64 %107
  %124 = load ptr, ptr %99, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18, !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %123, i64 16, i1 false), !tbaa !70, !noalias !290
  %125 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %124, i64 %121
  br label %126

126:                                              ; preds = %120, %126
  %127 = phi i64 [ 0, %120 ], [ %133, %126 ]
  %128 = getelementptr inbounds [2 x double], ptr %125, i64 0, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !70, !noalias !290
  %130 = getelementptr inbounds [2 x double], ptr %9, i64 0, i64 %127
  %131 = load double, ptr %130, align 8, !tbaa !70, !noalias !290
  %132 = fadd double %129, %131
  store double %132, ptr %130, align 8, !tbaa !70, !noalias !290
  %133 = add nuw nsw i64 %127, 1
  %134 = icmp eq i64 %127, 0
  br i1 %134, label %126, label %135, !llvm.loop !205

135:                                              ; preds = %126
  %136 = load double, ptr %104, align 8, !tbaa !70
  %137 = load double, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18, !noalias !290
  store double %137, ptr %12, align 8, !tbaa !70
  store double %136, ptr %100, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18, !noalias !293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %123, i64 16, i1 false), !tbaa !70, !noalias !293
  br label %138

138:                                              ; preds = %135, %138
  %139 = phi i64 [ 0, %135 ], [ %145, %138 ]
  %140 = getelementptr inbounds [2 x double], ptr %125, i64 0, i64 %139
  %141 = load double, ptr %140, align 8, !tbaa !70, !noalias !293
  %142 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 %139
  %143 = load double, ptr %142, align 8, !tbaa !70, !noalias !293
  %144 = fsub double %143, %141
  store double %144, ptr %142, align 8, !tbaa !70, !noalias !293
  %145 = add nuw nsw i64 %139, 1
  %146 = icmp eq i64 %139, 0
  br i1 %146, label %138, label %147, !llvm.loop !200

147:                                              ; preds = %138
  %148 = load double, ptr %105, align 8, !tbaa !70
  %149 = load double, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18, !noalias !293
  store double %149, ptr %13, align 8, !tbaa !70
  store double %148, ptr %101, align 8, !tbaa !70
  %150 = load i32, ptr %102, align 8, !tbaa !223
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %155, %147
  %153 = add nuw nsw i64 %121, 1
  %154 = icmp eq i64 %121, 0
  br i1 %154, label %120, label %110, !llvm.loop !296

155:                                              ; preds = %147, %155
  %156 = phi i64 [ %176, %155 ], [ 0, %147 ]
  %157 = load ptr, ptr %0, align 8, !tbaa !41
  %158 = getelementptr inbounds ptr, ptr %157, i64 4
  %159 = load ptr, ptr %158, align 8
  %160 = trunc i64 %156 to i32
  %161 = call noundef double %159(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %160)
  %162 = load ptr, ptr %0, align 8, !tbaa !41
  %163 = getelementptr inbounds ptr, ptr %162, i64 4
  %164 = load ptr, ptr %163, align 8
  %165 = trunc i64 %156 to i32
  %166 = call noundef double %164(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %165)
  %167 = fsub double %161, %166
  %168 = load double, ptr %103, align 8, !tbaa !184
  %169 = fmul double %168, 2.000000e+00
  %170 = fdiv double %167, %169
  %171 = load ptr, ptr %2, align 8, !tbaa !286
  %172 = getelementptr inbounds %"class.std::vector.16", ptr %171, i64 %107
  %173 = load ptr, ptr %172, align 8, !tbaa !192
  %174 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %173, i64 %156
  %175 = getelementptr inbounds [2 x double], ptr %174, i64 0, i64 %121
  store double %170, ptr %175, align 8, !tbaa !70
  %176 = add nuw nsw i64 %156, 1
  %177 = load i32, ptr %102, align 8, !tbaa !223
  %178 = zext i32 %177 to i64
  %179 = icmp ult i64 %176, %178
  br i1 %179, label %155, label %152, !llvm.loop !297

180:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !tbaa !70
  %181 = load ptr, ptr %18, align 8, !tbaa !251
  %182 = load ptr, ptr %1, align 8, !tbaa !253
  %183 = icmp eq ptr %181, %182
  br i1 %183, label %199, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %186 = getelementptr inbounds [2 x double], ptr %15, i64 0, i64 1
  %187 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %188 = getelementptr inbounds [2 x double], ptr %16, i64 0, i64 1
  %189 = getelementptr inbounds [2 x double], ptr %17, i64 0, i64 1
  %190 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %191 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %192 = getelementptr inbounds i8, ptr %7, i64 8
  %193 = getelementptr inbounds i8, ptr %6, i64 8
  %194 = getelementptr inbounds i8, ptr %5, i64 8
  %195 = getelementptr inbounds i8, ptr %4, i64 8
  br label %196

196:                                              ; preds = %184, %200
  %197 = phi i64 [ 0, %184 ], [ %202, %200 ]
  %198 = phi i32 [ 0, %184 ], [ %201, %200 ]
  br label %210

199:                                              ; preds = %200, %180
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  br label %307

200:                                              ; preds = %266
  %201 = add i32 %198, 1
  %202 = zext i32 %201 to i64
  %203 = load ptr, ptr %18, align 8, !tbaa !251
  %204 = load ptr, ptr %1, align 8, !tbaa !253
  %205 = ptrtoint ptr %203 to i64
  %206 = ptrtoint ptr %204 to i64
  %207 = sub i64 %205, %206
  %208 = ashr exact i64 %207, 4
  %209 = icmp ugt i64 %208, %202
  br i1 %209, label %196, label %199, !llvm.loop !298

210:                                              ; preds = %196, %266
  %211 = phi i64 [ 0, %196 ], [ %267, %266 ]
  %212 = load ptr, ptr %1, align 8, !tbaa !253
  %213 = getelementptr %"class.dealii::Point.23", ptr %212, i64 %197
  %214 = load ptr, ptr %185, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18, !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %213, i64 16, i1 false), !tbaa !70, !noalias !299
  %215 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %214, i64 %211
  br label %216

216:                                              ; preds = %210, %216
  %217 = phi i64 [ 0, %210 ], [ %223, %216 ]
  %218 = getelementptr inbounds [2 x double], ptr %215, i64 0, i64 %217
  %219 = load double, ptr %218, align 8, !tbaa !70, !noalias !299
  %220 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 %217
  %221 = load double, ptr %220, align 8, !tbaa !70, !noalias !299
  %222 = fadd double %219, %221
  store double %222, ptr %220, align 8, !tbaa !70, !noalias !299
  %223 = add nuw nsw i64 %217, 1
  %224 = icmp eq i64 %217, 0
  br i1 %224, label %216, label %225, !llvm.loop !205

225:                                              ; preds = %216
  %226 = load double, ptr %192, align 8, !tbaa !70
  %227 = load double, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18, !noalias !299
  store double %227, ptr %15, align 8, !tbaa !70
  store double %226, ptr %186, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18, !noalias !302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa !70, !noalias !302
  br label %228

228:                                              ; preds = %225, %228
  %229 = phi i64 [ 0, %225 ], [ %235, %228 ]
  %230 = getelementptr inbounds [2 x double], ptr %215, i64 0, i64 %229
  %231 = load double, ptr %230, align 8, !tbaa !70, !noalias !302
  %232 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %229
  %233 = load double, ptr %232, align 8, !tbaa !70, !noalias !302
  %234 = fadd double %231, %233
  store double %234, ptr %232, align 8, !tbaa !70, !noalias !302
  %235 = add nuw nsw i64 %229, 1
  %236 = icmp eq i64 %229, 0
  br i1 %236, label %228, label %237, !llvm.loop !205

237:                                              ; preds = %228
  %238 = load double, ptr %193, align 8, !tbaa !70
  %239 = load double, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18, !noalias !302
  store double %239, ptr %14, align 8, !tbaa !70
  store double %238, ptr %187, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18, !noalias !305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %213, i64 16, i1 false), !tbaa !70, !noalias !305
  br label %240

240:                                              ; preds = %237, %240
  %241 = phi i64 [ 0, %237 ], [ %247, %240 ]
  %242 = getelementptr inbounds [2 x double], ptr %215, i64 0, i64 %241
  %243 = load double, ptr %242, align 8, !tbaa !70, !noalias !305
  %244 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %241
  %245 = load double, ptr %244, align 8, !tbaa !70, !noalias !305
  %246 = fsub double %245, %243
  store double %246, ptr %244, align 8, !tbaa !70, !noalias !305
  %247 = add nuw nsw i64 %241, 1
  %248 = icmp eq i64 %241, 0
  br i1 %248, label %240, label %249, !llvm.loop !200

249:                                              ; preds = %240
  %250 = load double, ptr %194, align 8, !tbaa !70
  %251 = load double, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18, !noalias !305
  store double %251, ptr %16, align 8, !tbaa !70
  store double %250, ptr %188, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18, !noalias !308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa !70, !noalias !308
  br label %252

252:                                              ; preds = %249, %252
  %253 = phi i64 [ 0, %249 ], [ %259, %252 ]
  %254 = getelementptr inbounds [2 x double], ptr %215, i64 0, i64 %253
  %255 = load double, ptr %254, align 8, !tbaa !70, !noalias !308
  %256 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 %253
  %257 = load double, ptr %256, align 8, !tbaa !70, !noalias !308
  %258 = fsub double %257, %255
  store double %258, ptr %256, align 8, !tbaa !70, !noalias !308
  %259 = add nuw nsw i64 %253, 1
  %260 = icmp eq i64 %253, 0
  br i1 %260, label %252, label %261, !llvm.loop !200

261:                                              ; preds = %252
  %262 = load double, ptr %195, align 8, !tbaa !70
  %263 = load double, ptr %4, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18, !noalias !308
  store double %263, ptr %17, align 8, !tbaa !70
  store double %262, ptr %189, align 8, !tbaa !70
  %264 = load i32, ptr %190, align 8, !tbaa !223
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %269, %261
  %267 = add nuw nsw i64 %211, 1
  %268 = icmp eq i64 %211, 0
  br i1 %268, label %210, label %200, !llvm.loop !311

269:                                              ; preds = %261, %269
  %270 = phi i64 [ %303, %269 ], [ 0, %261 ]
  %271 = load ptr, ptr %0, align 8, !tbaa !41
  %272 = getelementptr inbounds ptr, ptr %271, i64 4
  %273 = load ptr, ptr %272, align 8
  %274 = trunc i64 %270 to i32
  %275 = call noundef double %273(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %274)
  %276 = fneg double %275
  %277 = load ptr, ptr %0, align 8, !tbaa !41
  %278 = getelementptr inbounds ptr, ptr %277, i64 4
  %279 = load ptr, ptr %278, align 8
  %280 = trunc i64 %270 to i32
  %281 = call noundef double %279(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %280)
  %282 = call double @llvm.fmuladd.f64(double %281, double 8.000000e+00, double %276)
  %283 = load ptr, ptr %0, align 8, !tbaa !41
  %284 = getelementptr inbounds ptr, ptr %283, i64 4
  %285 = load ptr, ptr %284, align 8
  %286 = trunc i64 %270 to i32
  %287 = call noundef double %285(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %286)
  %288 = call double @llvm.fmuladd.f64(double %287, double -8.000000e+00, double %282)
  %289 = load ptr, ptr %0, align 8, !tbaa !41
  %290 = getelementptr inbounds ptr, ptr %289, i64 4
  %291 = load ptr, ptr %290, align 8
  %292 = trunc i64 %270 to i32
  %293 = call noundef double %291(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %292)
  %294 = fadd double %288, %293
  %295 = load double, ptr %191, align 8, !tbaa !184
  %296 = fmul double %295, 1.200000e+01
  %297 = fdiv double %294, %296
  %298 = load ptr, ptr %2, align 8, !tbaa !286
  %299 = getelementptr inbounds %"class.std::vector.16", ptr %298, i64 %197
  %300 = load ptr, ptr %299, align 8, !tbaa !192
  %301 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %300, i64 %270
  %302 = getelementptr inbounds [2 x double], ptr %301, i64 0, i64 %211
  store double %297, ptr %302, align 8, !tbaa !70
  %303 = add nuw nsw i64 %270, 1
  %304 = load i32, ptr %190, align 8, !tbaa !223
  %305 = zext i32 %304 to i64
  %306 = icmp ult i64 %303, %305
  br i1 %306, label %269, label %266, !llvm.loop !312

307:                                              ; preds = %3, %199, %109, %34
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii22AutoDerivativeFunctionILi2EE20get_formula_of_orderEj(i32 noundef %0) local_unnamed_addr #4 comdat align 2 !prof !72 {
  %2 = icmp ult i32 %0, 5
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [5 x i32], ptr @switch.table._ZN6dealii22AutoDerivativeFunctionILi3EE20get_formula_of_orderEj, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, i32 noundef %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii22AutoDerivativeFunctionILi3EEC5Edjd) align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef %3)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  store double 1.000000e+00, ptr %6, align 8, !tbaa !313
  %7 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %8 = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #17
          to label %9 unwind label %22

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %11 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  store ptr %8, ptr %7, align 8, !tbaa !321
  store ptr %8, ptr %10, align 8, !tbaa !322
  %12 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %8, i64 3
  store ptr %12, ptr %11, align 8, !tbaa !323
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false), !tbaa !70
  %13 = getelementptr inbounds i8, ptr %8, i64 72
  store ptr %13, ptr %10, align 8, !tbaa !322
  %14 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 4
  store i32 0, ptr %14, align 8, !tbaa !324
  store double %1, ptr %6, align 8, !tbaa !313
  br label %15

15:                                               ; preds = %9, %15
  %16 = phi i64 [ 0, %9 ], [ %19, %15 ]
  %17 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %8, i64 %16
  %18 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 %16
  store double %1, ptr %18, align 8, !tbaa !70
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, 3
  br i1 %20, label %21, label %15, !llvm.loop !325

21:                                               ; preds = %15
  store i32 0, ptr %14, align 8, !tbaa !324
  ret void

22:                                               ; preds = %4
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #18
  resume { ptr, i32 } %23
}

declare void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  store double %1, ptr %3, align 8, !tbaa !313
  %4 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !321
  br label %7

6:                                                ; preds = %7
  ret void

7:                                                ; preds = %2, %7
  %8 = phi i64 [ 0, %2 ], [ %12, %7 ]
  %9 = load double, ptr %3, align 8, !tbaa !313
  %10 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %5, i64 %8
  %11 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %8
  store double %9, ptr %11, align 8, !tbaa !70
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, 3
  br i1 %13, label %6, label %7, !llvm.loop !325
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EE11set_formulaENS1_17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 8, !tbaa !324
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #4 comdat($_ZN6dealii22AutoDerivativeFunctionILi3EED5Ev) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !41
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !321
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #19
  br label %7

7:                                                ; preds = %1, %6
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #18
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #7 comdat($_ZN6dealii22AutoDerivativeFunctionILi3EED5Ev) align 2 !annotation !40 {
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !annotation !40 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #18
  tail call void @_ZdlPv(ptr noundef %2) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.43") align 8 %0, ptr noundef nonnull align 8 dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #3 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Point.44", align 8
  %6 = alloca %"class.dealii::Point.44", align 8
  %7 = alloca %"class.dealii::Point.44", align 8
  %8 = alloca %"class.dealii::Point.44", align 8
  %9 = alloca %"class.dealii::Point.44", align 8
  %10 = alloca %"class.dealii::Point.44", align 8
  %11 = alloca %"class.dealii::Point.44", align 8
  %12 = alloca %"class.dealii::Point.44", align 8
  %13 = alloca %"class.dealii::Point.44", align 8
  %14 = alloca %"class.dealii::Point.44", align 8
  %15 = alloca %"class.dealii::Point.44", align 8
  %16 = alloca %"class.dealii::Point.44", align 8
  %17 = alloca %"class.dealii::Point.44", align 8
  %18 = alloca %"class.dealii::Point.44", align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !70
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !324
  switch i32 %20, label %219 [
    i32 1, label %21
    i32 0, label %60
    i32 2, label %117
  ]

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !tbaa !70
  %22 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 1
  %24 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 2
  %25 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 2
  %26 = getelementptr inbounds i8, ptr %11, i64 16
  %27 = getelementptr inbounds i8, ptr %11, i64 8
  br label %29

28:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  br label %219

29:                                               ; preds = %21, %42
  %30 = phi i64 [ 0, %21 ], [ %58, %42 ]
  %31 = load ptr, ptr %22, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18, !noalias !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !70, !noalias !326
  %32 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %31, i64 %30
  br label %33

33:                                               ; preds = %29, %33
  %34 = phi i64 [ 0, %29 ], [ %40, %33 ]
  %35 = getelementptr inbounds [3 x double], ptr %32, i64 0, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !70, !noalias !326
  %37 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %34
  %38 = load double, ptr %37, align 8, !tbaa !70, !noalias !326
  %39 = fsub double %38, %36
  store double %39, ptr %37, align 8, !tbaa !70, !noalias !326
  %40 = add nuw nsw i64 %34, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %33, !llvm.loop !329

42:                                               ; preds = %33
  %43 = load double, ptr %26, align 8, !tbaa !70
  %44 = load double, ptr %27, align 8, !tbaa !70
  %45 = load double, ptr %11, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18, !noalias !326
  store double %45, ptr %12, align 8, !tbaa !70
  store double %44, ptr %23, align 8, !tbaa !70
  store double %43, ptr %24, align 8, !tbaa !70
  %46 = load ptr, ptr %1, align 8, !tbaa !41
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef double %48(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3)
  %50 = load ptr, ptr %1, align 8, !tbaa !41
  %51 = getelementptr inbounds ptr, ptr %50, i64 4
  %52 = load ptr, ptr %51, align 8
  %53 = call noundef double %52(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %3)
  %54 = fsub double %49, %53
  %55 = load double, ptr %25, align 8, !tbaa !313
  %56 = fdiv double %54, %55
  %57 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %30
  store double %56, ptr %57, align 8, !tbaa !70
  %58 = add nuw nsw i64 %30, 1
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %28, label %29, !llvm.loop !330

60:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !tbaa !70
  %61 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 3
  %62 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 1
  %63 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 2
  %64 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %65 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %66 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 2
  %67 = getelementptr inbounds i8, ptr %9, i64 16
  %68 = getelementptr inbounds i8, ptr %10, i64 16
  %69 = getelementptr inbounds i8, ptr %10, i64 8
  %70 = getelementptr inbounds i8, ptr %9, i64 8
  br label %72

71:                                               ; preds = %98
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #18
  br label %219

72:                                               ; preds = %60, %98
  %73 = phi i64 [ 0, %60 ], [ %115, %98 ]
  %74 = load ptr, ptr %61, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18, !noalias !331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !70, !noalias !331
  %75 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %74, i64 %73
  br label %76

76:                                               ; preds = %72, %76
  %77 = phi i64 [ 0, %72 ], [ %83, %76 ]
  %78 = getelementptr inbounds [3 x double], ptr %75, i64 0, i64 %77
  %79 = load double, ptr %78, align 8, !tbaa !70, !noalias !331
  %80 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %77
  %81 = load double, ptr %80, align 8, !tbaa !70, !noalias !331
  %82 = fadd double %79, %81
  store double %82, ptr %80, align 8, !tbaa !70, !noalias !331
  %83 = add nuw nsw i64 %77, 1
  %84 = icmp eq i64 %83, 3
  br i1 %84, label %85, label %76, !llvm.loop !334

85:                                               ; preds = %76
  %86 = load double, ptr %68, align 8, !tbaa !70
  %87 = load double, ptr %69, align 8, !tbaa !70
  %88 = load double, ptr %10, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18, !noalias !331
  store double %88, ptr %13, align 8, !tbaa !70
  store double %87, ptr %62, align 8, !tbaa !70
  store double %86, ptr %63, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18, !noalias !335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !70, !noalias !335
  br label %89

89:                                               ; preds = %85, %89
  %90 = phi i64 [ 0, %85 ], [ %96, %89 ]
  %91 = getelementptr inbounds [3 x double], ptr %75, i64 0, i64 %90
  %92 = load double, ptr %91, align 8, !tbaa !70, !noalias !335
  %93 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %90
  %94 = load double, ptr %93, align 8, !tbaa !70, !noalias !335
  %95 = fsub double %94, %92
  store double %95, ptr %93, align 8, !tbaa !70, !noalias !335
  %96 = add nuw nsw i64 %90, 1
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %98, label %89, !llvm.loop !329

98:                                               ; preds = %89
  %99 = load double, ptr %67, align 8, !tbaa !70
  %100 = load double, ptr %70, align 8, !tbaa !70
  %101 = load double, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18, !noalias !335
  store double %101, ptr %14, align 8, !tbaa !70
  store double %100, ptr %64, align 8, !tbaa !70
  store double %99, ptr %65, align 8, !tbaa !70
  %102 = load ptr, ptr %1, align 8, !tbaa !41
  %103 = getelementptr inbounds ptr, ptr %102, i64 4
  %104 = load ptr, ptr %103, align 8
  %105 = call noundef double %104(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %3)
  %106 = load ptr, ptr %1, align 8, !tbaa !41
  %107 = getelementptr inbounds ptr, ptr %106, i64 4
  %108 = load ptr, ptr %107, align 8
  %109 = call noundef double %108(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
  %110 = fsub double %105, %109
  %111 = load double, ptr %66, align 8, !tbaa !313
  %112 = fmul double %111, 2.000000e+00
  %113 = fdiv double %110, %112
  %114 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %73
  store double %113, ptr %114, align 8, !tbaa !70
  %115 = add nuw nsw i64 %73, 1
  %116 = icmp eq i64 %115, 3
  br i1 %116, label %71, label %72, !llvm.loop !338

117:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !tbaa !70
  %118 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 3
  %119 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 1
  %120 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 2
  %121 = getelementptr inbounds [3 x double], ptr %15, i64 0, i64 1
  %122 = getelementptr inbounds [3 x double], ptr %15, i64 0, i64 2
  %123 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 1
  %124 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 2
  %125 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 1
  %126 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 2
  %127 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 2
  %128 = getelementptr inbounds i8, ptr %5, i64 16
  %129 = getelementptr inbounds i8, ptr %8, i64 16
  %130 = getelementptr inbounds i8, ptr %8, i64 8
  %131 = getelementptr inbounds i8, ptr %7, i64 16
  %132 = getelementptr inbounds i8, ptr %7, i64 8
  %133 = getelementptr inbounds i8, ptr %6, i64 16
  %134 = getelementptr inbounds i8, ptr %6, i64 8
  %135 = getelementptr inbounds i8, ptr %5, i64 8
  br label %137

136:                                              ; preds = %189
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #18
  br label %219

137:                                              ; preds = %117, %189
  %138 = phi i64 [ 0, %117 ], [ %217, %189 ]
  %139 = load ptr, ptr %118, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18, !noalias !339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !70, !noalias !339
  %140 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %139, i64 %138
  br label %141

141:                                              ; preds = %137, %141
  %142 = phi i64 [ 0, %137 ], [ %148, %141 ]
  %143 = getelementptr inbounds [3 x double], ptr %140, i64 0, i64 %142
  %144 = load double, ptr %143, align 8, !tbaa !70, !noalias !339
  %145 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %142
  %146 = load double, ptr %145, align 8, !tbaa !70, !noalias !339
  %147 = fadd double %144, %146
  store double %147, ptr %145, align 8, !tbaa !70, !noalias !339
  %148 = add nuw nsw i64 %142, 1
  %149 = icmp eq i64 %148, 3
  br i1 %149, label %150, label %141, !llvm.loop !334

150:                                              ; preds = %141
  %151 = load double, ptr %129, align 8, !tbaa !70
  %152 = load double, ptr %130, align 8, !tbaa !70
  %153 = load double, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18, !noalias !339
  store double %153, ptr %16, align 8, !tbaa !70
  store double %152, ptr %119, align 8, !tbaa !70
  store double %151, ptr %120, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18, !noalias !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa !70, !noalias !342
  br label %154

154:                                              ; preds = %150, %154
  %155 = phi i64 [ 0, %150 ], [ %161, %154 ]
  %156 = getelementptr inbounds [3 x double], ptr %140, i64 0, i64 %155
  %157 = load double, ptr %156, align 8, !tbaa !70, !noalias !342
  %158 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %155
  %159 = load double, ptr %158, align 8, !tbaa !70, !noalias !342
  %160 = fadd double %157, %159
  store double %160, ptr %158, align 8, !tbaa !70, !noalias !342
  %161 = add nuw nsw i64 %155, 1
  %162 = icmp eq i64 %161, 3
  br i1 %162, label %163, label %154, !llvm.loop !334

163:                                              ; preds = %154
  %164 = load double, ptr %131, align 8, !tbaa !70
  %165 = load double, ptr %132, align 8, !tbaa !70
  %166 = load double, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18, !noalias !342
  store double %166, ptr %15, align 8, !tbaa !70
  store double %165, ptr %121, align 8, !tbaa !70
  store double %164, ptr %122, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18, !noalias !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !70, !noalias !345
  br label %167

167:                                              ; preds = %163, %167
  %168 = phi i64 [ 0, %163 ], [ %174, %167 ]
  %169 = getelementptr inbounds [3 x double], ptr %140, i64 0, i64 %168
  %170 = load double, ptr %169, align 8, !tbaa !70, !noalias !345
  %171 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %168
  %172 = load double, ptr %171, align 8, !tbaa !70, !noalias !345
  %173 = fsub double %172, %170
  store double %173, ptr %171, align 8, !tbaa !70, !noalias !345
  %174 = add nuw nsw i64 %168, 1
  %175 = icmp eq i64 %174, 3
  br i1 %175, label %176, label %167, !llvm.loop !329

176:                                              ; preds = %167
  %177 = load double, ptr %133, align 8, !tbaa !70
  %178 = load double, ptr %134, align 8, !tbaa !70
  %179 = load double, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18, !noalias !345
  store double %179, ptr %17, align 8, !tbaa !70
  store double %178, ptr %123, align 8, !tbaa !70
  store double %177, ptr %124, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18, !noalias !348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa !70, !noalias !348
  br label %180

180:                                              ; preds = %176, %180
  %181 = phi i64 [ 0, %176 ], [ %187, %180 ]
  %182 = getelementptr inbounds [3 x double], ptr %140, i64 0, i64 %181
  %183 = load double, ptr %182, align 8, !tbaa !70, !noalias !348
  %184 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %181
  %185 = load double, ptr %184, align 8, !tbaa !70, !noalias !348
  %186 = fsub double %185, %183
  store double %186, ptr %184, align 8, !tbaa !70, !noalias !348
  %187 = add nuw nsw i64 %181, 1
  %188 = icmp eq i64 %187, 3
  br i1 %188, label %189, label %180, !llvm.loop !329

189:                                              ; preds = %180
  %190 = load double, ptr %128, align 8, !tbaa !70
  %191 = load double, ptr %135, align 8, !tbaa !70
  %192 = load double, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18, !noalias !348
  store double %192, ptr %18, align 8, !tbaa !70
  store double %191, ptr %125, align 8, !tbaa !70
  store double %190, ptr %126, align 8, !tbaa !70
  %193 = load ptr, ptr %1, align 8, !tbaa !41
  %194 = getelementptr inbounds ptr, ptr %193, i64 4
  %195 = load ptr, ptr %194, align 8
  %196 = call noundef double %195(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef %3)
  %197 = fneg double %196
  %198 = load ptr, ptr %1, align 8, !tbaa !41
  %199 = getelementptr inbounds ptr, ptr %198, i64 4
  %200 = load ptr, ptr %199, align 8
  %201 = call noundef double %200(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %3)
  %202 = call double @llvm.fmuladd.f64(double %201, double 8.000000e+00, double %197)
  %203 = load ptr, ptr %1, align 8, !tbaa !41
  %204 = getelementptr inbounds ptr, ptr %203, i64 4
  %205 = load ptr, ptr %204, align 8
  %206 = call noundef double %205(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef %3)
  %207 = call double @llvm.fmuladd.f64(double %206, double -8.000000e+00, double %202)
  %208 = load ptr, ptr %1, align 8, !tbaa !41
  %209 = getelementptr inbounds ptr, ptr %208, i64 4
  %210 = load ptr, ptr %209, align 8
  %211 = call noundef double %210(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %3)
  %212 = fadd double %207, %211
  %213 = load double, ptr %127, align 8, !tbaa !313
  %214 = fmul double %213, 1.200000e+01
  %215 = fdiv double %212, %214
  %216 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %138
  store double %215, ptr %216, align 8, !tbaa !70
  %217 = add nuw nsw i64 %138, 1
  %218 = icmp eq i64 %217, 3
  br i1 %218, label %136, label %137, !llvm.loop !351

219:                                              ; preds = %4, %136, %71, %28
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %4 = alloca %"class.dealii::Point.44", align 8
  %5 = alloca %"class.dealii::Point.44", align 8
  %6 = alloca %"class.dealii::Point.44", align 8
  %7 = alloca %"class.dealii::Point.44", align 8
  %8 = alloca %"class.dealii::Point.44", align 8
  %9 = alloca %"class.dealii::Point.44", align 8
  %10 = alloca %"class.dealii::Point.44", align 8
  %11 = alloca %"class.dealii::Point.44", align 8
  %12 = alloca %"class.dealii::Vector", align 8
  %13 = alloca %"class.dealii::Vector", align 8
  %14 = alloca %"class.dealii::Point.44", align 8
  %15 = alloca %"class.dealii::Point.44", align 8
  %16 = alloca %"class.dealii::Vector", align 8
  %17 = alloca %"class.dealii::Vector", align 8
  %18 = alloca %"class.dealii::Point.44", align 8
  %19 = alloca %"class.dealii::Point.44", align 8
  %20 = alloca %"class.dealii::Point.44", align 8
  %21 = alloca %"class.dealii::Point.44", align 8
  %22 = alloca %"class.dealii::Vector", align 8
  %23 = alloca %"class.dealii::Vector", align 8
  %24 = alloca %"class.dealii::Vector", align 8
  %25 = alloca %"class.dealii::Vector", align 8
  %26 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !324
  switch i32 %27, label %514 [
    i32 1, label %28
    i32 0, label %143
    i32 2, label %274
  ]

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %12) #18
  %29 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !352
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %12)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !41
  %31 = getelementptr inbounds %"class.dealii::Vector", ptr %12, i64 0, i32 1
  %32 = getelementptr inbounds %"class.dealii::Vector", ptr %12, i64 0, i32 2
  %33 = getelementptr inbounds %"class.dealii::Vector", ptr %12, i64 0, i32 3
  %34 = icmp eq i32 %30, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  br label %47

36:                                               ; preds = %28
  %37 = zext i32 %30 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %38) #17
          to label %40 unwind label %45

40:                                               ; preds = %36
  store ptr %39, ptr %33, align 8, !tbaa !96
  store i32 %30, ptr %32, align 4, !tbaa !98
  store i32 %30, ptr %31, align 8, !tbaa !99
  %41 = zext i32 %30 to i64
  %42 = shl nuw nsw i64 %41, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %39, i8 0, i64 %42, i1 false), !tbaa !70
  br label %47

43:                                               ; preds = %142, %273, %513, %289, %158, %45
  %44 = phi { ptr, i32 } [ %46, %45 ], [ %159, %158 ], [ %290, %289 ], [ %509, %513 ], [ %269, %273 ], [ %138, %142 ]
  resume { ptr, i32 } %44

45:                                               ; preds = %36
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %12) #18
  br label %43

47:                                               ; preds = %40, %35
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %13) #18
  %48 = load i32, ptr %29, align 8, !tbaa !352
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13)
          to label %49 unwind label %82

49:                                               ; preds = %47
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !41
  %50 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 1
  %51 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 2
  %52 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 0, i32 3
  %53 = icmp eq i32 %48, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  br label %64

55:                                               ; preds = %49
  %56 = zext i32 %48 to i64
  %57 = shl nuw nsw i64 %56, 3
  %58 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %57) #17
          to label %59 unwind label %62

59:                                               ; preds = %55
  store ptr %58, ptr %52, align 8, !tbaa !96
  store i32 %48, ptr %51, align 4, !tbaa !98
  store i32 %48, ptr %50, align 8, !tbaa !99
  %60 = zext i32 %48 to i64
  %61 = shl nuw nsw i64 %60, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %58, i8 0, i64 %61, i1 false), !tbaa !70
  br label %64

62:                                               ; preds = %55
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #18
  br label %137

64:                                               ; preds = %59, %54
  %65 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %66 = load double, ptr %65, align 8, !tbaa !313
  %67 = fdiv double 1.000000e+00, %66
  %68 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %69 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 1
  %70 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 2
  %71 = getelementptr inbounds i8, ptr %10, i64 16
  %72 = getelementptr inbounds i8, ptr %10, i64 8
  br label %84

73:                                               ; preds = %117
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !41
  %74 = load ptr, ptr %52, align 8, !tbaa !96
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  call void @_ZdaPv(ptr noundef %74) #19
  store ptr null, ptr %52, align 8, !tbaa !96
  br label %77

77:                                               ; preds = %73, %76
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !41
  %78 = load ptr, ptr %33, align 8, !tbaa !96
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @_ZdaPv(ptr noundef %78) #19
  store ptr null, ptr %33, align 8, !tbaa !96
  br label %81

81:                                               ; preds = %77, %80
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %12) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  br label %514

82:                                               ; preds = %47
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %137

84:                                               ; preds = %64, %117
  %85 = phi i64 [ 0, %64 ], [ %118, %117 ]
  %86 = load ptr, ptr %68, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18, !noalias !353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !70, !noalias !353
  %87 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %86, i64 %85
  br label %88

88:                                               ; preds = %84, %88
  %89 = phi i64 [ 0, %84 ], [ %95, %88 ]
  %90 = getelementptr inbounds [3 x double], ptr %87, i64 0, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !70, !noalias !353
  %92 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %89
  %93 = load double, ptr %92, align 8, !tbaa !70, !noalias !353
  %94 = fsub double %93, %91
  store double %94, ptr %92, align 8, !tbaa !70, !noalias !353
  %95 = add nuw nsw i64 %89, 1
  %96 = icmp eq i64 %95, 3
  br i1 %96, label %97, label %88, !llvm.loop !329

97:                                               ; preds = %88
  %98 = load double, ptr %71, align 8, !tbaa !70
  %99 = load double, ptr %72, align 8, !tbaa !70
  %100 = load double, ptr %10, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18, !noalias !353
  store double %100, ptr %11, align 8, !tbaa !70
  store double %99, ptr %69, align 8, !tbaa !70
  store double %98, ptr %70, align 8, !tbaa !70
  %101 = load ptr, ptr %0, align 8, !tbaa !41
  %102 = getelementptr inbounds ptr, ptr %101, i64 5
  %103 = load ptr, ptr %102, align 8
  invoke void %103(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %12)
          to label %104 unwind label %120

104:                                              ; preds = %97
  %105 = load ptr, ptr %0, align 8, !tbaa !41
  %106 = getelementptr inbounds ptr, ptr %105, i64 5
  %107 = load ptr, ptr %106, align 8
  invoke void %107(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %108 unwind label %120

108:                                              ; preds = %104
  %109 = load i32, ptr %29, align 8, !tbaa !352
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %33, align 8, !tbaa !96
  %113 = load ptr, ptr %52, align 8, !tbaa !96
  %114 = load ptr, ptr %2, align 8, !tbaa !321
  %115 = getelementptr inbounds [3 x double], ptr %114, i64 0, i64 %85
  %116 = zext i32 %109 to i64
  br label %124

117:                                              ; preds = %124, %108
  %118 = add nuw nsw i64 %85, 1
  %119 = icmp eq i64 %118, 3
  br i1 %119, label %73, label %84, !llvm.loop !356

120:                                              ; preds = %104, %97
  %121 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !41
  %122 = load ptr, ptr %52, align 8, !tbaa !96
  %123 = icmp eq ptr %122, null
  br i1 %123, label %136, label %135

124:                                              ; preds = %111, %124
  %125 = phi i64 [ 0, %111 ], [ %133, %124 ]
  %126 = getelementptr inbounds double, ptr %112, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !70
  %128 = getelementptr inbounds double, ptr %113, i64 %125
  %129 = load double, ptr %128, align 8, !tbaa !70
  %130 = fsub double %127, %129
  %131 = fmul double %67, %130
  %132 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %115, i64 %125
  store double %131, ptr %132, align 8, !tbaa !70
  %133 = add nuw nsw i64 %125, 1
  %134 = icmp eq i64 %133, %116
  br i1 %134, label %117, label %124, !llvm.loop !357

135:                                              ; preds = %120
  call void @_ZdaPv(ptr noundef %122) #19
  store ptr null, ptr %52, align 8, !tbaa !96
  br label %136

136:                                              ; preds = %120, %135
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %13) #18
  br label %137

137:                                              ; preds = %82, %62, %136
  %138 = phi { ptr, i32 } [ %121, %136 ], [ %83, %82 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !41
  %139 = load ptr, ptr %33, align 8, !tbaa !96
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  call void @_ZdaPv(ptr noundef %139) #19
  store ptr null, ptr %33, align 8, !tbaa !96
  br label %142

142:                                              ; preds = %137, %141
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %12) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  br label %43

143:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %16) #18
  %144 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !352
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !41
  %146 = getelementptr inbounds %"class.dealii::Vector", ptr %16, i64 0, i32 1
  %147 = getelementptr inbounds %"class.dealii::Vector", ptr %16, i64 0, i32 2
  %148 = getelementptr inbounds %"class.dealii::Vector", ptr %16, i64 0, i32 3
  %149 = icmp eq i32 %145, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %146, i8 0, i64 16, i1 false)
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %146, i8 0, i64 16, i1 false)
  br label %160

151:                                              ; preds = %143
  %152 = zext i32 %145 to i64
  %153 = shl nuw nsw i64 %152, 3
  %154 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %153) #17
          to label %155 unwind label %158

155:                                              ; preds = %151
  store ptr %154, ptr %148, align 8, !tbaa !96
  store i32 %145, ptr %147, align 4, !tbaa !98
  store i32 %145, ptr %146, align 8, !tbaa !99
  %156 = zext i32 %145 to i64
  %157 = shl nuw nsw i64 %156, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %154, i8 0, i64 %157, i1 false), !tbaa !70
  br label %160

158:                                              ; preds = %151
  %159 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #18
  br label %43

160:                                              ; preds = %155, %150
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %17) #18
  %161 = load i32, ptr %144, align 8, !tbaa !352
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %162 unwind label %200

162:                                              ; preds = %160
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !41
  %163 = getelementptr inbounds %"class.dealii::Vector", ptr %17, i64 0, i32 1
  %164 = getelementptr inbounds %"class.dealii::Vector", ptr %17, i64 0, i32 2
  %165 = getelementptr inbounds %"class.dealii::Vector", ptr %17, i64 0, i32 3
  %166 = icmp eq i32 %161, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  br label %177

168:                                              ; preds = %162
  %169 = zext i32 %161 to i64
  %170 = shl nuw nsw i64 %169, 3
  %171 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %170) #17
          to label %172 unwind label %175

172:                                              ; preds = %168
  store ptr %171, ptr %165, align 8, !tbaa !96
  store i32 %161, ptr %164, align 4, !tbaa !98
  store i32 %161, ptr %163, align 8, !tbaa !99
  %173 = zext i32 %161 to i64
  %174 = shl nuw nsw i64 %173, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %171, i8 0, i64 %174, i1 false), !tbaa !70
  br label %177

175:                                              ; preds = %168
  %176 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17) #18
  br label %268

177:                                              ; preds = %172, %167
  %178 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %179 = load double, ptr %178, align 8, !tbaa !313
  %180 = fmul double %179, 2.000000e+00
  %181 = fdiv double 1.000000e+00, %180
  %182 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %183 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %184 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %185 = getelementptr inbounds [3 x double], ptr %15, i64 0, i64 1
  %186 = getelementptr inbounds [3 x double], ptr %15, i64 0, i64 2
  %187 = getelementptr inbounds i8, ptr %9, i64 16
  %188 = getelementptr inbounds i8, ptr %9, i64 8
  %189 = getelementptr inbounds i8, ptr %8, i64 16
  %190 = getelementptr inbounds i8, ptr %8, i64 8
  br label %202

191:                                              ; preds = %248
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !41
  %192 = load ptr, ptr %165, align 8, !tbaa !96
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  call void @_ZdaPv(ptr noundef %192) #19
  store ptr null, ptr %165, align 8, !tbaa !96
  br label %195

195:                                              ; preds = %191, %194
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !41
  %196 = load ptr, ptr %148, align 8, !tbaa !96
  %197 = icmp eq ptr %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  call void @_ZdaPv(ptr noundef %196) #19
  store ptr null, ptr %148, align 8, !tbaa !96
  br label %199

199:                                              ; preds = %195, %198
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #18
  br label %514

200:                                              ; preds = %160
  %201 = landingpad { ptr, i32 }
          cleanup
  br label %268

202:                                              ; preds = %177, %248
  %203 = phi i64 [ 0, %177 ], [ %249, %248 ]
  %204 = load ptr, ptr %182, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18, !noalias !358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !70, !noalias !358
  %205 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %204, i64 %203
  br label %206

206:                                              ; preds = %202, %206
  %207 = phi i64 [ 0, %202 ], [ %213, %206 ]
  %208 = getelementptr inbounds [3 x double], ptr %205, i64 0, i64 %207
  %209 = load double, ptr %208, align 8, !tbaa !70, !noalias !358
  %210 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %207
  %211 = load double, ptr %210, align 8, !tbaa !70, !noalias !358
  %212 = fadd double %209, %211
  store double %212, ptr %210, align 8, !tbaa !70, !noalias !358
  %213 = add nuw nsw i64 %207, 1
  %214 = icmp eq i64 %213, 3
  br i1 %214, label %215, label %206, !llvm.loop !334

215:                                              ; preds = %206
  %216 = load double, ptr %187, align 8, !tbaa !70
  %217 = load double, ptr %188, align 8, !tbaa !70
  %218 = load double, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18, !noalias !358
  store double %218, ptr %14, align 8, !tbaa !70
  store double %217, ptr %183, align 8, !tbaa !70
  store double %216, ptr %184, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18, !noalias !361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !70, !noalias !361
  br label %219

219:                                              ; preds = %215, %219
  %220 = phi i64 [ 0, %215 ], [ %226, %219 ]
  %221 = getelementptr inbounds [3 x double], ptr %205, i64 0, i64 %220
  %222 = load double, ptr %221, align 8, !tbaa !70, !noalias !361
  %223 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %220
  %224 = load double, ptr %223, align 8, !tbaa !70, !noalias !361
  %225 = fsub double %224, %222
  store double %225, ptr %223, align 8, !tbaa !70, !noalias !361
  %226 = add nuw nsw i64 %220, 1
  %227 = icmp eq i64 %226, 3
  br i1 %227, label %228, label %219, !llvm.loop !329

228:                                              ; preds = %219
  %229 = load double, ptr %189, align 8, !tbaa !70
  %230 = load double, ptr %190, align 8, !tbaa !70
  %231 = load double, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18, !noalias !361
  store double %231, ptr %15, align 8, !tbaa !70
  store double %230, ptr %185, align 8, !tbaa !70
  store double %229, ptr %186, align 8, !tbaa !70
  %232 = load ptr, ptr %0, align 8, !tbaa !41
  %233 = getelementptr inbounds ptr, ptr %232, i64 5
  %234 = load ptr, ptr %233, align 8
  invoke void %234(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(88) %16)
          to label %235 unwind label %251

235:                                              ; preds = %228
  %236 = load ptr, ptr %0, align 8, !tbaa !41
  %237 = getelementptr inbounds ptr, ptr %236, i64 5
  %238 = load ptr, ptr %237, align 8
  invoke void %238(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(88) %17)
          to label %239 unwind label %251

239:                                              ; preds = %235
  %240 = load i32, ptr %144, align 8, !tbaa !352
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr %148, align 8, !tbaa !96
  %244 = load ptr, ptr %165, align 8, !tbaa !96
  %245 = load ptr, ptr %2, align 8, !tbaa !321
  %246 = getelementptr inbounds [3 x double], ptr %245, i64 0, i64 %203
  %247 = zext i32 %240 to i64
  br label %255

248:                                              ; preds = %255, %239
  %249 = add nuw nsw i64 %203, 1
  %250 = icmp eq i64 %249, 3
  br i1 %250, label %191, label %202, !llvm.loop !364

251:                                              ; preds = %235, %228
  %252 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !41
  %253 = load ptr, ptr %165, align 8, !tbaa !96
  %254 = icmp eq ptr %253, null
  br i1 %254, label %267, label %266

255:                                              ; preds = %242, %255
  %256 = phi i64 [ 0, %242 ], [ %264, %255 ]
  %257 = getelementptr inbounds double, ptr %243, i64 %256
  %258 = load double, ptr %257, align 8, !tbaa !70
  %259 = getelementptr inbounds double, ptr %244, i64 %256
  %260 = load double, ptr %259, align 8, !tbaa !70
  %261 = fsub double %258, %260
  %262 = fmul double %181, %261
  %263 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %246, i64 %256
  store double %262, ptr %263, align 8, !tbaa !70
  %264 = add nuw nsw i64 %256, 1
  %265 = icmp eq i64 %264, %247
  br i1 %265, label %248, label %255, !llvm.loop !365

266:                                              ; preds = %251
  call void @_ZdaPv(ptr noundef %253) #19
  store ptr null, ptr %165, align 8, !tbaa !96
  br label %267

267:                                              ; preds = %251, %266
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %17) #18
  br label %268

268:                                              ; preds = %200, %175, %267
  %269 = phi { ptr, i32 } [ %252, %267 ], [ %201, %200 ], [ %176, %175 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !41
  %270 = load ptr, ptr %148, align 8, !tbaa !96
  %271 = icmp eq ptr %270, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %268
  call void @_ZdaPv(ptr noundef %270) #19
  store ptr null, ptr %148, align 8, !tbaa !96
  br label %273

273:                                              ; preds = %268, %272
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #18
  br label %43

274:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %22) #18
  %275 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %276 = load i32, ptr %275, align 8, !tbaa !352
  call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %22)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !41
  %277 = getelementptr inbounds %"class.dealii::Vector", ptr %22, i64 0, i32 1
  %278 = getelementptr inbounds %"class.dealii::Vector", ptr %22, i64 0, i32 2
  %279 = getelementptr inbounds %"class.dealii::Vector", ptr %22, i64 0, i32 3
  %280 = icmp eq i32 %276, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %277, i8 0, i64 16, i1 false)
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %277, i8 0, i64 16, i1 false)
  br label %291

282:                                              ; preds = %274
  %283 = zext i32 %276 to i64
  %284 = shl nuw nsw i64 %283, 3
  %285 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %284) #17
          to label %286 unwind label %289

286:                                              ; preds = %282
  store ptr %285, ptr %279, align 8, !tbaa !96
  store i32 %276, ptr %278, align 4, !tbaa !98
  store i32 %276, ptr %277, align 8, !tbaa !99
  %287 = zext i32 %276 to i64
  %288 = shl nuw nsw i64 %287, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %285, i8 0, i64 %288, i1 false), !tbaa !70
  br label %291

289:                                              ; preds = %282
  %290 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %22) #18
  br label %43

291:                                              ; preds = %286, %281
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %23) #18
  %292 = load i32, ptr %275, align 8, !tbaa !352
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %293 unwind label %381

293:                                              ; preds = %291
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !41
  %294 = getelementptr inbounds %"class.dealii::Vector", ptr %23, i64 0, i32 1
  %295 = getelementptr inbounds %"class.dealii::Vector", ptr %23, i64 0, i32 2
  %296 = getelementptr inbounds %"class.dealii::Vector", ptr %23, i64 0, i32 3
  %297 = icmp eq i32 %292, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %294, i8 0, i64 16, i1 false)
  br i1 %297, label %298, label %299

298:                                              ; preds = %293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %294, i8 0, i64 16, i1 false)
  br label %308

299:                                              ; preds = %293
  %300 = zext i32 %292 to i64
  %301 = shl nuw nsw i64 %300, 3
  %302 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %301) #17
          to label %303 unwind label %306

303:                                              ; preds = %299
  store ptr %302, ptr %296, align 8, !tbaa !96
  store i32 %292, ptr %295, align 4, !tbaa !98
  store i32 %292, ptr %294, align 8, !tbaa !99
  %304 = zext i32 %292 to i64
  %305 = shl nuw nsw i64 %304, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %302, i8 0, i64 %305, i1 false), !tbaa !70
  br label %308

306:                                              ; preds = %299
  %307 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #18
  br label %508

308:                                              ; preds = %303, %298
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %24) #18
  %309 = load i32, ptr %275, align 8, !tbaa !352
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %24)
          to label %310 unwind label %383

310:                                              ; preds = %308
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %24, align 8, !tbaa !41
  %311 = getelementptr inbounds %"class.dealii::Vector", ptr %24, i64 0, i32 1
  %312 = getelementptr inbounds %"class.dealii::Vector", ptr %24, i64 0, i32 2
  %313 = getelementptr inbounds %"class.dealii::Vector", ptr %24, i64 0, i32 3
  %314 = icmp eq i32 %309, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %311, i8 0, i64 16, i1 false)
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %311, i8 0, i64 16, i1 false)
  br label %325

316:                                              ; preds = %310
  %317 = zext i32 %309 to i64
  %318 = shl nuw nsw i64 %317, 3
  %319 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %318) #17
          to label %320 unwind label %323

320:                                              ; preds = %316
  store ptr %319, ptr %313, align 8, !tbaa !96
  store i32 %309, ptr %312, align 4, !tbaa !98
  store i32 %309, ptr %311, align 8, !tbaa !99
  %321 = zext i32 %309 to i64
  %322 = shl nuw nsw i64 %321, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %319, i8 0, i64 %322, i1 false), !tbaa !70
  br label %325

323:                                              ; preds = %316
  %324 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %24) #18
  br label %502

325:                                              ; preds = %320, %315
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %25) #18
  %326 = load i32, ptr %275, align 8, !tbaa !352
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25)
          to label %327 unwind label %385

327:                                              ; preds = %325
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !41
  %328 = getelementptr inbounds %"class.dealii::Vector", ptr %25, i64 0, i32 1
  %329 = getelementptr inbounds %"class.dealii::Vector", ptr %25, i64 0, i32 2
  %330 = getelementptr inbounds %"class.dealii::Vector", ptr %25, i64 0, i32 3
  %331 = icmp eq i32 %326, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %328, i8 0, i64 16, i1 false)
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %328, i8 0, i64 16, i1 false)
  br label %342

333:                                              ; preds = %327
  %334 = zext i32 %326 to i64
  %335 = shl nuw nsw i64 %334, 3
  %336 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %335) #17
          to label %337 unwind label %340

337:                                              ; preds = %333
  store ptr %336, ptr %330, align 8, !tbaa !96
  store i32 %326, ptr %329, align 4, !tbaa !98
  store i32 %326, ptr %328, align 8, !tbaa !99
  %338 = zext i32 %326 to i64
  %339 = shl nuw nsw i64 %338, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %336, i8 0, i64 %339, i1 false), !tbaa !70
  br label %342

340:                                              ; preds = %333
  %341 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #18
  br label %496

342:                                              ; preds = %337, %332
  %343 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %344 = load double, ptr %343, align 8, !tbaa !313
  %345 = fmul double %344, 1.200000e+01
  %346 = fdiv double 1.000000e+00, %345
  %347 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %348 = getelementptr inbounds [3 x double], ptr %19, i64 0, i64 1
  %349 = getelementptr inbounds [3 x double], ptr %19, i64 0, i64 2
  %350 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 1
  %351 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 2
  %352 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 1
  %353 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 2
  %354 = getelementptr inbounds [3 x double], ptr %21, i64 0, i64 1
  %355 = getelementptr inbounds [3 x double], ptr %21, i64 0, i64 2
  %356 = getelementptr inbounds i8, ptr %7, i64 16
  %357 = getelementptr inbounds i8, ptr %7, i64 8
  %358 = getelementptr inbounds i8, ptr %6, i64 16
  %359 = getelementptr inbounds i8, ptr %6, i64 8
  %360 = getelementptr inbounds i8, ptr %5, i64 16
  %361 = getelementptr inbounds i8, ptr %5, i64 8
  %362 = getelementptr inbounds i8, ptr %4, i64 16
  %363 = getelementptr inbounds i8, ptr %4, i64 8
  br label %387

364:                                              ; preds = %469
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !41
  %365 = load ptr, ptr %330, align 8, !tbaa !96
  %366 = icmp eq ptr %365, null
  br i1 %366, label %368, label %367

367:                                              ; preds = %364
  call void @_ZdaPv(ptr noundef %365) #19
  store ptr null, ptr %330, align 8, !tbaa !96
  br label %368

368:                                              ; preds = %364, %367
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %25) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %24, align 8, !tbaa !41
  %369 = load ptr, ptr %313, align 8, !tbaa !96
  %370 = icmp eq ptr %369, null
  br i1 %370, label %372, label %371

371:                                              ; preds = %368
  call void @_ZdaPv(ptr noundef %369) #19
  store ptr null, ptr %313, align 8, !tbaa !96
  br label %372

372:                                              ; preds = %368, %371
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %24) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %24) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !41
  %373 = load ptr, ptr %296, align 8, !tbaa !96
  %374 = icmp eq ptr %373, null
  br i1 %374, label %376, label %375

375:                                              ; preds = %372
  call void @_ZdaPv(ptr noundef %373) #19
  store ptr null, ptr %296, align 8, !tbaa !96
  br label %376

376:                                              ; preds = %372, %375
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %23) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !41
  %377 = load ptr, ptr %279, align 8, !tbaa !96
  %378 = icmp eq ptr %377, null
  br i1 %378, label %380, label %379

379:                                              ; preds = %376
  call void @_ZdaPv(ptr noundef %377) #19
  store ptr null, ptr %279, align 8, !tbaa !96
  br label %380

380:                                              ; preds = %376, %379
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %22) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #18
  br label %514

381:                                              ; preds = %291
  %382 = landingpad { ptr, i32 }
          cleanup
  br label %508

383:                                              ; preds = %308
  %384 = landingpad { ptr, i32 }
          cleanup
  br label %502

385:                                              ; preds = %325
  %386 = landingpad { ptr, i32 }
          cleanup
  br label %496

387:                                              ; preds = %342, %469
  %388 = phi i64 [ 0, %342 ], [ %470, %469 ]
  %389 = load ptr, ptr %347, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18, !noalias !366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !70, !noalias !366
  %390 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %389, i64 %388
  br label %391

391:                                              ; preds = %387, %391
  %392 = phi i64 [ 0, %387 ], [ %398, %391 ]
  %393 = getelementptr inbounds [3 x double], ptr %390, i64 0, i64 %392
  %394 = load double, ptr %393, align 8, !tbaa !70, !noalias !366
  %395 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %392
  %396 = load double, ptr %395, align 8, !tbaa !70, !noalias !366
  %397 = fadd double %394, %396
  store double %397, ptr %395, align 8, !tbaa !70, !noalias !366
  %398 = add nuw nsw i64 %392, 1
  %399 = icmp eq i64 %398, 3
  br i1 %399, label %400, label %391, !llvm.loop !334

400:                                              ; preds = %391
  %401 = load double, ptr %356, align 8, !tbaa !70
  %402 = load double, ptr %357, align 8, !tbaa !70
  %403 = load double, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18, !noalias !366
  store double %403, ptr %19, align 8, !tbaa !70
  store double %402, ptr %348, align 8, !tbaa !70
  store double %401, ptr %349, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18, !noalias !369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false), !tbaa !70, !noalias !369
  br label %404

404:                                              ; preds = %400, %404
  %405 = phi i64 [ 0, %400 ], [ %411, %404 ]
  %406 = getelementptr inbounds [3 x double], ptr %390, i64 0, i64 %405
  %407 = load double, ptr %406, align 8, !tbaa !70, !noalias !369
  %408 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %405
  %409 = load double, ptr %408, align 8, !tbaa !70, !noalias !369
  %410 = fadd double %407, %409
  store double %410, ptr %408, align 8, !tbaa !70, !noalias !369
  %411 = add nuw nsw i64 %405, 1
  %412 = icmp eq i64 %411, 3
  br i1 %412, label %413, label %404, !llvm.loop !334

413:                                              ; preds = %404
  %414 = load double, ptr %358, align 8, !tbaa !70
  %415 = load double, ptr %359, align 8, !tbaa !70
  %416 = load double, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18, !noalias !369
  store double %416, ptr %18, align 8, !tbaa !70
  store double %415, ptr %350, align 8, !tbaa !70
  store double %414, ptr %351, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18, !noalias !372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa !70, !noalias !372
  br label %417

417:                                              ; preds = %413, %417
  %418 = phi i64 [ 0, %413 ], [ %424, %417 ]
  %419 = getelementptr inbounds [3 x double], ptr %390, i64 0, i64 %418
  %420 = load double, ptr %419, align 8, !tbaa !70, !noalias !372
  %421 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %418
  %422 = load double, ptr %421, align 8, !tbaa !70, !noalias !372
  %423 = fsub double %422, %420
  store double %423, ptr %421, align 8, !tbaa !70, !noalias !372
  %424 = add nuw nsw i64 %418, 1
  %425 = icmp eq i64 %424, 3
  br i1 %425, label %426, label %417, !llvm.loop !329

426:                                              ; preds = %417
  %427 = load double, ptr %360, align 8, !tbaa !70
  %428 = load double, ptr %361, align 8, !tbaa !70
  %429 = load double, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18, !noalias !372
  store double %429, ptr %20, align 8, !tbaa !70
  store double %428, ptr %352, align 8, !tbaa !70
  store double %427, ptr %353, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18, !noalias !375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false), !tbaa !70, !noalias !375
  br label %430

430:                                              ; preds = %426, %430
  %431 = phi i64 [ 0, %426 ], [ %437, %430 ]
  %432 = getelementptr inbounds [3 x double], ptr %390, i64 0, i64 %431
  %433 = load double, ptr %432, align 8, !tbaa !70, !noalias !375
  %434 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %431
  %435 = load double, ptr %434, align 8, !tbaa !70, !noalias !375
  %436 = fsub double %435, %433
  store double %436, ptr %434, align 8, !tbaa !70, !noalias !375
  %437 = add nuw nsw i64 %431, 1
  %438 = icmp eq i64 %437, 3
  br i1 %438, label %439, label %430, !llvm.loop !329

439:                                              ; preds = %430
  %440 = load double, ptr %362, align 8, !tbaa !70
  %441 = load double, ptr %363, align 8, !tbaa !70
  %442 = load double, ptr %4, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18, !noalias !375
  store double %442, ptr %21, align 8, !tbaa !70
  store double %441, ptr %354, align 8, !tbaa !70
  store double %440, ptr %355, align 8, !tbaa !70
  %443 = load ptr, ptr %0, align 8, !tbaa !41
  %444 = getelementptr inbounds ptr, ptr %443, i64 5
  %445 = load ptr, ptr %444, align 8
  invoke void %445(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(88) %22)
          to label %446 unwind label %472

446:                                              ; preds = %439
  %447 = load ptr, ptr %0, align 8, !tbaa !41
  %448 = getelementptr inbounds ptr, ptr %447, i64 5
  %449 = load ptr, ptr %448, align 8
  invoke void %449(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(88) %23)
          to label %450 unwind label %472

450:                                              ; preds = %446
  %451 = load ptr, ptr %0, align 8, !tbaa !41
  %452 = getelementptr inbounds ptr, ptr %451, i64 5
  %453 = load ptr, ptr %452, align 8
  invoke void %453(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(88) %24)
          to label %454 unwind label %472

454:                                              ; preds = %450
  %455 = load ptr, ptr %0, align 8, !tbaa !41
  %456 = getelementptr inbounds ptr, ptr %455, i64 5
  %457 = load ptr, ptr %456, align 8
  invoke void %457(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(88) %25)
          to label %458 unwind label %472

458:                                              ; preds = %454
  %459 = load i32, ptr %275, align 8, !tbaa !352
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %469, label %461

461:                                              ; preds = %458
  %462 = load ptr, ptr %279, align 8, !tbaa !96
  %463 = load ptr, ptr %296, align 8, !tbaa !96
  %464 = load ptr, ptr %313, align 8, !tbaa !96
  %465 = load ptr, ptr %330, align 8, !tbaa !96
  %466 = load ptr, ptr %2, align 8, !tbaa !321
  %467 = getelementptr inbounds [3 x double], ptr %466, i64 0, i64 %388
  %468 = zext i32 %459 to i64
  br label %476

469:                                              ; preds = %476, %458
  %470 = add nuw nsw i64 %388, 1
  %471 = icmp eq i64 %470, 3
  br i1 %471, label %364, label %387, !llvm.loop !378

472:                                              ; preds = %454, %450, %446, %439
  %473 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !41
  %474 = load ptr, ptr %330, align 8, !tbaa !96
  %475 = icmp eq ptr %474, null
  br i1 %475, label %495, label %494

476:                                              ; preds = %461, %476
  %477 = phi i64 [ 0, %461 ], [ %492, %476 ]
  %478 = getelementptr inbounds double, ptr %462, i64 %477
  %479 = load double, ptr %478, align 8, !tbaa !70
  %480 = fneg double %479
  %481 = getelementptr inbounds double, ptr %463, i64 %477
  %482 = load double, ptr %481, align 8, !tbaa !70
  %483 = call double @llvm.fmuladd.f64(double %482, double 8.000000e+00, double %480)
  %484 = getelementptr inbounds double, ptr %464, i64 %477
  %485 = load double, ptr %484, align 8, !tbaa !70
  %486 = call double @llvm.fmuladd.f64(double %485, double -8.000000e+00, double %483)
  %487 = getelementptr inbounds double, ptr %465, i64 %477
  %488 = load double, ptr %487, align 8, !tbaa !70
  %489 = fadd double %486, %488
  %490 = fmul double %346, %489
  %491 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %467, i64 %477
  store double %490, ptr %491, align 8, !tbaa !70
  %492 = add nuw nsw i64 %477, 1
  %493 = icmp eq i64 %492, %468
  br i1 %493, label %469, label %476, !llvm.loop !379

494:                                              ; preds = %472
  call void @_ZdaPv(ptr noundef %474) #19
  store ptr null, ptr %330, align 8, !tbaa !96
  br label %495

495:                                              ; preds = %472, %494
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %25) #18
  br label %496

496:                                              ; preds = %385, %340, %495
  %497 = phi { ptr, i32 } [ %473, %495 ], [ %386, %385 ], [ %341, %340 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %25) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %24, align 8, !tbaa !41
  %498 = load ptr, ptr %313, align 8, !tbaa !96
  %499 = icmp eq ptr %498, null
  br i1 %499, label %501, label %500

500:                                              ; preds = %496
  call void @_ZdaPv(ptr noundef %498) #19
  store ptr null, ptr %313, align 8, !tbaa !96
  br label %501

501:                                              ; preds = %496, %500
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %24) #18
  br label %502

502:                                              ; preds = %383, %323, %501
  %503 = phi { ptr, i32 } [ %497, %501 ], [ %384, %383 ], [ %324, %323 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %24) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !41
  %504 = load ptr, ptr %296, align 8, !tbaa !96
  %505 = icmp eq ptr %504, null
  br i1 %505, label %507, label %506

506:                                              ; preds = %502
  call void @_ZdaPv(ptr noundef %504) #19
  store ptr null, ptr %296, align 8, !tbaa !96
  br label %507

507:                                              ; preds = %502, %506
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %23) #18
  br label %508

508:                                              ; preds = %381, %306, %507
  %509 = phi { ptr, i32 } [ %503, %507 ], [ %382, %381 ], [ %307, %306 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %23) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !41
  %510 = load ptr, ptr %279, align 8, !tbaa !96
  %511 = icmp eq ptr %510, null
  br i1 %511, label %513, label %512

512:                                              ; preds = %508
  call void @_ZdaPv(ptr noundef %510) #19
  store ptr null, ptr %279, align 8, !tbaa !96
  br label %513

513:                                              ; preds = %508, %512
  call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %22) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #18
  br label %43

514:                                              ; preds = %3, %380, %199, %81
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #3 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Point.44", align 8
  %6 = alloca %"class.dealii::Point.44", align 8
  %7 = alloca %"class.dealii::Point.44", align 8
  %8 = alloca %"class.dealii::Point.44", align 8
  %9 = alloca %"class.dealii::Point.44", align 8
  %10 = alloca %"class.dealii::Point.44", align 8
  %11 = alloca %"class.dealii::Point.44", align 8
  %12 = alloca %"class.dealii::Point.44", align 8
  %13 = alloca %"class.dealii::Point.44", align 8
  %14 = alloca %"class.dealii::Point.44", align 8
  %15 = alloca %"class.dealii::Point.44", align 8
  %16 = alloca %"class.dealii::Point.44", align 8
  %17 = alloca %"class.dealii::Point.44", align 8
  %18 = alloca %"class.dealii::Point.44", align 8
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !324
  switch i32 %20, label %285 [
    i32 1, label %21
    i32 0, label %82
    i32 2, label %161
  ]

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !tbaa !70
  %22 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !380
  %24 = load ptr, ptr %1, align 8, !tbaa !382
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %28 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 1
  %29 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 2
  %30 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %31 = getelementptr inbounds i8, ptr %11, i64 16
  %32 = getelementptr inbounds i8, ptr %11, i64 8
  br label %33

33:                                               ; preds = %26, %37
  %34 = phi i64 [ 0, %26 ], [ %39, %37 ]
  %35 = phi i32 [ 0, %26 ], [ %38, %37 ]
  br label %47

36:                                               ; preds = %37, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  br label %285

37:                                               ; preds = %62
  %38 = add i32 %35, 1
  %39 = zext i32 %38 to i64
  %40 = load ptr, ptr %22, align 8, !tbaa !380
  %41 = load ptr, ptr %1, align 8, !tbaa !382
  %42 = ptrtoint ptr %40 to i64
  %43 = ptrtoint ptr %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 24
  %46 = icmp ugt i64 %45, %39
  br i1 %46, label %33, label %36, !llvm.loop !383

47:                                               ; preds = %33, %62
  %48 = phi i64 [ 0, %33 ], [ %80, %62 ]
  %49 = load ptr, ptr %1, align 8, !tbaa !382
  %50 = getelementptr inbounds %"class.dealii::Point.44", ptr %49, i64 %34
  %51 = load ptr, ptr %27, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18, !noalias !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %50, i64 24, i1 false), !tbaa !70, !noalias !384
  %52 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %51, i64 %48
  br label %53

53:                                               ; preds = %47, %53
  %54 = phi i64 [ 0, %47 ], [ %60, %53 ]
  %55 = getelementptr inbounds [3 x double], ptr %52, i64 0, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !70, !noalias !384
  %57 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 %54
  %58 = load double, ptr %57, align 8, !tbaa !70, !noalias !384
  %59 = fsub double %58, %56
  store double %59, ptr %57, align 8, !tbaa !70, !noalias !384
  %60 = add nuw nsw i64 %54, 1
  %61 = icmp eq i64 %60, 3
  br i1 %61, label %62, label %53, !llvm.loop !329

62:                                               ; preds = %53
  %63 = load double, ptr %31, align 8, !tbaa !70
  %64 = load double, ptr %32, align 8, !tbaa !70
  %65 = load double, ptr %11, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18, !noalias !384
  store double %65, ptr %12, align 8, !tbaa !70
  store double %64, ptr %28, align 8, !tbaa !70
  store double %63, ptr %29, align 8, !tbaa !70
  %66 = load ptr, ptr %0, align 8, !tbaa !41
  %67 = getelementptr inbounds ptr, ptr %66, i64 4
  %68 = load ptr, ptr %67, align 8
  %69 = call noundef double %68(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %50, i32 noundef %3)
  %70 = load ptr, ptr %0, align 8, !tbaa !41
  %71 = getelementptr inbounds ptr, ptr %70, i64 4
  %72 = load ptr, ptr %71, align 8
  %73 = call noundef double %72(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %3)
  %74 = fsub double %69, %73
  %75 = load double, ptr %30, align 8, !tbaa !313
  %76 = fdiv double %74, %75
  %77 = load ptr, ptr %2, align 8, !tbaa !321
  %78 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %77, i64 %34
  %79 = getelementptr inbounds [3 x double], ptr %78, i64 0, i64 %48
  store double %76, ptr %79, align 8, !tbaa !70
  %80 = add nuw nsw i64 %48, 1
  %81 = icmp eq i64 %80, 3
  br i1 %81, label %37, label %47, !llvm.loop !387

82:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !tbaa !70
  %83 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !380
  %85 = load ptr, ptr %1, align 8, !tbaa !382
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %101, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %89 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 1
  %90 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 2
  %91 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %92 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %93 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %94 = getelementptr inbounds i8, ptr %9, i64 16
  %95 = getelementptr inbounds i8, ptr %10, i64 16
  %96 = getelementptr inbounds i8, ptr %10, i64 8
  %97 = getelementptr inbounds i8, ptr %9, i64 8
  br label %98

98:                                               ; preds = %87, %102
  %99 = phi i64 [ 0, %87 ], [ %104, %102 ]
  %100 = phi i32 [ 0, %87 ], [ %103, %102 ]
  br label %112

101:                                              ; preds = %102, %82
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #18
  br label %285

102:                                              ; preds = %140
  %103 = add i32 %100, 1
  %104 = zext i32 %103 to i64
  %105 = load ptr, ptr %83, align 8, !tbaa !380
  %106 = load ptr, ptr %1, align 8, !tbaa !382
  %107 = ptrtoint ptr %105 to i64
  %108 = ptrtoint ptr %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 24
  %111 = icmp ugt i64 %110, %104
  br i1 %111, label %98, label %101, !llvm.loop !388

112:                                              ; preds = %98, %140
  %113 = phi i64 [ 0, %98 ], [ %159, %140 ]
  %114 = load ptr, ptr %1, align 8, !tbaa !382
  %115 = getelementptr %"class.dealii::Point.44", ptr %114, i64 %99
  %116 = load ptr, ptr %88, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18, !noalias !389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %115, i64 24, i1 false), !tbaa !70, !noalias !389
  %117 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %116, i64 %113
  br label %118

118:                                              ; preds = %112, %118
  %119 = phi i64 [ 0, %112 ], [ %125, %118 ]
  %120 = getelementptr inbounds [3 x double], ptr %117, i64 0, i64 %119
  %121 = load double, ptr %120, align 8, !tbaa !70, !noalias !389
  %122 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %119
  %123 = load double, ptr %122, align 8, !tbaa !70, !noalias !389
  %124 = fadd double %121, %123
  store double %124, ptr %122, align 8, !tbaa !70, !noalias !389
  %125 = add nuw nsw i64 %119, 1
  %126 = icmp eq i64 %125, 3
  br i1 %126, label %127, label %118, !llvm.loop !334

127:                                              ; preds = %118
  %128 = load double, ptr %95, align 8, !tbaa !70
  %129 = load double, ptr %96, align 8, !tbaa !70
  %130 = load double, ptr %10, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18, !noalias !389
  store double %130, ptr %13, align 8, !tbaa !70
  store double %129, ptr %89, align 8, !tbaa !70
  store double %128, ptr %90, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18, !noalias !392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %115, i64 24, i1 false), !tbaa !70, !noalias !392
  br label %131

131:                                              ; preds = %127, %131
  %132 = phi i64 [ 0, %127 ], [ %138, %131 ]
  %133 = getelementptr inbounds [3 x double], ptr %117, i64 0, i64 %132
  %134 = load double, ptr %133, align 8, !tbaa !70, !noalias !392
  %135 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %132
  %136 = load double, ptr %135, align 8, !tbaa !70, !noalias !392
  %137 = fsub double %136, %134
  store double %137, ptr %135, align 8, !tbaa !70, !noalias !392
  %138 = add nuw nsw i64 %132, 1
  %139 = icmp eq i64 %138, 3
  br i1 %139, label %140, label %131, !llvm.loop !329

140:                                              ; preds = %131
  %141 = load double, ptr %94, align 8, !tbaa !70
  %142 = load double, ptr %97, align 8, !tbaa !70
  %143 = load double, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18, !noalias !392
  store double %143, ptr %14, align 8, !tbaa !70
  store double %142, ptr %91, align 8, !tbaa !70
  store double %141, ptr %92, align 8, !tbaa !70
  %144 = load ptr, ptr %0, align 8, !tbaa !41
  %145 = getelementptr inbounds ptr, ptr %144, i64 4
  %146 = load ptr, ptr %145, align 8
  %147 = call noundef double %146(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %3)
  %148 = load ptr, ptr %0, align 8, !tbaa !41
  %149 = getelementptr inbounds ptr, ptr %148, i64 4
  %150 = load ptr, ptr %149, align 8
  %151 = call noundef double %150(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
  %152 = fsub double %147, %151
  %153 = load double, ptr %93, align 8, !tbaa !313
  %154 = fmul double %153, 2.000000e+00
  %155 = fdiv double %152, %154
  %156 = load ptr, ptr %2, align 8, !tbaa !321
  %157 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %156, i64 %99
  %158 = getelementptr inbounds [3 x double], ptr %157, i64 0, i64 %113
  store double %155, ptr %158, align 8, !tbaa !70
  %159 = add nuw nsw i64 %113, 1
  %160 = icmp eq i64 %159, 3
  br i1 %160, label %102, label %112, !llvm.loop !395

161:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !tbaa !70
  %162 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !380
  %164 = load ptr, ptr %1, align 8, !tbaa !382
  %165 = icmp eq ptr %163, %164
  br i1 %165, label %188, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %168 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 1
  %169 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 2
  %170 = getelementptr inbounds [3 x double], ptr %15, i64 0, i64 1
  %171 = getelementptr inbounds [3 x double], ptr %15, i64 0, i64 2
  %172 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 1
  %173 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 2
  %174 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 1
  %175 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 2
  %176 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %177 = getelementptr inbounds i8, ptr %5, i64 16
  %178 = getelementptr inbounds i8, ptr %8, i64 16
  %179 = getelementptr inbounds i8, ptr %8, i64 8
  %180 = getelementptr inbounds i8, ptr %7, i64 16
  %181 = getelementptr inbounds i8, ptr %7, i64 8
  %182 = getelementptr inbounds i8, ptr %6, i64 16
  %183 = getelementptr inbounds i8, ptr %6, i64 8
  %184 = getelementptr inbounds i8, ptr %5, i64 8
  br label %185

185:                                              ; preds = %166, %189
  %186 = phi i64 [ 0, %166 ], [ %191, %189 ]
  %187 = phi i32 [ 0, %166 ], [ %190, %189 ]
  br label %199

188:                                              ; preds = %189, %161
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #18
  br label %285

189:                                              ; preds = %253
  %190 = add i32 %187, 1
  %191 = zext i32 %190 to i64
  %192 = load ptr, ptr %162, align 8, !tbaa !380
  %193 = load ptr, ptr %1, align 8, !tbaa !382
  %194 = ptrtoint ptr %192 to i64
  %195 = ptrtoint ptr %193 to i64
  %196 = sub i64 %194, %195
  %197 = sdiv exact i64 %196, 24
  %198 = icmp ugt i64 %197, %191
  br i1 %198, label %185, label %188, !llvm.loop !396

199:                                              ; preds = %185, %253
  %200 = phi i64 [ 0, %185 ], [ %283, %253 ]
  %201 = load ptr, ptr %1, align 8, !tbaa !382
  %202 = getelementptr %"class.dealii::Point.44", ptr %201, i64 %186
  %203 = load ptr, ptr %167, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18, !noalias !397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %202, i64 24, i1 false), !tbaa !70, !noalias !397
  %204 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %203, i64 %200
  br label %205

205:                                              ; preds = %199, %205
  %206 = phi i64 [ 0, %199 ], [ %212, %205 ]
  %207 = getelementptr inbounds [3 x double], ptr %204, i64 0, i64 %206
  %208 = load double, ptr %207, align 8, !tbaa !70, !noalias !397
  %209 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %206
  %210 = load double, ptr %209, align 8, !tbaa !70, !noalias !397
  %211 = fadd double %208, %210
  store double %211, ptr %209, align 8, !tbaa !70, !noalias !397
  %212 = add nuw nsw i64 %206, 1
  %213 = icmp eq i64 %212, 3
  br i1 %213, label %214, label %205, !llvm.loop !334

214:                                              ; preds = %205
  %215 = load double, ptr %178, align 8, !tbaa !70
  %216 = load double, ptr %179, align 8, !tbaa !70
  %217 = load double, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18, !noalias !397
  store double %217, ptr %16, align 8, !tbaa !70
  store double %216, ptr %168, align 8, !tbaa !70
  store double %215, ptr %169, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18, !noalias !400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa !70, !noalias !400
  br label %218

218:                                              ; preds = %214, %218
  %219 = phi i64 [ 0, %214 ], [ %225, %218 ]
  %220 = getelementptr inbounds [3 x double], ptr %204, i64 0, i64 %219
  %221 = load double, ptr %220, align 8, !tbaa !70, !noalias !400
  %222 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %219
  %223 = load double, ptr %222, align 8, !tbaa !70, !noalias !400
  %224 = fadd double %221, %223
  store double %224, ptr %222, align 8, !tbaa !70, !noalias !400
  %225 = add nuw nsw i64 %219, 1
  %226 = icmp eq i64 %225, 3
  br i1 %226, label %227, label %218, !llvm.loop !334

227:                                              ; preds = %218
  %228 = load double, ptr %180, align 8, !tbaa !70
  %229 = load double, ptr %181, align 8, !tbaa !70
  %230 = load double, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18, !noalias !400
  store double %230, ptr %15, align 8, !tbaa !70
  store double %229, ptr %170, align 8, !tbaa !70
  store double %228, ptr %171, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18, !noalias !403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %202, i64 24, i1 false), !tbaa !70, !noalias !403
  br label %231

231:                                              ; preds = %227, %231
  %232 = phi i64 [ 0, %227 ], [ %238, %231 ]
  %233 = getelementptr inbounds [3 x double], ptr %204, i64 0, i64 %232
  %234 = load double, ptr %233, align 8, !tbaa !70, !noalias !403
  %235 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %232
  %236 = load double, ptr %235, align 8, !tbaa !70, !noalias !403
  %237 = fsub double %236, %234
  store double %237, ptr %235, align 8, !tbaa !70, !noalias !403
  %238 = add nuw nsw i64 %232, 1
  %239 = icmp eq i64 %238, 3
  br i1 %239, label %240, label %231, !llvm.loop !329

240:                                              ; preds = %231
  %241 = load double, ptr %182, align 8, !tbaa !70
  %242 = load double, ptr %183, align 8, !tbaa !70
  %243 = load double, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18, !noalias !403
  store double %243, ptr %17, align 8, !tbaa !70
  store double %242, ptr %172, align 8, !tbaa !70
  store double %241, ptr %173, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18, !noalias !406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa !70, !noalias !406
  br label %244

244:                                              ; preds = %240, %244
  %245 = phi i64 [ 0, %240 ], [ %251, %244 ]
  %246 = getelementptr inbounds [3 x double], ptr %204, i64 0, i64 %245
  %247 = load double, ptr %246, align 8, !tbaa !70, !noalias !406
  %248 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %245
  %249 = load double, ptr %248, align 8, !tbaa !70, !noalias !406
  %250 = fsub double %249, %247
  store double %250, ptr %248, align 8, !tbaa !70, !noalias !406
  %251 = add nuw nsw i64 %245, 1
  %252 = icmp eq i64 %251, 3
  br i1 %252, label %253, label %244, !llvm.loop !329

253:                                              ; preds = %244
  %254 = load double, ptr %177, align 8, !tbaa !70
  %255 = load double, ptr %184, align 8, !tbaa !70
  %256 = load double, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18, !noalias !406
  store double %256, ptr %18, align 8, !tbaa !70
  store double %255, ptr %174, align 8, !tbaa !70
  store double %254, ptr %175, align 8, !tbaa !70
  %257 = load ptr, ptr %0, align 8, !tbaa !41
  %258 = getelementptr inbounds ptr, ptr %257, i64 4
  %259 = load ptr, ptr %258, align 8
  %260 = call noundef double %259(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef %3)
  %261 = fneg double %260
  %262 = load ptr, ptr %0, align 8, !tbaa !41
  %263 = getelementptr inbounds ptr, ptr %262, i64 4
  %264 = load ptr, ptr %263, align 8
  %265 = call noundef double %264(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %3)
  %266 = call double @llvm.fmuladd.f64(double %265, double 8.000000e+00, double %261)
  %267 = load ptr, ptr %0, align 8, !tbaa !41
  %268 = getelementptr inbounds ptr, ptr %267, i64 4
  %269 = load ptr, ptr %268, align 8
  %270 = call noundef double %269(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef %3)
  %271 = call double @llvm.fmuladd.f64(double %270, double -8.000000e+00, double %266)
  %272 = load ptr, ptr %0, align 8, !tbaa !41
  %273 = getelementptr inbounds ptr, ptr %272, i64 4
  %274 = load ptr, ptr %273, align 8
  %275 = call noundef double %274(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %3)
  %276 = fadd double %271, %275
  %277 = load double, ptr %176, align 8, !tbaa !313
  %278 = fmul double %277, 1.200000e+01
  %279 = fdiv double %276, %278
  %280 = load ptr, ptr %2, align 8, !tbaa !321
  %281 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %280, i64 %186
  %282 = getelementptr inbounds [3 x double], ptr %281, i64 0, i64 %200
  store double %279, ptr %282, align 8, !tbaa !70
  %283 = add nuw nsw i64 %200, 1
  %284 = icmp eq i64 %283, 3
  br i1 %284, label %189, label %199, !llvm.loop !409

285:                                              ; preds = %4, %188, %101, %36
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 !prof !72 {
  %4 = alloca %"class.dealii::Point.44", align 8
  %5 = alloca %"class.dealii::Point.44", align 8
  %6 = alloca %"class.dealii::Point.44", align 8
  %7 = alloca %"class.dealii::Point.44", align 8
  %8 = alloca %"class.dealii::Point.44", align 8
  %9 = alloca %"class.dealii::Point.44", align 8
  %10 = alloca %"class.dealii::Point.44", align 8
  %11 = alloca %"class.dealii::Point.44", align 8
  %12 = alloca %"class.dealii::Point.44", align 8
  %13 = alloca %"class.dealii::Point.44", align 8
  %14 = alloca %"class.dealii::Point.44", align 8
  %15 = alloca %"class.dealii::Point.44", align 8
  %16 = alloca %"class.dealii::Point.44", align 8
  %17 = alloca %"class.dealii::Point.44", align 8
  %18 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !324
  switch i32 %20, label %328 [
    i32 1, label %21
    i32 0, label %97
    i32 2, label %189
  ]

21:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !tbaa !70
  %22 = load ptr, ptr %18, align 8, !tbaa !380
  %23 = load ptr, ptr %1, align 8, !tbaa !382
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %27 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 1
  %28 = getelementptr inbounds [3 x double], ptr %11, i64 0, i64 2
  %29 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %30 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %31 = getelementptr inbounds i8, ptr %10, i64 16
  %32 = getelementptr inbounds i8, ptr %10, i64 8
  br label %33

33:                                               ; preds = %25, %37
  %34 = phi i64 [ 0, %25 ], [ %39, %37 ]
  %35 = phi i32 [ 0, %25 ], [ %38, %37 ]
  br label %47

36:                                               ; preds = %37, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  br label %328

37:                                               ; preds = %68
  %38 = add i32 %35, 1
  %39 = zext i32 %38 to i64
  %40 = load ptr, ptr %18, align 8, !tbaa !380
  %41 = load ptr, ptr %1, align 8, !tbaa !382
  %42 = ptrtoint ptr %40 to i64
  %43 = ptrtoint ptr %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 24
  %46 = icmp ugt i64 %45, %39
  br i1 %46, label %33, label %36, !llvm.loop !410

47:                                               ; preds = %33, %68
  %48 = phi i64 [ 0, %33 ], [ %69, %68 ]
  %49 = load ptr, ptr %1, align 8, !tbaa !382
  %50 = getelementptr inbounds %"class.dealii::Point.44", ptr %49, i64 %34
  %51 = load ptr, ptr %26, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18, !noalias !411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %50, i64 24, i1 false), !tbaa !70, !noalias !411
  %52 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %51, i64 %48
  br label %53

53:                                               ; preds = %47, %53
  %54 = phi i64 [ 0, %47 ], [ %60, %53 ]
  %55 = getelementptr inbounds [3 x double], ptr %52, i64 0, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !70, !noalias !411
  %57 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %54
  %58 = load double, ptr %57, align 8, !tbaa !70, !noalias !411
  %59 = fsub double %58, %56
  store double %59, ptr %57, align 8, !tbaa !70, !noalias !411
  %60 = add nuw nsw i64 %54, 1
  %61 = icmp eq i64 %60, 3
  br i1 %61, label %62, label %53, !llvm.loop !329

62:                                               ; preds = %53
  %63 = load double, ptr %31, align 8, !tbaa !70
  %64 = load double, ptr %32, align 8, !tbaa !70
  %65 = load double, ptr %10, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18, !noalias !411
  store double %65, ptr %11, align 8, !tbaa !70
  store double %64, ptr %27, align 8, !tbaa !70
  store double %63, ptr %28, align 8, !tbaa !70
  %66 = load i32, ptr %29, align 8, !tbaa !352
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %71, %62
  %69 = add nuw nsw i64 %48, 1
  %70 = icmp eq i64 %69, 3
  br i1 %70, label %37, label %47, !llvm.loop !414

71:                                               ; preds = %62, %71
  %72 = phi i64 [ %93, %71 ], [ 0, %62 ]
  %73 = load ptr, ptr %1, align 8, !tbaa !382
  %74 = getelementptr inbounds %"class.dealii::Point.44", ptr %73, i64 %34
  %75 = load ptr, ptr %0, align 8, !tbaa !41
  %76 = getelementptr inbounds ptr, ptr %75, i64 4
  %77 = load ptr, ptr %76, align 8
  %78 = trunc i64 %72 to i32
  %79 = call noundef double %77(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %74, i32 noundef %78)
  %80 = load ptr, ptr %0, align 8, !tbaa !41
  %81 = getelementptr inbounds ptr, ptr %80, i64 4
  %82 = load ptr, ptr %81, align 8
  %83 = trunc i64 %72 to i32
  %84 = call noundef double %82(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %83)
  %85 = fsub double %79, %84
  %86 = load double, ptr %30, align 8, !tbaa !313
  %87 = fdiv double %85, %86
  %88 = load ptr, ptr %2, align 8, !tbaa !415
  %89 = getelementptr inbounds %"class.std::vector.37", ptr %88, i64 %34
  %90 = load ptr, ptr %89, align 8, !tbaa !321
  %91 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %90, i64 %72
  %92 = getelementptr inbounds [3 x double], ptr %91, i64 0, i64 %48
  store double %87, ptr %92, align 8, !tbaa !70
  %93 = add nuw nsw i64 %72, 1
  %94 = load i32, ptr %29, align 8, !tbaa !352
  %95 = zext i32 %94 to i64
  %96 = icmp ult i64 %93, %95
  br i1 %96, label %71, label %68, !llvm.loop !417

97:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !tbaa !70
  %98 = load ptr, ptr %18, align 8, !tbaa !380
  %99 = load ptr, ptr %1, align 8, !tbaa !382
  %100 = icmp eq ptr %98, %99
  br i1 %100, label %116, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %103 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 1
  %104 = getelementptr inbounds [3 x double], ptr %12, i64 0, i64 2
  %105 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 1
  %106 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 2
  %107 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %108 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %109 = getelementptr inbounds i8, ptr %9, i64 16
  %110 = getelementptr inbounds i8, ptr %9, i64 8
  %111 = getelementptr inbounds i8, ptr %8, i64 16
  %112 = getelementptr inbounds i8, ptr %8, i64 8
  br label %113

113:                                              ; preds = %101, %117
  %114 = phi i64 [ 0, %101 ], [ %119, %117 ]
  %115 = phi i32 [ 0, %101 ], [ %118, %117 ]
  br label %127

116:                                              ; preds = %117, %97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  br label %328

117:                                              ; preds = %161
  %118 = add i32 %115, 1
  %119 = zext i32 %118 to i64
  %120 = load ptr, ptr %18, align 8, !tbaa !380
  %121 = load ptr, ptr %1, align 8, !tbaa !382
  %122 = ptrtoint ptr %120 to i64
  %123 = ptrtoint ptr %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 24
  %126 = icmp ugt i64 %125, %119
  br i1 %126, label %113, label %116, !llvm.loop !418

127:                                              ; preds = %113, %161
  %128 = phi i64 [ 0, %113 ], [ %162, %161 ]
  %129 = load ptr, ptr %1, align 8, !tbaa !382
  %130 = getelementptr %"class.dealii::Point.44", ptr %129, i64 %114
  %131 = load ptr, ptr %102, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18, !noalias !419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %130, i64 24, i1 false), !tbaa !70, !noalias !419
  %132 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %131, i64 %128
  br label %133

133:                                              ; preds = %127, %133
  %134 = phi i64 [ 0, %127 ], [ %140, %133 ]
  %135 = getelementptr inbounds [3 x double], ptr %132, i64 0, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !70, !noalias !419
  %137 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 %134
  %138 = load double, ptr %137, align 8, !tbaa !70, !noalias !419
  %139 = fadd double %136, %138
  store double %139, ptr %137, align 8, !tbaa !70, !noalias !419
  %140 = add nuw nsw i64 %134, 1
  %141 = icmp eq i64 %140, 3
  br i1 %141, label %142, label %133, !llvm.loop !334

142:                                              ; preds = %133
  %143 = load double, ptr %109, align 8, !tbaa !70
  %144 = load double, ptr %110, align 8, !tbaa !70
  %145 = load double, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18, !noalias !419
  store double %145, ptr %12, align 8, !tbaa !70
  store double %144, ptr %103, align 8, !tbaa !70
  store double %143, ptr %104, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18, !noalias !422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %130, i64 24, i1 false), !tbaa !70, !noalias !422
  br label %146

146:                                              ; preds = %142, %146
  %147 = phi i64 [ 0, %142 ], [ %153, %146 ]
  %148 = getelementptr inbounds [3 x double], ptr %132, i64 0, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !70, !noalias !422
  %150 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %147
  %151 = load double, ptr %150, align 8, !tbaa !70, !noalias !422
  %152 = fsub double %151, %149
  store double %152, ptr %150, align 8, !tbaa !70, !noalias !422
  %153 = add nuw nsw i64 %147, 1
  %154 = icmp eq i64 %153, 3
  br i1 %154, label %155, label %146, !llvm.loop !329

155:                                              ; preds = %146
  %156 = load double, ptr %111, align 8, !tbaa !70
  %157 = load double, ptr %112, align 8, !tbaa !70
  %158 = load double, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18, !noalias !422
  store double %158, ptr %13, align 8, !tbaa !70
  store double %157, ptr %105, align 8, !tbaa !70
  store double %156, ptr %106, align 8, !tbaa !70
  %159 = load i32, ptr %107, align 8, !tbaa !352
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %164, %155
  %162 = add nuw nsw i64 %128, 1
  %163 = icmp eq i64 %162, 3
  br i1 %163, label %117, label %127, !llvm.loop !425

164:                                              ; preds = %155, %164
  %165 = phi i64 [ %185, %164 ], [ 0, %155 ]
  %166 = load ptr, ptr %0, align 8, !tbaa !41
  %167 = getelementptr inbounds ptr, ptr %166, i64 4
  %168 = load ptr, ptr %167, align 8
  %169 = trunc i64 %165 to i32
  %170 = call noundef double %168(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %169)
  %171 = load ptr, ptr %0, align 8, !tbaa !41
  %172 = getelementptr inbounds ptr, ptr %171, i64 4
  %173 = load ptr, ptr %172, align 8
  %174 = trunc i64 %165 to i32
  %175 = call noundef double %173(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %174)
  %176 = fsub double %170, %175
  %177 = load double, ptr %108, align 8, !tbaa !313
  %178 = fmul double %177, 2.000000e+00
  %179 = fdiv double %176, %178
  %180 = load ptr, ptr %2, align 8, !tbaa !415
  %181 = getelementptr inbounds %"class.std::vector.37", ptr %180, i64 %114
  %182 = load ptr, ptr %181, align 8, !tbaa !321
  %183 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %182, i64 %165
  %184 = getelementptr inbounds [3 x double], ptr %183, i64 0, i64 %128
  store double %179, ptr %184, align 8, !tbaa !70
  %185 = add nuw nsw i64 %165, 1
  %186 = load i32, ptr %107, align 8, !tbaa !352
  %187 = zext i32 %186 to i64
  %188 = icmp ult i64 %185, %187
  br i1 %188, label %164, label %161, !llvm.loop !426

189:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !tbaa !70
  %190 = load ptr, ptr %18, align 8, !tbaa !380
  %191 = load ptr, ptr %1, align 8, !tbaa !382
  %192 = icmp eq ptr %190, %191
  br i1 %192, label %216, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %195 = getelementptr inbounds [3 x double], ptr %15, i64 0, i64 1
  %196 = getelementptr inbounds [3 x double], ptr %15, i64 0, i64 2
  %197 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %198 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %199 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 1
  %200 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 2
  %201 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 1
  %202 = getelementptr inbounds [3 x double], ptr %17, i64 0, i64 2
  %203 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %204 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %205 = getelementptr inbounds i8, ptr %7, i64 16
  %206 = getelementptr inbounds i8, ptr %7, i64 8
  %207 = getelementptr inbounds i8, ptr %6, i64 16
  %208 = getelementptr inbounds i8, ptr %6, i64 8
  %209 = getelementptr inbounds i8, ptr %5, i64 16
  %210 = getelementptr inbounds i8, ptr %5, i64 8
  %211 = getelementptr inbounds i8, ptr %4, i64 16
  %212 = getelementptr inbounds i8, ptr %4, i64 8
  br label %213

213:                                              ; preds = %193, %217
  %214 = phi i64 [ 0, %193 ], [ %219, %217 ]
  %215 = phi i32 [ 0, %193 ], [ %218, %217 ]
  br label %227

216:                                              ; preds = %217, %189
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #18
  br label %328

217:                                              ; preds = %287
  %218 = add i32 %215, 1
  %219 = zext i32 %218 to i64
  %220 = load ptr, ptr %18, align 8, !tbaa !380
  %221 = load ptr, ptr %1, align 8, !tbaa !382
  %222 = ptrtoint ptr %220 to i64
  %223 = ptrtoint ptr %221 to i64
  %224 = sub i64 %222, %223
  %225 = sdiv exact i64 %224, 24
  %226 = icmp ugt i64 %225, %219
  br i1 %226, label %213, label %216, !llvm.loop !427

227:                                              ; preds = %213, %287
  %228 = phi i64 [ 0, %213 ], [ %288, %287 ]
  %229 = load ptr, ptr %1, align 8, !tbaa !382
  %230 = getelementptr %"class.dealii::Point.44", ptr %229, i64 %214
  %231 = load ptr, ptr %194, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18, !noalias !428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %230, i64 24, i1 false), !tbaa !70, !noalias !428
  %232 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %231, i64 %228
  br label %233

233:                                              ; preds = %227, %233
  %234 = phi i64 [ 0, %227 ], [ %240, %233 ]
  %235 = getelementptr inbounds [3 x double], ptr %232, i64 0, i64 %234
  %236 = load double, ptr %235, align 8, !tbaa !70, !noalias !428
  %237 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 %234
  %238 = load double, ptr %237, align 8, !tbaa !70, !noalias !428
  %239 = fadd double %236, %238
  store double %239, ptr %237, align 8, !tbaa !70, !noalias !428
  %240 = add nuw nsw i64 %234, 1
  %241 = icmp eq i64 %240, 3
  br i1 %241, label %242, label %233, !llvm.loop !334

242:                                              ; preds = %233
  %243 = load double, ptr %205, align 8, !tbaa !70
  %244 = load double, ptr %206, align 8, !tbaa !70
  %245 = load double, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18, !noalias !428
  store double %245, ptr %15, align 8, !tbaa !70
  store double %244, ptr %195, align 8, !tbaa !70
  store double %243, ptr %196, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18, !noalias !431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa !70, !noalias !431
  br label %246

246:                                              ; preds = %242, %246
  %247 = phi i64 [ 0, %242 ], [ %253, %246 ]
  %248 = getelementptr inbounds [3 x double], ptr %232, i64 0, i64 %247
  %249 = load double, ptr %248, align 8, !tbaa !70, !noalias !431
  %250 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %247
  %251 = load double, ptr %250, align 8, !tbaa !70, !noalias !431
  %252 = fadd double %249, %251
  store double %252, ptr %250, align 8, !tbaa !70, !noalias !431
  %253 = add nuw nsw i64 %247, 1
  %254 = icmp eq i64 %253, 3
  br i1 %254, label %255, label %246, !llvm.loop !334

255:                                              ; preds = %246
  %256 = load double, ptr %207, align 8, !tbaa !70
  %257 = load double, ptr %208, align 8, !tbaa !70
  %258 = load double, ptr %6, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18, !noalias !431
  store double %258, ptr %14, align 8, !tbaa !70
  store double %257, ptr %197, align 8, !tbaa !70
  store double %256, ptr %198, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18, !noalias !434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %230, i64 24, i1 false), !tbaa !70, !noalias !434
  br label %259

259:                                              ; preds = %255, %259
  %260 = phi i64 [ 0, %255 ], [ %266, %259 ]
  %261 = getelementptr inbounds [3 x double], ptr %232, i64 0, i64 %260
  %262 = load double, ptr %261, align 8, !tbaa !70, !noalias !434
  %263 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %260
  %264 = load double, ptr %263, align 8, !tbaa !70, !noalias !434
  %265 = fsub double %264, %262
  store double %265, ptr %263, align 8, !tbaa !70, !noalias !434
  %266 = add nuw nsw i64 %260, 1
  %267 = icmp eq i64 %266, 3
  br i1 %267, label %268, label %259, !llvm.loop !329

268:                                              ; preds = %259
  %269 = load double, ptr %209, align 8, !tbaa !70
  %270 = load double, ptr %210, align 8, !tbaa !70
  %271 = load double, ptr %5, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18, !noalias !434
  store double %271, ptr %16, align 8, !tbaa !70
  store double %270, ptr %199, align 8, !tbaa !70
  store double %269, ptr %200, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18, !noalias !437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa !70, !noalias !437
  br label %272

272:                                              ; preds = %268, %272
  %273 = phi i64 [ 0, %268 ], [ %279, %272 ]
  %274 = getelementptr inbounds [3 x double], ptr %232, i64 0, i64 %273
  %275 = load double, ptr %274, align 8, !tbaa !70, !noalias !437
  %276 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %273
  %277 = load double, ptr %276, align 8, !tbaa !70, !noalias !437
  %278 = fsub double %277, %275
  store double %278, ptr %276, align 8, !tbaa !70, !noalias !437
  %279 = add nuw nsw i64 %273, 1
  %280 = icmp eq i64 %279, 3
  br i1 %280, label %281, label %272, !llvm.loop !329

281:                                              ; preds = %272
  %282 = load double, ptr %211, align 8, !tbaa !70
  %283 = load double, ptr %212, align 8, !tbaa !70
  %284 = load double, ptr %4, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18, !noalias !437
  store double %284, ptr %17, align 8, !tbaa !70
  store double %283, ptr %201, align 8, !tbaa !70
  store double %282, ptr %202, align 8, !tbaa !70
  %285 = load i32, ptr %203, align 8, !tbaa !352
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %290, %281
  %288 = add nuw nsw i64 %228, 1
  %289 = icmp eq i64 %288, 3
  br i1 %289, label %217, label %227, !llvm.loop !440

290:                                              ; preds = %281, %290
  %291 = phi i64 [ %324, %290 ], [ 0, %281 ]
  %292 = load ptr, ptr %0, align 8, !tbaa !41
  %293 = getelementptr inbounds ptr, ptr %292, i64 4
  %294 = load ptr, ptr %293, align 8
  %295 = trunc i64 %291 to i32
  %296 = call noundef double %294(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %295)
  %297 = fneg double %296
  %298 = load ptr, ptr %0, align 8, !tbaa !41
  %299 = getelementptr inbounds ptr, ptr %298, i64 4
  %300 = load ptr, ptr %299, align 8
  %301 = trunc i64 %291 to i32
  %302 = call noundef double %300(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef %301)
  %303 = call double @llvm.fmuladd.f64(double %302, double 8.000000e+00, double %297)
  %304 = load ptr, ptr %0, align 8, !tbaa !41
  %305 = getelementptr inbounds ptr, ptr %304, i64 4
  %306 = load ptr, ptr %305, align 8
  %307 = trunc i64 %291 to i32
  %308 = call noundef double %306(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %307)
  %309 = call double @llvm.fmuladd.f64(double %308, double -8.000000e+00, double %303)
  %310 = load ptr, ptr %0, align 8, !tbaa !41
  %311 = getelementptr inbounds ptr, ptr %310, i64 4
  %312 = load ptr, ptr %311, align 8
  %313 = trunc i64 %291 to i32
  %314 = call noundef double %312(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef %313)
  %315 = fadd double %309, %314
  %316 = load double, ptr %204, align 8, !tbaa !313
  %317 = fmul double %316, 1.200000e+01
  %318 = fdiv double %315, %317
  %319 = load ptr, ptr %2, align 8, !tbaa !415
  %320 = getelementptr inbounds %"class.std::vector.37", ptr %319, i64 %214
  %321 = load ptr, ptr %320, align 8, !tbaa !321
  %322 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %321, i64 %291
  %323 = getelementptr inbounds [3 x double], ptr %322, i64 0, i64 %228
  store double %318, ptr %323, align 8, !tbaa !70
  %324 = add nuw nsw i64 %291, 1
  %325 = load i32, ptr %203, align 8, !tbaa !352
  %326 = zext i32 %325 to i64
  %327 = icmp ult i64 %324, %326
  br i1 %327, label %290, label %287, !llvm.loop !441

328:                                              ; preds = %3, %216, %116, %36
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii22AutoDerivativeFunctionILi3EE20get_formula_of_orderEj(i32 noundef %0) local_unnamed_addr #4 comdat align 2 !prof !72 {
  %2 = icmp ult i32 %0, 5
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [5 x i32], ptr @switch.table._ZN6dealii22AutoDerivativeFunctionILi3EE20get_formula_of_orderEj, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %8
}

declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #12 comdat align 2 !prof !72 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #5

declare void @_ZNK6dealii13ExceptionBase10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #12 comdat align 2 !prof !72 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

declare noundef double @_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #12 comdat align 2 !prof !72 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #11 comdat align 2 !annotation !40 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #19
  store ptr null, ptr %2, align 8, !tbaa !96
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE6reinitEjb(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #14 comdat align 2 !prof !442 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %12, !prof !443

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZdaPv(ptr noundef %7) #19
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %32

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !98
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %16, label %25, !prof !444

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !445

20:                                               ; preds = %16
  tail call void @_ZdaPv(ptr noundef %18) #19
  br label %21

21:                                               ; preds = %20, %16
  %22 = zext i32 %1 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %23) #17
  store ptr %24, ptr %17, align 8, !tbaa !96
  store i32 %1, ptr %13, align 4, !tbaa !98
  br label %25

25:                                               ; preds = %21, %12
  %26 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  store i32 %1, ptr %26, align 8, !tbaa !99
  br i1 %2, label %32, label %27, !prof !446

27:                                               ; preds = %25
  %28 = zext i32 %1 to i64
  %29 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = shl nuw nsw i64 %28, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %31, i1 false), !tbaa !70
  br label %32

32:                                               ; preds = %27, %10, %25
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE4swapERS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #12 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %3, align 8, !tbaa !447
  %6 = load i32, ptr %4, align 8, !tbaa !447
  store i32 %6, ptr %3, align 8, !tbaa !447
  store i32 %5, ptr %4, align 8, !tbaa !447
  %7 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Vector", ptr %1, i64 0, i32 2
  %9 = load i32, ptr %7, align 4, !tbaa !447
  %10 = load i32, ptr %8, align 4, !tbaa !447
  store i32 %10, ptr %7, align 4, !tbaa !447
  store i32 %9, ptr %8, align 4, !tbaa !447
  %11 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.dealii::Vector", ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %11, align 8, !tbaa !448
  %14 = load ptr, ptr %12, align 8, !tbaa !448
  store ptr %14, ptr %11, align 8, !tbaa !448
  store ptr %13, ptr %12, align 8, !tbaa !448
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }

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
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !48, i64 96}
!45 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi1EEE", !46, i64 0, !48, i64 96, !62, i64 104, !66, i64 128}
!46 = !{!"_ZTSN6dealii8FunctionILi1EEE", !47, i64 0, !50, i64 16, !51, i64 88}
!47 = !{!"_ZTSN6dealii12FunctionTimeE", !48, i64 8}
!48 = !{!"double", !49, i64 0}
!49 = !{!"omnipotent char", !43, i64 0}
!50 = !{!"_ZTSN6dealii11SubscriptorE", !51, i64 8, !52, i64 16, !60, i64 64}
!51 = !{!"int", !49, i64 0}
!52 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !53, i64 0}
!53 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !54, i64 0}
!54 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !55, i64 0, !57, i64 8}
!55 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !56, i64 0}
!56 = !{!"_ZTSSt4lessIPKcE"}
!57 = !{!"_ZTSSt15_Rb_tree_header", !58, i64 0, !61, i64 32}
!58 = !{!"_ZTSSt18_Rb_tree_node_base", !59, i64 0, !60, i64 8, !60, i64 16, !60, i64 24}
!59 = !{!"_ZTSSt14_Rb_tree_color", !49, i64 0}
!60 = !{!"any pointer", !49, i64 0}
!61 = !{!"long", !49, i64 0}
!62 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!66 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi1EE17DifferenceFormulaE", !49, i64 0}
!67 = !{!65, !60, i64 0}
!68 = !{!65, !60, i64 8}
!69 = !{!65, !60, i64 16}
!70 = !{!48, !48, i64 0}
!71 = !{!45, !66, i64 128}
!72 = !{!"function_entry_count", i64 0}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!75 = distinct !{!75, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!76 = !{}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!79 = distinct !{!79, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!82 = distinct !{!82, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!85 = distinct !{!85, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!88 = distinct !{!88, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!91 = distinct !{!91, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!94 = distinct !{!94, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!95 = !{!46, !51, i64 88}
!96 = !{!97, !60, i64 80}
!97 = !{!"_ZTSN6dealii6VectorIdEE", !50, i64 0, !51, i64 72, !51, i64 76, !60, i64 80}
!98 = !{!97, !51, i64 76}
!99 = !{!97, !51, i64 72}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!102 = distinct !{!102, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!103 = distinct !{!103, !104, !105}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!108 = distinct !{!108, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!111 = distinct !{!111, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!112 = distinct !{!112, !104, !105}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!115 = distinct !{!115, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!118 = distinct !{!118, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!121 = distinct !{!121, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!124 = distinct !{!124, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!125 = distinct !{!125, !104, !105}
!126 = !{!"function_entry_count", i64 38855}
!127 = !{!"branch_weights", i32 751, i32 38104}
!128 = !{!129, !60, i64 8}
!129 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!130 = !{!129, !60, i64 0}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!133 = distinct !{!133, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!134 = distinct !{!134, !104, !105}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!137 = distinct !{!137, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!140 = distinct !{!140, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!141 = distinct !{!141, !104, !105}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!144 = distinct !{!144, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!147 = distinct !{!147, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!150 = distinct !{!150, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!153 = distinct !{!153, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!154 = distinct !{!154, !104, !105}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!157 = distinct !{!157, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!158 = distinct !{!158, !104, !105}
!159 = !{!160, !60, i64 0}
!160 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi1EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!161 = distinct !{!161, !104, !105}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!164 = distinct !{!164, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!167 = distinct !{!167, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!168 = distinct !{!168, !104, !105}
!169 = distinct !{!169, !104, !105}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!172 = distinct !{!172, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE: argument 0"}
!175 = distinct !{!175, !"_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!178 = distinct !{!178, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE: argument 0"}
!181 = distinct !{!181, !"_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE"}
!182 = distinct !{!182, !104, !105}
!183 = distinct !{!183, !104, !105}
!184 = !{!185, !48, i64 96}
!185 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi2EEE", !186, i64 0, !48, i64 96, !187, i64 104, !191, i64 128}
!186 = !{!"_ZTSN6dealii8FunctionILi2EEE", !47, i64 0, !50, i64 16, !51, i64 88}
!187 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE", !188, i64 0}
!188 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE", !189, i64 0}
!189 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implE", !190, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!191 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi2EE17DifferenceFormulaE", !49, i64 0}
!192 = !{!190, !60, i64 0}
!193 = !{!190, !60, i64 8}
!194 = !{!190, !60, i64 16}
!195 = !{!185, !191, i64 128}
!196 = distinct !{!196, !104, !105}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!199 = distinct !{!199, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!200 = distinct !{!200, !104, !105}
!201 = distinct !{!201, !104, !105}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!204 = distinct !{!204, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!205 = distinct !{!205, !104, !105}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!208 = distinct !{!208, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!209 = distinct !{!209, !104, !105}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!212 = distinct !{!212, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!215 = distinct !{!215, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!218 = distinct !{!218, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!221 = distinct !{!221, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!222 = distinct !{!222, !104, !105}
!223 = !{!186, !51, i64 88}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!226 = distinct !{!226, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!227 = distinct !{!227, !104, !105}
!228 = distinct !{!228, !104, !105}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!231 = distinct !{!231, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!234 = distinct !{!234, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!235 = distinct !{!235, !104, !105}
!236 = distinct !{!236, !104, !105}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!239 = distinct !{!239, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!242 = distinct !{!242, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!245 = distinct !{!245, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!248 = distinct !{!248, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!249 = distinct !{!249, !104, !105}
!250 = distinct !{!250, !104, !105}
!251 = !{!252, !60, i64 8}
!252 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!253 = !{!252, !60, i64 0}
!254 = distinct !{!254, !104, !105}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!257 = distinct !{!257, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!258 = distinct !{!258, !104, !105}
!259 = distinct !{!259, !104, !105}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!262 = distinct !{!262, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!265 = distinct !{!265, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!266 = distinct !{!266, !104, !105}
!267 = distinct !{!267, !104, !105}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!270 = distinct !{!270, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!273 = distinct !{!273, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!276 = distinct !{!276, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!279 = distinct !{!279, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!280 = distinct !{!280, !104, !105}
!281 = distinct !{!281, !104, !105}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!284 = distinct !{!284, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!285 = distinct !{!285, !104, !105}
!286 = !{!287, !60, i64 0}
!287 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!288 = distinct !{!288, !104, !105}
!289 = distinct !{!289, !104, !105}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!292 = distinct !{!292, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!295 = distinct !{!295, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!296 = distinct !{!296, !104, !105}
!297 = distinct !{!297, !104, !105}
!298 = distinct !{!298, !104, !105}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!301 = distinct !{!301, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE: argument 0"}
!304 = distinct !{!304, !"_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!307 = distinct !{!307, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE: argument 0"}
!310 = distinct !{!310, !"_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE"}
!311 = distinct !{!311, !104, !105}
!312 = distinct !{!312, !104, !105}
!313 = !{!314, !48, i64 96}
!314 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi3EEE", !315, i64 0, !48, i64 96, !316, i64 104, !320, i64 128}
!315 = !{!"_ZTSN6dealii8FunctionILi3EEE", !47, i64 0, !50, i64 16, !51, i64 88}
!316 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE", !317, i64 0}
!317 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE", !318, i64 0}
!318 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implE", !319, i64 0}
!319 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!320 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi3EE17DifferenceFormulaE", !49, i64 0}
!321 = !{!319, !60, i64 0}
!322 = !{!319, !60, i64 8}
!323 = !{!319, !60, i64 16}
!324 = !{!314, !320, i64 128}
!325 = distinct !{!325, !104, !105}
!326 = !{!327}
!327 = distinct !{!327, !328, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!328 = distinct !{!328, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!329 = distinct !{!329, !104, !105}
!330 = distinct !{!330, !104, !105}
!331 = !{!332}
!332 = distinct !{!332, !333, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!333 = distinct !{!333, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!334 = distinct !{!334, !104, !105}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!337 = distinct !{!337, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!338 = distinct !{!338, !104, !105}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!341 = distinct !{!341, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!344 = distinct !{!344, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!347 = distinct !{!347, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!350 = distinct !{!350, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!351 = distinct !{!351, !104, !105}
!352 = !{!315, !51, i64 88}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!355 = distinct !{!355, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!356 = distinct !{!356, !104, !105}
!357 = distinct !{!357, !104, !105}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!360 = distinct !{!360, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!363 = distinct !{!363, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!364 = distinct !{!364, !104, !105}
!365 = distinct !{!365, !104, !105}
!366 = !{!367}
!367 = distinct !{!367, !368, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!368 = distinct !{!368, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!371 = distinct !{!371, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!374 = distinct !{!374, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!377 = distinct !{!377, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!378 = distinct !{!378, !104, !105}
!379 = distinct !{!379, !104, !105}
!380 = !{!381, !60, i64 8}
!381 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!382 = !{!381, !60, i64 0}
!383 = distinct !{!383, !104, !105}
!384 = !{!385}
!385 = distinct !{!385, !386, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!386 = distinct !{!386, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!387 = distinct !{!387, !104, !105}
!388 = distinct !{!388, !104, !105}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!391 = distinct !{!391, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!394 = distinct !{!394, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!395 = distinct !{!395, !104, !105}
!396 = distinct !{!396, !104, !105}
!397 = !{!398}
!398 = distinct !{!398, !399, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!399 = distinct !{!399, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!402 = distinct !{!402, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!405 = distinct !{!405, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!408 = distinct !{!408, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!409 = distinct !{!409, !104, !105}
!410 = distinct !{!410, !104, !105}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!413 = distinct !{!413, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!414 = distinct !{!414, !104, !105}
!415 = !{!416, !60, i64 0}
!416 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!417 = distinct !{!417, !104, !105}
!418 = distinct !{!418, !104, !105}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!421 = distinct !{!421, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!424 = distinct !{!424, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!425 = distinct !{!425, !104, !105}
!426 = distinct !{!426, !104, !105}
!427 = distinct !{!427, !104, !105}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!430 = distinct !{!430, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!431 = !{!432}
!432 = distinct !{!432, !433, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE: argument 0"}
!433 = distinct !{!433, !"_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE"}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!436 = distinct !{!436, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE: argument 0"}
!439 = distinct !{!439, !"_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE"}
!440 = distinct !{!440, !104, !105}
!441 = distinct !{!441, !104, !105}
!442 = !{!"function_entry_count", i64 424370}
!443 = !{!"branch_weights", i32 0, i32 424370}
!444 = !{!"branch_weights", i32 24623, i32 399747}
!445 = !{!"branch_weights", i32 24495, i32 128}
!446 = !{!"branch_weights", i32 3947, i32 420423}
!447 = !{!51, !51, i64 0}
!448 = !{!60, !60, i64 0}
