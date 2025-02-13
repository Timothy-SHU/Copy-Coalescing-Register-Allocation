; ModuleID = 'source/base/auto_derivative_function.cc'
source_filename = "source/base/auto_derivative_function.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::allocator.0" = type { i8 }
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
%"class.std::allocator.18" = type { i8 }
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
%"class.std::allocator.39" = type { i8 }
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

$_ZNSaIN6dealii6TensorILi1ELi1EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi1EE5set_hEd = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi1EE11set_formulaENS1_17DifferenceFormulaE = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi1EED5Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi1EED0Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi1EEixEj = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2Eb = comdat any

$_ZN6dealii5PointILi1EEC2Ev = comdat any

$_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii5PointILi1EEaSEOS1_ = comdat any

$_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE = comdat any

$_ZN6dealii6VectorIdEC2Ej = comdat any

$_ZN6dealii6VectorIdEclEj = comdat any

$_ZN6dealii6VectorIdED2Ev = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi1EE20get_formula_of_orderEj = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EEC5Edjd = comdat any

$_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EE5set_hEd = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EE11set_formulaENS1_17DifferenceFormulaE = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EED5Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi2EED0Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi2EEixEj = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2Eb = comdat any

$_ZN6dealii5PointILi2EEC2Ev = comdat any

$_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii5PointILi2EEaSEOS1_ = comdat any

$_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EE20get_formula_of_orderEj = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EEC5Edjd = comdat any

$_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EE5set_hEd = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EE11set_formulaENS1_17DifferenceFormulaE = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EED5Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii22AutoDerivativeFunctionILi3EED0Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi3EEixEj = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2Eb = comdat any

$_ZN6dealii5PointILi3EEC2Ev = comdat any

$_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii5PointILi3EEaSEOS1_ = comdat any

$_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm = comdat any

$_ZNK6dealii22AutoDerivativeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EE20get_formula_of_orderEj = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaD0Ev = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaD0Ev = comdat any

$_ZN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaD0Ev = comdat any

$_ZN6dealii6TensorILi1ELi1EEaSERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEaSERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEaSERKS1_ = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi1ELi1EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8max_sizeERKS3_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$__clang_call_terminate = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi1EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi1EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi1EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZN6dealii5PointILi1EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi1EEmIERKS1_ = comdat any

$_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi1EEpLERKS1_ = comdat any

$_ZN6dealii6VectorIdED0Ev = comdat any

$_ZN6dealii6VectorIdE6reinitEjb = comdat any

$_ZN6dealii6VectorIdE4swapERS1_ = comdat any

$_ZN6dealii6VectorIdEaSEd = comdat any

$_ZSt4fillIPddEvT_S1_RKT0_ = comdat any

$_ZN6dealii6VectorIdE5beginEv = comdat any

$_ZN6dealii6VectorIdE3endEv = comdat any

$_ZSt8__fill_aIPddEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZSt4swapIPdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi1ELi2EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi2EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZN6dealii5PointILi2EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEmIERKS1_ = comdat any

$_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEpLERKS1_ = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi3EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZN6dealii5PointILi3EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEmIERKS1_ = comdat any

$_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2ERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEpLERKS1_ = comdat any

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
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
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

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, i32 noundef %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii22AutoDerivativeFunctionILi1EEC5Edjd) align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %5 = alloca %"class.std::allocator.0", align 1
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef %3) #12
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !90
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  store double 1.000000e+00, ptr %7, align 8, !tbaa !93
  %8 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  call void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %9 unwind label %12

9:                                                ; preds = %4
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %10 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !116
  invoke void @_ZN6dealii22AutoDerivativeFunctionILi1EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1) #12
          to label %11 unwind label %14

11:                                               ; preds = %9
  call void @_ZN6dealii22AutoDerivativeFunctionILi1EE11set_formulaENS1_17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 0) #12
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %16

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #14
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !89 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %7
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  store double %1, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0) #14
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #12
  store double %1, ptr %6, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EE11set_formulaENS1_17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #3 comdat($_ZN6dealii22AutoDerivativeFunctionILi1EED5Ev) align 2 !prof !89 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !90
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #3 comdat($_ZN6dealii22AutoDerivativeFunctionILi1EED5Ev) align 2 {
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = getelementptr inbounds %"class.dealii::Tensor", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !89 {
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = alloca %"class.dealii::Point", align 8
  %12 = alloca %"class.dealii::Point", align 8
  %13 = alloca %"class.dealii::Point", align 8
  %14 = alloca %"class.dealii::Point", align 8
  %15 = alloca %"class.dealii::Point", align 8
  %16 = alloca %"class.dealii::Point", align 8
  %17 = alloca %"class.dealii::Point", align 8
  %18 = alloca %"class.dealii::Point", align 8
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #12
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !116
  switch i32 %20, label %93 [
    i32 1, label %21
    i32 0, label %38
    i32 2, label %58
  ]

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %22 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 3
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %23) #12
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %25 = load ptr, ptr %1, align 8, !tbaa !90
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = call noundef double %27(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) #12
  %29 = load ptr, ptr %1, align 8, !tbaa !90
  %30 = getelementptr inbounds ptr, ptr %29, i64 4
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef double %31(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %3) #12
  %33 = fsub double %28, %32
  %34 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 2
  %35 = load double, ptr %34, align 8, !tbaa !93
  %36 = fdiv double %33, %35
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  store double %36, ptr %37, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %93

38:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %39 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 3
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %39, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %40) #12
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %39, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %42) #12
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  %44 = load ptr, ptr %1, align 8, !tbaa !90
  %45 = getelementptr inbounds ptr, ptr %44, i64 4
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef double %46(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %3) #12
  %48 = load ptr, ptr %1, align 8, !tbaa !90
  %49 = getelementptr inbounds ptr, ptr %48, i64 4
  %50 = load ptr, ptr %49, align 8
  %51 = call noundef double %50(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %3) #12
  %52 = fsub double %47, %51
  %53 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 2
  %54 = load double, ptr %53, align 8, !tbaa !93
  %55 = fmul double %54, 2.000000e+00
  %56 = fdiv double %52, %55
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  store double %56, ptr %57, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %93

58:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %59 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 3
  %60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %59, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %60) #12
  %61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %59, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %62) #12
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %16) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %59, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %64) #12
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %17) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %59, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %66) #12
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %18) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  %68 = load ptr, ptr %1, align 8, !tbaa !90
  %69 = getelementptr inbounds ptr, ptr %68, i64 4
  %70 = load ptr, ptr %69, align 8
  %71 = call noundef double %70(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %3) #12
  %72 = fneg double %71
  %73 = load ptr, ptr %1, align 8, !tbaa !90
  %74 = getelementptr inbounds ptr, ptr %73, i64 4
  %75 = load ptr, ptr %74, align 8
  %76 = call noundef double %75(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %3) #12
  %77 = call double @llvm.fmuladd.f64(double %76, double 8.000000e+00, double %72)
  %78 = load ptr, ptr %1, align 8, !tbaa !90
  %79 = getelementptr inbounds ptr, ptr %78, i64 4
  %80 = load ptr, ptr %79, align 8
  %81 = call noundef double %80(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %3) #12
  %82 = call double @llvm.fmuladd.f64(double %81, double -8.000000e+00, double %77)
  %83 = load ptr, ptr %1, align 8, !tbaa !90
  %84 = getelementptr inbounds ptr, ptr %83, i64 4
  %85 = load ptr, ptr %84, align 8
  %86 = call noundef double %85(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef %3) #12
  %87 = fadd double %82, %86
  %88 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %1, i64 0, i32 2
  %89 = load double, ptr %88, align 8, !tbaa !93
  %90 = fmul double %89, 1.200000e+01
  %91 = fdiv double %87, %90
  %92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  store double %91, ptr %92, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  br label %93

93:                                               ; preds = %4, %58, %38, %21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !120 {
  br i1 %1, label %3, label %4, !prof !121

3:                                                ; preds = %2
  store double 0.000000e+00, ptr %0, align 8, !tbaa !117
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !122 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %4 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = getelementptr inbounds %"class.dealii::Tensor", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %4 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %4 = alloca %"class.dealii::Point", align 8
  %5 = alloca %"class.dealii::Vector", align 8
  %6 = alloca %"class.dealii::Vector", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Vector", align 8
  %11 = alloca %"class.dealii::Vector", align 8
  %12 = alloca %"class.dealii::Point", align 8
  %13 = alloca %"class.dealii::Point", align 8
  %14 = alloca %"class.dealii::Point", align 8
  %15 = alloca %"class.dealii::Point", align 8
  %16 = alloca %"class.dealii::Point", align 8
  %17 = alloca %"class.dealii::Point", align 8
  %18 = alloca %"class.dealii::Vector", align 8
  %19 = alloca %"class.dealii::Vector", align 8
  %20 = alloca %"class.dealii::Vector", align 8
  %21 = alloca %"class.dealii::Vector", align 8
  %22 = alloca %"class.dealii::Point", align 8
  %23 = alloca %"class.dealii::Point", align 8
  %24 = alloca %"class.dealii::Point", align 8
  %25 = alloca %"class.dealii::Point", align 8
  %26 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !116
  switch i32 %27, label %228 [
    i32 1, label %28
    i32 0, label %77
    i32 2, label %133
  ]

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #13
  %29 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !123
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef %30) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #13
  %31 = load i32, ptr %29, align 8, !tbaa !123
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %6, i32 noundef %31) #12
          to label %32 unwind label %38

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  %34 = load double, ptr %33, align 8, !tbaa !93
  %35 = fdiv double 1.000000e+00, %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %36 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %36, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %37) #12
          to label %40 unwind label %54

38:                                               ; preds = %28
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %75

40:                                               ; preds = %32
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
          to label %42 unwind label %54

42:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  %43 = load ptr, ptr %0, align 8, !tbaa !90
  %44 = getelementptr inbounds ptr, ptr %43, i64 5
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %5) #12
          to label %46 unwind label %56

46:                                               ; preds = %42
  %47 = load ptr, ptr %0, align 8, !tbaa !90
  %48 = getelementptr inbounds ptr, ptr %47, i64 5
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(88) %6) #12
          to label %50 unwind label %56

50:                                               ; preds = %46
  %51 = load i32, ptr %29, align 8, !tbaa !123
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %58, %50
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %6) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %5) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %228

54:                                               ; preds = %40, %32
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %73

56:                                               ; preds = %46, %42
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %73

58:                                               ; preds = %50, %58
  %59 = phi i64 [ %69, %58 ], [ 0, %50 ]
  %60 = trunc i64 %59 to i32
  %61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef %60) #12
  %62 = load double, ptr %61, align 8, !tbaa !117
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %6, i32 noundef %60) #12
  %64 = load double, ptr %63, align 8, !tbaa !117
  %65 = fsub double %62, %64
  %66 = fmul double %35, %65
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %59) #14
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %67, i32 noundef 0) #12
  store double %66, ptr %68, align 8, !tbaa !117
  %69 = add nuw nsw i64 %59, 1
  %70 = load i32, ptr %29, align 8, !tbaa !123
  %71 = zext i32 %70 to i64
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %58, label %53, !llvm.loop !124

73:                                               ; preds = %56, %54
  %74 = phi { ptr, i32 } [ %57, %56 ], [ %55, %54 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %6) #14
  br label %75

75:                                               ; preds = %73, %38
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %5) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %229

77:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #13
  %78 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !123
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef %79) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #13
  %80 = load i32, ptr %78, align 8, !tbaa !123
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef %80) #12
          to label %81 unwind label %88

81:                                               ; preds = %77
  %82 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  %83 = load double, ptr %82, align 8, !tbaa !93
  %84 = fmul double %83, 2.000000e+00
  %85 = fdiv double 1.000000e+00, %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %86 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %86, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %87) #12
          to label %90 unwind label %108

88:                                               ; preds = %77
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %131

90:                                               ; preds = %81
  %91 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %12) #12
          to label %92 unwind label %108

92:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  %93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %86, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %93) #12
          to label %94 unwind label %110

94:                                               ; preds = %92
  %95 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %13) #12
          to label %96 unwind label %110

96:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  %97 = load ptr, ptr %0, align 8, !tbaa !90
  %98 = getelementptr inbounds ptr, ptr %97, i64 5
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(88) %10) #12
          to label %100 unwind label %112

100:                                              ; preds = %96
  %101 = load ptr, ptr %0, align 8, !tbaa !90
  %102 = getelementptr inbounds ptr, ptr %101, i64 5
  %103 = load ptr, ptr %102, align 8
  invoke void %103(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(88) %11) #12
          to label %104 unwind label %112

104:                                              ; preds = %100
  %105 = load i32, ptr %78, align 8, !tbaa !123
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %114, %104
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %11) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %10) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %228

108:                                              ; preds = %90, %81
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  br label %129

110:                                              ; preds = %94, %92
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  br label %129

112:                                              ; preds = %100, %96
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %129

114:                                              ; preds = %104, %114
  %115 = phi i64 [ %125, %114 ], [ 0, %104 ]
  %116 = trunc i64 %115 to i32
  %117 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef %116) #12
  %118 = load double, ptr %117, align 8, !tbaa !117
  %119 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef %116) #12
  %120 = load double, ptr %119, align 8, !tbaa !117
  %121 = fsub double %118, %120
  %122 = fmul double %85, %121
  %123 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %115) #14
  %124 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %123, i32 noundef 0) #12
  store double %122, ptr %124, align 8, !tbaa !117
  %125 = add nuw nsw i64 %115, 1
  %126 = load i32, ptr %78, align 8, !tbaa !123
  %127 = zext i32 %126 to i64
  %128 = icmp ult i64 %125, %127
  br i1 %128, label %114, label %107, !llvm.loop !126

129:                                              ; preds = %112, %110, %108
  %130 = phi { ptr, i32 } [ %113, %112 ], [ %111, %110 ], [ %109, %108 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %11) #14
  br label %131

131:                                              ; preds = %129, %88
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %10) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %229

133:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %18) #13
  %134 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %135 = load i32, ptr %134, align 8, !tbaa !123
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %18, i32 noundef %135) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %19) #13
  %136 = load i32, ptr %134, align 8, !tbaa !123
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %19, i32 noundef %136) #12
          to label %137 unwind label %148

137:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %20) #13
  %138 = load i32, ptr %134, align 8, !tbaa !123
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef %138) #12
          to label %139 unwind label %150

139:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %21) #13
  %140 = load i32, ptr %134, align 8, !tbaa !123
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %21, i32 noundef %140) #12
          to label %141 unwind label %152

141:                                              ; preds = %139
  %142 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  %143 = load double, ptr %142, align 8, !tbaa !93
  %144 = fmul double %143, 1.200000e+01
  %145 = fdiv double 1.000000e+00, %144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #13
  %146 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %147 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %146, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %147) #12
          to label %154 unwind label %188

148:                                              ; preds = %133
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %226

150:                                              ; preds = %137
  %151 = landingpad { ptr, i32 }
          cleanup
  br label %224

152:                                              ; preds = %139
  %153 = landingpad { ptr, i32 }
          cleanup
  br label %222

154:                                              ; preds = %141
  %155 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %22) #12
          to label %156 unwind label %188

156:                                              ; preds = %154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #13
  %157 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %146, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %157) #12
          to label %158 unwind label %190

158:                                              ; preds = %156
  %159 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %23) #12
          to label %160 unwind label %190

160:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #13
  %161 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %146, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %161) #12
          to label %162 unwind label %192

162:                                              ; preds = %160
  %163 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %24) #12
          to label %164 unwind label %192

164:                                              ; preds = %162
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #13
  %165 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %146, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %165) #12
          to label %166 unwind label %194

166:                                              ; preds = %164
  %167 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %25) #12
          to label %168 unwind label %194

168:                                              ; preds = %166
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #13
  %169 = load ptr, ptr %0, align 8, !tbaa !90
  %170 = getelementptr inbounds ptr, ptr %169, i64 5
  %171 = load ptr, ptr %170, align 8
  invoke void %171(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(88) %18) #12
          to label %172 unwind label %196

