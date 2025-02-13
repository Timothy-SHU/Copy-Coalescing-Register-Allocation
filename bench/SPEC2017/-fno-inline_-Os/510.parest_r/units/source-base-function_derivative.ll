; ModuleID = 'source/base/function_derivative.cc'
source_filename = "source/base/function_derivative.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.std::allocator.5" = type { i8 }
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
%"class.dealii::Vector" = type { %"class.dealii::Subscriptor", i32, i32, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.10" = type { i8 }
%"class.dealii::Point.28" = type { %"class.dealii::Tensor.29" }
%"class.dealii::Tensor.29" = type { [2 x double] }
%"class.std::allocator.25" = type { i8 }
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
%"class.std::allocator.42" = type { i8 }
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

$_ZNK6dealii12FunctionTime8get_timeEv = comdat any

$_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_ = comdat any

$_ZNSaIN6dealii5PointILi1EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS2_RKS3_ = comdat any

$_ZN6dealii18FunctionDerivativeILi1EE11set_formulaENS_22AutoDerivativeFunctionILi1EE17DifferenceFormulaE = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi1EEC5ERKNS_8FunctionILi1EEERKSt6vectorINS_5PointILi1EEESaIS8_EEd = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii5PointILi1EEaSEOS1_ = comdat any

$_ZN6dealii18FunctionDerivativeILi1EE5set_hEd = comdat any

$_ZN6dealii6TensorILi1ELi1EEmLEd = comdat any

$_ZNK6dealii18FunctionDerivativeILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE = comdat any

$_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE = comdat any

$_ZNK6dealii18FunctionDerivativeILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii6VectorIdE4sizeEv = comdat any

$_ZN6dealii6VectorIdEC2Ej = comdat any

$_ZN6dealii6VectorIdE4saddEddRKS1_ = comdat any

$_ZN6dealii6VectorIdE3addEdRKS1_ = comdat any

$_ZN6dealii6VectorIdE5scaleEd = comdat any

$_ZN6dealii6VectorIdED2Ev = comdat any

$_ZNK6dealii18FunctionDerivativeILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZNK6dealii18FunctionDerivativeILi1EE18memory_consumptionEv = comdat any

$_ZN6dealii18FunctionDerivativeILi2EEC5ERKNS_8FunctionILi2EEERKNS_5PointILi2EEEd = comdat any

$_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_ = comdat any

$_ZNSaIN6dealii5PointILi2EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS2_RKS3_ = comdat any

$_ZN6dealii18FunctionDerivativeILi2EE11set_formulaENS_22AutoDerivativeFunctionILi2EE17DifferenceFormulaE = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi2EEC5ERKNS_8FunctionILi2EEERKSt6vectorINS_5PointILi2EEESaIS8_EEd = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii5PointILi2EEaSEOS1_ = comdat any

$_ZN6dealii18FunctionDerivativeILi2EE5set_hEd = comdat any

$_ZN6dealii6TensorILi1ELi2EEmLEd = comdat any

$_ZNK6dealii18FunctionDerivativeILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE = comdat any

$_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE = comdat any

$_ZNK6dealii18FunctionDerivativeILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii18FunctionDerivativeILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii18FunctionDerivativeILi2EE18memory_consumptionEv = comdat any

$_ZN6dealii18FunctionDerivativeILi3EEC5ERKNS_8FunctionILi3EEERKNS_5PointILi3EEEd = comdat any

$_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_ = comdat any

$_ZNSaIN6dealii5PointILi3EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS2_RKS3_ = comdat any

$_ZN6dealii18FunctionDerivativeILi3EE11set_formulaENS_22AutoDerivativeFunctionILi3EE17DifferenceFormulaE = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev = comdat any

$_ZN6dealii18FunctionDerivativeILi3EEC5ERKNS_8FunctionILi3EEERKSt6vectorINS_5PointILi3EEESaIS8_EEd = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii5PointILi3EEaSEOS1_ = comdat any

$_ZN6dealii18FunctionDerivativeILi3EE5set_hEd = comdat any

$_ZN6dealii6TensorILi1ELi3EEmLEd = comdat any

$_ZNK6dealii18FunctionDerivativeILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE = comdat any

$_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE = comdat any

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

$_ZN6dealii6TensorILi1ELi1EEaSERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEaSERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEaSERKS1_ = comdat any

$_ZNSt15__new_allocatorIdEC2Ev = comdat any

$_ZNK6dealii5PointILi1EEmlEd = comdat any

$_ZN6dealii5PointILi1EEC2ERKS1_ = comdat any

$_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE18_M_fill_initializeEmRKS2_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8max_sizeERKS3_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$__clang_call_terminate = comdat any

$_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE8allocateEmPKv = comdat any

$_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi1EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt20uninitialized_fill_nIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi1EEEmS4_EET_S6_T0_RKT1_ = comdat any

$_ZSt18__do_uninit_fill_nIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RKT1_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi1EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi1EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi1EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii5PointILi1EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi1EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi1EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii5PointILi1EEC2Ev = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2Eb = comdat any

$_ZN6dealii6TensorILi1ELi1EEpLERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi1EEmIERKS1_ = comdat any

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

$_ZNK6dealii6VectorIdE5beginEv = comdat any

$_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_ = comdat any

$_ZNSaIdEC2ERKS_ = comdat any

$_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_ = comdat any

$_ZNKSt15__new_allocatorIdE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIdE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIdEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIdED2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIdEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPdmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIdJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm = comdat any

$_ZNSt15__new_allocatorIdE10deallocateEPdm = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZNK6dealii5PointILi2EEmlEd = comdat any

$_ZN6dealii5PointILi2EEC2ERKS1_ = comdat any

$_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE18_M_fill_initializeEmRKS2_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE8allocateEmPKv = comdat any

$_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi2EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt20uninitialized_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi2EEEmS4_EET_S6_T0_RKT1_ = comdat any

$_ZSt18__do_uninit_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi2EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii5PointILi2EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi2EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi2EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii5PointILi2EEC2Ev = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2Eb = comdat any

$_ZN6dealii6TensorILi1ELi2EEpLERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEmIERKS1_ = comdat any

$_ZNK6dealii5PointILi3EEmlEd = comdat any

$_ZN6dealii5PointILi3EEC2ERKS1_ = comdat any

$_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE18_M_fill_initializeEmRKS2_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE8allocateEmPKv = comdat any

$_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi3EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt20uninitialized_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi3EEEmS4_EET_S6_T0_RKT1_ = comdat any

$_ZSt18__do_uninit_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi3EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE21_M_default_initializeEm = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii5PointILi3EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi3EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi3EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii5PointILi3EEC2Ev = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2Eb = comdat any

$_ZN6dealii6TensorILi1ELi3EEpLERKS1_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEmIERKS1_ = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EEC2ERKNS_8FunctionILi1EEERKNS_5PointILi1EEEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi1EEC5ERKNS_8FunctionILi1EEERKNS_5PointILi1EEEd) align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.std::allocator.5", align 1
  %7 = getelementptr inbounds %"class.dealii::Function", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !213
  %9 = tail call noundef double @_ZNK6dealii12FunctionTime8get_timeEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %8, double noundef %9) #12
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 1, i64 2), ptr %10, align 8, !tbaa !231
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !233
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  store double %3, ptr %12, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  invoke void @_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
          to label %13 unwind label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  call void @_ZNSaIN6dealii5PointILi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  invoke void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS2_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
          to label %15 unwind label %18

15:                                               ; preds = %13
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN6dealii18FunctionDerivativeILi1EE11set_formulaENS_22AutoDerivativeFunctionILi1EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #12
  ret void

16:                                               ; preds = %4
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii12FunctionTime8get_timeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %"class.dealii::FunctionTime", ptr %0, i64 0, i32 1
  %3 = load double, ptr %2, align 8, !tbaa !246
  ret double %3
}

; Function Attrs: optsize
declare void @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132), double noundef, i32 noundef, double noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !212 {
  tail call void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %1) #12
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !247 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS2_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %5 = tail call noundef i64 @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
  invoke void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE18_M_fill_initializeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EE11set_formulaENS_22AutoDerivativeFunctionILi1EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !248
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %2 = load ptr, ptr %0, align 8, !tbaa !249
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !250
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EEC2ERKNS_8FunctionILi1EEERKSt6vectorINS_5PointILi1EEESaIS8_EEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi1EEC5ERKNS_8FunctionILi1EEERKSt6vectorINS_5PointILi1EEESaIS8_EEd) align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %5 = alloca %"class.std::allocator.5", align 1
  %6 = alloca %"class.dealii::Point", align 8
  %7 = getelementptr inbounds %"class.dealii::Function", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !213
  %9 = tail call noundef double @_ZNK6dealii12FunctionTime8get_timeEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %8, double noundef %9) #12
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 1, i64 2), ptr %10, align 8, !tbaa !231
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !233
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  store double %3, ptr %12, align 8, !tbaa !234
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  call void @_ZNSaIN6dealii5PointILi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  invoke void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %15 unwind label %19

15:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %16 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %28, %15
  call void @_ZN6dealii18FunctionDerivativeILi1EE11set_formulaENS_22AutoDerivativeFunctionILi1EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #12
  ret void

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %35

21:                                               ; preds = %15, %28
  %22 = phi i64 [ %30, %28 ], [ 0, %15 ]
  %23 = phi i32 [ %29, %28 ], [ 0, %15 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %22) #14
  invoke void @_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %6, double noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %24) #12
          to label %25 unwind label %33

25:                                               ; preds = %21
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %22) #14
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %6) #12
          to label %28 unwind label %33

28:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %29 = add i32 %23, 1
  %30 = zext i32 %29 to i64
  %31 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  %32 = icmp ugt i64 %31, %30
  br i1 %32, label %21, label %18, !llvm.loop !251

33:                                               ; preds = %25, %21
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  br label %35

35:                                               ; preds = %33, %19
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %20, %19 ]
  call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !253 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  %4 = load ptr, ptr %0, align 8, !tbaa !249
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  invoke void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !254 {
  %3 = load ptr, ptr %0, align 8, !tbaa !249
  %4 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !255 {
  %3 = load ptr, ptr %0, align 8, !tbaa !249
  %4 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 !prof !212 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %10, %2
  %9 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  store double %1, ptr %9, align 8, !tbaa !234
  ret void

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %18, %10 ]
  %12 = phi i32 [ 0, %6 ], [ %17, %10 ]
  %13 = load double, ptr %7, align 8, !tbaa !234
  %14 = fdiv double %1, %13
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %11) #14
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmLEd(ptr noundef nonnull align 8 dereferenceable(8) %15, double noundef %14) #12
  %17 = add i32 %12, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %10, label %8, !llvm.loop !256
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmLEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %3 = load double, ptr %0, align 8, !tbaa !257
  %4 = fmul double %3, %1
  store double %4, ptr %0, align 8, !tbaa !257
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii18FunctionDerivativeILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !212 {
  %4 = alloca %"class.dealii::Point", align 8
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = alloca %"class.dealii::Point", align 8
  %12 = alloca %"class.dealii::Point", align 8
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !248
  switch i32 %14, label %88 [
    i32 0, label %15
    i32 1, label %35
    i32 2, label %53
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %18 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %19) #12
  %20 = load ptr, ptr %17, align 8, !tbaa !231
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef double %22(ptr noundef nonnull align 8 dereferenceable(92) %17, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %2) #12
  %24 = load ptr, ptr %16, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %25) #12
  %26 = load ptr, ptr %24, align 8, !tbaa !231
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef double %28(ptr noundef nonnull align 8 dereferenceable(92) %24, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2) #12
  %30 = fsub double %23, %29
  %31 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %32 = load double, ptr %31, align 8, !tbaa !234
  %33 = fmul double %32, 2.000000e+00
  %34 = fdiv double %30, %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %88

35:                                               ; preds = %3
  %36 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !258
  %38 = load ptr, ptr %37, align 8, !tbaa !231
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef double %40(ptr noundef nonnull align 8 dereferenceable(92) %37, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) #12
  %42 = load ptr, ptr %36, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %43 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %44 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %43, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %44) #12
  %45 = load ptr, ptr %42, align 8, !tbaa !231
  %46 = getelementptr inbounds ptr, ptr %45, i64 4
  %47 = load ptr, ptr %46, align 8
  %48 = call noundef double %47(ptr noundef nonnull align 8 dereferenceable(92) %42, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2) #12
  %49 = fsub double %41, %48
  %50 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %51 = load double, ptr %50, align 8, !tbaa !234
  %52 = fdiv double %49, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %88

53:                                               ; preds = %3
  %54 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %56 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %57 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %8, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %57) #12
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  %58 = load ptr, ptr %55, align 8, !tbaa !231
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef double %60(ptr noundef nonnull align 8 dereferenceable(92) %55, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %2) #12
  %62 = fneg double %61
  %63 = load ptr, ptr %54, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %64) #12
  %65 = load ptr, ptr %63, align 8, !tbaa !231
  %66 = getelementptr inbounds ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = call noundef double %67(ptr noundef nonnull align 8 dereferenceable(92) %63, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %2) #12
  %69 = call double @llvm.fmuladd.f64(double %68, double 8.000000e+00, double %62)
  %70 = load ptr, ptr %54, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %71) #12
  %72 = load ptr, ptr %70, align 8, !tbaa !231
  %73 = getelementptr inbounds ptr, ptr %72, i64 4
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef double %74(ptr noundef nonnull align 8 dereferenceable(92) %70, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %2) #12
  %76 = call double @llvm.fmuladd.f64(double %75, double -8.000000e+00, double %69)
  %77 = load ptr, ptr %54, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %12, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %78) #12
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %12) #12
  %79 = load ptr, ptr %77, align 8, !tbaa !231
  %80 = getelementptr inbounds ptr, ptr %79, i64 4
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef double %81(ptr noundef nonnull align 8 dereferenceable(92) %77, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %2) #12
  %83 = fadd double %76, %82
  %84 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %85 = load double, ptr %84, align 8, !tbaa !234
  %86 = fmul double %85, 1.200000e+01
  %87 = fdiv double %83, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %88

88:                                               ; preds = %3, %53, %35, %15
  %89 = phi double [ %87, %53 ], [ %52, %35 ], [ %34, %15 ], [ 0.000000e+00, %3 ]
  ret double %89
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !212 {
  %4 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !212 {
  %4 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %4 = alloca %"class.dealii::Vector", align 8
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = alloca %"class.dealii::Point", align 8
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = alloca %"class.dealii::Point", align 8
  %12 = alloca %"class.dealii::Point", align 8
  %13 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #13
  %14 = tail call noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #12
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %4, i32 noundef %14) #12
  %15 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !248
  switch i32 %16, label %111 [
    i32 0, label %17
    i32 1, label %43
    i32 2, label %66
  ]

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %20 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %21) #12
          to label %22 unwind label %37

22:                                               ; preds = %17
  %23 = load ptr, ptr %19, align 8, !tbaa !231
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(92) %19, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(88) %2) #12
          to label %26 unwind label %37

26:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %27 = load ptr, ptr %18, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %28) #12
          to label %29 unwind label %39

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !231
  %31 = getelementptr inbounds ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(92) %27, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %33 unwind label %39

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %34 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %35 = load double, ptr %34, align 8, !tbaa !234
  %36 = fmul double %35, 2.000000e+00
  br label %60

37:                                               ; preds = %22, %17
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %112

39:                                               ; preds = %29, %26
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %112

41:                                               ; preds = %60, %43
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %112

43:                                               ; preds = %3
  %44 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !258
  %46 = load ptr, ptr %45, align 8, !tbaa !231
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(92) %45, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #12
          to label %49 unwind label %41

49:                                               ; preds = %43
  %50 = load ptr, ptr %44, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %51 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %51, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %52) #12
          to label %53 unwind label %64

53:                                               ; preds = %49
  %54 = load ptr, ptr %50, align 8, !tbaa !231
  %55 = getelementptr inbounds ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(92) %50, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %57 unwind label %64

57:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  %58 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %59 = load double, ptr %58, align 8, !tbaa !234
  br label %60

60:                                               ; preds = %33, %57
  %61 = phi double [ %36, %33 ], [ %59, %57 ]
  %62 = fdiv double 1.000000e+00, %61
  %63 = fdiv double -1.000000e+00, %61
  invoke void @_ZN6dealii6VectorIdE4saddEddRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef %62, double noundef %63, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %111 unwind label %41

64:                                               ; preds = %53, %49
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %112

66:                                               ; preds = %3
  %67 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %69 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %9, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %70) #12
          to label %71 unwind label %103

71:                                               ; preds = %66
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
          to label %72 unwind label %103

72:                                               ; preds = %71
  %73 = load ptr, ptr %68, align 8, !tbaa !231
  %74 = getelementptr inbounds ptr, ptr %73, i64 5
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(92) %68, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(88) %2) #12
          to label %76 unwind label %103

76:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  %77 = load ptr, ptr %67, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  %78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %11, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %78) #12
          to label %79 unwind label %105