172:                                              ; preds = %168
  %173 = load ptr, ptr %0, align 8, !tbaa !90
  %174 = getelementptr inbounds ptr, ptr %173, i64 5
  %175 = load ptr, ptr %174, align 8
  invoke void %175(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(88) %19) #12
          to label %176 unwind label %196

176:                                              ; preds = %172
  %177 = load ptr, ptr %0, align 8, !tbaa !90
  %178 = getelementptr inbounds ptr, ptr %177, i64 5
  %179 = load ptr, ptr %178, align 8
  invoke void %179(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(88) %20) #12
          to label %180 unwind label %196

180:                                              ; preds = %176
  %181 = load ptr, ptr %0, align 8, !tbaa !90
  %182 = getelementptr inbounds ptr, ptr %181, i64 5
  %183 = load ptr, ptr %182, align 8
  invoke void %183(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(88) %21) #12
          to label %184 unwind label %196

184:                                              ; preds = %180
  %185 = load i32, ptr %134, align 8, !tbaa !123
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %198, %184
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %21) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %21) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %20) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %20) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %19) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %19) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %18) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  br label %228

188:                                              ; preds = %154, %141
  %189 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #13
  br label %220

190:                                              ; preds = %158, %156
  %191 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #13
  br label %220

192:                                              ; preds = %162, %160
  %193 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #13
  br label %220

194:                                              ; preds = %166, %164
  %195 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #13
  br label %220

196:                                              ; preds = %180, %176, %172, %168
  %197 = landingpad { ptr, i32 }
          cleanup
  br label %220

198:                                              ; preds = %184, %198
  %199 = phi i64 [ %216, %198 ], [ 0, %184 ]
  %200 = trunc i64 %199 to i32
  %201 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %18, i32 noundef %200) #12
  %202 = load double, ptr %201, align 8, !tbaa !117
  %203 = fneg double %202
  %204 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %19, i32 noundef %200) #12
  %205 = load double, ptr %204, align 8, !tbaa !117
  %206 = call double @llvm.fmuladd.f64(double %205, double 8.000000e+00, double %203)
  %207 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef %200) #12
  %208 = load double, ptr %207, align 8, !tbaa !117
  %209 = call double @llvm.fmuladd.f64(double %208, double -8.000000e+00, double %206)
  %210 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %21, i32 noundef %200) #12
  %211 = load double, ptr %210, align 8, !tbaa !117
  %212 = fadd double %209, %211
  %213 = fmul double %145, %212
  %214 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %199) #14
  %215 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %214, i32 noundef 0) #12
  store double %213, ptr %215, align 8, !tbaa !117
  %216 = add nuw nsw i64 %199, 1
  %217 = load i32, ptr %134, align 8, !tbaa !123
  %218 = zext i32 %217 to i64
  %219 = icmp ult i64 %216, %218
  br i1 %219, label %198, label %187, !llvm.loop !127

220:                                              ; preds = %196, %194, %192, %190, %188
  %221 = phi { ptr, i32 } [ %197, %196 ], [ %195, %194 ], [ %193, %192 ], [ %191, %190 ], [ %189, %188 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %21) #14
  br label %222

222:                                              ; preds = %220, %152
  %223 = phi { ptr, i32 } [ %221, %220 ], [ %153, %152 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %21) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %20) #14
  br label %224

224:                                              ; preds = %222, %150
  %225 = phi { ptr, i32 } [ %223, %222 ], [ %151, %150 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %20) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %19) #14
  br label %226

226:                                              ; preds = %224, %148
  %227 = phi { ptr, i32 } [ %225, %224 ], [ %149, %148 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %19) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %18) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  br label %229

228:                                              ; preds = %3, %187, %107, %53
  ret void

229:                                              ; preds = %226, %131, %75
  %230 = phi { ptr, i32 } [ %227, %226 ], [ %132, %131 ], [ %76, %75 ]
  resume { ptr, i32 } %230
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !90
  %3 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  invoke void @_ZN6dealii6VectorIdE6reinitEjb(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i1 noundef zeroext false) #12
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !129 {
  %3 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds double, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 !prof !132 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !90
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !133

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !130
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !89 {
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = alloca %"class.dealii::Point", align 8
  %12 = alloca %"class.dealii::Point", align 8
  %13 = alloca %"class.dealii::Point", align 8
  %14 = alloca %"class.dealii::Point", align 8
  %15 = alloca %"class.dealii::Point", align 8
  %16 = alloca %"class.dealii::Point", align 8
  %17 = alloca %"class.dealii::Point", align 8
  %18 = alloca %"class.dealii::Point", align 8
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !116
  switch i32 %20, label %135 [
    i32 1, label %21
    i32 0, label %52
    i32 2, label %86
  ]

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %22 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %28

27:                                               ; preds = %28, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %135

28:                                               ; preds = %24, %28
  %29 = phi i64 [ 0, %24 ], [ %49, %28 ]
  %30 = phi i32 [ 0, %24 ], [ %48, %28 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %29) #14
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %32) #12
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %29) #14
  %35 = load ptr, ptr %0, align 8, !tbaa !90
  %36 = getelementptr inbounds ptr, ptr %35, i64 4
  %37 = load ptr, ptr %36, align 8
  %38 = call noundef double %37(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef %3) #12
  %39 = load ptr, ptr %0, align 8, !tbaa !90
  %40 = getelementptr inbounds ptr, ptr %39, i64 4
  %41 = load ptr, ptr %40, align 8
  %42 = call noundef double %41(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %3) #12
  %43 = fsub double %38, %42
  %44 = load double, ptr %26, align 8, !tbaa !93
  %45 = fdiv double %43, %44
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %29) #14
  %47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %46, i32 noundef 0) #12
  store double %45, ptr %47, align 8, !tbaa !117
  %48 = add i32 %30, 1
  %49 = zext i32 %48 to i64
  %50 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %51 = icmp ugt i64 %50, %49
  br i1 %51, label %28, label %27, !llvm.loop !134

52:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  %53 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %57 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %59

58:                                               ; preds = %59, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %135

59:                                               ; preds = %55, %59
  %60 = phi i64 [ 0, %55 ], [ %83, %59 ]
  %61 = phi i32 [ 0, %55 ], [ %82, %59 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %60) #14
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %63) #12
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %60) #14
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull align 8 dereferenceable(8) %66) #12
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  %68 = load ptr, ptr %0, align 8, !tbaa !90
  %69 = getelementptr inbounds ptr, ptr %68, i64 4
  %70 = load ptr, ptr %69, align 8
  %71 = call noundef double %70(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %3) #12
  %72 = load ptr, ptr %0, align 8, !tbaa !90
  %73 = getelementptr inbounds ptr, ptr %72, i64 4
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef double %74(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %3) #12
  %76 = fsub double %71, %75
  %77 = load double, ptr %57, align 8, !tbaa !93
  %78 = fmul double %77, 2.000000e+00
  %79 = fdiv double %76, %78
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %60) #14
  %81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %80, i32 noundef 0) #12
  store double %79, ptr %81, align 8, !tbaa !117
  %82 = add i32 %61, 1
  %83 = zext i32 %82 to i64
  %84 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %85 = icmp ugt i64 %84, %83
  br i1 %85, label %59, label %58, !llvm.loop !135

86:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #12
  %87 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %91 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %93

92:                                               ; preds = %93, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  br label %135

93:                                               ; preds = %89, %93
  %94 = phi i64 [ 0, %89 ], [ %132, %93 ]
  %95 = phi i32 [ 0, %89 ], [ %131, %93 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %94) #14
  %97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %90, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef nonnull align 8 dereferenceable(8) %97) #12
  %98 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  %99 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %90, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %99) #12
  %100 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %16) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  %101 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %94) #14
  %102 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %90, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef nonnull align 8 dereferenceable(8) %102) #12
  %103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %17) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  %104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %90, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %104) #12
  %105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %18) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  %106 = load ptr, ptr %0, align 8, !tbaa !90
  %107 = getelementptr inbounds ptr, ptr %106, i64 4
  %108 = load ptr, ptr %107, align 8
  %109 = call noundef double %108(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %3) #12
  %110 = fneg double %109
  %111 = load ptr, ptr %0, align 8, !tbaa !90
  %112 = getelementptr inbounds ptr, ptr %111, i64 4
  %113 = load ptr, ptr %112, align 8
  %114 = call noundef double %113(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %3) #12
  %115 = call double @llvm.fmuladd.f64(double %114, double 8.000000e+00, double %110)
  %116 = load ptr, ptr %0, align 8, !tbaa !90
  %117 = getelementptr inbounds ptr, ptr %116, i64 4
  %118 = load ptr, ptr %117, align 8
  %119 = call noundef double %118(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %3) #12
  %120 = call double @llvm.fmuladd.f64(double %119, double -8.000000e+00, double %115)
  %121 = load ptr, ptr %0, align 8, !tbaa !90
  %122 = getelementptr inbounds ptr, ptr %121, i64 4
  %123 = load ptr, ptr %122, align 8
  %124 = call noundef double %123(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef %3) #12
  %125 = fadd double %120, %124
  %126 = load double, ptr %91, align 8, !tbaa !93
  %127 = fmul double %126, 1.200000e+01
  %128 = fdiv double %125, %127
  %129 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %94) #14
  %130 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %129, i32 noundef 0) #12
  store double %128, ptr %130, align 8, !tbaa !117
  %131 = add i32 %95, 1
  %132 = zext i32 %131 to i64
  %133 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %134 = icmp ugt i64 %133, %132
  br i1 %134, label %93, label %92, !llvm.loop !136

135:                                              ; preds = %4, %92, %58, %27
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !137 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !138
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !141 {
  %3 = load ptr, ptr %0, align 8, !tbaa !140
  %4 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !89 {
  %4 = alloca %"class.dealii::Point", align 8
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = alloca %"class.dealii::Point", align 8
  %12 = alloca %"class.dealii::Point", align 8
  %13 = alloca %"class.dealii::Point", align 8
  %14 = alloca %"class.dealii::Point", align 8
  %15 = alloca %"class.dealii::Point", align 8
  %16 = alloca %"class.dealii::Point", align 8
  %17 = alloca %"class.dealii::Point", align 8
  br label %18

18:                                               ; preds = %18, %3
  %19 = phi i32 [ 0, %3 ], [ %23, %18 ]
  %20 = zext i32 %19 to i64
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %22 = icmp ugt i64 %21, %20
  %23 = add i32 %19, 1
  br i1 %22, label %18, label %24, !llvm.loop !142

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !116
  switch i32 %26, label %177 [
    i32 1, label %27
    i32 0, label %70
    i32 2, label %116
  ]

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %28 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %32 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %33 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %35

34:                                               ; preds = %43, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %177

35:                                               ; preds = %30, %43
  %36 = phi i64 [ 0, %30 ], [ %45, %43 ]
  %37 = phi i32 [ 0, %30 ], [ %44, %43 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %36) #14
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %39) #12
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %41 = load i32, ptr %32, align 8, !tbaa !123
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %48, %35
  %44 = add i32 %37, 1
  %45 = zext i32 %44 to i64
  %46 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %47 = icmp ugt i64 %46, %45
  br i1 %47, label %35, label %34, !llvm.loop !143

48:                                               ; preds = %35, %48
  %49 = phi i64 [ %66, %48 ], [ 0, %35 ]
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %36) #14
  %51 = load ptr, ptr %0, align 8, !tbaa !90
  %52 = getelementptr inbounds ptr, ptr %51, i64 4
  %53 = load ptr, ptr %52, align 8
  %54 = trunc i64 %49 to i32
  %55 = call noundef double %53(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %50, i32 noundef %54) #12
  %56 = load ptr, ptr %0, align 8, !tbaa !90
  %57 = getelementptr inbounds ptr, ptr %56, i64 4
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef double %58(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %54) #12
  %60 = fsub double %55, %59
  %61 = load double, ptr %33, align 8, !tbaa !93
  %62 = fdiv double %60, %61
  %63 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %36) #14
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %63, i64 noundef %49) #14
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %64, i32 noundef 0) #12
  store double %62, ptr %65, align 8, !tbaa !117
  %66 = add nuw nsw i64 %49, 1
  %67 = load i32, ptr %32, align 8, !tbaa !123
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %48, label %43, !llvm.loop !144

70:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %71 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %75 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %76 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %78

77:                                               ; preds = %89, %70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %177

78:                                               ; preds = %73, %89
  %79 = phi i64 [ 0, %73 ], [ %91, %89 ]
  %80 = phi i32 [ 0, %73 ], [ %90, %89 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %79) #14
  %82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %74, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef nonnull align 8 dereferenceable(8) %82) #12
  %83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %79) #14
  %85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %74, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 8 dereferenceable(8) %85) #12
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  %87 = load i32, ptr %75, align 8, !tbaa !123
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %94, %78
  %90 = add i32 %80, 1
  %91 = zext i32 %90 to i64
  %92 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %93 = icmp ugt i64 %92, %91
  br i1 %93, label %78, label %77, !llvm.loop !145

94:                                               ; preds = %78, %94
  %95 = phi i64 [ %112, %94 ], [ 0, %78 ]
  %96 = load ptr, ptr %0, align 8, !tbaa !90
  %97 = getelementptr inbounds ptr, ptr %96, i64 4
  %98 = load ptr, ptr %97, align 8
  %99 = trunc i64 %95 to i32
  %100 = call noundef double %98(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %99) #12
  %101 = load ptr, ptr %0, align 8, !tbaa !90
  %102 = getelementptr inbounds ptr, ptr %101, i64 4
  %103 = load ptr, ptr %102, align 8
  %104 = call noundef double %103(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %99) #12
  %105 = fsub double %100, %104
  %106 = load double, ptr %76, align 8, !tbaa !93
  %107 = fmul double %106, 2.000000e+00
  %108 = fdiv double %105, %107
  %109 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %79) #14
  %110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %109, i64 noundef %95) #14
  %111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %110, i32 noundef 0) #12
  store double %108, ptr %111, align 8, !tbaa !117
  %112 = add nuw nsw i64 %95, 1
  %113 = load i32, ptr %75, align 8, !tbaa !123
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %94, label %89, !llvm.loop !146

116:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #12
  %117 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 3
  %121 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %122 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction", ptr %0, i64 0, i32 2
  br label %124

123:                                              ; preds = %139, %116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %177

124:                                              ; preds = %119, %139
  %125 = phi i64 [ 0, %119 ], [ %141, %139 ]
  %126 = phi i32 [ 0, %119 ], [ %140, %139 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  %127 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %125) #14
  %128 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %120, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef nonnull align 8 dereferenceable(8) %128) #12
  %129 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %14) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %130 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %120, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %130) #12
  %131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  %132 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %125) #14
  %133 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %120, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef nonnull align 8 dereferenceable(8) %133) #12
  %134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %16) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  %135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %120, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %135) #12
  %136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %17) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  %137 = load i32, ptr %121, align 8, !tbaa !123
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %144, %124
  %140 = add i32 %126, 1
  %141 = zext i32 %140 to i64
  %142 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %143 = icmp ugt i64 %142, %141
  br i1 %143, label %124, label %123, !llvm.loop !147

144:                                              ; preds = %124, %144
  %145 = phi i64 [ %173, %144 ], [ 0, %124 ]
  %146 = load ptr, ptr %0, align 8, !tbaa !90
  %147 = getelementptr inbounds ptr, ptr %146, i64 4
  %148 = load ptr, ptr %147, align 8
  %149 = trunc i64 %145 to i32
  %150 = call noundef double %148(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %149) #12
  %151 = fneg double %150
  %152 = load ptr, ptr %0, align 8, !tbaa !90
  %153 = getelementptr inbounds ptr, ptr %152, i64 4
  %154 = load ptr, ptr %153, align 8
  %155 = call noundef double %154(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %149) #12
  %156 = call double @llvm.fmuladd.f64(double %155, double 8.000000e+00, double %151)
  %157 = load ptr, ptr %0, align 8, !tbaa !90
  %158 = getelementptr inbounds ptr, ptr %157, i64 4
  %159 = load ptr, ptr %158, align 8
  %160 = call noundef double %159(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %149) #12
  %161 = call double @llvm.fmuladd.f64(double %160, double -8.000000e+00, double %156)
  %162 = load ptr, ptr %0, align 8, !tbaa !90
  %163 = getelementptr inbounds ptr, ptr %162, i64 4
  %164 = load ptr, ptr %163, align 8
  %165 = call noundef double %164(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %149) #12
  %166 = fadd double %161, %165
  %167 = load double, ptr %122, align 8, !tbaa !93
  %168 = fmul double %167, 1.200000e+01
  %169 = fdiv double %166, %168
  %170 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %125) #14
  %171 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %170, i64 noundef %145) #14
  %172 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %171, i32 noundef 0) #12
  store double %169, ptr %172, align 8, !tbaa !117
  %173 = add nuw nsw i64 %145, 1
  %174 = load i32, ptr %121, align 8, !tbaa !123
  %175 = zext i32 %174 to i64
  %176 = icmp ult i64 %173, %175
  br i1 %176, label %144, label %139, !llvm.loop !148

177:                                              ; preds = %24, %123, %77, %34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load ptr, ptr %0, align 8, !tbaa !149
  %4 = getelementptr inbounds %"class.std::vector", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii22AutoDerivativeFunctionILi1EE20get_formula_of_orderEj(i32 noundef %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
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

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, i32 noundef %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii22AutoDerivativeFunctionILi2EEC5Edjd) align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %5 = alloca %"class.std::allocator.18", align 1
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef %3) #12
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !90
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  store double 1.000000e+00, ptr %7, align 8, !tbaa !151
  %8 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  call void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %9 unwind label %12

9:                                                ; preds = %4
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %10 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !159
  invoke void @_ZN6dealii22AutoDerivativeFunctionILi2EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1) #12
          to label %11 unwind label %14

11:                                               ; preds = %9
  call void @_ZN6dealii22AutoDerivativeFunctionILi2EE11set_formulaENS1_17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 0) #12
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %16

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #14
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !89 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  store double %1, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %5 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0) #14
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0) #12
  store double %1, ptr %6, align 8, !tbaa !117
  %7 = load double, ptr %3, align 8, !tbaa !151
  %8 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 1) #14
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 1) #12
  store double %7, ptr %9, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EE11set_formulaENS1_17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !160
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #3 comdat($_ZN6dealii22AutoDerivativeFunctionILi2EED5Ev) align 2 !prof !89 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !90
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #3 comdat($_ZN6dealii22AutoDerivativeFunctionILi2EED5Ev) align 2 {
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load ptr, ptr %0, align 8, !tbaa !160
  %4 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !162 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !89 {
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
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #12
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !159
  switch i32 %20, label %108 [
    i32 1, label %21
    i32 0, label %43
    i32 2, label %68
  ]

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  %22 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 2
  br label %25

24:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %108

25:                                               ; preds = %21, %25
  %26 = phi i1 [ true, %21 ], [ false, %25 ]
  %27 = phi i64 [ 0, %21 ], [ 1, %25 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %27) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %28) #12
  %29 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  %30 = load ptr, ptr %1, align 8, !tbaa !90
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = call noundef double %32(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) #12
  %34 = load ptr, ptr %1, align 8, !tbaa !90
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  %37 = call noundef double %36(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %3) #12
  %38 = fsub double %33, %37
  %39 = load double, ptr %23, align 8, !tbaa !151
  %40 = fdiv double %38, %39
  %41 = trunc i64 %27 to i32
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %41) #12
  store double %40, ptr %42, align 8, !tbaa !117
  br i1 %26, label %25, label %24, !llvm.loop !163

43:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  %44 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 3
  %45 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 2
  br label %47

46:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %108

47:                                               ; preds = %43, %47
  %48 = phi i1 [ true, %43 ], [ false, %47 ]
  %49 = phi i64 [ 0, %43 ], [ 1, %47 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %50 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %44, i64 noundef %49) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %50) #12
  %51 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  %52 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %44, i64 noundef %49) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %52) #12
  %53 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %10) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  %54 = load ptr, ptr %1, align 8, !tbaa !90
  %55 = getelementptr inbounds ptr, ptr %54, i64 4
  %56 = load ptr, ptr %55, align 8
  %57 = call noundef double %56(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %3) #12
  %58 = load ptr, ptr %1, align 8, !tbaa !90
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef double %60(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %3) #12
  %62 = fsub double %57, %61
  %63 = load double, ptr %45, align 8, !tbaa !151
  %64 = fmul double %63, 2.000000e+00
  %65 = fdiv double %62, %64
  %66 = trunc i64 %49 to i32
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %66) #12
  store double %65, ptr %67, align 8, !tbaa !117
  br i1 %48, label %47, label %46, !llvm.loop !164

68:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #12
  %69 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 3
  %70 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %1, i64 0, i32 2
  br label %72

71:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  br label %108

72:                                               ; preds = %68, %72
  %73 = phi i1 [ true, %68 ], [ false, %72 ]
  %74 = phi i64 [ 0, %68 ], [ 1, %72 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #13
  %75 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef %74) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %75) #12
  %76 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %15) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #13
  %77 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef %74) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %77) #12
  %78 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #13
  %79 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef %74) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %79) #12
  %80 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %17) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #13
  %81 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef %74) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %81) #12
  %82 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %18) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #13
  %83 = load ptr, ptr %1, align 8, !tbaa !90
  %84 = getelementptr inbounds ptr, ptr %83, i64 4
  %85 = load ptr, ptr %84, align 8
  %86 = call noundef double %85(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %3) #12
  %87 = fneg double %86
  %88 = load ptr, ptr %1, align 8, !tbaa !90
  %89 = getelementptr inbounds ptr, ptr %88, i64 4
  %90 = load ptr, ptr %89, align 8
  %91 = call noundef double %90(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %3) #12
  %92 = call double @llvm.fmuladd.f64(double %91, double 8.000000e+00, double %87)
  %93 = load ptr, ptr %1, align 8, !tbaa !90
  %94 = getelementptr inbounds ptr, ptr %93, i64 4
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef double %95(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %3) #12
  %97 = call double @llvm.fmuladd.f64(double %96, double -8.000000e+00, double %92)
  %98 = load ptr, ptr %1, align 8, !tbaa !90
  %99 = getelementptr inbounds ptr, ptr %98, i64 4
  %100 = load ptr, ptr %99, align 8
  %101 = call noundef double %100(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %3) #12
  %102 = fadd double %97, %101
  %103 = load double, ptr %70, align 8, !tbaa !151
  %104 = fmul double %103, 1.200000e+01
  %105 = fdiv double %102, %104
  %106 = trunc i64 %74 to i32
  %107 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %106) #12
  store double %105, ptr %107, align 8, !tbaa !117
  br i1 %73, label %72, label %71, !llvm.loop !165

108:                                              ; preds = %4, %71, %46, %24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !166 {
  br i1 %1, label %3, label %4, !prof !167

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !117
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !prof !168 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !prof !169 {
  %4 = alloca %"class.dealii::Point.23", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load ptr, ptr %0, align 8, !tbaa !160
  %4 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %4 = alloca %"class.dealii::Point.23", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %4 = alloca %"class.dealii::Point.23", align 8
  %5 = alloca %"class.dealii::Vector", align 8
  %6 = alloca %"class.dealii::Vector", align 8
  %7 = alloca %"class.dealii::Point.23", align 8
  %8 = alloca %"class.dealii::Point.23", align 8
  %9 = alloca %"class.dealii::Point.23", align 8
  %10 = alloca %"class.dealii::Vector", align 8
  %11 = alloca %"class.dealii::Vector", align 8
  %12 = alloca %"class.dealii::Point.23", align 8
  %13 = alloca %"class.dealii::Point.23", align 8
  %14 = alloca %"class.dealii::Point.23", align 8
  %15 = alloca %"class.dealii::Point.23", align 8
  %16 = alloca %"class.dealii::Point.23", align 8
  %17 = alloca %"class.dealii::Point.23", align 8
  %18 = alloca %"class.dealii::Vector", align 8
  %19 = alloca %"class.dealii::Vector", align 8
  %20 = alloca %"class.dealii::Vector", align 8
  %21 = alloca %"class.dealii::Vector", align 8
  %22 = alloca %"class.dealii::Point.23", align 8
  %23 = alloca %"class.dealii::Point.23", align 8
  %24 = alloca %"class.dealii::Point.23", align 8
  %25 = alloca %"class.dealii::Point.23", align 8
  %26 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !159
  switch i32 %27, label %246 [
    i32 1, label %28
    i32 0, label %83
    i32 2, label %145
  ]

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #13
  %29 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !170
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef %30) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #13
  %31 = load i32, ptr %29, align 8, !tbaa !170
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %6, i32 noundef %31) #12
          to label %32 unwind label %38

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %34 = load double, ptr %33, align 8, !tbaa !151
  %35 = fdiv double 1.000000e+00, %34
  %36 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  br label %40

37:                                               ; preds = %59
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %6) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %5) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %246

38:                                               ; preds = %28
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %81

40:                                               ; preds = %32, %59
  %41 = phi i1 [ true, %32 ], [ false, %59 ]
  %42 = phi i64 [ 0, %32 ], [ 1, %59 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %43 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %42) #14
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %43) #12
          to label %44 unwind label %60

44:                                               ; preds = %40
  %45 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %7) #12
          to label %46 unwind label %60

46:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  %47 = load ptr, ptr %0, align 8, !tbaa !90
  %48 = getelementptr inbounds ptr, ptr %47, i64 5
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %5) #12
          to label %50 unwind label %62

50:                                               ; preds = %46
  %51 = load ptr, ptr %0, align 8, !tbaa !90
  %52 = getelementptr inbounds ptr, ptr %51, i64 5
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(88) %6) #12
          to label %54 unwind label %62

54:                                               ; preds = %50
  %55 = load i32, ptr %29, align 8, !tbaa !170
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = trunc i64 %42 to i32
  br label %64

59:                                               ; preds = %64, %54
  br i1 %41, label %40, label %37, !llvm.loop !171

60:                                               ; preds = %44, %40
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %79

62:                                               ; preds = %50, %46
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %79

64:                                               ; preds = %57, %64
  %65 = phi i64 [ 0, %57 ], [ %75, %64 ]
  %66 = trunc i64 %65 to i32
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef %66) #12
  %68 = load double, ptr %67, align 8, !tbaa !117
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %6, i32 noundef %66) #12
  %70 = load double, ptr %69, align 8, !tbaa !117
  %71 = fsub double %68, %70
  %72 = fmul double %35, %71
  %73 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %65) #14
  %74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %73, i32 noundef %58) #12
  store double %72, ptr %74, align 8, !tbaa !117
  %75 = add nuw nsw i64 %65, 1
  %76 = load i32, ptr %29, align 8, !tbaa !170
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %64, label %59, !llvm.loop !172

79:                                               ; preds = %62, %60
  %80 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %6) #14
  br label %81

81:                                               ; preds = %79, %38
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %5) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %247

83:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #13
  %84 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !170
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef %85) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #13
  %86 = load i32, ptr %84, align 8, !tbaa !170
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef %86) #12
          to label %87 unwind label %94

87:                                               ; preds = %83
  %88 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %89 = load double, ptr %88, align 8, !tbaa !151
  %90 = fmul double %89, 2.000000e+00
  %91 = fdiv double 1.000000e+00, %90
  %92 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  br label %96

93:                                               ; preds = %119
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %11) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %10) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  br label %246

94:                                               ; preds = %83
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %143

96:                                               ; preds = %87, %119
  %97 = phi i1 [ true, %87 ], [ false, %119 ]
  %98 = phi i64 [ 0, %87 ], [ 1, %119 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  %99 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %92, i64 noundef %98) #14
  invoke void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %99) #12
          to label %100 unwind label %120

100:                                              ; preds = %96
  %101 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %12) #12
          to label %102 unwind label %120

102:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  %103 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %92, i64 noundef %98) #14
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %103) #12
          to label %104 unwind label %122

104:                                              ; preds = %102
  %105 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %13) #12
          to label %106 unwind label %122

106:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  %107 = load ptr, ptr %0, align 8, !tbaa !90
  %108 = getelementptr inbounds ptr, ptr %107, i64 5
  %109 = load ptr, ptr %108, align 8
  invoke void %109(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(88) %10) #12
          to label %110 unwind label %124

110:                                              ; preds = %106
  %111 = load ptr, ptr %0, align 8, !tbaa !90
  %112 = getelementptr inbounds ptr, ptr %111, i64 5
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(88) %11) #12
          to label %114 unwind label %124

114:                                              ; preds = %110
  %115 = load i32, ptr %84, align 8, !tbaa !170
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = trunc i64 %98 to i32
  br label %126

119:                                              ; preds = %126, %114
  br i1 %97, label %96, label %93, !llvm.loop !173

120:                                              ; preds = %100, %96
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  br label %141

122:                                              ; preds = %104, %102
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  br label %141

124:                                              ; preds = %110, %106
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %141

126:                                              ; preds = %117, %126
  %127 = phi i64 [ 0, %117 ], [ %137, %126 ]
  %128 = trunc i64 %127 to i32
  %129 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef %128) #12
  %130 = load double, ptr %129, align 8, !tbaa !117
  %131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef %128) #12
  %132 = load double, ptr %131, align 8, !tbaa !117
  %133 = fsub double %130, %132
  %134 = fmul double %91, %133
  %135 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %127) #14
  %136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %135, i32 noundef %118) #12
  store double %134, ptr %136, align 8, !tbaa !117
  %137 = add nuw nsw i64 %127, 1
  %138 = load i32, ptr %84, align 8, !tbaa !170
  %139 = zext i32 %138 to i64
  %140 = icmp ult i64 %137, %139
  br i1 %140, label %126, label %119, !llvm.loop !174

141:                                              ; preds = %124, %122, %120
  %142 = phi { ptr, i32 } [ %125, %124 ], [ %123, %122 ], [ %121, %120 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %11) #14
  br label %143

143:                                              ; preds = %141, %94
  %144 = phi { ptr, i32 } [ %142, %141 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %10) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  br label %247

145:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %18) #13
  %146 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !170
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %18, i32 noundef %147) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %19) #13
  %148 = load i32, ptr %146, align 8, !tbaa !170
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %19, i32 noundef %148) #12
          to label %149 unwind label %160

149:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %20) #13
  %150 = load i32, ptr %146, align 8, !tbaa !170
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef %150) #12
          to label %151 unwind label %162

151:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %21) #13
  %152 = load i32, ptr %146, align 8, !tbaa !170
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %21, i32 noundef %152) #12
          to label %153 unwind label %164

153:                                              ; preds = %151
  %154 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  %155 = load double, ptr %154, align 8, !tbaa !151
  %156 = fmul double %155, 1.200000e+01
  %157 = fdiv double 1.000000e+00, %156
  %158 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  br label %166

159:                                              ; preds = %205
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %21) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %21) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %20) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %20) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %19) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %19) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %18) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  br label %246

160:                                              ; preds = %145
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %244

162:                                              ; preds = %149
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %242

164:                                              ; preds = %151
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %240

166:                                              ; preds = %153, %205
  %167 = phi i1 [ true, %153 ], [ false, %205 ]
  %168 = phi i64 [ 0, %153 ], [ 1, %205 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #13
  %169 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %158, i64 noundef %168) #14
  invoke void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %169) #12
          to label %170 unwind label %206

170:                                              ; preds = %166
  %171 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %22) #12
          to label %172 unwind label %206