79:                                               ; preds = %76
  invoke void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #12
          to label %80 unwind label %105

80:                                               ; preds = %79
  %81 = load ptr, ptr %77, align 8, !tbaa !231
  %82 = getelementptr inbounds ptr, ptr %81, i64 5
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(92) %77, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %84 unwind label %105

84:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @_ZN6dealii6VectorIdE3addEdRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
  %85 = load ptr, ptr %67, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %86) #12
          to label %87 unwind label %107

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 8, !tbaa !231
  %89 = getelementptr inbounds ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(92) %85, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %91 unwind label %107

91:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @_ZN6dealii6VectorIdE3addEdRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef -8.000000e+00, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
  %92 = load ptr, ptr %67, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  %93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %93) #12
          to label %94 unwind label %109

94:                                               ; preds = %91
  %95 = load ptr, ptr %92, align 8, !tbaa !231
  %96 = getelementptr inbounds ptr, ptr %95, i64 5
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(92) %92, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %98 unwind label %109

98:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @_ZN6dealii6VectorIdE3addEdRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef 8.000000e+00, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
  %99 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %100 = load double, ptr %99, align 8, !tbaa !234
  %101 = fmul double %100, 1.200000e+01
  %102 = fdiv double 1.000000e+00, %101
  call void @_ZN6dealii6VectorIdE5scaleEd(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef %102) #12
  br label %111

103:                                              ; preds = %72, %71, %66
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %112

105:                                              ; preds = %80, %79, %76
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %112

107:                                              ; preds = %87, %84
  %108 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  br label %112

109:                                              ; preds = %94, %91
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  br label %112

111:                                              ; preds = %60, %3, %98
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  ret void

112:                                              ; preds = %109, %107, %105, %103, %64, %41, %39, %37
  %113 = phi { ptr, i32 } [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %42, %41 ], [ %65, %64 ], [ %40, %39 ], [ %38, %37 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  resume { ptr, i32 } %113
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #1 comdat align 2 !prof !259 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !260
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !262 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE4saddEddRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(88) %3) local_unnamed_addr #0 comdat align 2 !prof !263 {
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  %6 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  %7 = tail call noundef ptr @_ZNK6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %3) #12
  %8 = icmp eq ptr %5, %6
  br i1 %8, label %19, label %9, !prof !264

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %13, %9 ], [ %7, %4 ]
  %11 = phi ptr [ %17, %9 ], [ %5, %4 ]
  %12 = load double, ptr %11, align 8, !tbaa !257
  %13 = getelementptr inbounds double, ptr %10, i64 1
  %14 = load double, ptr %10, align 8, !tbaa !257
  %15 = fmul double %14, %2
  %16 = tail call double @llvm.fmuladd.f64(double %1, double %12, double %15)
  store double %16, ptr %11, align 8, !tbaa !257
  %17 = getelementptr inbounds double, ptr %11, i64 1
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %19, label %9, !prof !265, !llvm.loop !266

19:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE3addEdRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 comdat align 2 !prof !267 {
  %4 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  %6 = tail call noundef ptr @_ZNK6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #12
  %7 = icmp eq ptr %4, %5
  br i1 %7, label %17, label %8, !prof !268

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %11, %8 ], [ %6, %3 ]
  %10 = phi ptr [ %13, %8 ], [ %4, %3 ]
  %11 = getelementptr inbounds double, ptr %9, i64 1
  %12 = load double, ptr %9, align 8, !tbaa !257
  %13 = getelementptr inbounds double, ptr %10, i64 1
  %14 = load double, ptr %10, align 8, !tbaa !257
  %15 = tail call double @llvm.fmuladd.f64(double %1, double %12, double %14)
  store double %15, ptr %10, align 8, !tbaa !257
  %16 = icmp eq ptr %13, %5
  br i1 %16, label %17, label %8, !prof !269, !llvm.loop !270

17:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE5scaleEd(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !271 {
  %3 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  %4 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %12, label %6, !prof !272

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %3, %2 ]
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = load double, ptr %7, align 8, !tbaa !257
  %10 = fmul double %9, %1
  store double %10, ptr %7, align 8, !tbaa !257
  %11 = icmp eq ptr %8, %4
  br i1 %11, label %12, label %6, !prof !273, !llvm.loop !274

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 !prof !275 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii6VectorIdEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !277

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !276
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %5 = alloca %"class.std::vector.8", align 8
  %6 = alloca %"class.std::allocator.10", align 1
  %7 = alloca %"class.std::vector.3", align 8
  %8 = alloca %"class.std::allocator.5", align 1
  %9 = alloca %"class.dealii::Point", align 8
  %10 = alloca %"class.dealii::Point", align 8
  %11 = alloca %"class.dealii::Point", align 8
  %12 = alloca %"class.dealii::Point", align 8
  %13 = alloca %"class.dealii::Point", align 8
  %14 = alloca %"class.dealii::Point", align 8
  %15 = alloca %"class.dealii::Point", align 8
  %16 = alloca %"class.dealii::Point", align 8
  %17 = alloca %"class.dealii::Point", align 8
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %20) #14
  %22 = icmp eq i64 %21, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %23 = and i64 %18, 4294967295
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
          to label %24 unwind label %36

24:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  call void @_ZNSaIN6dealii5PointILi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  invoke void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %8) #12
          to label %25 unwind label %38

25:                                               ; preds = %24
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  %26 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !248
  switch i32 %27, label %268 [
    i32 0, label %32
    i32 1, label %99
    i32 2, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %19, 0
  br i1 %29, label %143, label %30

30:                                               ; preds = %28
  %31 = and i64 %18, 4294967295
  br label %152

32:                                               ; preds = %25
  %33 = icmp eq i32 %19, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = and i64 %18, 4294967295
  br label %49

36:                                               ; preds = %4
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br label %273

38:                                               ; preds = %24
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  br label %271

40:                                               ; preds = %57, %32
  %41 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !258
  %43 = load ptr, ptr %42, align 8, !tbaa !231
  %44 = getelementptr inbounds ptr, ptr %43, i64 6
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(92) %42, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) #12
          to label %46 unwind label %71

46:                                               ; preds = %40
  br i1 %33, label %62, label %47

47:                                               ; preds = %46
  %48 = and i64 %18, 4294967295
  br label %73

49:                                               ; preds = %34, %57
  %50 = phi i64 [ 0, %34 ], [ %58, %57 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %50) #14
  %52 = select i1 %22, i64 0, i64 %50
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %52) #14
  invoke void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull align 8 dereferenceable(8) %53) #12
          to label %54 unwind label %60

54:                                               ; preds = %49
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %50) #14
  %56 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
          to label %57 unwind label %60

57:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  %58 = add nuw nsw i64 %50, 1
  %59 = icmp eq i64 %58, %35
  br i1 %59, label %40, label %49, !llvm.loop !278

60:                                               ; preds = %54, %49
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br label %269

62:                                               ; preds = %81, %46
  %63 = load ptr, ptr %41, align 8, !tbaa !258
  %64 = load ptr, ptr %63, align 8, !tbaa !231
  %65 = getelementptr inbounds ptr, ptr %64, i64 6
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(92) %63, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %67 unwind label %71

67:                                               ; preds = %62
  br i1 %33, label %268, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %70 = and i64 %18, 4294967295
  br label %86

71:                                               ; preds = %233, %200, %166, %143, %109, %99, %62, %40
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %269

73:                                               ; preds = %47, %81
  %74 = phi i64 [ 0, %47 ], [ %82, %81 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %74) #14
  %76 = select i1 %22, i64 0, i64 %74
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %76) #14
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull align 8 dereferenceable(8) %77) #12
          to label %78 unwind label %84

78:                                               ; preds = %73
  %79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %74) #14
  %80 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull align 8 dereferenceable(8) %10) #12
          to label %81 unwind label %84

81:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  %82 = add nuw nsw i64 %74, 1
  %83 = icmp eq i64 %82, %48
  br i1 %83, label %62, label %73, !llvm.loop !279

84:                                               ; preds = %78, %73
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %269

86:                                               ; preds = %68, %86
  %87 = phi i64 [ 0, %68 ], [ %97, %86 ]
  %88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %87) #14
  %89 = load double, ptr %88, align 8, !tbaa !257
  %90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %87) #14
  %91 = load double, ptr %90, align 8, !tbaa !257
  %92 = fsub double %89, %91
  %93 = load double, ptr %69, align 8, !tbaa !234
  %94 = fmul double %93, 2.000000e+00
  %95 = fdiv double %92, %94
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %87) #14
  store double %95, ptr %96, align 8, !tbaa !257
  %97 = add nuw nsw i64 %87, 1
  %98 = icmp eq i64 %97, %70
  br i1 %98, label %268, label %86, !llvm.loop !280

99:                                               ; preds = %25
  %100 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !258
  %102 = load ptr, ptr %101, align 8, !tbaa !231
  %103 = getelementptr inbounds ptr, ptr %102, i64 6
  %104 = load ptr, ptr %103, align 8
  invoke void %104(ptr noundef nonnull align 8 dereferenceable(92) %101, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) #12
          to label %105 unwind label %71

105:                                              ; preds = %99
  %106 = icmp eq i32 %19, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %105
  %108 = and i64 %18, 4294967295
  br label %118

109:                                              ; preds = %126, %105
  %110 = load ptr, ptr %100, align 8, !tbaa !258
  %111 = load ptr, ptr %110, align 8, !tbaa !231
  %112 = getelementptr inbounds ptr, ptr %111, i64 6
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(92) %110, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %114 unwind label %71

114:                                              ; preds = %109
  br i1 %106, label %268, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %117 = and i64 %18, 4294967295
  br label %131

118:                                              ; preds = %107, %126
  %119 = phi i64 [ 0, %107 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  %120 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %119) #14
  %121 = select i1 %22, i64 0, i64 %119
  %122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %121) #14
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef nonnull align 8 dereferenceable(8) %122) #12
          to label %123 unwind label %129

123:                                              ; preds = %118
  %124 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %119) #14
  %125 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef nonnull align 8 dereferenceable(8) %11) #12
          to label %126 unwind label %129

126:                                              ; preds = %123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  %127 = add nuw nsw i64 %119, 1
  %128 = icmp eq i64 %127, %108
  br i1 %128, label %109, label %118, !llvm.loop !281

129:                                              ; preds = %123, %118
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  br label %269

131:                                              ; preds = %115, %131
  %132 = phi i64 [ 0, %115 ], [ %141, %131 ]
  %133 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %132) #14
  %134 = load double, ptr %133, align 8, !tbaa !257
  %135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %132) #14
  %136 = load double, ptr %135, align 8, !tbaa !257
  %137 = fsub double %134, %136
  %138 = load double, ptr %116, align 8, !tbaa !234
  %139 = fdiv double %137, %138
  %140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %132) #14
  store double %139, ptr %140, align 8, !tbaa !257
  %141 = add nuw nsw i64 %132, 1
  %142 = icmp eq i64 %141, %117
  br i1 %142, label %268, label %131, !llvm.loop !282

143:                                              ; preds = %161, %28
  %144 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !258
  %146 = load ptr, ptr %145, align 8, !tbaa !231
  %147 = getelementptr inbounds ptr, ptr %146, i64 6
  %148 = load ptr, ptr %147, align 8
  invoke void %148(ptr noundef nonnull align 8 dereferenceable(92) %145, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) #12
          to label %149 unwind label %71

149:                                              ; preds = %143
  br i1 %29, label %166, label %150

150:                                              ; preds = %149
  %151 = and i64 %18, 4294967295
  br label %174

152:                                              ; preds = %30, %161
  %153 = phi i64 [ 0, %30 ], [ %162, %161 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %154 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %153) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  %155 = select i1 %22, i64 0, i64 %153
  %156 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %155) #14
  invoke void @_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %13, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %156) #12
          to label %157 unwind label %164

157:                                              ; preds = %152
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %154, ptr noundef nonnull align 8 dereferenceable(8) %13) #12
          to label %158 unwind label %164

158:                                              ; preds = %157
  %159 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %153) #14
  %160 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %159, ptr noundef nonnull align 8 dereferenceable(8) %12) #12
          to label %161 unwind label %164

161:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  %162 = add nuw nsw i64 %153, 1
  %163 = icmp eq i64 %162, %31
  br i1 %163, label %143, label %152, !llvm.loop !283

164:                                              ; preds = %158, %157, %152
  %165 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  br label %269

166:                                              ; preds = %183, %149
  %167 = load ptr, ptr %144, align 8, !tbaa !258
  %168 = load ptr, ptr %167, align 8, !tbaa !231
  %169 = getelementptr inbounds ptr, ptr %168, i64 6
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(92) %167, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %171 unwind label %71

171:                                              ; preds = %166
  br i1 %29, label %200, label %172

172:                                              ; preds = %171
  %173 = and i64 %18, 4294967295
  br label %191

174:                                              ; preds = %150, %183
  %175 = phi i64 [ 0, %150 ], [ %184, %183 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  %176 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %175) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %177 = select i1 %22, i64 0, i64 %175
  %178 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %177) #14
  invoke void @_ZN6dealiimlILi1EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %15, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %178) #12
          to label %179 unwind label %186

179:                                              ; preds = %174
  invoke void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %176, ptr noundef nonnull align 8 dereferenceable(8) %15) #12
          to label %180 unwind label %186

180:                                              ; preds = %179
  %181 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %175) #14
  %182 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef nonnull align 8 dereferenceable(8) %14) #12
          to label %183 unwind label %186

183:                                              ; preds = %180
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  %184 = add nuw nsw i64 %175, 1
  %185 = icmp eq i64 %184, %151
  br i1 %185, label %166, label %174, !llvm.loop !284

186:                                              ; preds = %180, %179, %174
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  br label %269

188:                                              ; preds = %191
  br i1 %29, label %200, label %189

189:                                              ; preds = %188
  %190 = and i64 %18, 4294967295
  br label %208

191:                                              ; preds = %172, %191
  %192 = phi i64 [ 0, %172 ], [ %198, %191 ]
  %193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %192) #14
  %194 = load double, ptr %193, align 8, !tbaa !257
  %195 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %192) #14
  %196 = load double, ptr %195, align 8, !tbaa !257
  %197 = fsub double %196, %194
  store double %197, ptr %195, align 8, !tbaa !257
  %198 = add nuw nsw i64 %192, 1
  %199 = icmp eq i64 %198, %173
  br i1 %199, label %188, label %191, !llvm.loop !285

200:                                              ; preds = %216, %171, %188
  %201 = load ptr, ptr %144, align 8, !tbaa !258
  %202 = load ptr, ptr %201, align 8, !tbaa !231
  %203 = getelementptr inbounds ptr, ptr %202, i64 6
  %204 = load ptr, ptr %203, align 8
  invoke void %204(ptr noundef nonnull align 8 dereferenceable(92) %201, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %205 unwind label %71

205:                                              ; preds = %200
  br i1 %29, label %233, label %206

206:                                              ; preds = %205
  %207 = and i64 %18, 4294967295
  br label %224

208:                                              ; preds = %189, %216
  %209 = phi i64 [ 0, %189 ], [ %217, %216 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  %210 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %209) #14
  %211 = select i1 %22, i64 0, i64 %209
  %212 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %211) #14
  invoke void @_ZNK6dealii5PointILi1EEplERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %210, ptr noundef nonnull align 8 dereferenceable(8) %212) #12
          to label %213 unwind label %219

213:                                              ; preds = %208
  %214 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %209) #14
  %215 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %214, ptr noundef nonnull align 8 dereferenceable(8) %16) #12
          to label %216 unwind label %219

216:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  %217 = add nuw nsw i64 %209, 1
  %218 = icmp eq i64 %217, %190
  br i1 %218, label %200, label %208, !llvm.loop !286

219:                                              ; preds = %213, %208
  %220 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  br label %269

221:                                              ; preds = %224
  br i1 %29, label %233, label %222

222:                                              ; preds = %221
  %223 = and i64 %18, 4294967295
  br label %242

224:                                              ; preds = %206, %224
  %225 = phi i64 [ 0, %206 ], [ %231, %224 ]
  %226 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %225) #14
  %227 = load double, ptr %226, align 8, !tbaa !257
  %228 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %225) #14
  %229 = load double, ptr %228, align 8, !tbaa !257
  %230 = call double @llvm.fmuladd.f64(double %227, double 8.000000e+00, double %229)
  store double %230, ptr %228, align 8, !tbaa !257
  %231 = add nuw nsw i64 %225, 1
  %232 = icmp eq i64 %231, %207
  br i1 %232, label %221, label %224, !llvm.loop !287