172:                                              ; preds = %170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #13
  %173 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %158, i64 noundef %168) #14
  invoke void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %173) #12
          to label %174 unwind label %208

174:                                              ; preds = %172
  %175 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %23) #12
          to label %176 unwind label %208

176:                                              ; preds = %174
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #13
  %177 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %158, i64 noundef %168) #14
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %177) #12
          to label %178 unwind label %210

178:                                              ; preds = %176
  %179 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %24) #12
          to label %180 unwind label %210

180:                                              ; preds = %178
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #13
  %181 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %158, i64 noundef %168) #14
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %181) #12
          to label %182 unwind label %212

182:                                              ; preds = %180
  %183 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %25) #12
          to label %184 unwind label %212

184:                                              ; preds = %182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #13
  %185 = load ptr, ptr %0, align 8, !tbaa !90
  %186 = getelementptr inbounds ptr, ptr %185, i64 5
  %187 = load ptr, ptr %186, align 8
  invoke void %187(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(88) %18) #12
          to label %188 unwind label %214

188:                                              ; preds = %184
  %189 = load ptr, ptr %0, align 8, !tbaa !90
  %190 = getelementptr inbounds ptr, ptr %189, i64 5
  %191 = load ptr, ptr %190, align 8
  invoke void %191(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(88) %19) #12
          to label %192 unwind label %214

192:                                              ; preds = %188
  %193 = load ptr, ptr %0, align 8, !tbaa !90
  %194 = getelementptr inbounds ptr, ptr %193, i64 5
  %195 = load ptr, ptr %194, align 8
  invoke void %195(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(88) %20) #12
          to label %196 unwind label %214

196:                                              ; preds = %192
  %197 = load ptr, ptr %0, align 8, !tbaa !90
  %198 = getelementptr inbounds ptr, ptr %197, i64 5
  %199 = load ptr, ptr %198, align 8
  invoke void %199(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(88) %21) #12
          to label %200 unwind label %214

200:                                              ; preds = %196
  %201 = load i32, ptr %146, align 8, !tbaa !170
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = trunc i64 %168 to i32
  br label %216

205:                                              ; preds = %216, %200
  br i1 %167, label %166, label %159, !llvm.loop !175

206:                                              ; preds = %170, %166
  %207 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #13
  br label %238

208:                                              ; preds = %174, %172
  %209 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #13
  br label %238

210:                                              ; preds = %178, %176
  %211 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #13
  br label %238

212:                                              ; preds = %182, %180
  %213 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #13
  br label %238

214:                                              ; preds = %196, %192, %188, %184
  %215 = landingpad { ptr, i32 }
          cleanup
  br label %238

216:                                              ; preds = %203, %216
  %217 = phi i64 [ 0, %203 ], [ %234, %216 ]
  %218 = trunc i64 %217 to i32
  %219 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %18, i32 noundef %218) #12
  %220 = load double, ptr %219, align 8, !tbaa !117
  %221 = fneg double %220
  %222 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %19, i32 noundef %218) #12
  %223 = load double, ptr %222, align 8, !tbaa !117
  %224 = call double @llvm.fmuladd.f64(double %223, double 8.000000e+00, double %221)
  %225 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef %218) #12
  %226 = load double, ptr %225, align 8, !tbaa !117
  %227 = call double @llvm.fmuladd.f64(double %226, double -8.000000e+00, double %224)
  %228 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %21, i32 noundef %218) #12
  %229 = load double, ptr %228, align 8, !tbaa !117
  %230 = fadd double %227, %229
  %231 = fmul double %157, %230
  %232 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %217) #14
  %233 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %232, i32 noundef %204) #12
  store double %231, ptr %233, align 8, !tbaa !117
  %234 = add nuw nsw i64 %217, 1
  %235 = load i32, ptr %146, align 8, !tbaa !170
  %236 = zext i32 %235 to i64
  %237 = icmp ult i64 %234, %236
  br i1 %237, label %216, label %205, !llvm.loop !176

238:                                              ; preds = %214, %212, %210, %208, %206
  %239 = phi { ptr, i32 } [ %215, %214 ], [ %213, %212 ], [ %211, %210 ], [ %209, %208 ], [ %207, %206 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %21) #14
  br label %240

240:                                              ; preds = %238, %164
  %241 = phi { ptr, i32 } [ %239, %238 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %21) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %20) #14
  br label %242

242:                                              ; preds = %240, %162
  %243 = phi { ptr, i32 } [ %241, %240 ], [ %163, %162 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %20) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %19) #14
  br label %244

244:                                              ; preds = %242, %160
  %245 = phi { ptr, i32 } [ %243, %242 ], [ %161, %160 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %19) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %18) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  br label %247

246:                                              ; preds = %3, %159, %93, %37
  ret void

247:                                              ; preds = %244, %143, %81
  %248 = phi { ptr, i32 } [ %245, %244 ], [ %144, %143 ], [ %82, %81 ]
  resume { ptr, i32 } %248
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !89 {
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
  %20 = load i32, ptr %19, align 8, !tbaa !159
  switch i32 %20, label %150 [
    i32 1, label %21
    i32 0, label %57
    i32 2, label %96
  ]

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  %22 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  br label %27

27:                                               ; preds = %24, %31
  %28 = phi i64 [ 0, %24 ], [ %33, %31 ]
  %29 = phi i32 [ 0, %24 ], [ %32, %31 ]
  br label %36

30:                                               ; preds = %31, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %150

31:                                               ; preds = %36
  %32 = add i32 %29, 1
  %33 = zext i32 %32 to i64
  %34 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %35 = icmp ugt i64 %34, %33
  br i1 %35, label %27, label %30, !llvm.loop !177

36:                                               ; preds = %27, %36
  %37 = phi i1 [ true, %27 ], [ false, %36 ]
  %38 = phi i64 [ 0, %27 ], [ 1, %36 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %39 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %28) #14
  %40 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %38) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %40) #12
  %41 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  %42 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %28) #14
  %43 = load ptr, ptr %0, align 8, !tbaa !90
  %44 = getelementptr inbounds ptr, ptr %43, i64 4
  %45 = load ptr, ptr %44, align 8
  %46 = call noundef double %45(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %42, i32 noundef %3) #12
  %47 = load ptr, ptr %0, align 8, !tbaa !90
  %48 = getelementptr inbounds ptr, ptr %47, i64 4
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef double %49(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %3) #12
  %51 = fsub double %46, %50
  %52 = load double, ptr %26, align 8, !tbaa !151
  %53 = fdiv double %51, %52
  %54 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %28) #14
  %55 = trunc i64 %38 to i32
  %56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %54, i32 noundef %55) #12
  store double %53, ptr %56, align 8, !tbaa !117
  br i1 %37, label %36, label %31, !llvm.loop !178

57:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  %58 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %62 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  br label %63

63:                                               ; preds = %60, %67
  %64 = phi i64 [ 0, %60 ], [ %69, %67 ]
  %65 = phi i32 [ 0, %60 ], [ %68, %67 ]
  br label %72

66:                                               ; preds = %67, %57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %150

67:                                               ; preds = %72
  %68 = add i32 %65, 1
  %69 = zext i32 %68 to i64
  %70 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %71 = icmp ugt i64 %70, %69
  br i1 %71, label %63, label %66, !llvm.loop !179

72:                                               ; preds = %63, %72
  %73 = phi i1 [ true, %63 ], [ false, %72 ]
  %74 = phi i64 [ 0, %63 ], [ 1, %72 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %75 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %64) #14
  %76 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %61, i64 noundef %74) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(16) %76) #12
  %77 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  %78 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %64) #14
  %79 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %61, i64 noundef %74) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %79) #12
  %80 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %10) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  %81 = load ptr, ptr %0, align 8, !tbaa !90
  %82 = getelementptr inbounds ptr, ptr %81, i64 4
  %83 = load ptr, ptr %82, align 8
  %84 = call noundef double %83(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %3) #12
  %85 = load ptr, ptr %0, align 8, !tbaa !90
  %86 = getelementptr inbounds ptr, ptr %85, i64 4
  %87 = load ptr, ptr %86, align 8
  %88 = call noundef double %87(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %3) #12
  %89 = fsub double %84, %88
  %90 = load double, ptr %62, align 8, !tbaa !151
  %91 = fmul double %90, 2.000000e+00
  %92 = fdiv double %89, %91
  %93 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %64) #14
  %94 = trunc i64 %74 to i32
  %95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %93, i32 noundef %94) #12
  store double %92, ptr %95, align 8, !tbaa !117
  br i1 %73, label %72, label %67, !llvm.loop !180

96:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #12
  %97 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %101 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  br label %102

102:                                              ; preds = %99, %106
  %103 = phi i64 [ 0, %99 ], [ %108, %106 ]
  %104 = phi i32 [ 0, %99 ], [ %107, %106 ]
  br label %111

105:                                              ; preds = %106, %96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  br label %150

106:                                              ; preds = %111
  %107 = add i32 %104, 1
  %108 = zext i32 %107 to i64
  %109 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %110 = icmp ugt i64 %109, %108
  br i1 %110, label %102, label %105, !llvm.loop !181

111:                                              ; preds = %102, %111
  %112 = phi i1 [ true, %102 ], [ false, %111 ]
  %113 = phi i64 [ 0, %102 ], [ 1, %111 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #13
  %114 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %103) #14
  %115 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %100, i64 noundef %113) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %114, ptr noundef nonnull align 8 dereferenceable(16) %115) #12
  %116 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %15) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #13
  %117 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %100, i64 noundef %113) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %117) #12
  %118 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #13
  %119 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %103) #14
  %120 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %100, i64 noundef %113) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %119, ptr noundef nonnull align 8 dereferenceable(16) %120) #12
  %121 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %17) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #13
  %122 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %100, i64 noundef %113) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %122) #12
  %123 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %18) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #13
  %124 = load ptr, ptr %0, align 8, !tbaa !90
  %125 = getelementptr inbounds ptr, ptr %124, i64 4
  %126 = load ptr, ptr %125, align 8
  %127 = call noundef double %126(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %3) #12
  %128 = fneg double %127
  %129 = load ptr, ptr %0, align 8, !tbaa !90
  %130 = getelementptr inbounds ptr, ptr %129, i64 4
  %131 = load ptr, ptr %130, align 8
  %132 = call noundef double %131(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %3) #12
  %133 = call double @llvm.fmuladd.f64(double %132, double 8.000000e+00, double %128)
  %134 = load ptr, ptr %0, align 8, !tbaa !90
  %135 = getelementptr inbounds ptr, ptr %134, i64 4
  %136 = load ptr, ptr %135, align 8
  %137 = call noundef double %136(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %3) #12
  %138 = call double @llvm.fmuladd.f64(double %137, double -8.000000e+00, double %133)
  %139 = load ptr, ptr %0, align 8, !tbaa !90
  %140 = getelementptr inbounds ptr, ptr %139, i64 4
  %141 = load ptr, ptr %140, align 8
  %142 = call noundef double %141(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %3) #12
  %143 = fadd double %138, %142
  %144 = load double, ptr %101, align 8, !tbaa !151
  %145 = fmul double %144, 1.200000e+01
  %146 = fdiv double %143, %145
  %147 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %103) #14
  %148 = trunc i64 %113 to i32
  %149 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %147, i32 noundef %148) #12
  store double %146, ptr %149, align 8, !tbaa !117
  br i1 %112, label %111, label %106, !llvm.loop !182

150:                                              ; preds = %4, %105, %66, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !183 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = load ptr, ptr %0, align 8, !tbaa !186
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !187 {
  %3 = load ptr, ptr %0, align 8, !tbaa !186
  %4 = getelementptr inbounds %"class.dealii::Point.23", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !89 {
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
  br label %18

18:                                               ; preds = %18, %3
  %19 = phi i32 [ 0, %3 ], [ %23, %18 ]
  %20 = zext i32 %19 to i64
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %22 = icmp ugt i64 %21, %20
  %23 = add i32 %19, 1
  br i1 %22, label %18, label %24, !llvm.loop !188

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !159
  switch i32 %26, label %195 [
    i32 1, label %27
    i32 0, label %76
    i32 2, label %128
  ]

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #12
  %28 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %32 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %33 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  br label %34

34:                                               ; preds = %30, %38
  %35 = phi i64 [ 0, %30 ], [ %40, %38 ]
  %36 = phi i32 [ 0, %30 ], [ %39, %38 ]
  br label %43

37:                                               ; preds = %38, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %195

38:                                               ; preds = %53
  %39 = add i32 %36, 1
  %40 = zext i32 %39 to i64
  %41 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %42 = icmp ugt i64 %41, %40
  br i1 %42, label %34, label %37, !llvm.loop !189

43:                                               ; preds = %34, %53
  %44 = phi i1 [ true, %34 ], [ false, %53 ]
  %45 = phi i64 [ 0, %34 ], [ 1, %53 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %46 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %35) #14
  %47 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %45) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %47) #12
  %48 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %49 = load i32, ptr %32, align 8, !tbaa !170
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = trunc i64 %45 to i32
  br label %54

53:                                               ; preds = %54, %43
  br i1 %44, label %43, label %38, !llvm.loop !190

54:                                               ; preds = %51, %54
  %55 = phi i64 [ 0, %51 ], [ %72, %54 ]
  %56 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %35) #14
  %57 = load ptr, ptr %0, align 8, !tbaa !90
  %58 = getelementptr inbounds ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  %60 = trunc i64 %55 to i32
  %61 = call noundef double %59(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %56, i32 noundef %60) #12
  %62 = load ptr, ptr %0, align 8, !tbaa !90
  %63 = getelementptr inbounds ptr, ptr %62, i64 4
  %64 = load ptr, ptr %63, align 8
  %65 = call noundef double %64(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %60) #12
  %66 = fsub double %61, %65
  %67 = load double, ptr %33, align 8, !tbaa !151
  %68 = fdiv double %66, %67
  %69 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %35) #14
  %70 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef %55) #14
  %71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %70, i32 noundef %52) #12
  store double %68, ptr %71, align 8, !tbaa !117
  %72 = add nuw nsw i64 %55, 1
  %73 = load i32, ptr %32, align 8, !tbaa !170
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %54, label %53, !llvm.loop !191

76:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  %77 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %81 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %82 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  br label %83

83:                                               ; preds = %79, %87
  %84 = phi i64 [ 0, %79 ], [ %89, %87 ]
  %85 = phi i32 [ 0, %79 ], [ %88, %87 ]
  br label %92

86:                                               ; preds = %87, %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %195

87:                                               ; preds = %105
  %88 = add i32 %85, 1
  %89 = zext i32 %88 to i64
  %90 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %91 = icmp ugt i64 %90, %89
  br i1 %91, label %83, label %86, !llvm.loop !192

92:                                               ; preds = %83, %105
  %93 = phi i1 [ true, %83 ], [ false, %105 ]
  %94 = phi i64 [ 0, %83 ], [ 1, %105 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  %95 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %84) #14
  %96 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %80, i64 noundef %94) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(16) %96) #12
  %97 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %98 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %84) #14
  %99 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %80, i64 noundef %94) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %98, ptr noundef nonnull align 8 dereferenceable(16) %99) #12
  %100 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  %101 = load i32, ptr %81, align 8, !tbaa !170
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  %104 = trunc i64 %94 to i32
  br label %106

105:                                              ; preds = %106, %92
  br i1 %93, label %92, label %87, !llvm.loop !193

106:                                              ; preds = %103, %106
  %107 = phi i64 [ 0, %103 ], [ %124, %106 ]
  %108 = load ptr, ptr %0, align 8, !tbaa !90
  %109 = getelementptr inbounds ptr, ptr %108, i64 4
  %110 = load ptr, ptr %109, align 8
  %111 = trunc i64 %107 to i32
  %112 = call noundef double %110(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %111) #12
  %113 = load ptr, ptr %0, align 8, !tbaa !90
  %114 = getelementptr inbounds ptr, ptr %113, i64 4
  %115 = load ptr, ptr %114, align 8
  %116 = call noundef double %115(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %111) #12
  %117 = fsub double %112, %116
  %118 = load double, ptr %82, align 8, !tbaa !151
  %119 = fmul double %118, 2.000000e+00
  %120 = fdiv double %117, %119
  %121 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %84) #14
  %122 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %121, i64 noundef %107) #14
  %123 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %122, i32 noundef %104) #12
  store double %120, ptr %123, align 8, !tbaa !117
  %124 = add nuw nsw i64 %107, 1
  %125 = load i32, ptr %81, align 8, !tbaa !170
  %126 = zext i32 %125 to i64
  %127 = icmp ult i64 %124, %126
  br i1 %127, label %106, label %105, !llvm.loop !194

128:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #12
  %129 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 3
  %133 = getelementptr inbounds %"class.dealii::Function.14", ptr %0, i64 0, i32 2
  %134 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.13", ptr %0, i64 0, i32 2
  br label %135

135:                                              ; preds = %131, %139
  %136 = phi i64 [ 0, %131 ], [ %141, %139 ]
  %137 = phi i32 [ 0, %131 ], [ %140, %139 ]
  br label %144

138:                                              ; preds = %139, %128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  br label %195

139:                                              ; preds = %161
  %140 = add i32 %137, 1
  %141 = zext i32 %140 to i64
  %142 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %143 = icmp ugt i64 %142, %141
  br i1 %143, label %135, label %138, !llvm.loop !195

144:                                              ; preds = %135, %161
  %145 = phi i1 [ true, %135 ], [ false, %161 ]
  %146 = phi i64 [ 0, %135 ], [ 1, %161 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  %147 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %136) #14
  %148 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %132, i64 noundef %146) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %147, ptr noundef nonnull align 8 dereferenceable(16) %148) #12
  %149 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %14) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #13
  %150 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %132, i64 noundef %146) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %15, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %150) #12
  %151 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %15) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #13
  %152 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %136) #14
  %153 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %132, i64 noundef %146) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %152, ptr noundef nonnull align 8 dereferenceable(16) %153) #12
  %154 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #13
  %155 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %132, i64 noundef %146) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.23") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %155) #12
  %156 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %17) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #13
  %157 = load i32, ptr %133, align 8, !tbaa !170
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %144
  %160 = trunc i64 %146 to i32
  br label %162

161:                                              ; preds = %162, %144
  br i1 %145, label %144, label %139, !llvm.loop !196

162:                                              ; preds = %159, %162
  %163 = phi i64 [ 0, %159 ], [ %191, %162 ]
  %164 = load ptr, ptr %0, align 8, !tbaa !90
  %165 = getelementptr inbounds ptr, ptr %164, i64 4
  %166 = load ptr, ptr %165, align 8
  %167 = trunc i64 %163 to i32
  %168 = call noundef double %166(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %167) #12
  %169 = fneg double %168
  %170 = load ptr, ptr %0, align 8, !tbaa !90
  %171 = getelementptr inbounds ptr, ptr %170, i64 4
  %172 = load ptr, ptr %171, align 8
  %173 = call noundef double %172(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %167) #12
  %174 = call double @llvm.fmuladd.f64(double %173, double 8.000000e+00, double %169)
  %175 = load ptr, ptr %0, align 8, !tbaa !90
  %176 = getelementptr inbounds ptr, ptr %175, i64 4
  %177 = load ptr, ptr %176, align 8
  %178 = call noundef double %177(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %167) #12
  %179 = call double @llvm.fmuladd.f64(double %178, double -8.000000e+00, double %174)
  %180 = load ptr, ptr %0, align 8, !tbaa !90
  %181 = getelementptr inbounds ptr, ptr %180, i64 4
  %182 = load ptr, ptr %181, align 8
  %183 = call noundef double %182(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %167) #12
  %184 = fadd double %179, %183
  %185 = load double, ptr %134, align 8, !tbaa !151
  %186 = fmul double %185, 1.200000e+01
  %187 = fdiv double %184, %186
  %188 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %136) #14
  %189 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %188, i64 noundef %163) #14
  %190 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %189, i32 noundef %160) #12
  store double %187, ptr %190, align 8, !tbaa !117
  %191 = add nuw nsw i64 %163, 1
  %192 = load i32, ptr %133, align 8, !tbaa !170
  %193 = zext i32 %192 to i64
  %194 = icmp ult i64 %191, %193
  br i1 %194, label %162, label %161, !llvm.loop !197

195:                                              ; preds = %24, %138, %86, %37
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load ptr, ptr %0, align 8, !tbaa !198
  %4 = getelementptr inbounds %"class.std::vector.16", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii22AutoDerivativeFunctionILi2EE20get_formula_of_orderEj(i32 noundef %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
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

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, i32 noundef %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii22AutoDerivativeFunctionILi3EEC5Edjd) align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %5 = alloca %"class.std::allocator.39", align 1
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef %3) #12
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !90
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  store double 1.000000e+00, ptr %7, align 8, !tbaa !200
  %8 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  call void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %9 unwind label %12

9:                                                ; preds = %4
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %10 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !208
  invoke void @_ZN6dealii22AutoDerivativeFunctionILi3EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1) #12
          to label %11 unwind label %14

11:                                               ; preds = %9
  call void @_ZN6dealii22AutoDerivativeFunctionILi3EE11set_formulaENS1_17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 0) #12
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %16

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #14
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !209 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  invoke void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  store double %1, ptr %3, align 8, !tbaa !200
  %4 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  br label %6

5:                                                ; preds = %6
  ret void

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %12, %6 ]
  %8 = load double, ptr %3, align 8, !tbaa !200
  %9 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %7) #14
  %10 = trunc i64 %7 to i32
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %10) #12
  store double %8, ptr %11, align 8, !tbaa !117
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, 3
  br i1 %13, label %5, label %6, !llvm.loop !210
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EE11set_formulaENS1_17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !211 {
  %2 = load ptr, ptr %0, align 8, !tbaa !212
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #3 comdat($_ZN6dealii22AutoDerivativeFunctionILi3EED5Ev) align 2 !prof !89 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !90
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii22AutoDerivativeFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #3 comdat($_ZN6dealii22AutoDerivativeFunctionILi3EED5Ev) align 2 {
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii22AutoDerivativeFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !214 {
  %3 = load ptr, ptr %0, align 8, !tbaa !212
  %4 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !215 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.43") align 8 %0, ptr noundef nonnull align 8 dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !89 {
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
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #12
  %19 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !208
  switch i32 %20, label %111 [
    i32 1, label %21
    i32 0, label %44
    i32 2, label %70
  ]

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  %22 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 2
  br label %25

24:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %111

25:                                               ; preds = %21, %25
  %26 = phi i64 [ 0, %21 ], [ %42, %25 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %27 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %26) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %27) #12
  %28 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %29 = load ptr, ptr %1, align 8, !tbaa !90
  %30 = getelementptr inbounds ptr, ptr %29, i64 4
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef double %31(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) #12
  %33 = load ptr, ptr %1, align 8, !tbaa !90
  %34 = getelementptr inbounds ptr, ptr %33, i64 4
  %35 = load ptr, ptr %34, align 8
  %36 = call noundef double %35(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
  %37 = fsub double %32, %36
  %38 = load double, ptr %23, align 8, !tbaa !200
  %39 = fdiv double %37, %38
  %40 = trunc i64 %26 to i32
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %40) #12
  store double %39, ptr %41, align 8, !tbaa !117
  %42 = add nuw nsw i64 %26, 1
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %24, label %25, !llvm.loop !216

44:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #12
  %45 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 3
  %46 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 2
  br label %48

47:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  br label %111

48:                                               ; preds = %44, %48
  %49 = phi i64 [ 0, %44 ], [ %68, %48 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  %50 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %45, i64 noundef %49) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %50) #12
  %51 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  %52 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %45, i64 noundef %49) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %52) #12
  %53 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  %54 = load ptr, ptr %1, align 8, !tbaa !90
  %55 = getelementptr inbounds ptr, ptr %54, i64 4
  %56 = load ptr, ptr %55, align 8
  %57 = call noundef double %56(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %3) #12
  %58 = load ptr, ptr %1, align 8, !tbaa !90
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef double %60(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %3) #12
  %62 = fsub double %57, %61
  %63 = load double, ptr %46, align 8, !tbaa !200
  %64 = fmul double %63, 2.000000e+00
  %65 = fdiv double %62, %64
  %66 = trunc i64 %49 to i32
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %66) #12
  store double %65, ptr %67, align 8, !tbaa !117
  %68 = add nuw nsw i64 %49, 1
  %69 = icmp eq i64 %68, 3
  br i1 %69, label %47, label %48, !llvm.loop !217

70:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #12
  %71 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 3
  %72 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %1, i64 0, i32 2
  br label %74

73:                                               ; preds = %74
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  br label %111

74:                                               ; preds = %70, %74
  %75 = phi i64 [ 0, %70 ], [ %109, %74 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #13
  %76 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %71, i64 noundef %75) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %76) #12
  %77 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %15) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #13
  %78 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %71, i64 noundef %75) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %78) #12
  %79 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %16) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #13
  %80 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %71, i64 noundef %75) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %80) #12
  %81 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %17) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #13
  %82 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %71, i64 noundef %75) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %82) #12
  %83 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %18) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #13
  %84 = load ptr, ptr %1, align 8, !tbaa !90
  %85 = getelementptr inbounds ptr, ptr %84, i64 4
  %86 = load ptr, ptr %85, align 8
  %87 = call noundef double %86(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %3) #12
  %88 = fneg double %87
  %89 = load ptr, ptr %1, align 8, !tbaa !90
  %90 = getelementptr inbounds ptr, ptr %89, i64 4
  %91 = load ptr, ptr %90, align 8
  %92 = call noundef double %91(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %3) #12
  %93 = call double @llvm.fmuladd.f64(double %92, double 8.000000e+00, double %88)
  %94 = load ptr, ptr %1, align 8, !tbaa !90
  %95 = getelementptr inbounds ptr, ptr %94, i64 4
  %96 = load ptr, ptr %95, align 8
  %97 = call noundef double %96(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %3) #12
  %98 = call double @llvm.fmuladd.f64(double %97, double -8.000000e+00, double %93)
  %99 = load ptr, ptr %1, align 8, !tbaa !90
  %100 = getelementptr inbounds ptr, ptr %99, i64 4
  %101 = load ptr, ptr %100, align 8
  %102 = call noundef double %101(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3) #12
  %103 = fadd double %98, %102
  %104 = load double, ptr %72, align 8, !tbaa !200
  %105 = fmul double %104, 1.200000e+01
  %106 = fdiv double %103, %105
  %107 = trunc i64 %75 to i32
  %108 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %107) #12
  store double %106, ptr %108, align 8, !tbaa !117
  %109 = add nuw nsw i64 %75, 1
  %110 = icmp eq i64 %109, 3
  br i1 %110, label %73, label %74, !llvm.loop !218

111:                                              ; preds = %4, %73, %47, %24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !219 {
  br i1 %1, label %3, label %4, !prof !220

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !117
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !221 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !222 {
  %4 = alloca %"class.dealii::Point.44", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  call void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !223 {
  %3 = load ptr, ptr %0, align 8, !tbaa !212
  %4 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !224 {
  %4 = alloca %"class.dealii::Point.44", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  call void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %4 = alloca %"class.dealii::Point.44", align 8
  %5 = alloca %"class.dealii::Vector", align 8
  %6 = alloca %"class.dealii::Vector", align 8
  %7 = alloca %"class.dealii::Point.44", align 8
  %8 = alloca %"class.dealii::Point.44", align 8
  %9 = alloca %"class.dealii::Point.44", align 8
  %10 = alloca %"class.dealii::Vector", align 8
  %11 = alloca %"class.dealii::Vector", align 8
  %12 = alloca %"class.dealii::Point.44", align 8
  %13 = alloca %"class.dealii::Point.44", align 8
  %14 = alloca %"class.dealii::Point.44", align 8
  %15 = alloca %"class.dealii::Point.44", align 8
  %16 = alloca %"class.dealii::Point.44", align 8
  %17 = alloca %"class.dealii::Point.44", align 8
  %18 = alloca %"class.dealii::Vector", align 8
  %19 = alloca %"class.dealii::Vector", align 8
  %20 = alloca %"class.dealii::Vector", align 8
  %21 = alloca %"class.dealii::Vector", align 8
  %22 = alloca %"class.dealii::Point.44", align 8
  %23 = alloca %"class.dealii::Point.44", align 8
  %24 = alloca %"class.dealii::Point.44", align 8
  %25 = alloca %"class.dealii::Point.44", align 8
  %26 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !208
  switch i32 %27, label %249 [
    i32 1, label %28
    i32 0, label %84
    i32 2, label %147
  ]

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #13
  %29 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !225
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef %30) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #13
  %31 = load i32, ptr %29, align 8, !tbaa !225
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %6, i32 noundef %31) #12
          to label %32 unwind label %38

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %34 = load double, ptr %33, align 8, !tbaa !200
  %35 = fdiv double 1.000000e+00, %34
  %36 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  br label %40

37:                                               ; preds = %58
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %6) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %5) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %249

38:                                               ; preds = %28
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %82

40:                                               ; preds = %32, %58
  %41 = phi i64 [ 0, %32 ], [ %59, %58 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  %42 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %41) #14
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %42) #12
          to label %43 unwind label %61

43:                                               ; preds = %40
  %44 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7) #12
          to label %45 unwind label %61

45:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  %46 = load ptr, ptr %0, align 8, !tbaa !90
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %5) #12
          to label %49 unwind label %63

49:                                               ; preds = %45
  %50 = load ptr, ptr %0, align 8, !tbaa !90
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(88) %6) #12
          to label %53 unwind label %63

53:                                               ; preds = %49
  %54 = load i32, ptr %29, align 8, !tbaa !225
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = trunc i64 %41 to i32
  br label %65

58:                                               ; preds = %65, %53
  %59 = add nuw nsw i64 %41, 1
  %60 = icmp eq i64 %59, 3
  br i1 %60, label %37, label %40, !llvm.loop !226

61:                                               ; preds = %43, %40
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  br label %80

63:                                               ; preds = %49, %45
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %80

65:                                               ; preds = %56, %65
  %66 = phi i64 [ 0, %56 ], [ %76, %65 ]
  %67 = trunc i64 %66 to i32
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %5, i32 noundef %67) #12
  %69 = load double, ptr %68, align 8, !tbaa !117
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %6, i32 noundef %67) #12
  %71 = load double, ptr %70, align 8, !tbaa !117
  %72 = fsub double %69, %71
  %73 = fmul double %35, %72
  %74 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %66) #14
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %74, i32 noundef %57) #12
  store double %73, ptr %75, align 8, !tbaa !117
  %76 = add nuw nsw i64 %66, 1
  %77 = load i32, ptr %29, align 8, !tbaa !225
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %65, label %58, !llvm.loop !227

80:                                               ; preds = %63, %61
  %81 = phi { ptr, i32 } [ %64, %63 ], [ %62, %61 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %6) #14
  br label %82

82:                                               ; preds = %80, %38
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %5) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %250

84:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %10) #13
  %85 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !225
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef %86) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #13
  %87 = load i32, ptr %85, align 8, !tbaa !225
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef %87) #12
          to label %88 unwind label %95

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %90 = load double, ptr %89, align 8, !tbaa !200
  %91 = fmul double %90, 2.000000e+00
  %92 = fdiv double 1.000000e+00, %91
  %93 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  br label %97

94:                                               ; preds = %119
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %11) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %10) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  br label %249

95:                                               ; preds = %84
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %145

97:                                               ; preds = %88, %119
  %98 = phi i64 [ 0, %88 ], [ %120, %119 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #13
  %99 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %93, i64 noundef %98) #14
  invoke void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %99) #12
          to label %100 unwind label %122

100:                                              ; preds = %97
  %101 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %12) #12
          to label %102 unwind label %122

102:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #13
  %103 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %93, i64 noundef %98) #14
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %103) #12
          to label %104 unwind label %124

104:                                              ; preds = %102
  %105 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %13) #12
          to label %106 unwind label %124

106:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  %107 = load ptr, ptr %0, align 8, !tbaa !90
  %108 = getelementptr inbounds ptr, ptr %107, i64 5
  %109 = load ptr, ptr %108, align 8
  invoke void %109(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(88) %10) #12
          to label %110 unwind label %126

110:                                              ; preds = %106
  %111 = load ptr, ptr %0, align 8, !tbaa !90
  %112 = getelementptr inbounds ptr, ptr %111, i64 5
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(88) %11) #12
          to label %114 unwind label %126

114:                                              ; preds = %110
  %115 = load i32, ptr %85, align 8, !tbaa !225
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = trunc i64 %98 to i32
  br label %128

119:                                              ; preds = %128, %114
  %120 = add nuw nsw i64 %98, 1
  %121 = icmp eq i64 %120, 3
  br i1 %121, label %94, label %97, !llvm.loop !228

122:                                              ; preds = %100, %97
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  br label %143

124:                                              ; preds = %104, %102
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  br label %143

126:                                              ; preds = %110, %106
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %143

128:                                              ; preds = %117, %128
  %129 = phi i64 [ 0, %117 ], [ %139, %128 ]
  %130 = trunc i64 %129 to i32
  %131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %10, i32 noundef %130) #12
  %132 = load double, ptr %131, align 8, !tbaa !117
  %133 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef %130) #12
  %134 = load double, ptr %133, align 8, !tbaa !117
  %135 = fsub double %132, %134
  %136 = fmul double %92, %135
  %137 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %129) #14
  %138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %137, i32 noundef %118) #12
  store double %136, ptr %138, align 8, !tbaa !117
  %139 = add nuw nsw i64 %129, 1
  %140 = load i32, ptr %85, align 8, !tbaa !225
  %141 = zext i32 %140 to i64
  %142 = icmp ult i64 %139, %141
  br i1 %142, label %128, label %119, !llvm.loop !229

143:                                              ; preds = %126, %124, %122
  %144 = phi { ptr, i32 } [ %127, %126 ], [ %125, %124 ], [ %123, %122 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %11) #14
  br label %145

145:                                              ; preds = %143, %95
  %146 = phi { ptr, i32 } [ %144, %143 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %10) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  br label %250

147:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %18) #13
  %148 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %149 = load i32, ptr %148, align 8, !tbaa !225
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %18, i32 noundef %149) #12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %19) #13
  %150 = load i32, ptr %148, align 8, !tbaa !225
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %19, i32 noundef %150) #12
          to label %151 unwind label %162

151:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %20) #13
  %152 = load i32, ptr %148, align 8, !tbaa !225
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef %152) #12
          to label %153 unwind label %164

153:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %21) #13
  %154 = load i32, ptr %148, align 8, !tbaa !225
  invoke void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %21, i32 noundef %154) #12
          to label %155 unwind label %166

155:                                              ; preds = %153
  %156 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  %157 = load double, ptr %156, align 8, !tbaa !200
  %158 = fmul double %157, 1.200000e+01
  %159 = fdiv double 1.000000e+00, %158
  %160 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  br label %168

161:                                              ; preds = %206
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %21) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %21) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %20) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %20) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %19) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %19) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %18) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  br label %249

162:                                              ; preds = %147
  %163 = landingpad { ptr, i32 }
          cleanup
  br label %247

164:                                              ; preds = %151
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %245

166:                                              ; preds = %153
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %243

168:                                              ; preds = %155, %206
  %169 = phi i64 [ 0, %155 ], [ %207, %206 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #13
  %170 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %160, i64 noundef %169) #14
  invoke void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %170) #12
          to label %171 unwind label %209

171:                                              ; preds = %168
  %172 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %22) #12
          to label %173 unwind label %209

173:                                              ; preds = %171
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #13
  %174 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %160, i64 noundef %169) #14
  invoke void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %174) #12
          to label %175 unwind label %211

175:                                              ; preds = %173
  %176 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %23) #12
          to label %177 unwind label %211

177:                                              ; preds = %175
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #13
  %178 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %160, i64 noundef %169) #14
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %178) #12
          to label %179 unwind label %213

179:                                              ; preds = %177
  %180 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %24) #12
          to label %181 unwind label %213

181:                                              ; preds = %179
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #13
  %182 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %160, i64 noundef %169) #14
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %182) #12
          to label %183 unwind label %215

183:                                              ; preds = %181
  %184 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %25) #12
          to label %185 unwind label %215

185:                                              ; preds = %183
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #13
  %186 = load ptr, ptr %0, align 8, !tbaa !90
  %187 = getelementptr inbounds ptr, ptr %186, i64 5
  %188 = load ptr, ptr %187, align 8
  invoke void %188(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(88) %18) #12
          to label %189 unwind label %217

189:                                              ; preds = %185
  %190 = load ptr, ptr %0, align 8, !tbaa !90
  %191 = getelementptr inbounds ptr, ptr %190, i64 5
  %192 = load ptr, ptr %191, align 8
  invoke void %192(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(88) %19) #12
          to label %193 unwind label %217

193:                                              ; preds = %189
  %194 = load ptr, ptr %0, align 8, !tbaa !90
  %195 = getelementptr inbounds ptr, ptr %194, i64 5
  %196 = load ptr, ptr %195, align 8
  invoke void %196(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(88) %20) #12
          to label %197 unwind label %217

197:                                              ; preds = %193
  %198 = load ptr, ptr %0, align 8, !tbaa !90
  %199 = getelementptr inbounds ptr, ptr %198, i64 5
  %200 = load ptr, ptr %199, align 8
  invoke void %200(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(88) %21) #12
          to label %201 unwind label %217

201:                                              ; preds = %197
  %202 = load i32, ptr %148, align 8, !tbaa !225
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %201
  %205 = trunc i64 %169 to i32
  br label %219

206:                                              ; preds = %219, %201
  %207 = add nuw nsw i64 %169, 1
  %208 = icmp eq i64 %207, 3
  br i1 %208, label %161, label %168, !llvm.loop !230

209:                                              ; preds = %171, %168
  %210 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #13
  br label %241

211:                                              ; preds = %175, %173
  %212 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #13
  br label %241

213:                                              ; preds = %179, %177
  %214 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #13
  br label %241

215:                                              ; preds = %183, %181
  %216 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #13
  br label %241

217:                                              ; preds = %197, %193, %189, %185
  %218 = landingpad { ptr, i32 }
          cleanup
  br label %241

219:                                              ; preds = %204, %219
  %220 = phi i64 [ 0, %204 ], [ %237, %219 ]
  %221 = trunc i64 %220 to i32
  %222 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %18, i32 noundef %221) #12
  %223 = load double, ptr %222, align 8, !tbaa !117
  %224 = fneg double %223
  %225 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %19, i32 noundef %221) #12
  %226 = load double, ptr %225, align 8, !tbaa !117
  %227 = call double @llvm.fmuladd.f64(double %226, double 8.000000e+00, double %224)
  %228 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef %221) #12
  %229 = load double, ptr %228, align 8, !tbaa !117
  %230 = call double @llvm.fmuladd.f64(double %229, double -8.000000e+00, double %227)
  %231 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %21, i32 noundef %221) #12
  %232 = load double, ptr %231, align 8, !tbaa !117
  %233 = fadd double %230, %232
  %234 = fmul double %159, %233
  %235 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %220) #14
  %236 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %235, i32 noundef %205) #12
  store double %234, ptr %236, align 8, !tbaa !117
  %237 = add nuw nsw i64 %220, 1
  %238 = load i32, ptr %148, align 8, !tbaa !225
  %239 = zext i32 %238 to i64
  %240 = icmp ult i64 %237, %239
  br i1 %240, label %219, label %206, !llvm.loop !231

241:                                              ; preds = %217, %215, %213, %211, %209
  %242 = phi { ptr, i32 } [ %218, %217 ], [ %216, %215 ], [ %214, %213 ], [ %212, %211 ], [ %210, %209 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %21) #14
  br label %243

243:                                              ; preds = %241, %166
  %244 = phi { ptr, i32 } [ %242, %241 ], [ %167, %166 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %21) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %20) #14
  br label %245

245:                                              ; preds = %243, %164
  %246 = phi { ptr, i32 } [ %244, %243 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %20) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %19) #14
  br label %247

247:                                              ; preds = %245, %162
  %248 = phi { ptr, i32 } [ %246, %245 ], [ %163, %162 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %19) #13
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %18) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  br label %250

249:                                              ; preds = %3, %161, %94, %37
  ret void

250:                                              ; preds = %247, %145, %82
  %251 = phi { ptr, i32 } [ %248, %247 ], [ %146, %145 ], [ %83, %82 ]
  resume { ptr, i32 } %251
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !89 {
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
  %20 = load i32, ptr %19, align 8, !tbaa !208
  switch i32 %20, label %153 [
    i32 1, label %21
    i32 0, label %58
    i32 2, label %98
  ]

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  %22 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  br label %27

27:                                               ; preds = %24, %31
  %28 = phi i64 [ 0, %24 ], [ %33, %31 ]
  %29 = phi i32 [ 0, %24 ], [ %32, %31 ]
  br label %36

30:                                               ; preds = %31, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %153

31:                                               ; preds = %36
  %32 = add i32 %29, 1
  %33 = zext i32 %32 to i64
  %34 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %35 = icmp ugt i64 %34, %33
  br i1 %35, label %27, label %30, !llvm.loop !232

36:                                               ; preds = %27, %36
  %37 = phi i64 [ 0, %27 ], [ %56, %36 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %38 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %28) #14
  %39 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %37) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %39) #12
  %40 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %41 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %28) #14
  %42 = load ptr, ptr %0, align 8, !tbaa !90
  %43 = getelementptr inbounds ptr, ptr %42, i64 4
  %44 = load ptr, ptr %43, align 8
  %45 = call noundef double %44(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef %3) #12
  %46 = load ptr, ptr %0, align 8, !tbaa !90
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef double %48(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
  %50 = fsub double %45, %49
  %51 = load double, ptr %26, align 8, !tbaa !200
  %52 = fdiv double %50, %51
  %53 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %28) #14
  %54 = trunc i64 %37 to i32
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %53, i32 noundef %54) #12
  store double %52, ptr %55, align 8, !tbaa !117
  %56 = add nuw nsw i64 %37, 1
  %57 = icmp eq i64 %56, 3
  br i1 %57, label %31, label %36, !llvm.loop !233

58:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #12
  %59 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %63 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  br label %64

64:                                               ; preds = %61, %68
  %65 = phi i64 [ 0, %61 ], [ %70, %68 ]
  %66 = phi i32 [ 0, %61 ], [ %69, %68 ]
  br label %73

67:                                               ; preds = %68, %58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  br label %153

68:                                               ; preds = %73
  %69 = add i32 %66, 1
  %70 = zext i32 %69 to i64
  %71 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %72 = icmp ugt i64 %71, %70
  br i1 %72, label %64, label %67, !llvm.loop !234

73:                                               ; preds = %64, %73
  %74 = phi i64 [ 0, %64 ], [ %96, %73 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  %75 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %65) #14
  %76 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %62, i64 noundef %74) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef nonnull align 8 dereferenceable(24) %76) #12
  %77 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  %78 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %65) #14
  %79 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %62, i64 noundef %74) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(24) %79) #12
  %80 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  %81 = load ptr, ptr %0, align 8, !tbaa !90
  %82 = getelementptr inbounds ptr, ptr %81, i64 4
  %83 = load ptr, ptr %82, align 8
  %84 = call noundef double %83(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %3) #12
  %85 = load ptr, ptr %0, align 8, !tbaa !90
  %86 = getelementptr inbounds ptr, ptr %85, i64 4
  %87 = load ptr, ptr %86, align 8
  %88 = call noundef double %87(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %3) #12
  %89 = fsub double %84, %88
  %90 = load double, ptr %63, align 8, !tbaa !200
  %91 = fmul double %90, 2.000000e+00
  %92 = fdiv double %89, %91
  %93 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %65) #14
  %94 = trunc i64 %74 to i32
  %95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %93, i32 noundef %94) #12
  store double %92, ptr %95, align 8, !tbaa !117
  %96 = add nuw nsw i64 %74, 1
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %68, label %73, !llvm.loop !235

98:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #12
  %99 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %103 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  br label %104

104:                                              ; preds = %101, %108
  %105 = phi i64 [ 0, %101 ], [ %110, %108 ]
  %106 = phi i32 [ 0, %101 ], [ %109, %108 ]
  br label %113

107:                                              ; preds = %108, %98
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  br label %153

108:                                              ; preds = %113
  %109 = add i32 %106, 1
  %110 = zext i32 %109 to i64
  %111 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %112 = icmp ugt i64 %111, %110
  br i1 %112, label %104, label %107, !llvm.loop !236

113:                                              ; preds = %104, %113
  %114 = phi i64 [ 0, %104 ], [ %151, %113 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #13
  %115 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %105) #14
  %116 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %102, i64 noundef %114) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %115, ptr noundef nonnull align 8 dereferenceable(24) %116) #12
  %117 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %15) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #13
  %118 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %102, i64 noundef %114) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %118) #12
  %119 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %16) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #13
  %120 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %105) #14
  %121 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %102, i64 noundef %114) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %120, ptr noundef nonnull align 8 dereferenceable(24) %121) #12
  %122 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %17) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #13
  %123 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %102, i64 noundef %114) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %123) #12
  %124 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %18) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #13
  %125 = load ptr, ptr %0, align 8, !tbaa !90
  %126 = getelementptr inbounds ptr, ptr %125, i64 4
  %127 = load ptr, ptr %126, align 8
  %128 = call noundef double %127(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %3) #12
  %129 = fneg double %128
  %130 = load ptr, ptr %0, align 8, !tbaa !90
  %131 = getelementptr inbounds ptr, ptr %130, i64 4
  %132 = load ptr, ptr %131, align 8
  %133 = call noundef double %132(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %3) #12
  %134 = call double @llvm.fmuladd.f64(double %133, double 8.000000e+00, double %129)
  %135 = load ptr, ptr %0, align 8, !tbaa !90
  %136 = getelementptr inbounds ptr, ptr %135, i64 4
  %137 = load ptr, ptr %136, align 8
  %138 = call noundef double %137(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %3) #12
  %139 = call double @llvm.fmuladd.f64(double %138, double -8.000000e+00, double %134)
  %140 = load ptr, ptr %0, align 8, !tbaa !90
  %141 = getelementptr inbounds ptr, ptr %140, i64 4
  %142 = load ptr, ptr %141, align 8
  %143 = call noundef double %142(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3) #12
  %144 = fadd double %139, %143
  %145 = load double, ptr %103, align 8, !tbaa !200
  %146 = fmul double %145, 1.200000e+01
  %147 = fdiv double %144, %146
  %148 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %105) #14
  %149 = trunc i64 %114 to i32
  %150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %148, i32 noundef %149) #12
  store double %147, ptr %150, align 8, !tbaa !117
  %151 = add nuw nsw i64 %114, 1
  %152 = icmp eq i64 %151, 3
  br i1 %152, label %108, label %113, !llvm.loop !237