233:                                              ; preds = %250, %205, %221
  %234 = load ptr, ptr %144, align 8, !tbaa !258
  %235 = load ptr, ptr %234, align 8, !tbaa !231
  %236 = getelementptr inbounds ptr, ptr %235, i64 6
  %237 = load ptr, ptr %236, align 8
  invoke void %237(ptr noundef nonnull align 8 dereferenceable(92) %234, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %238 unwind label %71

238:                                              ; preds = %233
  br i1 %29, label %268, label %239

239:                                              ; preds = %238
  %240 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 2
  %241 = and i64 %18, 4294967295
  br label %255

242:                                              ; preds = %222, %250
  %243 = phi i64 [ 0, %222 ], [ %251, %250 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  %244 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %243) #14
  %245 = select i1 %22, i64 0, i64 %243
  %246 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %245) #14
  invoke void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %244, ptr noundef nonnull align 8 dereferenceable(8) %246) #12
          to label %247 unwind label %253

247:                                              ; preds = %242
  %248 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %243) #14
  %249 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii5PointILi1EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %248, ptr noundef nonnull align 8 dereferenceable(8) %17) #12
          to label %250 unwind label %253

250:                                              ; preds = %247
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  %251 = add nuw nsw i64 %243, 1
  %252 = icmp eq i64 %251, %223
  br i1 %252, label %233, label %242, !llvm.loop !288

253:                                              ; preds = %247, %242
  %254 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  br label %269

255:                                              ; preds = %239, %255
  %256 = phi i64 [ 0, %239 ], [ %266, %255 ]
  %257 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %256) #14
  %258 = load double, ptr %257, align 8, !tbaa !257
  %259 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %256) #14
  %260 = load double, ptr %259, align 8, !tbaa !257
  %261 = call double @llvm.fmuladd.f64(double %260, double -8.000000e+00, double %258)
  %262 = load double, ptr %240, align 8, !tbaa !234
  %263 = fmul double %262, 1.200000e+01
  %264 = fdiv double %261, %263
  %265 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %256) #14
  store double %264, ptr %265, align 8, !tbaa !257
  %266 = add nuw nsw i64 %256, 1
  %267 = icmp eq i64 %266, %241
  br i1 %267, label %268, label %255, !llvm.loop !289

268:                                              ; preds = %255, %131, %86, %238, %114, %67, %25
  call void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void

269:                                              ; preds = %253, %219, %186, %164, %129, %84, %71, %60
  %270 = phi { ptr, i32 } [ %165, %164 ], [ %187, %186 ], [ %220, %219 ], [ %254, %253 ], [ %72, %71 ], [ %130, %129 ], [ %61, %60 ], [ %85, %84 ]
  call void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #14
  br label %271

271:                                              ; preds = %269, %38
  %272 = phi { ptr, i32 } [ %270, %269 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  br label %273

273:                                              ; preds = %271, %36
  %274 = phi { ptr, i32 } [ %272, %271 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  resume { ptr, i32 } %274
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !290 {
  tail call void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  invoke void @_ZNSt6vectorIdSaIdEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !291 {
  %3 = load ptr, ptr %0, align 8, !tbaa !292
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !294 {
  %2 = load ptr, ptr %0, align 8, !tbaa !292
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !295
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii18FunctionDerivativeILi1EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #1 comdat align 2 !prof !212 {
  ret i32 184
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EEC2ERKNS_8FunctionILi2EEERKNS_5PointILi2EEEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi2EEC5ERKNS_8FunctionILi2EEERKNS_5PointILi2EEEd) align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %5 = alloca %"class.dealii::Point.28", align 8
  %6 = alloca %"class.std::allocator.25", align 1
  %7 = getelementptr inbounds %"class.dealii::Function.15", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !296
  %9 = tail call noundef double @_ZNK6dealii12FunctionTime8get_timeEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %8, double noundef %9) #12
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 1, i64 2), ptr %10, align 8, !tbaa !231
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !233
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  store double %3, ptr %12, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  invoke void @_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %5, double noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #12
          to label %13 unwind label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  call void @_ZNSaIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  invoke void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS2_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
          to label %15 unwind label %18

15:                                               ; preds = %13
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @_ZN6dealii18FunctionDerivativeILi2EE11set_formulaENS_22AutoDerivativeFunctionILi2EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #12
  ret void

16:                                               ; preds = %4
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  resume { ptr, i32 } %21
}

; Function Attrs: optsize
declare void @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132), double noundef, i32 noundef, double noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.28") align 8 %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat !prof !212 {
  tail call void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind writable sret(%"class.dealii::Point.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, double noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS2_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !311 {
  %5 = tail call noundef i64 @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
  invoke void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE18_M_fill_initializeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #12
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EE11set_formulaENS_22AutoDerivativeFunctionILi2EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !312
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %2 = load ptr, ptr %0, align 8, !tbaa !314
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !315
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EEC2ERKNS_8FunctionILi2EEERKSt6vectorINS_5PointILi2EEESaIS8_EEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi2EEC5ERKNS_8FunctionILi2EEERKSt6vectorINS_5PointILi2EEESaIS8_EEd) align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %5 = alloca %"class.std::allocator.25", align 1
  %6 = alloca %"class.dealii::Point.28", align 8
  %7 = getelementptr inbounds %"class.dealii::Function.15", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !296
  %9 = tail call noundef double @_ZNK6dealii12FunctionTime8get_timeEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %8, double noundef %9) #12
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 1, i64 2), ptr %10, align 8, !tbaa !231
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !233
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  store double %3, ptr %12, align 8, !tbaa !298
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  call void @_ZNSaIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  invoke void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %15 unwind label %19

15:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %16 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %28, %15
  call void @_ZN6dealii18FunctionDerivativeILi2EE11set_formulaENS_22AutoDerivativeFunctionILi2EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #12
  ret void

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %35

21:                                               ; preds = %15, %28
  %22 = phi i64 [ %30, %28 ], [ 0, %15 ]
  %23 = phi i32 [ %29, %28 ], [ 0, %15 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %24 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %22) #14
  invoke void @_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %6, double noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %24) #12
          to label %25 unwind label %33

25:                                               ; preds = %21
  %26 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %22) #14
  %27 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %6) #12
          to label %28 unwind label %33

28:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  %29 = add i32 %23, 1
  %30 = zext i32 %29 to i64
  %31 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  %32 = icmp ugt i64 %31, %30
  br i1 %32, label %21, label %18, !llvm.loop !316

33:                                               ; preds = %25, %21
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  br label %35

35:                                               ; preds = %33, %19
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %20, %19 ]
  call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !317 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !315
  %4 = load ptr, ptr %0, align 8, !tbaa !314
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  invoke void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !318 {
  %3 = load ptr, ptr %0, align 8, !tbaa !314
  %4 = getelementptr inbounds %"class.dealii::Point.28", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !319 {
  %3 = load ptr, ptr %0, align 8, !tbaa !314
  %4 = getelementptr inbounds %"class.dealii::Point.28", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 !prof !212 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %10, %2
  %9 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  store double %1, ptr %9, align 8, !tbaa !298
  ret void

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %18, %10 ]
  %12 = phi i32 [ 0, %6 ], [ %17, %10 ]
  %13 = load double, ptr %7, align 8, !tbaa !298
  %14 = fdiv double %1, %13
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %11) #14
  %16 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmLEd(ptr noundef nonnull align 8 dereferenceable(16) %15, double noundef %14) #12
  %17 = add i32 %12, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %10, label %8, !llvm.loop !320
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmLEd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %3 = load <2 x double>, ptr %0, align 8, !tbaa !257
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x double> %3, %5
  store <2 x double> %6, ptr %0, align 8, !tbaa !257
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii18FunctionDerivativeILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !212 {
  %4 = alloca %"class.dealii::Point.28", align 8
  %5 = alloca %"class.dealii::Point.28", align 8
  %6 = alloca %"class.dealii::Point.28", align 8
  %7 = alloca %"class.dealii::Point.28", align 8
  %8 = alloca %"class.dealii::Point.28", align 8
  %9 = alloca %"class.dealii::Point.28", align 8
  %10 = alloca %"class.dealii::Point.28", align 8
  %11 = alloca %"class.dealii::Point.28", align 8
  %12 = alloca %"class.dealii::Point.28", align 8
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !312
  switch i32 %14, label %88 [
    i32 0, label %15
    i32 1, label %35
    i32 2, label %53
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %18 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %19 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %19) #12
  %20 = load ptr, ptr %17, align 8, !tbaa !231
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef double %22(ptr noundef nonnull align 8 dereferenceable(92) %17, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2) #12
  %24 = load ptr, ptr %16, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %25 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %25) #12
  %26 = load ptr, ptr %24, align 8, !tbaa !231
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef double %28(ptr noundef nonnull align 8 dereferenceable(92) %24, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %2) #12
  %30 = fsub double %23, %29
  %31 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %32 = load double, ptr %31, align 8, !tbaa !298
  %33 = fmul double %32, 2.000000e+00
  %34 = fdiv double %30, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %88

35:                                               ; preds = %3
  %36 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !321
  %38 = load ptr, ptr %37, align 8, !tbaa !231
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef double %40(ptr noundef nonnull align 8 dereferenceable(92) %37, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12
  %42 = load ptr, ptr %36, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %43 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %44 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %43, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %44) #12
  %45 = load ptr, ptr %42, align 8, !tbaa !231
  %46 = getelementptr inbounds ptr, ptr %45, i64 4
  %47 = load ptr, ptr %46, align 8
  %48 = call noundef double %47(ptr noundef nonnull align 8 dereferenceable(92) %42, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %2) #12
  %49 = fsub double %41, %48
  %50 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %51 = load double, ptr %50, align 8, !tbaa !298
  %52 = fdiv double %49, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %88

53:                                               ; preds = %3
  %54 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  %56 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %57 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %8, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %57) #12
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %8) #12
  %58 = load ptr, ptr %55, align 8, !tbaa !231
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef double %60(ptr noundef nonnull align 8 dereferenceable(92) %55, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %2) #12
  %62 = fneg double %61
  %63 = load ptr, ptr %54, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %64 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %64) #12
  %65 = load ptr, ptr %63, align 8, !tbaa !231
  %66 = getelementptr inbounds ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = call noundef double %67(ptr noundef nonnull align 8 dereferenceable(92) %63, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %2) #12
  %69 = call double @llvm.fmuladd.f64(double %68, double 8.000000e+00, double %62)
  %70 = load ptr, ptr %54, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  %71 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %71) #12
  %72 = load ptr, ptr %70, align 8, !tbaa !231
  %73 = getelementptr inbounds ptr, ptr %72, i64 4
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef double %74(ptr noundef nonnull align 8 dereferenceable(92) %70, ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %2) #12
  %76 = call double @llvm.fmuladd.f64(double %75, double -8.000000e+00, double %69)
  %77 = load ptr, ptr %54, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  %78 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %12, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %78) #12
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  %79 = load ptr, ptr %77, align 8, !tbaa !231
  %80 = getelementptr inbounds ptr, ptr %79, i64 4
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef double %81(ptr noundef nonnull align 8 dereferenceable(92) %77, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %2) #12
  %83 = fadd double %76, %82
  %84 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %85 = load double, ptr %84, align 8, !tbaa !298
  %86 = fmul double %85, 1.200000e+01
  %87 = fdiv double %83, %86
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %88

88:                                               ; preds = %3, %53, %35, %15
  %89 = phi double [ %87, %53 ], [ %52, %35 ], [ %34, %15 ], [ 0.000000e+00, %3 ]
  ret double %89
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !prof !212 {
  %4 = alloca %"class.dealii::Point.28", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !prof !322 {
  %4 = alloca %"class.dealii::Point.28", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %4 = alloca %"class.dealii::Vector", align 8
  %5 = alloca %"class.dealii::Point.28", align 8
  %6 = alloca %"class.dealii::Point.28", align 8
  %7 = alloca %"class.dealii::Point.28", align 8
  %8 = alloca %"class.dealii::Point.28", align 8
  %9 = alloca %"class.dealii::Point.28", align 8
  %10 = alloca %"class.dealii::Point.28", align 8
  %11 = alloca %"class.dealii::Point.28", align 8
  %12 = alloca %"class.dealii::Point.28", align 8
  %13 = alloca %"class.dealii::Point.28", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #13
  %14 = tail call noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #12
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %4, i32 noundef %14) #12
  %15 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !312
  switch i32 %16, label %111 [
    i32 0, label %17
    i32 1, label %43
    i32 2, label %66
  ]

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %20 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %21 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %21) #12
          to label %22 unwind label %37

22:                                               ; preds = %17
  %23 = load ptr, ptr %19, align 8, !tbaa !231
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(92) %19, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(88) %2) #12
          to label %26 unwind label %37

26:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %27 = load ptr, ptr %18, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %28) #12
          to label %29 unwind label %39

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !231
  %31 = getelementptr inbounds ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(92) %27, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %33 unwind label %39

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  %34 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %35 = load double, ptr %34, align 8, !tbaa !298
  %36 = fmul double %35, 2.000000e+00
  br label %60

37:                                               ; preds = %22, %17
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %112

39:                                               ; preds = %29, %26
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %112

41:                                               ; preds = %60, %43
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %112

43:                                               ; preds = %3
  %44 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !321
  %46 = load ptr, ptr %45, align 8, !tbaa !231
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(92) %45, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #12
          to label %49 unwind label %41

49:                                               ; preds = %43
  %50 = load ptr, ptr %44, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %51 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %52 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %51, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %52) #12
          to label %53 unwind label %64

53:                                               ; preds = %49
  %54 = load ptr, ptr %50, align 8, !tbaa !231
  %55 = getelementptr inbounds ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(92) %50, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %57 unwind label %64

57:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  %58 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %59 = load double, ptr %58, align 8, !tbaa !298
  br label %60

60:                                               ; preds = %33, %57
  %61 = phi double [ %36, %33 ], [ %59, %57 ]
  %62 = fdiv double 1.000000e+00, %61
  %63 = fdiv double -1.000000e+00, %61
  invoke void @_ZN6dealii6VectorIdE4saddEddRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef %62, double noundef %63, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %111 unwind label %41

64:                                               ; preds = %53, %49
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %112

66:                                               ; preds = %3
  %67 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %69 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %70 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %9, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %70) #12
          to label %71 unwind label %103

71:                                               ; preds = %66
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
          to label %72 unwind label %103

72:                                               ; preds = %71
  %73 = load ptr, ptr %68, align 8, !tbaa !231
  %74 = getelementptr inbounds ptr, ptr %73, i64 5
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(92) %68, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(88) %2) #12
          to label %76 unwind label %103

76:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  %77 = load ptr, ptr %67, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  %78 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %11, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %78) #12
          to label %79 unwind label %105

79:                                               ; preds = %76
  invoke void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %11) #12
          to label %80 unwind label %105

80:                                               ; preds = %79
  %81 = load ptr, ptr %77, align 8, !tbaa !231
  %82 = getelementptr inbounds ptr, ptr %81, i64 5
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(92) %77, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %84 unwind label %105

84:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  call void @_ZN6dealii6VectorIdE3addEdRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
  %85 = load ptr, ptr %67, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  %86 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %86) #12
          to label %87 unwind label %107

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 8, !tbaa !231
  %89 = getelementptr inbounds ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(92) %85, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %91 unwind label %107

91:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  call void @_ZN6dealii6VectorIdE3addEdRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef -8.000000e+00, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
  %92 = load ptr, ptr %67, align 8, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  %93 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %93) #12
          to label %94 unwind label %109

94:                                               ; preds = %91
  %95 = load ptr, ptr %92, align 8, !tbaa !231
  %96 = getelementptr inbounds ptr, ptr %95, i64 5
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(92) %92, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %98 unwind label %109

98:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  call void @_ZN6dealii6VectorIdE3addEdRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef 8.000000e+00, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
  %99 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %100 = load double, ptr %99, align 8, !tbaa !298
  %101 = fmul double %100, 1.200000e+01
  %102 = fdiv double 1.000000e+00, %101
  call void @_ZN6dealii6VectorIdE5scaleEd(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef %102) #12
  br label %111

103:                                              ; preds = %72, %71, %66
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  br label %112

105:                                              ; preds = %80, %79, %76
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  br label %112

107:                                              ; preds = %87, %84
  %108 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  br label %112

109:                                              ; preds = %94, %91
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  br label %112

111:                                              ; preds = %60, %3, %98
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  ret void

112:                                              ; preds = %109, %107, %105, %103, %64, %41, %39, %37
  %113 = phi { ptr, i32 } [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %42, %41 ], [ %65, %64 ], [ %40, %39 ], [ %38, %37 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  resume { ptr, i32 } %113
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %5 = alloca %"class.std::vector.8", align 8
  %6 = alloca %"class.std::allocator.10", align 1
  %7 = alloca %"class.std::vector.23", align 8
  %8 = alloca %"class.std::allocator.25", align 1
  %9 = alloca %"class.dealii::Point.28", align 8
  %10 = alloca %"class.dealii::Point.28", align 8
  %11 = alloca %"class.dealii::Point.28", align 8
  %12 = alloca %"class.dealii::Point.28", align 8
  %13 = alloca %"class.dealii::Point.28", align 8
  %14 = alloca %"class.dealii::Point.28", align 8
  %15 = alloca %"class.dealii::Point.28", align 8
  %16 = alloca %"class.dealii::Point.28", align 8
  %17 = alloca %"class.dealii::Point.28", align 8
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %20) #14
  %22 = icmp eq i64 %21, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %23 = and i64 %18, 4294967295
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
          to label %24 unwind label %36

24:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  call void @_ZNSaIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  invoke void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %8) #12
          to label %25 unwind label %38

25:                                               ; preds = %24
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  %26 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !312
  switch i32 %27, label %268 [
    i32 0, label %32
    i32 1, label %99
    i32 2, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %19, 0
  br i1 %29, label %143, label %30

30:                                               ; preds = %28
  %31 = and i64 %18, 4294967295
  br label %152

32:                                               ; preds = %25
  %33 = icmp eq i32 %19, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = and i64 %18, 4294967295
  br label %49

36:                                               ; preds = %4
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br label %273

38:                                               ; preds = %24
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  br label %271

40:                                               ; preds = %57, %32
  %41 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !321
  %43 = load ptr, ptr %42, align 8, !tbaa !231
  %44 = getelementptr inbounds ptr, ptr %43, i64 6
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(92) %42, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) #12
          to label %46 unwind label %71

46:                                               ; preds = %40
  br i1 %33, label %62, label %47

47:                                               ; preds = %46
  %48 = and i64 %18, 4294967295
  br label %73

49:                                               ; preds = %34, %57
  %50 = phi i64 [ 0, %34 ], [ %58, %57 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  %51 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %50) #14
  %52 = select i1 %22, i64 0, i64 %50
  %53 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %52) #14
  invoke void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %53) #12
          to label %54 unwind label %60

54:                                               ; preds = %49
  %55 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %50) #14
  %56 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
          to label %57 unwind label %60

57:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  %58 = add nuw nsw i64 %50, 1
  %59 = icmp eq i64 %58, %35
  br i1 %59, label %40, label %49, !llvm.loop !323

60:                                               ; preds = %54, %49
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  br label %269

62:                                               ; preds = %81, %46
  %63 = load ptr, ptr %41, align 8, !tbaa !321
  %64 = load ptr, ptr %63, align 8, !tbaa !231
  %65 = getelementptr inbounds ptr, ptr %64, i64 6
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(92) %63, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %67 unwind label %71

67:                                               ; preds = %62
  br i1 %33, label %268, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %70 = and i64 %18, 4294967295
  br label %86

71:                                               ; preds = %233, %200, %166, %143, %109, %99, %62, %40
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %269

73:                                               ; preds = %47, %81
  %74 = phi i64 [ 0, %47 ], [ %82, %81 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  %75 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %74) #14
  %76 = select i1 %22, i64 0, i64 %74
  %77 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %76) #14
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(16) %77) #12
          to label %78 unwind label %84

78:                                               ; preds = %73
  %79 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %74) #14
  %80 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(16) %10) #12
          to label %81 unwind label %84

81:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  %82 = add nuw nsw i64 %74, 1
  %83 = icmp eq i64 %82, %48
  br i1 %83, label %62, label %73, !llvm.loop !324

84:                                               ; preds = %78, %73
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  br label %269

86:                                               ; preds = %68, %86
  %87 = phi i64 [ 0, %68 ], [ %97, %86 ]
  %88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %87) #14
  %89 = load double, ptr %88, align 8, !tbaa !257
  %90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %87) #14
  %91 = load double, ptr %90, align 8, !tbaa !257
  %92 = fsub double %89, %91
  %93 = load double, ptr %69, align 8, !tbaa !298
  %94 = fmul double %93, 2.000000e+00
  %95 = fdiv double %92, %94
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %87) #14
  store double %95, ptr %96, align 8, !tbaa !257
  %97 = add nuw nsw i64 %87, 1
  %98 = icmp eq i64 %97, %70
  br i1 %98, label %268, label %86, !llvm.loop !325

99:                                               ; preds = %25
  %100 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !321
  %102 = load ptr, ptr %101, align 8, !tbaa !231
  %103 = getelementptr inbounds ptr, ptr %102, i64 6
  %104 = load ptr, ptr %103, align 8
  invoke void %104(ptr noundef nonnull align 8 dereferenceable(92) %101, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) #12
          to label %105 unwind label %71

105:                                              ; preds = %99
  %106 = icmp eq i32 %19, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %105
  %108 = and i64 %18, 4294967295
  br label %118

109:                                              ; preds = %126, %105
  %110 = load ptr, ptr %100, align 8, !tbaa !321
  %111 = load ptr, ptr %110, align 8, !tbaa !231
  %112 = getelementptr inbounds ptr, ptr %111, i64 6
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(92) %110, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %114 unwind label %71

114:                                              ; preds = %109
  br i1 %106, label %268, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %117 = and i64 %18, 4294967295
  br label %131

118:                                              ; preds = %107, %126
  %119 = phi i64 [ 0, %107 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  %120 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %119) #14
  %121 = select i1 %22, i64 0, i64 %119
  %122 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %121) #14
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %120, ptr noundef nonnull align 8 dereferenceable(16) %122) #12
          to label %123 unwind label %129

123:                                              ; preds = %118
  %124 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %119) #14
  %125 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr noundef nonnull align 8 dereferenceable(16) %11) #12
          to label %126 unwind label %129

126:                                              ; preds = %123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  %127 = add nuw nsw i64 %119, 1
  %128 = icmp eq i64 %127, %108
  br i1 %128, label %109, label %118, !llvm.loop !326

129:                                              ; preds = %123, %118
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  br label %269

131:                                              ; preds = %115, %131
  %132 = phi i64 [ 0, %115 ], [ %141, %131 ]
  %133 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %132) #14
  %134 = load double, ptr %133, align 8, !tbaa !257
  %135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %132) #14
  %136 = load double, ptr %135, align 8, !tbaa !257
  %137 = fsub double %134, %136
  %138 = load double, ptr %116, align 8, !tbaa !298
  %139 = fdiv double %137, %138
  %140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %132) #14
  store double %139, ptr %140, align 8, !tbaa !257
  %141 = add nuw nsw i64 %132, 1
  %142 = icmp eq i64 %141, %117
  br i1 %142, label %268, label %131, !llvm.loop !327

143:                                              ; preds = %161, %28
  %144 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !321
  %146 = load ptr, ptr %145, align 8, !tbaa !231
  %147 = getelementptr inbounds ptr, ptr %146, i64 6
  %148 = load ptr, ptr %147, align 8
  invoke void %148(ptr noundef nonnull align 8 dereferenceable(92) %145, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) #12
          to label %149 unwind label %71

149:                                              ; preds = %143
  br i1 %29, label %166, label %150

150:                                              ; preds = %149
  %151 = and i64 %18, 4294967295
  br label %174

152:                                              ; preds = %30, %161
  %153 = phi i64 [ 0, %30 ], [ %162, %161 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  %154 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %153) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  %155 = select i1 %22, i64 0, i64 %153
  %156 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %155) #14
  invoke void @_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %13, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %156) #12
          to label %157 unwind label %164

157:                                              ; preds = %152
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %154, ptr noundef nonnull align 8 dereferenceable(16) %13) #12
          to label %158 unwind label %164

158:                                              ; preds = %157
  %159 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %153) #14
  %160 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %159, ptr noundef nonnull align 8 dereferenceable(16) %12) #12
          to label %161 unwind label %164

161:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  %162 = add nuw nsw i64 %153, 1
  %163 = icmp eq i64 %162, %31
  br i1 %163, label %143, label %152, !llvm.loop !328

164:                                              ; preds = %158, %157, %152
  %165 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  br label %269

166:                                              ; preds = %183, %149
  %167 = load ptr, ptr %144, align 8, !tbaa !321
  %168 = load ptr, ptr %167, align 8, !tbaa !231
  %169 = getelementptr inbounds ptr, ptr %168, i64 6
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(92) %167, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %171 unwind label %71

171:                                              ; preds = %166
  br i1 %29, label %200, label %172

172:                                              ; preds = %171
  %173 = and i64 %18, 4294967295
  br label %191

174:                                              ; preds = %150, %183
  %175 = phi i64 [ 0, %150 ], [ %184, %183 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  %176 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %175) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #13
  %177 = select i1 %22, i64 0, i64 %175
  %178 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %177) #14
  invoke void @_ZN6dealiimlILi2EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %15, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(16) %178) #12
          to label %179 unwind label %186

179:                                              ; preds = %174
  invoke void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %176, ptr noundef nonnull align 8 dereferenceable(16) %15) #12
          to label %180 unwind label %186

180:                                              ; preds = %179
  %181 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %175) #14
  %182 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %181, ptr noundef nonnull align 8 dereferenceable(16) %14) #12
          to label %183 unwind label %186

183:                                              ; preds = %180
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  %184 = add nuw nsw i64 %175, 1
  %185 = icmp eq i64 %184, %151
  br i1 %185, label %166, label %174, !llvm.loop !329

186:                                              ; preds = %180, %179, %174
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  br label %269

188:                                              ; preds = %191
  br i1 %29, label %200, label %189

189:                                              ; preds = %188
  %190 = and i64 %18, 4294967295
  br label %208

191:                                              ; preds = %172, %191
  %192 = phi i64 [ 0, %172 ], [ %198, %191 ]
  %193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %192) #14
  %194 = load double, ptr %193, align 8, !tbaa !257
  %195 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %192) #14
  %196 = load double, ptr %195, align 8, !tbaa !257
  %197 = fsub double %196, %194
  store double %197, ptr %195, align 8, !tbaa !257
  %198 = add nuw nsw i64 %192, 1
  %199 = icmp eq i64 %198, %173
  br i1 %199, label %188, label %191, !llvm.loop !330

200:                                              ; preds = %216, %171, %188
  %201 = load ptr, ptr %144, align 8, !tbaa !321
  %202 = load ptr, ptr %201, align 8, !tbaa !231
  %203 = getelementptr inbounds ptr, ptr %202, i64 6
  %204 = load ptr, ptr %203, align 8
  invoke void %204(ptr noundef nonnull align 8 dereferenceable(92) %201, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %205 unwind label %71

205:                                              ; preds = %200
  br i1 %29, label %233, label %206

206:                                              ; preds = %205
  %207 = and i64 %18, 4294967295
  br label %224

208:                                              ; preds = %189, %216
  %209 = phi i64 [ 0, %189 ], [ %217, %216 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #13
  %210 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %209) #14
  %211 = select i1 %22, i64 0, i64 %209
  %212 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %211) #14
  invoke void @_ZNK6dealii5PointILi2EEplERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %210, ptr noundef nonnull align 8 dereferenceable(16) %212) #12
          to label %213 unwind label %219

213:                                              ; preds = %208
  %214 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %209) #14
  %215 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %214, ptr noundef nonnull align 8 dereferenceable(16) %16) #12
          to label %216 unwind label %219

216:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #13
  %217 = add nuw nsw i64 %209, 1
  %218 = icmp eq i64 %217, %190
  br i1 %218, label %200, label %208, !llvm.loop !331

219:                                              ; preds = %213, %208
  %220 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #13
  br label %269

221:                                              ; preds = %224
  br i1 %29, label %233, label %222

222:                                              ; preds = %221
  %223 = and i64 %18, 4294967295
  br label %242

224:                                              ; preds = %206, %224
  %225 = phi i64 [ 0, %206 ], [ %231, %224 ]
  %226 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %225) #14
  %227 = load double, ptr %226, align 8, !tbaa !257
  %228 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %225) #14
  %229 = load double, ptr %228, align 8, !tbaa !257
  %230 = call double @llvm.fmuladd.f64(double %227, double 8.000000e+00, double %229)
  store double %230, ptr %228, align 8, !tbaa !257
  %231 = add nuw nsw i64 %225, 1
  %232 = icmp eq i64 %231, %207
  br i1 %232, label %221, label %224, !llvm.loop !332

233:                                              ; preds = %250, %205, %221
  %234 = load ptr, ptr %144, align 8, !tbaa !321
  %235 = load ptr, ptr %234, align 8, !tbaa !231
  %236 = getelementptr inbounds ptr, ptr %235, i64 6
  %237 = load ptr, ptr %236, align 8
  invoke void %237(ptr noundef nonnull align 8 dereferenceable(92) %234, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %238 unwind label %71

238:                                              ; preds = %233
  br i1 %29, label %268, label %239

239:                                              ; preds = %238
  %240 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 2
  %241 = and i64 %18, 4294967295
  br label %255

242:                                              ; preds = %222, %250
  %243 = phi i64 [ 0, %222 ], [ %251, %250 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #13
  %244 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %243) #14
  %245 = select i1 %22, i64 0, i64 %243
  %246 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %245) #14
  invoke void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.28") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %244, ptr noundef nonnull align 8 dereferenceable(16) %246) #12
          to label %247 unwind label %253

247:                                              ; preds = %242
  %248 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %243) #14
  %249 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %248, ptr noundef nonnull align 8 dereferenceable(16) %17) #12
          to label %250 unwind label %253

250:                                              ; preds = %247
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #13
  %251 = add nuw nsw i64 %243, 1
  %252 = icmp eq i64 %251, %223
  br i1 %252, label %233, label %242, !llvm.loop !333

253:                                              ; preds = %247, %242
  %254 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #13
  br label %269

255:                                              ; preds = %239, %255
  %256 = phi i64 [ 0, %239 ], [ %266, %255 ]
  %257 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %256) #14
  %258 = load double, ptr %257, align 8, !tbaa !257
  %259 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %256) #14
  %260 = load double, ptr %259, align 8, !tbaa !257
  %261 = call double @llvm.fmuladd.f64(double %260, double -8.000000e+00, double %258)
  %262 = load double, ptr %240, align 8, !tbaa !298
  %263 = fmul double %262, 1.200000e+01
  %264 = fdiv double %261, %263
  %265 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %256) #14
  store double %264, ptr %265, align 8, !tbaa !257
  %266 = add nuw nsw i64 %256, 1
  %267 = icmp eq i64 %266, %241
  br i1 %267, label %268, label %255, !llvm.loop !334

268:                                              ; preds = %255, %131, %86, %238, %114, %67, %25
  call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void

269:                                              ; preds = %253, %219, %186, %164, %129, %84, %71, %60
  %270 = phi { ptr, i32 } [ %165, %164 ], [ %187, %186 ], [ %220, %219 ], [ %254, %253 ], [ %72, %71 ], [ %130, %129 ], [ %61, %60 ], [ %85, %84 ]
  call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #14
  br label %271

271:                                              ; preds = %269, %38
  %272 = phi { ptr, i32 } [ %270, %269 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  br label %273

273:                                              ; preds = %271, %36
  %274 = phi { ptr, i32 } [ %272, %271 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  resume { ptr, i32 } %274
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii18FunctionDerivativeILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #1 comdat align 2 !prof !212 {
  ret i32 184
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EEC2ERKNS_8FunctionILi3EEERKNS_5PointILi3EEEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi3EEC5ERKNS_8FunctionILi3EEERKNS_5PointILi3EEEd) align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %5 = alloca %"class.dealii::Point.45", align 8
  %6 = alloca %"class.std::allocator.42", align 1
  %7 = getelementptr inbounds %"class.dealii::Function.32", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !335
  %9 = tail call noundef double @_ZNK6dealii12FunctionTime8get_timeEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %8, double noundef %9) #12
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 1, i64 2), ptr %10, align 8, !tbaa !231
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !233
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  store double %3, ptr %12, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  invoke void @_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %5, double noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
          to label %13 unwind label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  call void @_ZNSaIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  invoke void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS2_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
          to label %15 unwind label %18

15:                                               ; preds = %13
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @_ZN6dealii18FunctionDerivativeILi3EE11set_formulaENS_22AutoDerivativeFunctionILi3EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #12
  ret void

16:                                               ; preds = %4
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  resume { ptr, i32 } %21
}

; Function Attrs: optsize
declare void @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132), double noundef, i32 noundef, double noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.45") align 8 %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat !prof !349 {
  tail call void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind writable sret(%"class.dealii::Point.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !350 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS2_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !351 {
  %5 = tail call noundef i64 @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
  invoke void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE18_M_fill_initializeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EE11set_formulaENS_22AutoDerivativeFunctionILi3EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !352
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !353 {
  %2 = load ptr, ptr %0, align 8, !tbaa !354
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EEC2ERKNS_8FunctionILi3EEERKSt6vectorINS_5PointILi3EEESaIS8_EEd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3) unnamed_addr #0 comdat($_ZN6dealii18FunctionDerivativeILi3EEC5ERKNS_8FunctionILi3EEERKSt6vectorINS_5PointILi3EEESaIS8_EEd) align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %5 = alloca %"class.std::allocator.42", align 1
  %6 = alloca %"class.dealii::Point.45", align 8
  %7 = getelementptr inbounds %"class.dealii::Function.32", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !335
  %9 = tail call noundef double @_ZNK6dealii12FunctionTime8get_timeEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EEC2Edjd(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %3, i32 noundef %8, double noundef %9) #12
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
  %10 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 1, i64 2), ptr %10, align 8, !tbaa !231
  %11 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !233
  %12 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  store double %3, ptr %12, align 8, !tbaa !337
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  call void @_ZNSaIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  invoke void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %15 unwind label %19

15:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %16 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %28, %15
  call void @_ZN6dealii18FunctionDerivativeILi3EE11set_formulaENS_22AutoDerivativeFunctionILi3EE17DifferenceFormulaE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #12
  ret void

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %35

21:                                               ; preds = %15, %28
  %22 = phi i64 [ %30, %28 ], [ 0, %15 ]
  %23 = phi i32 [ %29, %28 ], [ 0, %15 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %24 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %22) #14
  invoke void @_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %6, double noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %24) #12
          to label %25 unwind label %33

25:                                               ; preds = %21
  %26 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %22) #14
  %27 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %6) #12
          to label %28 unwind label %33

28:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %29 = add i32 %23, 1
  %30 = zext i32 %29 to i64
  %31 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  %32 = icmp ugt i64 %31, %30
  br i1 %32, label %21, label %18, !llvm.loop !356

33:                                               ; preds = %25, %21
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  br label %35

35:                                               ; preds = %33, %19
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %20, %19 ]
  call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !357 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !355
  %4 = load ptr, ptr %0, align 8, !tbaa !354
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  invoke void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !358 {
  %3 = load ptr, ptr %0, align 8, !tbaa !354
  %4 = getelementptr inbounds %"class.dealii::Point.45", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !359 {
  %3 = load ptr, ptr %0, align 8, !tbaa !354
  %4 = getelementptr inbounds %"class.dealii::Point.45", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EE5set_hEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 !prof !212 {
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %10, %2
  %9 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  store double %1, ptr %9, align 8, !tbaa !337
  ret void

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %18, %10 ]
  %12 = phi i32 [ 0, %6 ], [ %17, %10 ]
  %13 = load double, ptr %7, align 8, !tbaa !337
  %14 = fdiv double %1, %13
  %15 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %11) #14
  %16 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmLEd(ptr noundef nonnull align 8 dereferenceable(24) %15, double noundef %14) #12
  %17 = add i32 %12, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %10, label %8, !llvm.loop !360
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmLEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !361 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !257
  %8 = fmul double %7, %1
  store double %8, ptr %6, align 8, !tbaa !257
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !362, !llvm.loop !363
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii18FunctionDerivativeILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !212 {
  %4 = alloca %"class.dealii::Point.45", align 8
  %5 = alloca %"class.dealii::Point.45", align 8
  %6 = alloca %"class.dealii::Point.45", align 8
  %7 = alloca %"class.dealii::Point.45", align 8
  %8 = alloca %"class.dealii::Point.45", align 8
  %9 = alloca %"class.dealii::Point.45", align 8
  %10 = alloca %"class.dealii::Point.45", align 8
  %11 = alloca %"class.dealii::Point.45", align 8
  %12 = alloca %"class.dealii::Point.45", align 8
  %13 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !352
  switch i32 %14, label %88 [
    i32 0, label %15
    i32 1, label %35
    i32 2, label %53
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %18 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %19 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %19) #12
  %20 = load ptr, ptr %17, align 8, !tbaa !231
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef double %22(ptr noundef nonnull align 8 dereferenceable(92) %17, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %2) #12
  %24 = load ptr, ptr %16, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %25 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %25) #12
  %26 = load ptr, ptr %24, align 8, !tbaa !231
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef double %28(ptr noundef nonnull align 8 dereferenceable(92) %24, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %2) #12
  %30 = fsub double %23, %29
  %31 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %32 = load double, ptr %31, align 8, !tbaa !337
  %33 = fmul double %32, 2.000000e+00
  %34 = fdiv double %30, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %88

35:                                               ; preds = %3
  %36 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !364
  %38 = load ptr, ptr %37, align 8, !tbaa !231
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef double %40(ptr noundef nonnull align 8 dereferenceable(92) %37, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) #12
  %42 = load ptr, ptr %36, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %43 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %44 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %43, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %44) #12
  %45 = load ptr, ptr %42, align 8, !tbaa !231
  %46 = getelementptr inbounds ptr, ptr %45, i64 4
  %47 = load ptr, ptr %46, align 8
  %48 = call noundef double %47(ptr noundef nonnull align 8 dereferenceable(92) %42, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %2) #12
  %49 = fsub double %41, %48
  %50 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %51 = load double, ptr %50, align 8, !tbaa !337
  %52 = fdiv double %49, %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %88

53:                                               ; preds = %3
  %54 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  %56 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %57 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %8, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %57) #12
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %8) #12
  %58 = load ptr, ptr %55, align 8, !tbaa !231
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef double %60(ptr noundef nonnull align 8 dereferenceable(92) %55, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %2) #12
  %62 = fneg double %61
  %63 = load ptr, ptr %54, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  %64 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %64) #12
  %65 = load ptr, ptr %63, align 8, !tbaa !231
  %66 = getelementptr inbounds ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = call noundef double %67(ptr noundef nonnull align 8 dereferenceable(92) %63, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef %2) #12
  %69 = call double @llvm.fmuladd.f64(double %68, double 8.000000e+00, double %62)
  %70 = load ptr, ptr %54, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  %71 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %71) #12
  %72 = load ptr, ptr %70, align 8, !tbaa !231
  %73 = getelementptr inbounds ptr, ptr %72, i64 4
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef double %74(ptr noundef nonnull align 8 dereferenceable(92) %70, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %2) #12
  %76 = call double @llvm.fmuladd.f64(double %75, double -8.000000e+00, double %69)
  %77 = load ptr, ptr %54, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #13
  %78 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef 0) #14
  call void @_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %12, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %78) #12
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %12) #12
  %79 = load ptr, ptr %77, align 8, !tbaa !231
  %80 = getelementptr inbounds ptr, ptr %79, i64 4
  %81 = load ptr, ptr %80, align 8
  %82 = call noundef double %81(ptr noundef nonnull align 8 dereferenceable(92) %77, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %2) #12
  %83 = fadd double %76, %82
  %84 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %85 = load double, ptr %84, align 8, !tbaa !337
  %86 = fmul double %85, 1.200000e+01
  %87 = fdiv double %83, %86
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  br label %88

88:                                               ; preds = %3, %53, %35, %15
  %89 = phi double [ %87, %53 ], [ %52, %35 ], [ %34, %15 ], [ 0.000000e+00, %3 ]
  ret double %89
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !365 {
  %4 = alloca %"class.dealii::Point.45", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  call void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !366 {
  %4 = alloca %"class.dealii::Point.45", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  call void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %4 = alloca %"class.dealii::Vector", align 8
  %5 = alloca %"class.dealii::Point.45", align 8
  %6 = alloca %"class.dealii::Point.45", align 8
  %7 = alloca %"class.dealii::Point.45", align 8
  %8 = alloca %"class.dealii::Point.45", align 8
  %9 = alloca %"class.dealii::Point.45", align 8
  %10 = alloca %"class.dealii::Point.45", align 8
  %11 = alloca %"class.dealii::Point.45", align 8
  %12 = alloca %"class.dealii::Point.45", align 8
  %13 = alloca %"class.dealii::Point.45", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #13
  %14 = tail call noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #12
  call void @_ZN6dealii6VectorIdEC2Ej(ptr noundef nonnull align 8 dereferenceable(88) %4, i32 noundef %14) #12
  %15 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !352
  switch i32 %16, label %111 [
    i32 0, label %17
    i32 1, label %43
    i32 2, label %66
  ]

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %20 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %21) #12
          to label %22 unwind label %37

22:                                               ; preds = %17
  %23 = load ptr, ptr %19, align 8, !tbaa !231
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(92) %19, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(88) %2) #12
          to label %26 unwind label %37

26:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %27 = load ptr, ptr %18, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %28 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %28) #12
          to label %29 unwind label %39

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !231
  %31 = getelementptr inbounds ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(92) %27, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %33 unwind label %39

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %34 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %35 = load double, ptr %34, align 8, !tbaa !337
  %36 = fmul double %35, 2.000000e+00
  br label %60

37:                                               ; preds = %22, %17
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %112

39:                                               ; preds = %29, %26
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %112

41:                                               ; preds = %60, %43
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %112

43:                                               ; preds = %3
  %44 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !364
  %46 = load ptr, ptr %45, align 8, !tbaa !231
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(92) %45, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #12
          to label %49 unwind label %41

49:                                               ; preds = %43
  %50 = load ptr, ptr %44, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  %51 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %52 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %51, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %52) #12
          to label %53 unwind label %64

53:                                               ; preds = %49
  %54 = load ptr, ptr %50, align 8, !tbaa !231
  %55 = getelementptr inbounds ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(92) %50, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %57 unwind label %64

57:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  %58 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %59 = load double, ptr %58, align 8, !tbaa !337
  br label %60

60:                                               ; preds = %33, %57
  %61 = phi double [ %36, %33 ], [ %59, %57 ]
  %62 = fdiv double 1.000000e+00, %61
  %63 = fdiv double -1.000000e+00, %61
  invoke void @_ZN6dealii6VectorIdE4saddEddRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef %62, double noundef %63, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %111 unwind label %41

64:                                               ; preds = %53, %49
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  br label %112

66:                                               ; preds = %3
  %67 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  %69 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %70 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %9, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %70) #12
          to label %71 unwind label %103

71:                                               ; preds = %66
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %9) #12
          to label %72 unwind label %103

72:                                               ; preds = %71
  %73 = load ptr, ptr %68, align 8, !tbaa !231
  %74 = getelementptr inbounds ptr, ptr %73, i64 5
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(92) %68, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(88) %2) #12
          to label %76 unwind label %103

76:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  %77 = load ptr, ptr %67, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  %78 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %11, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %78) #12
          to label %79 unwind label %105

79:                                               ; preds = %76
  invoke void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %11) #12
          to label %80 unwind label %105

80:                                               ; preds = %79
  %81 = load ptr, ptr %77, align 8, !tbaa !231
  %82 = getelementptr inbounds ptr, ptr %81, i64 5
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(92) %77, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %84 unwind label %105

84:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  call void @_ZN6dealii6VectorIdE3addEdRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
  %85 = load ptr, ptr %67, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #13
  %86 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %86) #12
          to label %87 unwind label %107

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 8, !tbaa !231
  %89 = getelementptr inbounds ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(92) %85, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %91 unwind label %107

91:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  call void @_ZN6dealii6VectorIdE3addEdRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef -8.000000e+00, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
  %92 = load ptr, ptr %67, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #13
  %93 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %69, i64 noundef 0) #14
  invoke void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %93) #12
          to label %94 unwind label %109

94:                                               ; preds = %91
  %95 = load ptr, ptr %92, align 8, !tbaa !231
  %96 = getelementptr inbounds ptr, ptr %95, i64 5
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(92) %92, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
          to label %98 unwind label %109

98:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  call void @_ZN6dealii6VectorIdE3addEdRKS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef 8.000000e+00, ptr noundef nonnull align 8 dereferenceable(88) %4) #12
  %99 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %100 = load double, ptr %99, align 8, !tbaa !337
  %101 = fmul double %100, 1.200000e+01
  %102 = fdiv double 1.000000e+00, %101
  call void @_ZN6dealii6VectorIdE5scaleEd(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef %102) #12
  br label %111

103:                                              ; preds = %72, %71, %66
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  br label %112

105:                                              ; preds = %80, %79, %76
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  br label %112

107:                                              ; preds = %87, %84
  %108 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  br label %112

109:                                              ; preds = %94, %91
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  br label %112

111:                                              ; preds = %60, %3, %98
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  ret void

112:                                              ; preds = %109, %107, %105, %103, %64, %41, %39, %37
  %113 = phi { ptr, i32 } [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %42, %41 ], [ %65, %64 ], [ %40, %39 ], [ %38, %37 ]
  call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  resume { ptr, i32 } %113
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii18FunctionDerivativeILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %5 = alloca %"class.std::vector.8", align 8
  %6 = alloca %"class.std::allocator.10", align 1
  %7 = alloca %"class.std::vector.40", align 8
  %8 = alloca %"class.std::allocator.42", align 1
  %9 = alloca %"class.dealii::Point.45", align 8
  %10 = alloca %"class.dealii::Point.45", align 8
  %11 = alloca %"class.dealii::Point.45", align 8
  %12 = alloca %"class.dealii::Point.45", align 8
  %13 = alloca %"class.dealii::Point.45", align 8
  %14 = alloca %"class.dealii::Point.45", align 8
  %15 = alloca %"class.dealii::Point.45", align 8
  %16 = alloca %"class.dealii::Point.45", align 8
  %17 = alloca %"class.dealii::Point.45", align 8
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %20) #14
  %22 = icmp eq i64 %21, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %23 = and i64 %18, 4294967295
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
          to label %24 unwind label %36

24:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  call void @_ZNSaIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  invoke void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %8) #12
          to label %25 unwind label %38

25:                                               ; preds = %24
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  %26 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !352
  switch i32 %27, label %268 [
    i32 0, label %32
    i32 1, label %99
    i32 2, label %28
  ]

28:                                               ; preds = %25
  %29 = icmp eq i32 %19, 0
  br i1 %29, label %143, label %30

30:                                               ; preds = %28
  %31 = and i64 %18, 4294967295
  br label %152

32:                                               ; preds = %25
  %33 = icmp eq i32 %19, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = and i64 %18, 4294967295
  br label %49

36:                                               ; preds = %4
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br label %273

38:                                               ; preds = %24
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  br label %271

40:                                               ; preds = %57, %32
  %41 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !364
  %43 = load ptr, ptr %42, align 8, !tbaa !231
  %44 = getelementptr inbounds ptr, ptr %43, i64 6
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(92) %42, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) #12
          to label %46 unwind label %71

46:                                               ; preds = %40
  br i1 %33, label %62, label %47

47:                                               ; preds = %46
  %48 = and i64 %18, 4294967295
  br label %73

49:                                               ; preds = %34, %57
  %50 = phi i64 [ 0, %34 ], [ %58, %57 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  %51 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %50) #14
  %52 = select i1 %22, i64 0, i64 %50
  %53 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %52) #14
  invoke void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(24) %53) #12
          to label %54 unwind label %60

54:                                               ; preds = %49
  %55 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %50) #14
  %56 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(24) %9) #12
          to label %57 unwind label %60

57:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  %58 = add nuw nsw i64 %50, 1
  %59 = icmp eq i64 %58, %35
  br i1 %59, label %40, label %49, !llvm.loop !367

60:                                               ; preds = %54, %49
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  br label %269

62:                                               ; preds = %81, %46
  %63 = load ptr, ptr %41, align 8, !tbaa !364
  %64 = load ptr, ptr %63, align 8, !tbaa !231
  %65 = getelementptr inbounds ptr, ptr %64, i64 6
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(92) %63, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %67 unwind label %71

67:                                               ; preds = %62
  br i1 %33, label %268, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %70 = and i64 %18, 4294967295
  br label %86

71:                                               ; preds = %233, %200, %166, %143, %109, %99, %62, %40
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %269

73:                                               ; preds = %47, %81
  %74 = phi i64 [ 0, %47 ], [ %82, %81 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  %75 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %74) #14
  %76 = select i1 %22, i64 0, i64 %74
  %77 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %76) #14
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef nonnull align 8 dereferenceable(24) %77) #12
          to label %78 unwind label %84

78:                                               ; preds = %73
  %79 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %74) #14
  %80 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %79, ptr noundef nonnull align 8 dereferenceable(24) %10) #12
          to label %81 unwind label %84

81:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  %82 = add nuw nsw i64 %74, 1
  %83 = icmp eq i64 %82, %48
  br i1 %83, label %62, label %73, !llvm.loop !368

84:                                               ; preds = %78, %73
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  br label %269

86:                                               ; preds = %68, %86
  %87 = phi i64 [ 0, %68 ], [ %97, %86 ]
  %88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %87) #14
  %89 = load double, ptr %88, align 8, !tbaa !257
  %90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %87) #14
  %91 = load double, ptr %90, align 8, !tbaa !257
  %92 = fsub double %89, %91
  %93 = load double, ptr %69, align 8, !tbaa !337
  %94 = fmul double %93, 2.000000e+00
  %95 = fdiv double %92, %94
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %87) #14
  store double %95, ptr %96, align 8, !tbaa !257
  %97 = add nuw nsw i64 %87, 1
  %98 = icmp eq i64 %97, %70
  br i1 %98, label %268, label %86, !llvm.loop !369

99:                                               ; preds = %25
  %100 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !364
  %102 = load ptr, ptr %101, align 8, !tbaa !231
  %103 = getelementptr inbounds ptr, ptr %102, i64 6
  %104 = load ptr, ptr %103, align 8
  invoke void %104(ptr noundef nonnull align 8 dereferenceable(92) %101, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) #12
          to label %105 unwind label %71

105:                                              ; preds = %99
  %106 = icmp eq i32 %19, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %105
  %108 = and i64 %18, 4294967295
  br label %118

109:                                              ; preds = %126, %105
  %110 = load ptr, ptr %100, align 8, !tbaa !364
  %111 = load ptr, ptr %110, align 8, !tbaa !231
  %112 = getelementptr inbounds ptr, ptr %111, i64 6
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(92) %110, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %114 unwind label %71

114:                                              ; preds = %109
  br i1 %106, label %268, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %117 = and i64 %18, 4294967295
  br label %131

118:                                              ; preds = %107, %126
  %119 = phi i64 [ 0, %107 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  %120 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %119) #14
  %121 = select i1 %22, i64 0, i64 %119
  %122 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %121) #14
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %120, ptr noundef nonnull align 8 dereferenceable(24) %122) #12
          to label %123 unwind label %129

123:                                              ; preds = %118
  %124 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %119) #14
  %125 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %124, ptr noundef nonnull align 8 dereferenceable(24) %11) #12
          to label %126 unwind label %129

126:                                              ; preds = %123
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  %127 = add nuw nsw i64 %119, 1
  %128 = icmp eq i64 %127, %108
  br i1 %128, label %109, label %118, !llvm.loop !370

129:                                              ; preds = %123, %118
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  br label %269

131:                                              ; preds = %115, %131
  %132 = phi i64 [ 0, %115 ], [ %141, %131 ]
  %133 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %132) #14
  %134 = load double, ptr %133, align 8, !tbaa !257
  %135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %132) #14
  %136 = load double, ptr %135, align 8, !tbaa !257
  %137 = fsub double %134, %136
  %138 = load double, ptr %116, align 8, !tbaa !337
  %139 = fdiv double %137, %138
  %140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %132) #14
  store double %139, ptr %140, align 8, !tbaa !257
  %141 = add nuw nsw i64 %132, 1
  %142 = icmp eq i64 %141, %117
  br i1 %142, label %268, label %131, !llvm.loop !371

143:                                              ; preds = %161, %28
  %144 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !364
  %146 = load ptr, ptr %145, align 8, !tbaa !231
  %147 = getelementptr inbounds ptr, ptr %146, i64 6
  %148 = load ptr, ptr %147, align 8
  invoke void %148(ptr noundef nonnull align 8 dereferenceable(92) %145, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) #12
          to label %149 unwind label %71

149:                                              ; preds = %143
  br i1 %29, label %166, label %150

150:                                              ; preds = %149
  %151 = and i64 %18, 4294967295
  br label %174

152:                                              ; preds = %30, %161
  %153 = phi i64 [ 0, %30 ], [ %162, %161 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #13
  %154 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %153) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #13
  %155 = select i1 %22, i64 0, i64 %153
  %156 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %155) #14
  invoke void @_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %13, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %156) #12
          to label %157 unwind label %164

157:                                              ; preds = %152
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %154, ptr noundef nonnull align 8 dereferenceable(24) %13) #12
          to label %158 unwind label %164

158:                                              ; preds = %157
  %159 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %153) #14
  %160 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %159, ptr noundef nonnull align 8 dereferenceable(24) %12) #12
          to label %161 unwind label %164

161:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  %162 = add nuw nsw i64 %153, 1
  %163 = icmp eq i64 %162, %31
  br i1 %163, label %143, label %152, !llvm.loop !372

164:                                              ; preds = %158, %157, %152
  %165 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  br label %269

166:                                              ; preds = %183, %149
  %167 = load ptr, ptr %144, align 8, !tbaa !364
  %168 = load ptr, ptr %167, align 8, !tbaa !231
  %169 = getelementptr inbounds ptr, ptr %168, i64 6
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(92) %167, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %171 unwind label %71

171:                                              ; preds = %166
  br i1 %29, label %200, label %172

172:                                              ; preds = %171
  %173 = and i64 %18, 4294967295
  br label %191

174:                                              ; preds = %150, %183
  %175 = phi i64 [ 0, %150 ], [ %184, %183 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #13
  %176 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %175) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #13
  %177 = select i1 %22, i64 0, i64 %175
  %178 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %177) #14
  invoke void @_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %15, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %178) #12
          to label %179 unwind label %186

179:                                              ; preds = %174
  invoke void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %176, ptr noundef nonnull align 8 dereferenceable(24) %15) #12
          to label %180 unwind label %186

180:                                              ; preds = %179
  %181 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %175) #14
  %182 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %181, ptr noundef nonnull align 8 dereferenceable(24) %14) #12
          to label %183 unwind label %186

183:                                              ; preds = %180
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  %184 = add nuw nsw i64 %175, 1
  %185 = icmp eq i64 %184, %151
  br i1 %185, label %166, label %174, !llvm.loop !373

186:                                              ; preds = %180, %179, %174
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  br label %269

188:                                              ; preds = %191
  br i1 %29, label %200, label %189

189:                                              ; preds = %188
  %190 = and i64 %18, 4294967295
  br label %208

191:                                              ; preds = %172, %191
  %192 = phi i64 [ 0, %172 ], [ %198, %191 ]
  %193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %192) #14
  %194 = load double, ptr %193, align 8, !tbaa !257
  %195 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %192) #14
  %196 = load double, ptr %195, align 8, !tbaa !257
  %197 = fsub double %196, %194
  store double %197, ptr %195, align 8, !tbaa !257
  %198 = add nuw nsw i64 %192, 1
  %199 = icmp eq i64 %198, %173
  br i1 %199, label %188, label %191, !llvm.loop !374

200:                                              ; preds = %216, %171, %188
  %201 = load ptr, ptr %144, align 8, !tbaa !364
  %202 = load ptr, ptr %201, align 8, !tbaa !231
  %203 = getelementptr inbounds ptr, ptr %202, i64 6
  %204 = load ptr, ptr %203, align 8
  invoke void %204(ptr noundef nonnull align 8 dereferenceable(92) %201, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %205 unwind label %71

205:                                              ; preds = %200
  br i1 %29, label %233, label %206

206:                                              ; preds = %205
  %207 = and i64 %18, 4294967295
  br label %224

208:                                              ; preds = %189, %216
  %209 = phi i64 [ 0, %189 ], [ %217, %216 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #13
  %210 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %209) #14
  %211 = select i1 %22, i64 0, i64 %209
  %212 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %211) #14
  invoke void @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %210, ptr noundef nonnull align 8 dereferenceable(24) %212) #12
          to label %213 unwind label %219

213:                                              ; preds = %208
  %214 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %209) #14
  %215 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %214, ptr noundef nonnull align 8 dereferenceable(24) %16) #12
          to label %216 unwind label %219

216:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #13
  %217 = add nuw nsw i64 %209, 1
  %218 = icmp eq i64 %217, %190
  br i1 %218, label %200, label %208, !llvm.loop !375

219:                                              ; preds = %213, %208
  %220 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #13
  br label %269

221:                                              ; preds = %224
  br i1 %29, label %233, label %222

222:                                              ; preds = %221
  %223 = and i64 %18, 4294967295
  br label %242

224:                                              ; preds = %206, %224
  %225 = phi i64 [ 0, %206 ], [ %231, %224 ]
  %226 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %225) #14
  %227 = load double, ptr %226, align 8, !tbaa !257
  %228 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %225) #14
  %229 = load double, ptr %228, align 8, !tbaa !257
  %230 = call double @llvm.fmuladd.f64(double %227, double 8.000000e+00, double %229)
  store double %230, ptr %228, align 8, !tbaa !257
  %231 = add nuw nsw i64 %225, 1
  %232 = icmp eq i64 %231, %207
  br i1 %232, label %221, label %224, !llvm.loop !376

233:                                              ; preds = %250, %205, %221
  %234 = load ptr, ptr %144, align 8, !tbaa !364
  %235 = load ptr, ptr %234, align 8, !tbaa !231
  %236 = getelementptr inbounds ptr, ptr %235, i64 6
  %237 = load ptr, ptr %236, align 8
  invoke void %237(ptr noundef nonnull align 8 dereferenceable(92) %234, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3) #12
          to label %238 unwind label %71

238:                                              ; preds = %233
  br i1 %29, label %268, label %239

239:                                              ; preds = %238
  %240 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 2
  %241 = and i64 %18, 4294967295
  br label %255

242:                                              ; preds = %222, %250
  %243 = phi i64 [ 0, %222 ], [ %251, %250 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #13
  %244 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %243) #14
  %245 = select i1 %22, i64 0, i64 %243
  %246 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %245) #14
  invoke void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.45") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %244, ptr noundef nonnull align 8 dereferenceable(24) %246) #12
          to label %247 unwind label %253

247:                                              ; preds = %242
  %248 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %243) #14
  %249 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %248, ptr noundef nonnull align 8 dereferenceable(24) %17) #12
          to label %250 unwind label %253

250:                                              ; preds = %247
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #13
  %251 = add nuw nsw i64 %243, 1
  %252 = icmp eq i64 %251, %223
  br i1 %252, label %233, label %242, !llvm.loop !377

253:                                              ; preds = %247, %242
  %254 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #13
  br label %269

255:                                              ; preds = %239, %255
  %256 = phi i64 [ 0, %239 ], [ %266, %255 ]
  %257 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %256) #14
  %258 = load double, ptr %257, align 8, !tbaa !257
  %259 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %256) #14
  %260 = load double, ptr %259, align 8, !tbaa !257
  %261 = call double @llvm.fmuladd.f64(double %260, double -8.000000e+00, double %258)
  %262 = load double, ptr %240, align 8, !tbaa !337
  %263 = fmul double %262, 1.200000e+01
  %264 = fdiv double %261, %263
  %265 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %256) #14
  store double %264, ptr %265, align 8, !tbaa !257
  %266 = add nuw nsw i64 %256, 1
  %267 = icmp eq i64 %266, %241
  br i1 %267, label %268, label %255, !llvm.loop !378

268:                                              ; preds = %255, %131, %86, %238, %114, %67, %25
  call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void

269:                                              ; preds = %253, %219, %186, %164, %129, %84, %71, %60
  %270 = phi { ptr, i32 } [ %165, %164 ], [ %187, %186 ], [ %220, %219 ], [ %254, %253 ], [ %72, %71 ], [ %130, %129 ], [ %61, %60 ], [ %85, %84 ]
  call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #14
  br label %271