153:                                              ; preds = %4, %107, %67, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !238 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !239
  %4 = load ptr, ptr %0, align 8, !tbaa !241
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !242 {
  %3 = load ptr, ptr %0, align 8, !tbaa !241
  %4 = getelementptr inbounds %"class.dealii::Point.44", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii22AutoDerivativeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !89 {
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
  br label %18

18:                                               ; preds = %18, %3
  %19 = phi i32 [ 0, %3 ], [ %23, %18 ]
  %20 = zext i32 %19 to i64
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %22 = icmp ugt i64 %21, %20
  %23 = add i32 %19, 1
  br i1 %22, label %18, label %24, !llvm.loop !243

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !208
  switch i32 %26, label %198 [
    i32 1, label %27
    i32 0, label %77
    i32 2, label %130
  ]

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #12
  %28 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %32 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %33 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  br label %34

34:                                               ; preds = %30, %38
  %35 = phi i64 [ 0, %30 ], [ %40, %38 ]
  %36 = phi i32 [ 0, %30 ], [ %39, %38 ]
  br label %43

37:                                               ; preds = %38, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %198

38:                                               ; preds = %52
  %39 = add i32 %36, 1
  %40 = zext i32 %39 to i64
  %41 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %42 = icmp ugt i64 %41, %40
  br i1 %42, label %34, label %37, !llvm.loop !244

43:                                               ; preds = %34, %52
  %44 = phi i64 [ 0, %34 ], [ %53, %52 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %45 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %35) #14
  %46 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %44) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %46) #12
  %47 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %48 = load i32, ptr %32, align 8, !tbaa !225
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = trunc i64 %44 to i32
  br label %55

52:                                               ; preds = %55, %43
  %53 = add nuw nsw i64 %44, 1
  %54 = icmp eq i64 %53, 3
  br i1 %54, label %38, label %43, !llvm.loop !245

55:                                               ; preds = %50, %55
  %56 = phi i64 [ 0, %50 ], [ %73, %55 ]
  %57 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %35) #14
  %58 = load ptr, ptr %0, align 8, !tbaa !90
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = trunc i64 %56 to i32
  %62 = call noundef double %60(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %57, i32 noundef %61) #12
  %63 = load ptr, ptr %0, align 8, !tbaa !90
  %64 = getelementptr inbounds ptr, ptr %63, i64 4
  %65 = load ptr, ptr %64, align 8
  %66 = call noundef double %65(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %61) #12
  %67 = fsub double %62, %66
  %68 = load double, ptr %33, align 8, !tbaa !200
  %69 = fdiv double %67, %68
  %70 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %35) #14
  %71 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %70, i64 noundef %56) #14
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %71, i32 noundef %51) #12
  store double %69, ptr %72, align 8, !tbaa !117
  %73 = add nuw nsw i64 %56, 1
  %74 = load i32, ptr %32, align 8, !tbaa !225
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %55, label %52, !llvm.loop !246

77:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #12
  %78 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %82 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %83 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  br label %84

84:                                               ; preds = %80, %88
  %85 = phi i64 [ 0, %80 ], [ %90, %88 ]
  %86 = phi i32 [ 0, %80 ], [ %89, %88 ]
  br label %93

87:                                               ; preds = %88, %77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %198

88:                                               ; preds = %105
  %89 = add i32 %86, 1
  %90 = zext i32 %89 to i64
  %91 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %92 = icmp ugt i64 %91, %90
  br i1 %92, label %84, label %87, !llvm.loop !247

93:                                               ; preds = %84, %105
  %94 = phi i64 [ 0, %84 ], [ %106, %105 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  %95 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %85) #14
  %96 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %81, i64 noundef %94) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %95, ptr noundef nonnull align 8 dereferenceable(24) %96) #12
  %97 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  %98 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %85) #14
  %99 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %81, i64 noundef %94) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %98, ptr noundef nonnull align 8 dereferenceable(24) %99) #12
  %100 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  %101 = load i32, ptr %82, align 8, !tbaa !225
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %93
  %104 = trunc i64 %94 to i32
  br label %108

105:                                              ; preds = %108, %93
  %106 = add nuw nsw i64 %94, 1
  %107 = icmp eq i64 %106, 3
  br i1 %107, label %88, label %93, !llvm.loop !248

108:                                              ; preds = %103, %108
  %109 = phi i64 [ 0, %103 ], [ %126, %108 ]
  %110 = load ptr, ptr %0, align 8, !tbaa !90
  %111 = getelementptr inbounds ptr, ptr %110, i64 4
  %112 = load ptr, ptr %111, align 8
  %113 = trunc i64 %109 to i32
  %114 = call noundef double %112(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %113) #12
  %115 = load ptr, ptr %0, align 8, !tbaa !90
  %116 = getelementptr inbounds ptr, ptr %115, i64 4
  %117 = load ptr, ptr %116, align 8
  %118 = call noundef double %117(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %113) #12
  %119 = fsub double %114, %118
  %120 = load double, ptr %83, align 8, !tbaa !200
  %121 = fmul double %120, 2.000000e+00
  %122 = fdiv double %119, %121
  %123 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %85) #14
  %124 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %123, i64 noundef %109) #14
  %125 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %124, i32 noundef %104) #12
  store double %122, ptr %125, align 8, !tbaa !117
  %126 = add nuw nsw i64 %109, 1
  %127 = load i32, ptr %82, align 8, !tbaa !225
  %128 = zext i32 %127 to i64
  %129 = icmp ult i64 %126, %128
  br i1 %129, label %108, label %105, !llvm.loop !249

130:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #13
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #12
  %131 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 3
  %135 = getelementptr inbounds %"class.dealii::Function.35", ptr %0, i64 0, i32 2
  %136 = getelementptr inbounds %"class.dealii::AutoDerivativeFunction.34", ptr %0, i64 0, i32 2
  br label %137

137:                                              ; preds = %133, %141
  %138 = phi i64 [ 0, %133 ], [ %143, %141 ]
  %139 = phi i32 [ 0, %133 ], [ %142, %141 ]
  br label %146

140:                                              ; preds = %141, %130
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  br label %198

141:                                              ; preds = %162
  %142 = add i32 %139, 1
  %143 = zext i32 %142 to i64
  %144 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %145 = icmp ugt i64 %144, %143
  br i1 %145, label %137, label %140, !llvm.loop !250

146:                                              ; preds = %137, %162
  %147 = phi i64 [ 0, %137 ], [ %163, %162 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #13
  %148 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %138) #14
  %149 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %134, i64 noundef %147) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %148, ptr noundef nonnull align 8 dereferenceable(24) %149) #12
  %150 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %14) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #13
  %151 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %134, i64 noundef %147) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %151) #12
  %152 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %15) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #13
  %153 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %138) #14
  %154 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %134, i64 noundef %147) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %153, ptr noundef nonnull align 8 dereferenceable(24) %154) #12
  %155 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %16) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #13
  %156 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %134, i64 noundef %147) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.44") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %156) #12
  %157 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %17) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #13
  %158 = load i32, ptr %135, align 8, !tbaa !225
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %146
  %161 = trunc i64 %147 to i32
  br label %165

162:                                              ; preds = %165, %146
  %163 = add nuw nsw i64 %147, 1
  %164 = icmp eq i64 %163, 3
  br i1 %164, label %141, label %146, !llvm.loop !251

165:                                              ; preds = %160, %165
  %166 = phi i64 [ 0, %160 ], [ %194, %165 ]
  %167 = load ptr, ptr %0, align 8, !tbaa !90
  %168 = getelementptr inbounds ptr, ptr %167, i64 4
  %169 = load ptr, ptr %168, align 8
  %170 = trunc i64 %166 to i32
  %171 = call noundef double %169(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %170) #12
  %172 = fneg double %171
  %173 = load ptr, ptr %0, align 8, !tbaa !90
  %174 = getelementptr inbounds ptr, ptr %173, i64 4
  %175 = load ptr, ptr %174, align 8
  %176 = call noundef double %175(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %170) #12
  %177 = call double @llvm.fmuladd.f64(double %176, double 8.000000e+00, double %172)
  %178 = load ptr, ptr %0, align 8, !tbaa !90
  %179 = getelementptr inbounds ptr, ptr %178, i64 4
  %180 = load ptr, ptr %179, align 8
  %181 = call noundef double %180(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %170) #12
  %182 = call double @llvm.fmuladd.f64(double %181, double -8.000000e+00, double %177)
  %183 = load ptr, ptr %0, align 8, !tbaa !90
  %184 = getelementptr inbounds ptr, ptr %183, i64 4
  %185 = load ptr, ptr %184, align 8
  %186 = call noundef double %185(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %170) #12
  %187 = fadd double %182, %186
  %188 = load double, ptr %136, align 8, !tbaa !200
  %189 = fmul double %188, 1.200000e+01
  %190 = fdiv double %187, %189
  %191 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %138) #14
  %192 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %191, i64 noundef %166) #14
  %193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %192, i32 noundef %161) #12
  store double %190, ptr %193, align 8, !tbaa !117
  %194 = add nuw nsw i64 %166, 1
  %195 = load i32, ptr %135, align 8, !tbaa !225
  %196 = zext i32 %195 to i64
  %197 = icmp ult i64 %194, %196
  br i1 %197, label %165, label %162, !llvm.loop !252