271:                                              ; preds = %269, %38
  %272 = phi { ptr, i32 } [ %270, %269 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  br label %273

273:                                              ; preds = %271, %36
  %274 = phi { ptr, i32 } [ %272, %271 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  resume { ptr, i32 } %274
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii18FunctionDerivativeILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #1 comdat align 2 !prof !212 {
  ret i32 184
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !231
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative", ptr %0, i64 0, i32 4
  tail call void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii18FunctionDerivativeILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor") align 8, ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi1EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii18FunctionDerivativeILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii18FunctionDerivativeILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi1EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZNK6dealii13ExceptionBase10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !231
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.13", ptr %0, i64 0, i32 4
  tail call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii18FunctionDerivativeILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.29") align 8, ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi2EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii18FunctionDerivativeILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii18FunctionDerivativeILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi2EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !231
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii18FunctionDerivativeILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !231
  %3 = getelementptr inbounds %"class.dealii::FunctionDerivative.30", ptr %0, i64 0, i32 4
  tail call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  tail call void @_ZN6dealii22AutoDerivativeFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii18FunctionDerivativeILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.46") align 8, ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii22AutoDerivativeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi3EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii18FunctionDerivativeILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii18FunctionDerivativeILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii18FunctionDerivativeILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #14
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18FunctionDerivativeILi3EE17ExcInvalidFormulaD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !255 {
  %3 = load double, ptr %1, align 8, !tbaa !257
  store double %3, ptr %0, align 8, !tbaa !257
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !379 {
  %3 = load double, ptr %1, align 8, !tbaa !257
  store double %3, ptr %0, align 8, !tbaa !257
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !257
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !257
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !380 {
  %3 = load double, ptr %1, align 8, !tbaa !257
  store double %3, ptr %0, align 8, !tbaa !257
  %4 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !257
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !257
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !257
  %9 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %8, ptr %9, align 8, !tbaa !257
  ret ptr %0
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !381 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !212 {
  %4 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmLEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %2) #12
  call void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !212 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !382 {
  %3 = load double, ptr %1, align 8, !tbaa !257
  store double %3, ptr %0, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !247 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %3 = alloca %"class.std::allocator.5", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  call void @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br i1 %5, label %6, label %7, !prof !383

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE18_M_fill_initializeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %4 = load ptr, ptr %0, align 8, !tbaa !249
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %6 = tail call noundef ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi1EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E(ptr noundef %4, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %2 = load ptr, ptr %0, align 8, !tbaa !249
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !384
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i64 %4, ptr %3, align 8, !tbaa !385
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %6 = load i64, ptr %5, align 8, !tbaa !385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !386 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !387 {
  %3 = load i64, ptr %1, align 8, !tbaa !385
  %4 = load i64, ptr %0, align 8, !tbaa !385
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !388
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
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !247 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !386 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !386 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !247 {
  tail call void @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !249
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !250
  %5 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !384
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !389 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !247 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !383

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !390

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
define linkonce_odr dso_local noundef ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi1EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !247 {
  %5 = tail call noundef ptr @_ZSt20uninitialized_fill_nIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !386 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt20uninitialized_fill_nIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi1EEEmS4_EET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi1EEEmS4_EET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %4 = tail call noundef ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !247 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %17, label %5, !prof !391

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %0, %3 ]
  %7 = phi i64 [ %9, %8 ], [ %1, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii5PointILi1EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = add i64 %7, -1
  %10 = getelementptr inbounds %"class.dealii::Point", ptr %6, i64 1
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %17, label %5, !prof !392, !llvm.loop !393

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #13
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_(ptr noundef %0, ptr noundef %6) #12
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #19
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %0, %3 ], [ %10, %8 ]
  ret ptr %18

19:                                               ; preds = %16, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %22

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #15
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi1EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !247 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !247 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !383

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !247 {
  tail call void @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !249
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #12
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii5PointILi1EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii5PointILi1EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi1EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi1EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii5PointILi1EEEJEEvPT_DpOT0_(ptr noundef %5) #12
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Point", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !394

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #13
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #12
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
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi1EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !247 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !395 {
  br i1 %1, label %3, label %4, !prof !396

3:                                                ; preds = %2
  store double 0.000000e+00, ptr %0, align 8, !tbaa !257
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %3 = load double, ptr %1, align 8, !tbaa !257
  %4 = load double, ptr %0, align 8, !tbaa !257
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !257
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %3 = load double, ptr %1, align 8, !tbaa !257
  %4 = load double, ptr %0, align 8, !tbaa !257
  %5 = fsub double %4, %3
  store double %5, ptr %0, align 8, !tbaa !257
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii6VectorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE6reinitEjb(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 !prof !397 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %12, !prof !398

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !276
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !399

9:                                                ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %7) #16
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !400
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %16, label %25, !prof !401

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !276
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !402

20:                                               ; preds = %16
  tail call void @_ZdaPv(ptr noundef nonnull %18) #16
  br label %21

21:                                               ; preds = %20, %16
  %22 = zext i32 %1 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %23) #18
  store ptr %24, ptr %17, align 8, !tbaa !276
  store i32 %1, ptr %13, align 4, !tbaa !400
  br label %25

25:                                               ; preds = %21, %12
  %26 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  store i32 %1, ptr %26, align 8, !tbaa !260
  br i1 %2, label %29, label %27, !prof !403

27:                                               ; preds = %25
  %28 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef 0.000000e+00) #12
  br label %29

29:                                               ; preds = %10, %27, %25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6VectorIdE4swapERS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #1 comdat align 2 !prof !212 {
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
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 !prof !404 {
  %3 = alloca double, align 8
  store double %1, ptr %3, align 8, !tbaa !257
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !260
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !405

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  %9 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #12
  call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %8, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br label %10

10:                                               ; preds = %7, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !406 {
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #1 comdat align 2 !prof !407 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #1 comdat align 2 !prof !408 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !260
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds double, ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !409 {
  tail call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat !prof !410 {
  %4 = load double, ptr %2, align 8, !tbaa !257
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !411

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store double %4, ptr %7, align 8, !tbaa !257
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !412, !llvm.loop !413

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIjENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat {
  %3 = load i32, ptr %0, align 4, !tbaa !414
  %4 = load i32, ptr %1, align 4, !tbaa !414
  store i32 %4, ptr %0, align 4, !tbaa !414
  store i32 %3, ptr %1, align 4, !tbaa !414
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIPdENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !233
  %4 = load ptr, ptr %1, align 8, !tbaa !233
  store ptr %4, ptr %0, align 8, !tbaa !233
  store ptr %3, ptr %1, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #1 comdat align 2 !prof !415 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !416 {
  %3 = alloca %"class.std::allocator.10", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  %4 = call noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br i1 %5, label %6, label %7, !prof !417

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !418 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !292
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #12
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !295
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !294 {
  %2 = load ptr, ptr %0, align 8, !tbaa !292
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !419
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !420 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i64 %4, ptr %3, align 8, !tbaa !385
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %6 = load i64, ptr %5, align 8, !tbaa !385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !421 {
  tail call void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !420 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !422 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !421 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !423 {
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !418 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !292
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !295
  %5 = getelementptr inbounds double, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !419
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !424 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !425 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !426 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !427

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !390

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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !428 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  tail call void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) #12
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = add i64 %1, -1
  %7 = tail call noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef nonnull %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ %0, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #1 comdat {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !429 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !233
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #12
  call void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %6 = call noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !429 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !430

5:                                                ; preds = %3
  %6 = getelementptr inbounds double, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #1 comdat !prof !431 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !432 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !433 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !434

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !433 {
  tail call void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !433 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !433 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.28") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !212 {
  %4 = alloca %"class.dealii::Point.28", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmLEd(ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %2) #12
  call void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 !prof !322 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 !prof !435 {
  %3 = load double, ptr %1, align 8, !tbaa !257
  store double %3, ptr %0, align 8, !tbaa !257
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !257
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !310 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !311 {
  %3 = alloca %"class.std::allocator.25", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  call void @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br i1 %5, label %6, label %7, !prof !436

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !437 {
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE18_M_fill_initializeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !prof !311 {
  %4 = load ptr, ptr %0, align 8, !tbaa !314
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %6 = tail call noundef ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi2EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E(ptr noundef %4, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !315
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %2 = load ptr, ptr %0, align 8, !tbaa !314
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !438
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !439 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 576460752303423487, ptr %2, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i64 %4, ptr %3, align 8, !tbaa !385
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %6 = load i64, ptr %5, align 8, !tbaa !385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !440 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !439 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !441 {
  ret i64 576460752303423487
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !440 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !437 {
  tail call void @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !437 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !314
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !315
  %5 = getelementptr inbounds %"class.dealii::Point.28", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !438
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !442 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !443 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !444 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !445

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !390

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
define linkonce_odr dso_local noundef ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi2EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !446 {
  %5 = tail call noundef ptr @_ZSt20uninitialized_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !447 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt20uninitialized_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi2EEEmS4_EET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi2EEEmS4_EET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !prof !446 {
  %4 = tail call noundef ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !446 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %17, label %5, !prof !448

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %0, %3 ]
  %7 = phi i64 [ %9, %8 ], [ %1, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii5PointILi2EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %2) #12
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = add i64 %7, -1
  %10 = getelementptr inbounds %"class.dealii::Point.28", ptr %6, i64 1
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %17, label %5, !prof !449, !llvm.loop !450

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #13
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_(ptr noundef %0, ptr noundef %6) #12
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #19
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %0, %3 ], [ %10, %8 ]
  ret ptr %18

19:                                               ; preds = %16, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %22

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #15
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi2EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !451 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !451 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !451 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !452

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !451 {
  tail call void @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !314
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #12
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !315
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii5PointILi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii5PointILi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii5PointILi2EEEJEEvPT_DpOT0_(ptr noundef %5) #12
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Point.28", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !453

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #13
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #12
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
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi2EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !prof !454 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !455 {
  br i1 %1, label %3, label %4, !prof !456

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !257
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %3 = load double, ptr %1, align 8, !tbaa !257
  %4 = load double, ptr %0, align 8, !tbaa !257
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !257
  %6 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !257
  %8 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !257
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !257
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !322 {
  %3 = load double, ptr %1, align 8, !tbaa !257
  %4 = load double, ptr %0, align 8, !tbaa !257
  %5 = fsub double %4, %3
  store double %5, ptr %0, align 8, !tbaa !257
  %6 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !257
  %8 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !257
  %10 = fsub double %9, %7
  store double %10, ptr %8, align 8, !tbaa !257
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !457 {
  %4 = alloca %"class.dealii::Point.45", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmLEd(ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %2) #12
  call void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !458 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !459 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !257
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  store double %7, ptr %8, align 8, !tbaa !257
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !460, !llvm.loop !461
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !350 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !351 {
  %3 = alloca %"class.std::allocator.42", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  call void @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br i1 %5, label %6, label %7, !prof !462

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !463 {
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE18_M_fill_initializeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !351 {
  %4 = load ptr, ptr %0, align 8, !tbaa !354
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %6 = tail call noundef ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi3EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E(ptr noundef %4, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !355
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !353 {
  %2 = load ptr, ptr %0, align 8, !tbaa !354
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !464
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !465 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 384307168202282325, ptr %2, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store i64 %4, ptr %3, align 8, !tbaa !385
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %6 = load i64, ptr %5, align 8, !tbaa !385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !466 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !465 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !467 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !466 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !463 {
  tail call void @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !463 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !354
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !355
  %5 = getelementptr inbounds %"class.dealii::Point.45", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !464
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !468 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !469 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !470 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !471

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !390

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
define linkonce_odr dso_local noundef ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi3EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !472 {
  %5 = tail call noundef ptr @_ZSt20uninitialized_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !473 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt20uninitialized_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi3EEEmS4_EET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi3EEEmS4_EET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !472 {
  %4 = tail call noundef ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !472 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %17, label %5, !prof !474

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %0, %3 ]
  %7 = phi i64 [ %9, %8 ], [ %1, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii5PointILi3EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = add i64 %7, -1
  %10 = getelementptr inbounds %"class.dealii::Point.45", ptr %6, i64 1
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %17, label %5, !prof !475, !llvm.loop !476

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #13
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_(ptr noundef %0, ptr noundef %6) #12
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #19
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %0, %3 ], [ %10, %8 ]
  ret ptr %18

19:                                               ; preds = %16, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %22

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #15
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi3EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !478

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !477 {
  tail call void @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !354
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #12
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !355
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii5PointILi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii5PointILi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii5PointILi3EEEJEEvPT_DpOT0_(ptr noundef %5) #12
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Point.45", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !479

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #13
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #12
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
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi3EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !480 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !481 {
  br i1 %1, label %3, label %4, !prof !482

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !257
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !483 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %11, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !257
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %9 = load double, ptr %8, align 8, !tbaa !257
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !257
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %3, label %4, !prof !484, !llvm.loop !485
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !486 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %11, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !257
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %9 = load double, ptr %8, align 8, !tbaa !257
  %10 = fsub double %9, %7
  store double %10, ptr %8, align 8, !tbaa !257
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %3, label %4, !prof !487, !llvm.loop !488
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!llvm.ident = !{!211}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!35 = !{ptr @_ZNSaIN6dealii5PointILi1EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2Ev, i64 269698}
!36 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS2_RKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE17_S_check_init_lenEmRKS3_, i64 269698}
!37 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS2_RKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_, i64 269698}
!38 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2EmRKS2_RKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE18_M_fill_initializeEmRKS2_, i64 269698}
!39 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 269698}
!40 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii5PointILi1EEES2_EvT_S4_RSaIT0_E, i64 269698}
!41 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev, i64 269698}
!42 = !{ptr @_ZN6dealii6VectorIdEC2Ej, ptr @_ZN6dealii11SubscriptorC2Ev, i64 2856063}
!43 = !{ptr @_ZN6dealii6VectorIdEC2Ej, ptr @_ZN6dealii6VectorIdE6reinitEjb, i64 2856063}
!44 = !{ptr @_ZN6dealii6VectorIdEC2Ej, ptr @_ZN6dealii11SubscriptorD2Ev, i64 3}
!45 = !{ptr @_ZN6dealii6VectorIdE4saddEddRKS1_, ptr @_ZN6dealii6VectorIdE5beginEv, i64 58633}
!46 = !{ptr @_ZN6dealii6VectorIdE4saddEddRKS1_, ptr @_ZN6dealii6VectorIdE3endEv, i64 58633}
!47 = !{ptr @_ZN6dealii6VectorIdE4saddEddRKS1_, ptr @_ZNK6dealii6VectorIdE5beginEv, i64 58633}
!48 = !{ptr @_ZN6dealii6VectorIdE3addEdRKS1_, ptr @_ZN6dealii6VectorIdE5beginEv, i64 18333605}
!49 = !{ptr @_ZN6dealii6VectorIdE3addEdRKS1_, ptr @_ZN6dealii6VectorIdE3endEv, i64 18333605}
!50 = !{ptr @_ZN6dealii6VectorIdE3addEdRKS1_, ptr @_ZNK6dealii6VectorIdE5beginEv, i64 18333605}
!51 = !{ptr @_ZN6dealii6VectorIdE5scaleEd, ptr @_ZN6dealii6VectorIdE5beginEv, i64 697829}
!52 = !{ptr @_ZN6dealii6VectorIdE5scaleEd, ptr @_ZN6dealii6VectorIdE3endEv, i64 697829}
!53 = !{ptr @_ZN6dealii6VectorIdED2Ev, ptr @_ZdaPv, i64 2899655}
!54 = !{ptr @_ZN6dealii6VectorIdED2Ev, ptr @_ZN6dealii11SubscriptorD2Ev, i64 2906115}
!55 = !{ptr @_ZNSaIdEC2Ev, ptr @_ZNSt15__new_allocatorIdEC2Ev, i64 9261343}
!56 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 10618017}
!57 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, i64 10618017}
!58 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 10618007}
!59 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!60 = !{ptr @_ZNSaIN6dealii5PointILi2EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2Ev, i64 291927}
!61 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS2_RKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_, i64 112784}
!62 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS2_RKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_, i64 112784}
!63 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS2_RKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE18_M_fill_initializeEmRKS2_, i64 112784}
!64 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 683366}
!65 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E, i64 683366}
!66 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, i64 683365}
!67 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 1}
!68 = !{ptr @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii5PointILi2EEC2ERKS1_, i64 464288}
!69 = !{ptr @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_, i64 464288}
!70 = !{ptr @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE, i64 464288}
!71 = !{ptr @_ZN6dealiimlILi3EEENS_5PointIXT_EEEdRKS2_, ptr @_ZNK6dealii5PointILi3EEmlEd, i64 46246633}
!72 = !{ptr @_ZNSaIN6dealii5PointILi3EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2Ev, i64 3972046}
!73 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS2_RKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, i64 806586}
!74 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS2_RKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, i64 806586}
!75 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS2_RKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE18_M_fill_initializeEmRKS2_, i64 806586}
!76 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS2_RKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, i64 1}
!77 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 4516033}
!78 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E, i64 4516033}
!79 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, i64 4516029}
!80 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 4}
!81 = !{ptr @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii5PointILi3EEC2ERKS1_, i64 126150}
!82 = !{ptr @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii6TensorILi1ELi3EEpLERKS1_, i64 126150}
!83 = !{ptr @_ZNK6dealii5PointILi3EEplERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, i64 126150}
!84 = !{ptr @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii5PointILi3EEC2ERKS1_, i64 18388994}
!85 = !{ptr @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_, i64 18388994}
!86 = !{ptr @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, i64 18388994}
!87 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_, i64 269698}
!88 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE11_S_max_sizeERKS3_, i64 269698}
!89 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev, i64 269698}
!90 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!91 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_, i64 269698}
!92 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_M_create_storageEm, i64 269698}
!93 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE18_M_fill_initializeEmRKS2_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 269698}
!94 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE18_M_fill_initializeEmRKS2_, ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi1EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, i64 269698}
!95 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE13_M_deallocateEPS2_m, i64 269698}
!96 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev, i64 269698}
!97 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8max_sizeERKS3_, i64 269698}
!98 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 269698}
!99 = !{ptr @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2ERKS3_, i64 539396}
!100 = !{ptr @_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE11_M_max_sizeEv, i64 269698}
!101 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_, i64 269698}
!102 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 269698}
!103 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE11_M_allocateEm, i64 269698}
!104 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8allocateERS3_m, i64 269697}
!105 = !{ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi1EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, ptr @_ZSt20uninitialized_fill_nIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RKT1_, i64 269698}
!106 = !{ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi1EEEmS4_EET_S6_T0_RKT1_, ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RKT1_, i64 269698}
!107 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi1EEEmS2_ET_S4_T0_RKT1_, ptr @_ZSt10_ConstructIN6dealii5PointILi1EEEJRKS2_EEvPT_DpOT0_, i64 271481}
!108 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi1EEEEEvT_S6_, i64 269698}
!109 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE10deallocateERS3_PS2_m, i64 269697}
!110 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi1EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_, i64 269698}
!111 = !{ptr @_ZN6dealii5PointILi1EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi1EEC2Eb, i64 269698}
!112 = !{ptr @_ZN6dealii6VectorIdE6reinitEjb, ptr @_ZdaPv, i64 227}
!113 = !{ptr @_ZN6dealii6VectorIdE6reinitEjb, ptr @_Znam, i64 2880323}
!114 = !{ptr @_ZN6dealii6VectorIdE6reinitEjb, ptr @_ZN6dealii6VectorIdEaSEd, i64 3329904}
!115 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZN6dealii6VectorIdE5beginEv, i64 4002559}
!116 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZN6dealii6VectorIdE3endEv, i64 4002559}
!117 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZSt4fillIPddEvT_S1_RKT0_, i64 4002559}
!118 = !{ptr @_ZSt4fillIPddEvT_S1_RKT0_, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 4406944}
!119 = !{ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 25807262}
!120 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSaIdEC2ERKS_, i64 1376905}
!121 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, i64 1376905}
!122 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 1376905}
!123 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!124 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, i64 2733627}
!125 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, i64 2733627}
!126 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 3}
!127 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, i64 10618017}
!128 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 10618007}
!129 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!130 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, i64 12982610}
!131 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 12982610}
!132 = !{ptr @_ZNSaIdEC2ERKS_, ptr @_ZNSt15__new_allocatorIdEC2ERKS0_, i64 4110539}
!133 = !{ptr @_ZNKSt15__new_allocatorIdE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv, i64 12982610}
!134 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSaIdEC2ERKS_, i64 2733634}
!135 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 2733634}
!136 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, i64 2733627}
!137 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, i64 8354784}
!138 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 7178069}
!139 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 7178069}
!140 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, i64 7178069}
!141 = !{ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 6994789}
!142 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, ptr @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, i64 8354765}
!143 = !{ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPdEvT_S1_, i64 16422537}
!144 = !{ptr @_ZSt8_DestroyIPdEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, i64 16422537}
!145 = !{ptr @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_, i64 464288}
!146 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_, i64 112784}
!147 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_, i64 112784}
!148 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev, i64 112784}
!149 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!150 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_, i64 504243}
!151 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm, i64 504243}
!152 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE18_M_fill_initializeEmRKS2_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 112784}
!153 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE18_M_fill_initializeEmRKS2_, ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi2EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, i64 112784}
!154 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m, i64 683366}
!155 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev, i64 683365}
!156 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 1}
!157 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8max_sizeERKS3_, i64 291944}
!158 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 291944}
!159 = !{ptr @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_, i64 617027}
!160 = !{ptr @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv, i64 291944}
!161 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_, i64 504243}
!162 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 504243}
!163 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm, i64 504243}
!164 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m, i64 324896}
!165 = !{ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi2EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, ptr @_ZSt20uninitialized_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_, i64 202352}
!166 = !{ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi2EEEmS4_EET_S6_T0_RKT1_, ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_, i64 202352}
!167 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_, ptr @_ZSt10_ConstructIN6dealii5PointILi2EEEJRKS2_EEvPT_DpOT0_, i64 3102651}
!168 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_, ptr @__cxa_begin_catch, i64 3}
!169 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_, ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_, i64 3}
!170 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_, ptr @__cxa_rethrow, i64 1}
!171 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RKT1_, ptr @__cxa_end_catch, i64 3}
!172 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_, i64 772946}
!173 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m, i64 324885}
!174 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_, i64 772946}
!175 = !{ptr @_ZN6dealii5PointILi2EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi2EEC2Eb, i64 202370}
!176 = !{ptr @_ZNK6dealii5PointILi3EEmlEd, ptr @_ZN6dealii5PointILi3EEC2ERKS1_, i64 52047827}
!177 = !{ptr @_ZNK6dealii5PointILi3EEmlEd, ptr @_ZN6dealii6TensorILi1ELi3EEmLEd, i64 52047827}
!178 = !{ptr @_ZNK6dealii5PointILi3EEmlEd, ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, i64 52047827}
!179 = !{ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_, i64 70675435}
!180 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_, i64 806586}
!181 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_, i64 806586}
!182 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev, i64 806586}
!183 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!184 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_, i64 1350593}
!185 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm, i64 1350593}
!186 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev, i64 1}
!187 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE18_M_fill_initializeEmRKS2_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 806586}
!188 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE18_M_fill_initializeEmRKS2_, ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi3EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, i64 806586}
!189 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m, i64 4516033}
!190 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev, i64 4516029}
!191 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 4}
!192 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8max_sizeERKS3_, i64 3138089}
!193 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 3138089}
!194 = !{ptr @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_, i64 2157179}
!195 = !{ptr @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv, i64 3138089}
!196 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_, i64 1350593}
!197 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 1350593}
!198 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm, i64 1350593}
!199 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m, i64 2338637}
!200 = !{ptr @_ZSt24__uninitialized_fill_n_aIPN6dealii5PointILi3EEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, ptr @_ZSt20uninitialized_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_, i64 1970676}
!201 = !{ptr @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPN6dealii5PointILi3EEEmS4_EET_S6_T0_RKT1_, ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_, i64 1970676}
!202 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_, ptr @_ZSt10_ConstructIN6dealii5PointILi3EEEJRKS2_EEvPT_DpOT0_, i64 13392998}
!203 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_, ptr @__cxa_begin_catch, i64 13}
!204 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_, ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_, i64 13}
!205 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_, ptr @__cxa_rethrow, i64 6}
!206 = !{ptr @_ZSt18__do_uninit_fill_nIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RKT1_, ptr @__cxa_end_catch, i64 13}
!207 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_, i64 5683492}
!208 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m, i64 2338625}
!209 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_, i64 5683492}
!210 = !{ptr @_ZN6dealii5PointILi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 5584274}
!211 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!212 = !{!"function_entry_count", i64 0}
!213 = !{!214, !220, i64 88}
!214 = !{!"_ZTSN6dealii8FunctionILi1EEE", !215, i64 0, !219, i64 16, !220, i64 88}
!215 = !{!"_ZTSN6dealii12FunctionTimeE", !216, i64 8}
!216 = !{!"double", !217, i64 0}
!217 = !{!"omnipotent char", !218, i64 0}
!218 = !{!"Simple C++ TBAA"}
!219 = !{!"_ZTSN6dealii11SubscriptorE", !220, i64 8, !221, i64 16, !229, i64 64}
!220 = !{!"int", !217, i64 0}
!221 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !222, i64 0}
!222 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !223, i64 0}
!223 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !224, i64 0, !226, i64 8}
!224 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !225, i64 0}
!225 = !{!"_ZTSSt4lessIPKcE"}
!226 = !{!"_ZTSSt15_Rb_tree_header", !227, i64 0, !230, i64 32}
!227 = !{!"_ZTSSt18_Rb_tree_node_base", !228, i64 0, !229, i64 8, !229, i64 16, !229, i64 24}
!228 = !{!"_ZTSSt14_Rb_tree_color", !217, i64 0}
!229 = !{!"any pointer", !217, i64 0}
!230 = !{!"long", !217, i64 0}
!231 = !{!232, !232, i64 0}
!232 = !{!"vtable pointer", !218, i64 0}
!233 = !{!229, !229, i64 0}
!234 = !{!235, !216, i64 144}
!235 = !{!"_ZTSN6dealii18FunctionDerivativeILi1EEE", !236, i64 0, !229, i64 136, !216, i64 144, !241, i64 152, !242, i64 160}
!236 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi1EEE", !214, i64 0, !216, i64 96, !237, i64 104, !241, i64 128}
!237 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE", !238, i64 0}
!238 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE", !239, i64 0}
!239 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE12_Vector_implE", !240, i64 0}
!240 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !229, i64 0, !229, i64 8, !229, i64 16}
!241 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi1EE17DifferenceFormulaE", !217, i64 0}
!242 = !{!"_ZTSSt6vectorIN6dealii5PointILi1EEESaIS2_EE", !243, i64 0}
!243 = !{!"_ZTSSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE", !244, i64 0}
!244 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implE", !245, i64 0}
!245 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !229, i64 0, !229, i64 8, !229, i64 16}
!246 = !{!215, !216, i64 8}
!247 = !{!"function_entry_count", i64 269698}
!248 = !{!235, !241, i64 152}
!249 = !{!245, !229, i64 0}
!250 = !{!245, !229, i64 8}
!251 = distinct !{!251, !252}
!252 = !{!"llvm.loop.mustprogress"}
!253 = !{!"function_entry_count", i64 39}
!254 = !{!"function_entry_count", i64 292334}
!255 = !{!"function_entry_count", i64 271565}
!256 = distinct !{!256, !252}
!257 = !{!216, !216, i64 0}
!258 = !{!235, !229, i64 136}
!259 = !{!"function_entry_count", i64 59431677}
!260 = !{!261, !220, i64 72}
!261 = !{!"_ZTSN6dealii6VectorIdEE", !219, i64 0, !220, i64 72, !220, i64 76, !229, i64 80}
!262 = !{!"function_entry_count", i64 2856063}
!263 = !{!"function_entry_count", i64 58633}
!264 = !{!"branch_weights", i32 1, i32 58633}
!265 = !{!"branch_weights", i32 58633, i32 298166090}
!266 = distinct !{!266, !252}
!267 = !{!"function_entry_count", i64 18333605}
!268 = !{!"branch_weights", i32 1, i32 1222240}
!269 = !{!"branch_weights", i32 1222240, i32 -191502817}
!270 = distinct !{!270, !252}
!271 = !{!"function_entry_count", i64 697829}
!272 = !{!"branch_weights", i32 1, i32 697829}
!273 = !{!"branch_weights", i32 697829, i32 -1967152794}
!274 = distinct !{!274, !252}
!275 = !{!"function_entry_count", i64 2906115}
!276 = !{!261, !229, i64 80}
!277 = !{!"branch_weights", i32 6460, i32 2899657}
!278 = distinct !{!278, !252}
!279 = distinct !{!279, !252}
!280 = distinct !{!280, !252}
!281 = distinct !{!281, !252}
!282 = distinct !{!282, !252}
!283 = distinct !{!283, !252}
!284 = distinct !{!284, !252}
!285 = distinct !{!285, !252}
!286 = distinct !{!286, !252}
!287 = distinct !{!287, !252}
!288 = distinct !{!288, !252}
!289 = distinct !{!289, !252}
!290 = !{!"function_entry_count", i64 9261343}
!291 = !{!"function_entry_count", i64 580699156}
!292 = !{!293, !229, i64 0}
!293 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !229, i64 0, !229, i64 8, !229, i64 16}
!294 = !{!"function_entry_count", i64 10618017}
!295 = !{!293, !229, i64 8}
!296 = !{!297, !220, i64 88}
!297 = !{!"_ZTSN6dealii8FunctionILi2EEE", !215, i64 0, !219, i64 16, !220, i64 88}
!298 = !{!299, !216, i64 144}
!299 = !{!"_ZTSN6dealii18FunctionDerivativeILi2EEE", !300, i64 0, !229, i64 136, !216, i64 144, !305, i64 152, !306, i64 160}
!300 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi2EEE", !297, i64 0, !216, i64 96, !301, i64 104, !305, i64 128}
!301 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE", !302, i64 0}
!302 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE", !303, i64 0}
!303 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implE", !304, i64 0}
!304 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !229, i64 0, !229, i64 8, !229, i64 16}
!305 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi2EE17DifferenceFormulaE", !217, i64 0}
!306 = !{!"_ZTSSt6vectorIN6dealii5PointILi2EEESaIS2_EE", !307, i64 0}
!307 = !{!"_ZTSSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE", !308, i64 0}
!308 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implE", !309, i64 0}
!309 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !229, i64 0, !229, i64 8, !229, i64 16}
!310 = !{!"function_entry_count", i64 291927}
!311 = !{!"function_entry_count", i64 112784}
!312 = !{!299, !305, i64 152}
!313 = !{!"function_entry_count", i64 683366}
!314 = !{!309, !229, i64 0}
!315 = !{!309, !229, i64 8}
!316 = distinct !{!316, !252}
!317 = !{!"function_entry_count", i64 955498}
!318 = !{!"function_entry_count", i64 5322946}
!319 = !{!"function_entry_count", i64 3339370}
!320 = distinct !{!320, !252}
!321 = !{!299, !229, i64 136}
!322 = !{!"function_entry_count", i64 464288}
!323 = distinct !{!323, !252}
!324 = distinct !{!324, !252}
!325 = distinct !{!325, !252}
!326 = distinct !{!326, !252}
!327 = distinct !{!327, !252}
!328 = distinct !{!328, !252}
!329 = distinct !{!329, !252}
!330 = distinct !{!330, !252}
!331 = distinct !{!331, !252}
!332 = distinct !{!332, !252}
!333 = distinct !{!333, !252}
!334 = distinct !{!334, !252}
!335 = !{!336, !220, i64 88}
!336 = !{!"_ZTSN6dealii8FunctionILi3EEE", !215, i64 0, !219, i64 16, !220, i64 88}
!337 = !{!338, !216, i64 144}
!338 = !{!"_ZTSN6dealii18FunctionDerivativeILi3EEE", !339, i64 0, !229, i64 136, !216, i64 144, !344, i64 152, !345, i64 160}
!339 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi3EEE", !336, i64 0, !216, i64 96, !340, i64 104, !344, i64 128}
!340 = !{!"_ZTSSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE", !341, i64 0}
!341 = !{!"_ZTSSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE", !342, i64 0}
!342 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implE", !343, i64 0}
!343 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !229, i64 0, !229, i64 8, !229, i64 16}
!344 = !{!"_ZTSN6dealii22AutoDerivativeFunctionILi3EE17DifferenceFormulaE", !217, i64 0}
!345 = !{!"_ZTSSt6vectorIN6dealii5PointILi3EEESaIS2_EE", !346, i64 0}
!346 = !{!"_ZTSSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE", !347, i64 0}
!347 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implE", !348, i64 0}
!348 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !229, i64 0, !229, i64 8, !229, i64 16}
!349 = !{!"function_entry_count", i64 46246633}
!350 = !{!"function_entry_count", i64 3972046}
!351 = !{!"function_entry_count", i64 806586}
!352 = !{!338, !344, i64 152}
!353 = !{!"function_entry_count", i64 4516033}
!354 = !{!348, !229, i64 0}
!355 = !{!348, !229, i64 8}
!356 = distinct !{!356, !252}
!357 = !{!"function_entry_count", i64 23475661}
!358 = !{!"function_entry_count", i64 59145566}
!359 = !{!"function_entry_count", i64 140354214}
!360 = distinct !{!360, !252}
!361 = !{!"function_entry_count", i64 52056499}
!362 = !{!"branch_weights", i32 52056500, i32 104112998}
!363 = distinct !{!363, !252}
!364 = !{!338, !229, i64 136}
!365 = !{!"function_entry_count", i64 126150}
!366 = !{!"function_entry_count", i64 18388994}
!367 = distinct !{!367, !252}
!368 = distinct !{!368, !252}
!369 = distinct !{!369, !252}
!370 = distinct !{!370, !252}
!371 = distinct !{!371, !252}
!372 = distinct !{!372, !252}
!373 = distinct !{!373, !252}
!374 = distinct !{!374, !252}
!375 = distinct !{!375, !252}
!376 = distinct !{!376, !252}
!377 = distinct !{!377, !252}
!378 = distinct !{!378, !252}
!379 = !{!"function_entry_count", i64 2866076}
!380 = !{!"function_entry_count", i64 98457587}
!381 = !{!"function_entry_count", i64 9278493}
!382 = !{!"function_entry_count", i64 271481}
!383 = !{!"branch_weights", i32 1, i32 269699}
!384 = !{!245, !229, i64 16}
!385 = !{!230, !230, i64 0}
!386 = !{!"function_entry_count", i64 539396}
!387 = !{!"function_entry_count", i64 34204152}
!388 = !{!"branch_weights", i32 1, i32 34204153}
!389 = !{!"function_entry_count", i64 809094}
!390 = !{!"branch_weights", i32 1, i32 2000}
!391 = !{!"branch_weights", i32 1, i32 269698}
!392 = !{!"branch_weights", i32 269698, i32 1784}
!393 = distinct !{!393, !252}
!394 = distinct !{!394, !252}
!395 = !{!"function_entry_count", i64 551544}
!396 = !{!"branch_weights", i32 551545, i32 1}
!397 = !{!"function_entry_count", i64 3350673}
!398 = !{!"branch_weights", i32 176, i32 3350499}
!399 = !{!"branch_weights", i32 92, i32 85}
!400 = !{!261, !220, i64 76}
!401 = !{!"branch_weights", i32 2880326, i32 470174}
!402 = !{!"branch_weights", i32 2880185, i32 142}
!403 = !{!"branch_weights", i32 20593, i32 3329907}
!404 = !{!"function_entry_count", i64 4002560}
!405 = !{!"branch_weights", i32 1, i32 4002561}
!406 = !{!"function_entry_count", i64 4406944}
!407 = !{!"function_entry_count", i64 36050862}
!408 = !{!"function_entry_count", i64 23518070}
!409 = !{!"function_entry_count", i64 25807262}
!410 = !{!"function_entry_count", i64 25820050}
!411 = !{!"branch_weights", i32 1, i32 4303341}
!412 = !{!"branch_weights", i32 4303341, i32 -542009222}
!413 = distinct !{!413, !252}
!414 = !{!220, !220, i64 0}
!415 = !{!"function_entry_count", i64 19120009}
!416 = !{!"function_entry_count", i64 1376905}
!417 = !{!"branch_weights", i32 1, i32 1376906}
!418 = !{!"function_entry_count", i64 2733627}
!419 = !{!293, !229, i64 16}
!420 = !{!"function_entry_count", i64 12982610}
!421 = !{!"function_entry_count", i64 4110539}
!422 = !{!"function_entry_count", i64 21337395}
!423 = !{!"function_entry_count", i64 2733634}
!424 = !{!"function_entry_count", i64 13389012}
!425 = !{!"function_entry_count", i64 10618037}
!426 = !{!"function_entry_count", i64 8538154}
!427 = !{!"branch_weights", i32 183370, i32 8354786}
!428 = !{!"function_entry_count", i64 42627443}
!429 = !{!"function_entry_count", i64 7178069}
!430 = !{!"branch_weights", i32 183280, i32 6994791}
!431 = !{!"function_entry_count", i64 16082259}
!432 = !{!"function_entry_count", i64 32608285}
!433 = !{!"function_entry_count", i64 16422537}
!434 = !{!"branch_weights", i32 8067773, i32 8354766}
!435 = !{!"function_entry_count", i64 4593520}
!436 = !{!"branch_weights", i32 1, i32 112785}
!437 = !{!"function_entry_count", i64 504243}
!438 = !{!309, !229, i64 16}
!439 = !{!"function_entry_count", i64 291944}
!440 = !{!"function_entry_count", i64 617027}
!441 = !{!"function_entry_count", i64 616840}
!442 = !{!"function_entry_count", i64 908934}
!443 = !{!"function_entry_count", i64 683386}
!444 = !{!"function_entry_count", i64 593823}
!445 = !{!"branch_weights", i32 268928, i32 324897}
!446 = !{!"function_entry_count", i64 202352}
!447 = !{!"function_entry_count", i64 1545917}
!448 = !{!"branch_weights", i32 1, i32 202352}
!449 = !{!"branch_weights", i32 202352, i32 2900357}
!450 = distinct !{!450, !252}
!451 = !{!"function_entry_count", i64 772946}
!452 = !{!"branch_weights", i32 448062, i32 324886}
!453 = distinct !{!453, !252}
!454 = !{!"function_entry_count", i64 202370}
!455 = !{!"function_entry_count", i64 1130961}
!456 = !{!"branch_weights", i32 1130962, i32 1}
!457 = !{!"function_entry_count", i64 52047827}
!458 = !{!"function_entry_count", i64 70675435}
!459 = !{!"function_entry_count", i64 4316510434}
!460 = !{!"branch_weights", i32 1079127609, i32 -2136712079}
!461 = distinct !{!461, !252}
!462 = !{!"branch_weights", i32 1, i32 806587}
!463 = !{!"function_entry_count", i64 1350593}
!464 = !{!348, !229, i64 16}
!465 = !{!"function_entry_count", i64 3138089}
!466 = !{!"function_entry_count", i64 2157179}
!467 = !{!"function_entry_count", i64 5476727}
!468 = !{!"function_entry_count", i64 6129205}
!469 = !{!"function_entry_count", i64 4516053}
!470 = !{!"function_entry_count", i64 2518052}
!471 = !{!"branch_weights", i32 179415, i32 2338639}
!472 = !{!"function_entry_count", i64 1970676}
!473 = !{!"function_entry_count", i64 10529730}
!474 = !{!"branch_weights", i32 1, i32 1970676}
!475 = !{!"branch_weights", i32 1970676, i32 11422403}
!476 = distinct !{!476, !252}
!477 = !{!"function_entry_count", i64 5683492}
!478 = !{!"branch_weights", i32 3344868, i32 2338626}
!479 = distinct !{!479, !252}
!480 = !{!"function_entry_count", i64 5584274}
!481 = !{!"function_entry_count", i64 627233310}
!482 = !{!"branch_weights", i32 627233311, i32 1}
!483 = !{!"function_entry_count", i64 350833100}
!484 = !{!"branch_weights", i32 350833101, i32 701666200}
!485 = distinct !{!485, !252}
!486 = !{!"function_entry_count", i64 18899890}
!487 = !{!"branch_weights", i32 18899891, i32 37799780}
!488 = distinct !{!488, !252}