198:                                              ; preds = %24, %140, %87, %37
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !253 {
  %3 = load ptr, ptr %0, align 8, !tbaa !254
  %4 = getelementptr inbounds %"class.std::vector.37", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii22AutoDerivativeFunctionILi3EE20get_formula_of_orderEj(i32 noundef %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
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

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi1EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZNK6dealii13ExceptionBase10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi2EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii22AutoDerivativeFunctionILi3EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !256 {
  %3 = load double, ptr %1, align 8, !tbaa !117
  store double %3, ptr %0, align 8, !tbaa !117
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 !prof !257 {
  %3 = load double, ptr %1, align 8, !tbaa !117
  store double %3, ptr %0, align 8, !tbaa !117
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !117
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !117
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 !prof !258 {
  %3 = load double, ptr %1, align 8, !tbaa !117
  store double %3, ptr %0, align 8, !tbaa !117
  %4 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !117
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !117
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !117
  %9 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %8, ptr %9, align 8, !tbaa !117
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = alloca %"class.std::allocator.0", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  call void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #12
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !259
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i64 %4, ptr %3, align 8, !tbaa !260
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %6 = load i64, ptr %5, align 8, !tbaa !260
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !89 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !261 {
  %3 = load i64, ptr %1, align 8, !tbaa !260
  %4 = load i64, ptr %0, align 8, !tbaa !260
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !262
  ret ptr %6
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !89 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !118
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !119
  %5 = getelementptr inbounds %"class.dealii::Tensor", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !259
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !89 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !263

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #18
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi1EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi1EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi1EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi1EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJEEvPT_DpOT0_(ptr noundef %5) #12
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !264

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #13
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #12
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #19
          to label %24 unwind label %18

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %17

18:                                               ; preds = %15, %11
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %21

20:                                               ; preds = %18
  resume { ptr, i32 } %19

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #15
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi1EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !89 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !89 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load double, ptr %1, align 8, !tbaa !117
  %4 = load double, ptr %0, align 8, !tbaa !117
  %5 = fsub double %4, %3
  store double %5, ptr %0, align 8, !tbaa !117
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !89 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !265 {
  %3 = load double, ptr %1, align 8, !tbaa !117
  store double %3, ptr %0, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load double, ptr %1, align 8, !tbaa !117
  %4 = load double, ptr %0, align 8, !tbaa !117
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !117
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE6reinitEjb(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 !prof !266 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %12, !prof !267

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !130
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !268

9:                                                ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %7) #16
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !269
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %16, label %25, !prof !270

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !130
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !271

20:                                               ; preds = %16
  tail call void @_ZdaPv(ptr noundef nonnull %18) #16
  br label %21

21:                                               ; preds = %20, %16
  %22 = zext i32 %1 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %23) #18
  store ptr %24, ptr %17, align 8, !tbaa !130
  store i32 %1, ptr %13, align 4, !tbaa !269
  br label %25

25:                                               ; preds = %21, %12
  %26 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  store i32 %1, ptr %26, align 8, !tbaa !272
  br i1 %2, label %29, label %27, !prof !273

27:                                               ; preds = %25
  %28 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef 0.000000e+00) #12
  br label %29

29:                                               ; preds = %10, %27, %25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE4swapERS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %1, i64 0, i32 1
  tail call void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %5 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.dealii::Vector", ptr %1, i64 0, i32 2
  tail call void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #14
  %7 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.dealii::Vector", ptr %1, i64 0, i32 3
  tail call void @_ZSt4swapIPdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 !prof !274 {
  %3 = alloca double, align 8
  store double %1, ptr %3, align 8, !tbaa !117
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !272
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !275

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  %9 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %8, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br label %10

10:                                               ; preds = %7, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !276 {
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #3 comdat align 2 !prof !277 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #3 comdat align 2 !prof !278 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !272
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds double, ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !279 {
  tail call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat !prof !280 {
  %4 = load double, ptr %2, align 8, !tbaa !117
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !281

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store double %4, ptr %7, align 8, !tbaa !117
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !282, !llvm.loop !283

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat {
  %3 = load i32, ptr %0, align 4, !tbaa !284
  %4 = load i32, ptr %1, align 4, !tbaa !284
  store i32 %4, ptr %0, align 4, !tbaa !284
  store i32 %3, ptr %1, align 4, !tbaa !284
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIPdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !285
  %4 = load ptr, ptr %1, align 8, !tbaa !285
  store ptr %4, ptr %0, align 8, !tbaa !285
  store ptr %3, ptr %1, align 8, !tbaa !285
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = alloca %"class.std::allocator.18", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  call void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !160
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #12
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !160
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !286
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 576460752303423487, ptr %2, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i64 %4, ptr %3, align 8, !tbaa !260
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %6 = load i64, ptr %5, align 8, !tbaa !260
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !89 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  ret i64 576460752303423487
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !89 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !160
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !161
  %5 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !89 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !263

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 4
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #18
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_(ptr noundef %5) #12
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor.22", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !287

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #13
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #12
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #19
          to label %24 unwind label %18

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %17

18:                                               ; preds = %15, %11
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %21

20:                                               ; preds = %18
  resume { ptr, i32 } %19

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #15
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !89 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !89 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 !prof !169 {
  %3 = load double, ptr %1, align 8, !tbaa !117
  %4 = load double, ptr %0, align 8, !tbaa !117
  %5 = fsub double %4, %3
  store double %5, ptr %0, align 8, !tbaa !117
  %6 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !117
  %10 = fsub double %9, %7
  store double %10, ptr %8, align 8, !tbaa !117
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 !prof !169 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 !prof !288 {
  %3 = load double, ptr %1, align 8, !tbaa !117
  store double %3, ptr %0, align 8, !tbaa !117
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !117
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load double, ptr %1, align 8, !tbaa !117
  %4 = load double, ptr %0, align 8, !tbaa !117
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !117
  %6 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !117
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !117
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !209 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !289 {
  %3 = alloca %"class.std::allocator.39", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  call void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br i1 %5, label %6, label %7, !prof !290

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !291 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !212
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #12
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !213
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !211 {
  %2 = load ptr, ptr %0, align 8, !tbaa !212
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !292
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !293 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 384307168202282325, ptr %2, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i64 %4, ptr %3, align 8, !tbaa !260
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %6 = load i64, ptr %5, align 8, !tbaa !260
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !294 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !293 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !295 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !294 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !291 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !291 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !212
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !213
  %5 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !292
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !296 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !211 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !297 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !298

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !263

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #18
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !299 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_(ptr noundef %5) #12
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor.43", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !300

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #13
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #12
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #19
          to label %24 unwind label %18

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %17

18:                                               ; preds = %15, %11
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %21

20:                                               ; preds = %18
  resume { ptr, i32 } %19

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #15
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !301 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !301 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !301 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !302

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !301 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 !prof !303 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %11, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %9 = load double, ptr %8, align 8, !tbaa !117
  %10 = fsub double %9, %7
  store double %10, ptr %8, align 8, !tbaa !117
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %3, label %4, !prof !304, !llvm.loop !305
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 !prof !306 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 !prof !307 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  store double %7, ptr %8, align 8, !tbaa !117
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !308, !llvm.loop !309
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 !prof !310 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %11, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %9 = load double, ptr %8, align 8, !tbaa !117
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !117
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %3, label %4, !prof !311, !llvm.loop !312
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind optsize }
attributes #17 = { noreturn optsize }
attributes #18 = { builtin optsize allocsize(0) }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!88}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 952893667334}
!4 = !{!"MaxCount", i64 138244457713}
!5 = !{!"MaxInternalCount", i64 61570300772}
!6 = !{!"MaxFunctionCount", i64 138244457713}
!7 = !{!"NumCounts", i64 74881}
!8 = !{!"NumFunctions", i64 41355}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 138244457713, i32 1}
!14 = !{i32 100000, i64 138244457713, i32 1}
!15 = !{i32 200000, i64 135283113845, i32 2}
!16 = !{i32 300000, i64 61570300772, i32 3}
!17 = !{i32 400000, i64 59335447748, i32 5}
!18 = !{i32 500000, i64 54202702756, i32 7}
!19 = !{i32 600000, i64 27583525196, i32 8}
!20 = !{i32 700000, i64 9717284942, i32 14}
!21 = !{i32 800000, i64 4099381952, i32 32}
!22 = !{i32 900000, i64 1194611288, i32 75}
!23 = !{i32 950000, i64 329112231, i32 158}
!24 = !{i32 990000, i64 26264717, i32 515}
!25 = !{i32 999000, i64 1278962, i32 1689}
!26 = !{i32 999900, i64 136932, i32 3466}
!27 = !{i32 999990, i64 17760, i32 4671}
!28 = !{i32 999999, i64 520, i32 6951}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!35 = !{ptr @_ZN6dealii5PointILi1EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi1EEC2Eb, i64 269698}
!36 = !{ptr @_ZN6dealii6VectorIdEC2Ej, ptr @_ZN6dealii11SubscriptorC2Ev, i64 2856063}
!37 = !{ptr @_ZN6dealii6VectorIdEC2Ej, ptr @_ZN6dealii6VectorIdE6reinitEjb, i64 2856063}
!38 = !{ptr @_ZN6dealii6VectorIdEC2Ej, ptr @_ZN6dealii11SubscriptorD2Ev, i64 3}
!39 = !{ptr @_ZN6dealii6VectorIdED2Ev, ptr @_ZdaPv, i64 2899655}
!40 = !{ptr @_ZN6dealii6VectorIdED2Ev, ptr @_ZN6dealii11SubscriptorD2Ev, i64 2906115}
!41 = !{ptr @_ZN6dealii5PointILi2EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi2EEC2Eb, i64 202370}
!42 = !{ptr @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii5PointILi2EEC2ERKS1_, i64 464288}
!43 = !{ptr @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_, i64 464288}
!44 = !{ptr @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE, i64 464288}
!45 = !{ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev, i64 2314867}
!46 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 10407865}
!47 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E, i64 10407865}
!48 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, i64 10407855}
!49 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 10}
!50 = !{ptr @_ZN6dealii5PointILi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 5584274}
!51 = !{ptr @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii5PointILi3EEC2ERKS1_, i64 18388994}
!52 = !{ptr @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_, i64 18388994}
!53 = !{ptr @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, i64 18388994}
!54 = !{ptr @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii5PointILi3EEC2ERKS1_, i64 126150}
!55 = !{ptr @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii6TensorILi1ELi3EEpLERKS1_, i64 126150}
!56 = !{ptr @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, i64 126150}
!57 = !{ptr @_ZN6dealii6VectorIdE6reinitEjb, ptr @_ZdaPv, i64 227}
!58 = !{ptr @_ZN6dealii6VectorIdE6reinitEjb, ptr @_Znam, i64 2880323}
!59 = !{ptr @_ZN6dealii6VectorIdE6reinitEjb, ptr @_ZN6dealii6VectorIdEaSEd, i64 3329904}
!60 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZN6dealii6VectorIdE5beginEv, i64 4002559}
!61 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZN6dealii6VectorIdE3endEv, i64 4002559}
!62 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZSt4fillIPddEvT_S1_RKT0_, i64 4002559}
!63 = !{ptr @_ZSt4fillIPddEvT_S1_RKT0_, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 4406944}
!64 = !{ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 25807262}
!65 = !{ptr @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_, i64 464288}
!66 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_, i64 1236059}
!67 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, i64 1236059}
!68 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev, i64 1236059}
!69 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!70 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_, i64 9329057}
!71 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_create_storageEm, i64 9329057}
!72 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev, i64 9}
!73 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m, i64 10407865}
!74 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev, i64 10407855}
!75 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 10}
!76 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_, i64 2326999}
!77 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 2326999}
!78 = !{ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2ERKS3_, i64 10565116}
!79 = !{ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv, i64 2326999}
!80 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2ERKS2_, i64 9329057}
!81 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 9329057}
!82 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm, i64 9329057}
!83 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m, i64 9690491}
!84 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_, i64 10953335}
!85 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m, i64 9690491}
!86 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_, i64 10953335}
!87 = !{ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_, i64 70675435}
!88 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!89 = !{!"function_entry_count", i64 0}
!90 = !{!91, !91, i64 0}
!91 = !{!"vtable pointer", !92, i64 0}
!92 = !{!"Simple C++ TBAA"}
!93 = !{!94, !97, i64 96}
!94 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi1EEE", !95, i64 0, !97, i64 96, !111, i64 104, !115, i64 128}
!95 = !{!"_ZTSN6dealii8FunctionILi1EEE", !96, i64 0, !99, i64 16, !100, i64 88}
!96 = !{!"_ZTSN6dealii12FunctionTimeE", !97, i64 8}
!97 = !{!"double", !98, i64 0}
!98 = !{!"omnipotent char", !92, i64 0}
!99 = !{!"_ZTSN6dealii11SubscriptorE", !100, i64 8, !101, i64 16, !109, i64 64}
!100 = !{!"int", !98, i64 0}
!101 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !102, i64 0}
!102 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !103, i64 0}
!103 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !104, i64 0, !106, i64 8}
!104 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !105, i64 0}
!105 = !{!"_ZTSSt4lessIPKcE"}
!106 = !{!"_ZTSSt15_Rb_tree_header", !107, i64 0, !110, i64 32}
!107 = !{!"_ZTSSt18_Rb_tree_node_base", !108, i64 0, !109, i64 8, !109, i64 16, !109, i64 24}
!108 = !{!"_ZTSSt14_Rb_tree_color", !98, i64 0}
!109 = !{!"any pointer", !98, i64 0}
!110 = !{!"long", !98, i64 0}
!111 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE", !112, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE", !113, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implE", !114, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!115 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi1EE17DifferenceFormulaE", !98, i64 0}
!116 = !{!94, !115, i64 128}
!117 = !{!97, !97, i64 0}
!118 = !{!114, !109, i64 0}
!119 = !{!114, !109, i64 8}
!120 = !{!"function_entry_count", i64 551544}
!121 = !{!"branch_weights", i32 551545, i32 1}
!122 = !{!"function_entry_count", i64 269698}
!123 = !{!95, !100, i64 88}
!124 = distinct !{!124, !125}
!125 = !{!"llvm.loop.mustprogress"}
!126 = distinct !{!126, !125}
!127 = distinct !{!127, !125}
!128 = !{!"function_entry_count", i64 2856063}
!129 = !{!"function_entry_count", i64 138244457713}
!130 = !{!131, !109, i64 80}
!131 = !{!"_ZTSN6dealii6VectorIdEE", !99, i64 0, !100, i64 72, !100, i64 76, !109, i64 80}
!132 = !{!"function_entry_count", i64 2906115}
!133 = !{!"branch_weights", i32 6460, i32 2899657}
!134 = distinct !{!134, !125}
!135 = distinct !{!135, !125}
!136 = distinct !{!136, !125}
!137 = !{!"function_entry_count", i64 39}
!138 = !{!139, !109, i64 8}
!139 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!140 = !{!139, !109, i64 0}
!141 = !{!"function_entry_count", i64 292334}
!142 = distinct !{!142, !125}
!143 = distinct !{!143, !125}
!144 = distinct !{!144, !125}
!145 = distinct !{!145, !125}
!146 = distinct !{!146, !125}
!147 = distinct !{!147, !125}
!148 = distinct !{!148, !125}
!149 = !{!150, !109, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi1EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!151 = !{!152, !97, i64 96}
!152 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi2EEE", !153, i64 0, !97, i64 96, !154, i64 104, !158, i64 128}
!153 = !{!"_ZTSN6dealii8FunctionILi2EEE", !96, i64 0, !99, i64 16, !100, i64 88}
!154 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE", !155, i64 0}
!155 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE", !156, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implE", !157, i64 0}
!157 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!158 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi2EE17DifferenceFormulaE", !98, i64 0}
!159 = !{!152, !158, i64 128}
!160 = !{!157, !109, i64 0}
!161 = !{!157, !109, i64 8}
!162 = !{!"function_entry_count", i64 287056}
!163 = distinct !{!163, !125}
!164 = distinct !{!164, !125}
!165 = distinct !{!165, !125}
!166 = !{!"function_entry_count", i64 1130961}
!167 = !{!"branch_weights", i32 1130962, i32 1}
!168 = !{!"function_entry_count", i64 202370}
!169 = !{!"function_entry_count", i64 464288}
!170 = !{!153, !100, i64 88}
!171 = distinct !{!171, !125}
!172 = distinct !{!172, !125}
!173 = distinct !{!173, !125}
!174 = distinct !{!174, !125}
!175 = distinct !{!175, !125}
!176 = distinct !{!176, !125}
!177 = distinct !{!177, !125}
!178 = distinct !{!178, !125}
!179 = distinct !{!179, !125}
!180 = distinct !{!180, !125}
!181 = distinct !{!181, !125}
!182 = distinct !{!182, !125}
!183 = !{!"function_entry_count", i64 955498}
!184 = !{!185, !109, i64 8}
!185 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!186 = !{!185, !109, i64 0}
!187 = !{!"function_entry_count", i64 5322946}
!188 = distinct !{!188, !125}
!189 = distinct !{!189, !125}
!190 = distinct !{!190, !125}
!191 = distinct !{!191, !125}
!192 = distinct !{!192, !125}
!193 = distinct !{!193, !125}
!194 = distinct !{!194, !125}
!195 = distinct !{!195, !125}
!196 = distinct !{!196, !125}
!197 = distinct !{!197, !125}
!198 = !{!199, !109, i64 0}
!199 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!200 = !{!201, !97, i64 96}
!201 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi3EEE", !202, i64 0, !97, i64 96, !203, i64 104, !207, i64 128}
!202 = !{!"_ZTSN6dealii8FunctionILi3EEE", !96, i64 0, !99, i64 16, !100, i64 88}
!203 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE", !204, i64 0}
!204 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE", !205, i64 0}
!205 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implE", !206, i64 0}
!206 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!207 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi3EE17DifferenceFormulaE", !98, i64 0}
!208 = !{!201, !207, i64 128}
!209 = !{!"function_entry_count", i64 2314867}
!210 = distinct !{!210, !125}
!211 = !{!"function_entry_count", i64 10407865}
!212 = !{!206, !109, i64 0}
!213 = !{!206, !109, i64 8}
!214 = !{!"function_entry_count", i64 409051700}
!215 = !{!"function_entry_count", i64 2121454836}
!216 = distinct !{!216, !125}
!217 = distinct !{!217, !125}
!218 = distinct !{!218, !125}
!219 = !{!"function_entry_count", i64 627233310}
!220 = !{!"branch_weights", i32 627233311, i32 1}
!221 = !{!"function_entry_count", i64 5584274}
!222 = !{!"function_entry_count", i64 18388994}
!223 = !{!"function_entry_count", i64 4189097406}
!224 = !{!"function_entry_count", i64 126150}
!225 = !{!202, !100, i64 88}
!226 = distinct !{!226, !125}
!227 = distinct !{!227, !125}
!228 = distinct !{!228, !125}
!229 = distinct !{!229, !125}
!230 = distinct !{!230, !125}
!231 = distinct !{!231, !125}
!232 = distinct !{!232, !125}
!233 = distinct !{!233, !125}
!234 = distinct !{!234, !125}
!235 = distinct !{!235, !125}
!236 = distinct !{!236, !125}
!237 = distinct !{!237, !125}
!238 = !{!"function_entry_count", i64 23475661}
!239 = !{!240, !109, i64 8}
!240 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!241 = !{!240, !109, i64 0}
!242 = !{!"function_entry_count", i64 59145566}
!243 = distinct !{!243, !125}
!244 = distinct !{!244, !125}
!245 = distinct !{!245, !125}
!246 = distinct !{!246, !125}
!247 = distinct !{!247, !125}
!248 = distinct !{!248, !125}
!249 = distinct !{!249, !125}
!250 = distinct !{!250, !125}
!251 = distinct !{!251, !125}
!252 = distinct !{!252, !125}
!253 = !{!"function_entry_count", i64 371948270}
!254 = !{!255, !109, i64 0}
!255 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!256 = !{!"function_entry_count", i64 271565}
!257 = !{!"function_entry_count", i64 2866076}
!258 = !{!"function_entry_count", i64 98457587}
!259 = !{!114, !109, i64 16}
!260 = !{!110, !110, i64 0}
!261 = !{!"function_entry_count", i64 34204152}
!262 = !{!"branch_weights", i32 1, i32 34204153}
!263 = !{!"branch_weights", i32 1, i32 2000}
!264 = distinct !{!264, !125}
!265 = !{!"function_entry_count", i64 271481}
!266 = !{!"function_entry_count", i64 3350673}
!267 = !{!"branch_weights", i32 176, i32 3350499}
!268 = !{!"branch_weights", i32 92, i32 85}
!269 = !{!131, !100, i64 76}
!270 = !{!"branch_weights", i32 2880326, i32 470174}
!271 = !{!"branch_weights", i32 2880185, i32 142}
!272 = !{!131, !100, i64 72}
!273 = !{!"branch_weights", i32 20593, i32 3329907}
!274 = !{!"function_entry_count", i64 4002560}
!275 = !{!"branch_weights", i32 1, i32 4002561}
!276 = !{!"function_entry_count", i64 4406944}
!277 = !{!"function_entry_count", i64 36050862}
!278 = !{!"function_entry_count", i64 23518070}
!279 = !{!"function_entry_count", i64 25807262}
!280 = !{!"function_entry_count", i64 25820050}
!281 = !{!"branch_weights", i32 1, i32 4303341}
!282 = !{!"branch_weights", i32 4303341, i32 -542009222}
!283 = distinct !{!283, !125}
!284 = !{!100, !100, i64 0}
!285 = !{!109, !109, i64 0}
!286 = !{!157, !109, i64 16}
!287 = distinct !{!287, !125}
!288 = !{!"function_entry_count", i64 4593520}
!289 = !{!"function_entry_count", i64 1236059}
!290 = !{!"branch_weights", i32 1, i32 1236060}
!291 = !{!"function_entry_count", i64 9329057}
!292 = !{!206, !109, i64 16}
!293 = !{!"function_entry_count", i64 2326999}
!294 = !{!"function_entry_count", i64 10565116}
!295 = !{!"function_entry_count", i64 12017491}
!296 = !{!"function_entry_count", i64 12879983}
!297 = !{!"function_entry_count", i64 9874527}
!298 = !{!"branch_weights", i32 184036, i32 9690493}
!299 = !{!"function_entry_count", i64 21918802}
!300 = distinct !{!300, !125}
!301 = !{!"function_entry_count", i64 10953335}
!302 = !{!"branch_weights", i32 1262844, i32 9690493}
!303 = !{!"function_entry_count", i64 18899890}
!304 = !{!"branch_weights", i32 18899891, i32 37799780}
!305 = distinct !{!305, !125}
!306 = !{!"function_entry_count", i64 70675435}
!307 = !{!"function_entry_count", i64 4316510434}
!308 = !{!"branch_weights", i32 1079127609, i32 -2136712079}
!309 = distinct !{!309, !125}
!310 = !{!"function_entry_count", i64 350833100}
!311 = !{!"branch_weights", i32 350833101, i32 701666200}
!312 = distinct !{!312, !125}
