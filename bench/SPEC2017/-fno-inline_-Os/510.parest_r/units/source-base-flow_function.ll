; ModuleID = 'source/base/flow_function.cc'
source_filename = "source/base/flow_function.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::allocator.0" = type { i8 }
%"class.std::allocator.5" = type { i8 }
%"class.dealii::Functions::FlowFunction" = type { %"class.dealii::Function.base", double, %"class.std::vector", %"class.std::vector.3" }
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
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 2>>, std::allocator<std::vector<dealii::Tensor<1, 2>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 2>>, std::allocator<std::vector<dealii::Tensor<1, 2>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 2>>, std::allocator<std::vector<dealii::Tensor<1, 2>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 2>>, std::allocator<std::vector<dealii::Tensor<1, 2>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.10" = type { i8 }
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [2 x double] }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Vector" = type { %"class.dealii::Subscriptor", i32, i32, ptr }
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.33" = type { i8 }
%"class.dealii::Functions::FlowFunction.28" = type { %"class.dealii::Function.base.30", double, %"class.std::vector", %"class.std::vector.31" }
%"class.dealii::Function.base.30" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.std::vector.31" = type { %"struct.std::_Vector_base.32" }
%"struct.std::_Vector_base.32" = type { %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.36" = type { %"struct.std::_Vector_base.37" }
%"struct.std::_Vector_base.37" = type { %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.38" = type { i8 }
%"class.dealii::Point.41" = type { %"class.dealii::Tensor.42" }
%"class.dealii::Tensor.42" = type { [3 x double] }
%"class.std::vector.43" = type { %"struct.std::_Vector_base.44" }
%"struct.std::_Vector_base.44" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Functions::PoisseuilleFlow" = type { %"class.dealii::Functions::FlowFunction", double, double }
%"class.dealii::Functions::PoisseuilleFlow.48" = type { %"class.dealii::Functions::FlowFunction.28", double, double }
%"class.dealii::Functions::StokesCosine" = type { %"class.dealii::Functions::FlowFunction", double, double }
%"class.dealii::Functions::StokesCosine.49" = type { %"class.dealii::Functions::FlowFunction.28", double, double }
%"class.dealii::Functions::StokesLSingularity" = type { %"class.dealii::Functions::FlowFunction", double, double, double, double }
%"class.dealii::Functions::Kovasznay" = type <{ %"class.dealii::Functions::FlowFunction", double, double, double, i8, [7 x i8] }>

$_ZN6dealii9Functions12FlowFunctionILi2EEC5Ev = comdat any

$_ZNSaISt6vectorIdSaIdEEEC2Ev = comdat any

$_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_ = comdat any

$_ZNSaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEEC2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEC2EmRKS5_ = comdat any

$_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev = comdat any

$_ZThn16_N6dealii9Functions12FlowFunctionILi2EED1Ev = comdat any

$_ZN6dealii9Functions12FlowFunctionILi2EED5Ev = comdat any

$_ZThn16_N6dealii9Functions12FlowFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions12FlowFunctionILi2EE19pressure_adjustmentEd = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNSaIN6dealii5PointILi2EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii5PointILi2EEaSERKS1_ = comdat any

$_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm = comdat any

$_ZNSt6vectorIdSaIdEE6resizeEm = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZN6dealii6VectorIdEclEj = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE6resizeEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi2EEaSERKS1_ = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE18memory_consumptionEv = comdat any

$_ZN6dealii9Functions12FlowFunctionILi3EEC5Ev = comdat any

$_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEC2EmRKS5_ = comdat any

$_ZN6dealii9Functions12FlowFunctionILi3EED5Ev = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev = comdat any

$_ZThn16_N6dealii9Functions12FlowFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions12FlowFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions12FlowFunctionILi3EE19pressure_adjustmentEd = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZNSaIN6dealii5PointILi3EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii5PointILi3EEaSERKS1_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE6resizeEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi3EEaSERKS1_ = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE18memory_consumptionEv = comdat any

$_ZN6dealii9Functions15PoisseuilleFlowILi2EEC5Edd = comdat any

$_ZN6dealii9Functions15PoisseuilleFlowILi2EED5Ev = comdat any

$_ZThn16_N6dealii9Functions15PoisseuilleFlowILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions15PoisseuilleFlowILi2EED0Ev = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi2EE13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm = comdat any

$_ZNK6dealii5PointILi2EEclEj = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi2EE16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE = comdat any

$_ZN6dealii6TensorILi1ELi2EEixEj = comdat any

$_ZN6dealii6TensorILi1ELi2EEaSEd = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi2EE17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZN6dealii9Functions15PoisseuilleFlowILi3EEC5Edd = comdat any

$_ZN6dealii9Functions15PoisseuilleFlowILi3EED5Ev = comdat any

$_ZThn16_N6dealii9Functions15PoisseuilleFlowILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions15PoisseuilleFlowILi3EED0Ev = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi3EE13vector_valuesERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm = comdat any

$_ZNK6dealii5PointILi3EEclEj = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi3EE16vector_gradientsERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE = comdat any

$_ZN6dealii6TensorILi1ELi3EEixEj = comdat any

$_ZN6dealii6TensorILi1ELi3EEaSEd = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi3EE17vector_laplaciansERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZN6dealii9Functions12StokesCosineILi2EEC5Edd = comdat any

$_ZN6dealii9Functions12StokesCosineILi2EE14set_parametersEdd = comdat any

$_ZN6dealii9Functions12StokesCosineILi2EED5Ev = comdat any

$_ZThn16_N6dealii9Functions12StokesCosineILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions12StokesCosineILi2EED0Ev = comdat any

$_ZNK6dealii9Functions12StokesCosineILi2EE13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions12StokesCosineILi2EE16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE = comdat any

$_ZNK6dealii9Functions12StokesCosineILi2EE17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZN6dealii9Functions12StokesCosineILi3EEC5Edd = comdat any

$_ZN6dealii9Functions12StokesCosineILi3EE14set_parametersEdd = comdat any

$_ZN6dealii9Functions12StokesCosineILi3EED5Ev = comdat any

$_ZThn16_N6dealii9Functions12StokesCosineILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions12StokesCosineILi3EED0Ev = comdat any

$_ZNK6dealii9Functions12StokesCosineILi3EE13vector_valuesERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions12StokesCosineILi3EE16vector_gradientsERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE = comdat any

$_ZNK6dealii9Functions12StokesCosineILi3EE17vector_laplaciansERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions18StokesLSingularity3PsiEd = comdat any

$_ZNK6dealii9Functions18StokesLSingularity5Psi_1Ed = comdat any

$_ZNK6dealii9Functions18StokesLSingularity5Psi_3Ed = comdat any

$_ZNK6dealii9Functions18StokesLSingularity5Psi_2Ed = comdat any

$_ZNK6dealii9Functions18StokesLSingularity5Psi_4Ed = comdat any

$_ZN6dealii9Functions18StokesLSingularityD0Ev = comdat any

$_ZThn16_N6dealii9Functions18StokesLSingularityD1Ev = comdat any

$_ZThn16_N6dealii9Functions18StokesLSingularityD0Ev = comdat any

$_ZNSt15__new_allocatorISt6vectorIdSaIdEEEC2Ev = comdat any

$_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIS_IdSaIdEESaIS1_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNSaISt6vectorIdSaIdEEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE8max_sizeERKS3_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$__clang_call_terminate = comdat any

$_ZNKSt15__new_allocatorISt6vectorIdSaIdEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorISt6vectorIdSaIdEEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorISt6vectorIdSaIdEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPSt6vectorIdSaIdEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIdSaIdEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructISt6vectorIdSaIdEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_ = comdat any

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIdEC2Ev = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_ = comdat any

$_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_ = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZNSt15__new_allocatorIdED2Ev = comdat any

$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm = comdat any

$_ZNSt15__new_allocatorIdE10deallocateEPdm = comdat any

$_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIdSaIdEEE10deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEC2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EEC2EmRKS6_ = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EED2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE11_S_max_sizeERKS5_ = comdat any

$_ZNSaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEEC2ERKS5_ = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEE8max_sizeERKS6_ = comdat any

$_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEC2ERKS6_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE12_Vector_implC2ERKS6_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEED2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEE8allocateERS6_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEmS5_ET_S7_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEmET_S7_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS5_EEmEET_S9_T0_ = comdat any

$_ZSt10_ConstructISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEvT_S7_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS5_EEEEvT_S9_ = comdat any

$_ZSt8_DestroyISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEvPT_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEE10deallocateERS6_PS5_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE10deallocateEPS5_m = comdat any

$_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E = comdat any

$_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EES5_EvT_S7_RSaIT0_E = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE21_M_default_initializeEm = comdat any

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

$_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii5PointILi2EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi2EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi2EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_ = comdat any

$_ZN6dealii5PointILi2EEC2Ev = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd = comdat any

$_ZNKSt6vectorIdSaIdEE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_ = comdat any

$_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_ = comdat any

$_ZNKSt15__new_allocatorIdE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIdE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPdmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIdJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPddEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaIdEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi2EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2Eb = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEC2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EEC2EmRKS6_ = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EED2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE11_S_max_sizeERKS5_ = comdat any

$_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2ERKS5_ = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE8max_sizeERKS6_ = comdat any

$_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEC2ERKS6_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE12_Vector_implC2ERKS6_ = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEED2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE8allocateERS6_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEmS5_ET_S7_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEmET_S7_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS5_EEmEET_S9_T0_ = comdat any

$_ZSt10_ConstructISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEvT_S7_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS5_EEEEvT_S9_ = comdat any

$_ZSt8_DestroyISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEvPT_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m = comdat any

$_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m = comdat any

$_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE10deallocateERS6_PS5_m = comdat any

$_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE10deallocateEPS5_m = comdat any

$_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EES5_EvT_S7_RSaIT0_E = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2Ev = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE21_M_default_initializeEm = comdat any

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

$_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii5PointILi3EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi3EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi3EEEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_ = comdat any

$_ZN6dealii5PointILi3EEC2Ev = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE15_M_erase_at_endEPS2_ = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_ = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi3EEEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2Eb = comdat any

$_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS4_EET0_T_S9_S8_ = comdat any

$_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2ERKS1_ = comdat any

$_ZTVN6dealii9Functions12FlowFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions12FlowFunctionILi3EEE = comdat any

$_ZTVN6dealii9Functions15PoisseuilleFlowILi2EEE = comdat any

$_ZTVN6dealii9Functions15PoisseuilleFlowILi3EEE = comdat any

$_ZTVN6dealii9Functions12StokesCosineILi2EEE = comdat any

$_ZTVN6dealii9Functions12StokesCosineILi3EEE = comdat any

$_ZTSN6dealii9Functions12FlowFunctionILi2EEE = comdat any

$_ZTSN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions12FlowFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions12FlowFunctionILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions12FlowFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions15PoisseuilleFlowILi2EEE = comdat any

$_ZTIN6dealii9Functions15PoisseuilleFlowILi2EEE = comdat any

$_ZTSN6dealii9Functions15PoisseuilleFlowILi3EEE = comdat any

$_ZTIN6dealii9Functions15PoisseuilleFlowILi3EEE = comdat any

$_ZTSN6dealii9Functions12StokesCosineILi2EEE = comdat any

$_ZTIN6dealii9Functions12StokesCosineILi2EEE = comdat any

$_ZTSN6dealii9Functions12StokesCosineILi3EEE = comdat any

$_ZTIN6dealii9Functions12StokesCosineILi3EEE = comdat any

@_ZTVN6dealii9Functions12FlowFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [21 x ptr], [4 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions12FlowFunctionILi2EEE, ptr @_ZN6dealii9Functions12FlowFunctionILi2EED1Ev, ptr @_ZN6dealii9Functions12FlowFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions12FlowFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions12FlowFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions12FlowFunctionILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions12FlowFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [21 x ptr], [4 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions12FlowFunctionILi3EEE, ptr @_ZN6dealii9Functions12FlowFunctionILi3EED1Ev, ptr @_ZN6dealii9Functions12FlowFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions12FlowFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions12FlowFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions12FlowFunctionILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions15PoisseuilleFlowILi2EEE = weak_odr dso_local unnamed_addr constant { [21 x ptr], [4 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions15PoisseuilleFlowILi2EEE, ptr @_ZN6dealii9Functions15PoisseuilleFlowILi2EED1Ev, ptr @_ZN6dealii9Functions15PoisseuilleFlowILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions15PoisseuilleFlowILi2EE13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE, ptr @_ZNK6dealii9Functions15PoisseuilleFlowILi2EE16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE, ptr @_ZNK6dealii9Functions15PoisseuilleFlowILi2EE17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions15PoisseuilleFlowILi2EEE, ptr @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions15PoisseuilleFlowILi3EEE = weak_odr dso_local unnamed_addr constant { [21 x ptr], [4 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions15PoisseuilleFlowILi3EEE, ptr @_ZN6dealii9Functions15PoisseuilleFlowILi3EED1Ev, ptr @_ZN6dealii9Functions15PoisseuilleFlowILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions15PoisseuilleFlowILi3EE13vector_valuesERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE, ptr @_ZNK6dealii9Functions15PoisseuilleFlowILi3EE16vector_gradientsERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE, ptr @_ZNK6dealii9Functions15PoisseuilleFlowILi3EE17vector_laplaciansERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions15PoisseuilleFlowILi3EEE, ptr @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions12StokesCosineILi2EEE = weak_odr dso_local unnamed_addr constant { [21 x ptr], [4 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions12StokesCosineILi2EEE, ptr @_ZN6dealii9Functions12StokesCosineILi2EED1Ev, ptr @_ZN6dealii9Functions12StokesCosineILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions12StokesCosineILi2EE13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE, ptr @_ZNK6dealii9Functions12StokesCosineILi2EE16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE, ptr @_ZNK6dealii9Functions12StokesCosineILi2EE17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions12StokesCosineILi2EEE, ptr @_ZThn16_N6dealii9Functions12StokesCosineILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions12StokesCosineILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions12StokesCosineILi3EEE = weak_odr dso_local unnamed_addr constant { [21 x ptr], [4 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions12StokesCosineILi3EEE, ptr @_ZN6dealii9Functions12StokesCosineILi3EED1Ev, ptr @_ZN6dealii9Functions12StokesCosineILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions12StokesCosineILi3EE13vector_valuesERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE, ptr @_ZNK6dealii9Functions12StokesCosineILi3EE16vector_gradientsERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE, ptr @_ZNK6dealii9Functions12StokesCosineILi3EE17vector_laplaciansERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions12StokesCosineILi3EEE, ptr @_ZThn16_N6dealii9Functions12StokesCosineILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions12StokesCosineILi3EED0Ev] }, comdat, align 8
@_ZN6dealii9Functions18StokesLSingularity6lambdaE = dso_local local_unnamed_addr constant double 0x3FE16C692855E7BC, align 8
@_ZTVN6dealii9Functions18StokesLSingularityE = dso_local unnamed_addr constant { [21 x ptr], [4 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions18StokesLSingularityE, ptr @_ZN6dealii9Functions12FlowFunctionILi2EED2Ev, ptr @_ZN6dealii9Functions18StokesLSingularityD0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions18StokesLSingularity13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE, ptr @_ZNK6dealii9Functions18StokesLSingularity16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions18StokesLSingularity17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions18StokesLSingularityE, ptr @_ZThn16_N6dealii9Functions18StokesLSingularityD1Ev, ptr @_ZThn16_N6dealii9Functions18StokesLSingularityD0Ev] }, align 8
@_ZTVN6dealii9Functions9KovasznayE = dso_local unnamed_addr constant { [21 x ptr], [4 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions9KovasznayE, ptr @_ZN6dealii9Functions9KovasznayD2Ev, ptr @_ZN6dealii9Functions9KovasznayD0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions12FlowFunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions9Kovasznay13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE, ptr @_ZNK6dealii9Functions9Kovasznay16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions9Kovasznay17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions9KovasznayE, ptr @_ZThn16_N6dealii9Functions9KovasznayD1Ev, ptr @_ZThn16_N6dealii9Functions9KovasznayD0Ev] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii9Functions18StokesLSingularityE = dso_local constant [40 x i8] c"N6dealii9Functions18StokesLSingularityE\00", align 1
@_ZTSN6dealii9Functions12FlowFunctionILi2EEE = weak_odr dso_local constant [40 x i8] c"N6dealii9Functions12FlowFunctionILi2EEE\00", comdat, align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii12FunctionTimeE = external constant ptr
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi2EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions12FlowFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions12FlowFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTIN6dealii9Functions18StokesLSingularityE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions18StokesLSingularityE, ptr @_ZTIN6dealii9Functions12FlowFunctionILi2EEE }, align 8
@_ZTSN6dealii9Functions9KovasznayE = dso_local constant [30 x i8] c"N6dealii9Functions9KovasznayE\00", align 1
@_ZTIN6dealii9Functions9KovasznayE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions9KovasznayE, ptr @_ZTIN6dealii9Functions12FlowFunctionILi2EEE }, align 8
@_ZTSN6dealii9Functions12FlowFunctionILi3EEE = weak_odr dso_local constant [40 x i8] c"N6dealii9Functions12FlowFunctionILi3EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi3EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions12FlowFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions12FlowFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions15PoisseuilleFlowILi2EEE = weak_odr dso_local constant [43 x i8] c"N6dealii9Functions15PoisseuilleFlowILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions15PoisseuilleFlowILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions15PoisseuilleFlowILi2EEE, ptr @_ZTIN6dealii9Functions12FlowFunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions15PoisseuilleFlowILi3EEE = weak_odr dso_local constant [43 x i8] c"N6dealii9Functions15PoisseuilleFlowILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions15PoisseuilleFlowILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions15PoisseuilleFlowILi3EEE, ptr @_ZTIN6dealii9Functions12FlowFunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions12StokesCosineILi2EEE = weak_odr dso_local constant [40 x i8] c"N6dealii9Functions12StokesCosineILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions12StokesCosineILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions12StokesCosineILi2EEE, ptr @_ZTIN6dealii9Functions12FlowFunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions12StokesCosineILi3EEE = weak_odr dso_local constant [40 x i8] c"N6dealii9Functions12StokesCosineILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions12StokesCosineILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions12StokesCosineILi3EEE, ptr @_ZTIN6dealii9Functions12FlowFunctionILi3EEE }, comdat, align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN6dealii9Functions12FlowFunctionILi2EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9Functions12FlowFunctionILi2EED2Ev
@_ZN6dealii9Functions12FlowFunctionILi3EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9Functions12FlowFunctionILi3EED2Ev
@_ZN6dealii9Functions15PoisseuilleFlowILi2EEC1Edd = weak_odr dso_local unnamed_addr alias void (ptr, double, double), ptr @_ZN6dealii9Functions15PoisseuilleFlowILi2EEC2Edd
@_ZN6dealii9Functions15PoisseuilleFlowILi2EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9Functions15PoisseuilleFlowILi2EED2Ev
@_ZN6dealii9Functions15PoisseuilleFlowILi3EEC1Edd = weak_odr dso_local unnamed_addr alias void (ptr, double, double), ptr @_ZN6dealii9Functions15PoisseuilleFlowILi3EEC2Edd
@_ZN6dealii9Functions15PoisseuilleFlowILi3EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9Functions15PoisseuilleFlowILi3EED2Ev
@_ZN6dealii9Functions12StokesCosineILi2EEC1Edd = weak_odr dso_local unnamed_addr alias void (ptr, double, double), ptr @_ZN6dealii9Functions12StokesCosineILi2EEC2Edd
@_ZN6dealii9Functions12StokesCosineILi2EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9Functions12StokesCosineILi2EED2Ev
@_ZN6dealii9Functions12StokesCosineILi3EEC1Edd = weak_odr dso_local unnamed_addr alias void (ptr, double, double), ptr @_ZN6dealii9Functions12StokesCosineILi3EEC2Edd
@_ZN6dealii9Functions12StokesCosineILi3EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9Functions12StokesCosineILi3EED2Ev
@_ZN6dealii9Functions18StokesLSingularityC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9Functions18StokesLSingularityC2Ev
@_ZN6dealii9Functions9KovasznayC1Edb = dso_local unnamed_addr alias void (ptr, double, i1), ptr @_ZN6dealii9Functions9KovasznayC2Edb
@_ZN6dealii9Functions9KovasznayD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9Functions9KovasznayD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat($_ZN6dealii9Functions12FlowFunctionILi2EEC5Ev) align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.5", align 1
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 3, double noundef 0.000000e+00) #18
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !200
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !200
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %5, align 8, !tbaa !203
  %6 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  call void @_ZNSaISt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  invoke void @_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
          to label %7 unwind label %10

7:                                                ; preds = %1
  call void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  %8 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  invoke void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEC2EmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
          to label %9 unwind label %12

9:                                                ; preds = %7
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  br label %14

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #20
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #20
  resume { ptr, i32 } %15
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !229 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  tail call void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %7
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEC2EmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EEC2EmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %2 = load ptr, ptr %0, align 8, !tbaa !230
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !231
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %2 = load ptr, ptr %0, align 8, !tbaa !232
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 2>>, std::allocator<std::vector<dealii::Tensor<1, 2>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !233
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EES5_EvT_S7_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12FlowFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(152) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12FlowFunctionILi2EED5Ev) align 2 {
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12FlowFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi2EE19pressure_adjustmentEd(ptr noundef nonnull align 8 dereferenceable(152) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !203
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %4 = alloca %"class.std::vector.8", align 8
  %5 = alloca %"class.std::allocator.10", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  call void @_ZNSaIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  invoke void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %15

6:                                                ; preds = %3
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  %7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0) #20
  %8 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
          to label %9 unwind label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  br label %19

11:                                               ; preds = %22
  %12 = load ptr, ptr %0, align 8, !tbaa !200
  %13 = getelementptr inbounds ptr, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10) #18
          to label %28 unwind label %17

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  br label %39

17:                                               ; preds = %11, %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %37

19:                                               ; preds = %9, %22
  %20 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %20) #20
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef 1) #18
          to label %22 unwind label %25

22:                                               ; preds = %19
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, 3
  br i1 %24, label %11, label %19, !llvm.loop !234

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %37

27:                                               ; preds = %28
  call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void

28:                                               ; preds = %11, %28
  %29 = phi i64 [ %35, %28 ], [ 0, %11 ]
  %30 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %29) #20
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef 0) #20
  %32 = load double, ptr %31, align 8, !tbaa !236
  %33 = trunc i64 %29 to i32
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %33) #18
  store double %32, ptr %34, align 8, !tbaa !236
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %27, label %28, !llvm.loop !237

37:                                               ; preds = %25, %17
  %38 = phi { ptr, i32 } [ %26, %25 ], [ %18, %17 ]
  call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  br label %39

39:                                               ; preds = %37, %15
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  resume { ptr, i32 } %40
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !238 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !239 {
  %3 = load ptr, ptr %0, align 8, !tbaa !240
  %4 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !242 {
  %3 = load ptr, ptr %0, align 8, !tbaa !230
  %4 = getelementptr inbounds %"class.std::vector.13", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #18
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !243
  %12 = getelementptr inbounds double, ptr %11, i64 %1
  tail call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #20
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !245 {
  %3 = load ptr, ptr %0, align 8, !tbaa !243
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !246 {
  %3 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !247
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds double, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !249 {
  %2 = load ptr, ptr %0, align 8, !tbaa !240
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !250
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12FlowFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %4 = alloca %"class.std::vector.8", align 8
  %5 = alloca %"class.std::allocator.10", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  call void @_ZNSaIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  invoke void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %15

6:                                                ; preds = %3
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  %7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0) #20
  %8 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii5PointILi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
          to label %9 unwind label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  br label %19

11:                                               ; preds = %22
  %12 = load ptr, ptr %0, align 8, !tbaa !200
  %13 = getelementptr inbounds ptr, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10) #18
          to label %27 unwind label %17

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  br label %34

17:                                               ; preds = %11, %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %32

19:                                               ; preds = %9, %22
  %20 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %20) #20
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef 1) #18
          to label %22 unwind label %25

22:                                               ; preds = %19
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, 3
  br i1 %24, label %11, label %19, !llvm.loop !251

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %32

27:                                               ; preds = %11
  %28 = zext i32 %2 to i64
  %29 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %28) #20
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %29, i64 noundef 0) #20
  %31 = load double, ptr %30, align 8, !tbaa !236
  call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret double %31

32:                                               ; preds = %25, %17
  %33 = phi { ptr, i32 } [ %26, %25 ], [ %18, %17 ]
  call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  br label %34

34:                                               ; preds = %32, %15
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  resume { ptr, i32 } %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %6 = and i64 %4, 4294967295
  br label %15

7:                                                ; preds = %15
  %8 = load ptr, ptr %0, align 8, !tbaa !200
  %9 = getelementptr inbounds ptr, ptr %8, i64 16
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  %11 = and i64 %4, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = and i64 %4, 4294967295
  br label %20

15:                                               ; preds = %3, %15
  %16 = phi i64 [ 0, %3 ], [ %18, %15 ]
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %16) #20
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %6) #18
  %18 = add nuw nsw i64 %16, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %7, label %15, !llvm.loop !252

20:                                               ; preds = %13, %23
  %21 = phi i64 [ 0, %13 ], [ %24, %23 ]
  br label %26

22:                                               ; preds = %23, %7
  ret void

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %21, 1
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %22, label %20, !llvm.loop !253

26:                                               ; preds = %20, %26
  %27 = phi i64 [ 0, %20 ], [ %34, %26 ]
  %28 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %27) #20
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %21) #20
  %30 = load double, ptr %29, align 8, !tbaa !236
  %31 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %21) #20
  %32 = trunc i64 %27 to i32
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %31, i32 noundef %32) #18
  store double %30, ptr %33, align 8, !tbaa !236
  %34 = add nuw nsw i64 %27, 1
  %35 = icmp eq i64 %34, 3
  br i1 %35, label %23, label %26, !llvm.loop !254
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !255 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  %4 = load ptr, ptr %0, align 8, !tbaa !240
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !256 {
  %3 = load ptr, ptr %0, align 8, !tbaa !257
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  %6 = and i64 %4, 4294967295
  br label %15

7:                                                ; preds = %15
  %8 = load ptr, ptr %0, align 8, !tbaa !200
  %9 = getelementptr inbounds ptr, ptr %8, i64 17
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  %11 = and i64 %4, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = and i64 %4, 4294967295
  br label %20

15:                                               ; preds = %3, %15
  %16 = phi i64 [ 0, %3 ], [ %18, %15 ]
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %16) #20
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %6) #18
  %18 = add nuw nsw i64 %16, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %7, label %15, !llvm.loop !259

20:                                               ; preds = %13, %23
  %21 = phi i64 [ 0, %13 ], [ %24, %23 ]
  br label %26

22:                                               ; preds = %23, %7
  ret void

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %21, 1
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %22, label %20, !llvm.loop !260

26:                                               ; preds = %20, %26
  %27 = phi i64 [ 0, %20 ], [ %33, %26 ]
  %28 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %27) #20
  %29 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %21) #20
  %30 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %21) #20
  %31 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef %27) #20
  %32 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %29) #18
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %23, label %26, !llvm.loop !261
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %3 = load ptr, ptr %0, align 8, !tbaa !232
  %4 = getelementptr inbounds %"class.std::vector.23", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #18
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !262
  %12 = getelementptr inbounds %"class.dealii::Tensor", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #20
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %3 = load ptr, ptr %0, align 8, !tbaa !262
  %4 = getelementptr inbounds %"class.dealii::Tensor", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 !prof !264 {
  %3 = load double, ptr %1, align 8, !tbaa !236
  store double %3, ptr %0, align 8, !tbaa !236
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !236
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !236
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %6 = and i64 %4, 4294967295
  br label %15

7:                                                ; preds = %15
  %8 = load ptr, ptr %0, align 8, !tbaa !200
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  %11 = and i64 %4, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = and i64 %4, 4294967295
  br label %20

15:                                               ; preds = %3, %15
  %16 = phi i64 [ 0, %3 ], [ %18, %15 ]
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %16) #20
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %6) #18
  %18 = add nuw nsw i64 %16, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %7, label %15, !llvm.loop !265

20:                                               ; preds = %13, %23
  %21 = phi i64 [ 0, %13 ], [ %24, %23 ]
  br label %26

22:                                               ; preds = %23, %7
  ret void

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %21, 1
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %22, label %20, !llvm.loop !266

26:                                               ; preds = %20, %26
  %27 = phi i64 [ 0, %20 ], [ %34, %26 ]
  %28 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %27) #20
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %21) #20
  %30 = load double, ptr %29, align 8, !tbaa !236
  %31 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %21) #20
  %32 = trunc i64 %27 to i32
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %31, i32 noundef %32) #18
  store double %30, ptr %33, align 8, !tbaa !236
  %34 = add nuw nsw i64 %27, 1
  %35 = icmp eq i64 %34, 3
  br i1 %35, label %23, label %26, !llvm.loop !267
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii9Functions12FlowFunctionILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat($_ZN6dealii9Functions12FlowFunctionILi3EEC5Ev) align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.33", align 1
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 4, double noundef 0.000000e+00) #18
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !200
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !200
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 1
  store double 0.000000e+00, ptr %5, align 8, !tbaa !268
  %6 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  call void @_ZNSaISt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  invoke void @_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
          to label %7 unwind label %10

7:                                                ; preds = %1
  call void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  %8 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  invoke void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEC2EmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 4, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
          to label %9 unwind label %12

9:                                                ; preds = %7
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  br label %14

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #20
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #20
  resume { ptr, i32 } %15
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !275 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEC2EmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EEC2EmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12FlowFunctionILi3EED5Ev) align 2 !prof !199 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !200
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !200
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !276 {
  %2 = load ptr, ptr %0, align 8, !tbaa !277
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !278
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EES5_EvT_S7_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12FlowFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12FlowFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(152) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12FlowFunctionILi3EED5Ev) align 2 {
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12FlowFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12FlowFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi3EE19pressure_adjustmentEd(ptr noundef nonnull align 8 dereferenceable(152) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %4 = alloca %"class.std::vector.36", align 8
  %5 = alloca %"class.std::allocator.38", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  call void @_ZNSaIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  invoke void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %15

6:                                                ; preds = %3
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0) #20
  %8 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
          to label %9 unwind label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  br label %19

11:                                               ; preds = %22
  %12 = load ptr, ptr %0, align 8, !tbaa !200
  %13 = getelementptr inbounds ptr, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10) #18
          to label %28 unwind label %17

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  br label %39

17:                                               ; preds = %11, %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %37

19:                                               ; preds = %9, %22
  %20 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %20) #20
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef 1) #18
          to label %22 unwind label %25

22:                                               ; preds = %19
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %11, label %19, !llvm.loop !279

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %37

27:                                               ; preds = %28
  call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void

28:                                               ; preds = %11, %28
  %29 = phi i64 [ %35, %28 ], [ 0, %11 ]
  %30 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %29) #20
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef 0) #20
  %32 = load double, ptr %31, align 8, !tbaa !236
  %33 = trunc i64 %29 to i32
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %33) #18
  store double %32, ptr %34, align 8, !tbaa !236
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %27, label %28, !llvm.loop !280

37:                                               ; preds = %25, %17
  %38 = phi { ptr, i32 } [ %26, %25 ], [ %18, %17 ]
  call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  br label %39

39:                                               ; preds = %37, %15
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  resume { ptr, i32 } %40
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !281 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !282 {
  %3 = load ptr, ptr %0, align 8, !tbaa !283
  %4 = getelementptr inbounds %"class.dealii::Point.41", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %2 = load ptr, ptr %0, align 8, !tbaa !283
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !286
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12FlowFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %4 = alloca %"class.std::vector.36", align 8
  %5 = alloca %"class.std::allocator.38", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  call void @_ZNSaIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  invoke void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %15

6:                                                ; preds = %3
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0) #20
  %8 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5PointILi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
          to label %9 unwind label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  br label %19

11:                                               ; preds = %22
  %12 = load ptr, ptr %0, align 8, !tbaa !200
  %13 = getelementptr inbounds ptr, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10) #18
          to label %27 unwind label %17

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  br label %34

17:                                               ; preds = %11, %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %32

19:                                               ; preds = %9, %22
  %20 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %20) #20
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef 1) #18
          to label %22 unwind label %25

22:                                               ; preds = %19
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %11, label %19, !llvm.loop !287

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %32

27:                                               ; preds = %11
  %28 = zext i32 %2 to i64
  %29 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %28) #20
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %29, i64 noundef 0) #20
  %31 = load double, ptr %30, align 8, !tbaa !236
  call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret double %31

32:                                               ; preds = %25, %17
  %33 = phi { ptr, i32 } [ %26, %25 ], [ %18, %17 ]
  call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  br label %34

34:                                               ; preds = %32, %15
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  resume { ptr, i32 } %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  %6 = and i64 %4, 4294967295
  br label %15

7:                                                ; preds = %15
  %8 = load ptr, ptr %0, align 8, !tbaa !200
  %9 = getelementptr inbounds ptr, ptr %8, i64 16
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  %11 = and i64 %4, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = and i64 %4, 4294967295
  br label %20

15:                                               ; preds = %3, %15
  %16 = phi i64 [ 0, %3 ], [ %18, %15 ]
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %16) #20
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %6) #18
  %18 = add nuw nsw i64 %16, 1
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %7, label %15, !llvm.loop !288

20:                                               ; preds = %13, %23
  %21 = phi i64 [ 0, %13 ], [ %24, %23 ]
  br label %26

22:                                               ; preds = %23, %7
  ret void

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %21, 1
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %22, label %20, !llvm.loop !289

26:                                               ; preds = %20, %26
  %27 = phi i64 [ 0, %20 ], [ %34, %26 ]
  %28 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %27) #20
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %21) #20
  %30 = load double, ptr %29, align 8, !tbaa !236
  %31 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %21) #20
  %32 = trunc i64 %27 to i32
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %31, i32 noundef %32) #18
  store double %30, ptr %33, align 8, !tbaa !236
  %34 = add nuw nsw i64 %27, 1
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %23, label %26, !llvm.loop !290
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !291 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !286
  %4 = load ptr, ptr %0, align 8, !tbaa !283
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3
  %6 = and i64 %4, 4294967295
  br label %15

7:                                                ; preds = %15
  %8 = load ptr, ptr %0, align 8, !tbaa !200
  %9 = getelementptr inbounds ptr, ptr %8, i64 17
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  %11 = and i64 %4, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = and i64 %4, 4294967295
  br label %20

15:                                               ; preds = %3, %15
  %16 = phi i64 [ 0, %3 ], [ %18, %15 ]
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %16) #20
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %6) #18
  %18 = add nuw nsw i64 %16, 1
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %7, label %15, !llvm.loop !292

20:                                               ; preds = %13, %23
  %21 = phi i64 [ 0, %13 ], [ %24, %23 ]
  br label %26

22:                                               ; preds = %23, %7
  ret void

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %21, 1
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %22, label %20, !llvm.loop !293

26:                                               ; preds = %20, %26
  %27 = phi i64 [ 0, %20 ], [ %33, %26 ]
  %28 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %27) #20
  %29 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %21) #20
  %30 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %21) #20
  %31 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 noundef %27) #20
  %32 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %29) #18
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %23, label %26, !llvm.loop !294
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !295 {
  %3 = load ptr, ptr %0, align 8, !tbaa !277
  %4 = getelementptr inbounds %"class.std::vector.43", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #18
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !296
  %12 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %11, i64 %1
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #20
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !298 {
  %3 = load ptr, ptr %0, align 8, !tbaa !296
  %4 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 !prof !299 {
  %3 = load double, ptr %1, align 8, !tbaa !236
  store double %3, ptr %0, align 8, !tbaa !236
  %4 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !236
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !236
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !236
  %9 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %8, ptr %9, align 8, !tbaa !236
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  %6 = and i64 %4, 4294967295
  br label %15

7:                                                ; preds = %15
  %8 = load ptr, ptr %0, align 8, !tbaa !200
  %9 = getelementptr inbounds ptr, ptr %8, i64 18
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  %11 = and i64 %4, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = and i64 %4, 4294967295
  br label %20

15:                                               ; preds = %3, %15
  %16 = phi i64 [ 0, %3 ], [ %18, %15 ]
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %16) #20
  tail call void @_ZNSt6vectorIdSaIdEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef %6) #18
  %18 = add nuw nsw i64 %16, 1
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %7, label %15, !llvm.loop !300

20:                                               ; preds = %13, %23
  %21 = phi i64 [ 0, %13 ], [ %24, %23 ]
  br label %26

22:                                               ; preds = %23, %7
  ret void

23:                                               ; preds = %26
  %24 = add nuw nsw i64 %21, 1
  %25 = icmp eq i64 %24, %14
  br i1 %25, label %22, label %20, !llvm.loop !301

26:                                               ; preds = %20, %26
  %27 = phi i64 [ 0, %20 ], [ %34, %26 ]
  %28 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %27) #20
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %21) #20
  %30 = load double, ptr %29, align 8, !tbaa !236
  %31 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %21) #20
  %32 = trunc i64 %27 to i32
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %31, i32 noundef %32) #18
  store double %30, ptr %33, align 8, !tbaa !236
  %34 = add nuw nsw i64 %27, 1
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %23, label %26, !llvm.loop !302
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii9Functions12FlowFunctionILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi2EEC2Edd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi2EEC5Edd) align 2 !prof !199 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #18
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions15PoisseuilleFlowILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !200
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions15PoisseuilleFlowILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !200
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !303
  %6 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 2
  store double %2, ptr %6, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi2EED5Ev) align 2 !prof !199 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi2EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi2EED5Ev) align 2 {
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi2EED0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi2EE13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !303
  %7 = fdiv double 1.000000e+00, %6
  %8 = and i64 %4, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = fmul double %7, 2.000000e+00
  %12 = fmul double %7, %11
  %13 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  %15 = and i64 %4, 4294967295
  br label %17

16:                                               ; preds = %17, %3
  ret void

17:                                               ; preds = %10, %17
  %18 = phi i64 [ 0, %10 ], [ %38, %17 ]
  %19 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %18) #20
  %20 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 1) #18
  %21 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 1) #18
  %22 = fmul double %20, %21
  %23 = fmul double %7, %22
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %7, double 0.000000e+00)
  %25 = fsub double 1.000000e+00, %24
  %26 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %26, i64 noundef %18) #20
  store double %25, ptr %27, align 8, !tbaa !236
  %28 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %18) #20
  store double 0.000000e+00, ptr %29, align 8, !tbaa !236
  %30 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 0) #18
  %31 = fmul double %12, %30
  %32 = load double, ptr %13, align 8, !tbaa !305
  %33 = fdiv double %31, %32
  %34 = load double, ptr %14, align 8, !tbaa !203
  %35 = fsub double %34, %33
  %36 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %18) #20
  store double %35, ptr %37, align 8, !tbaa !236
  %38 = add nuw nsw i64 %18, 1
  %39 = icmp eq i64 %38, %15
  br i1 %39, label %16, label %17, !llvm.loop !306
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !307 {
  %3 = load ptr, ptr %0, align 8, !tbaa !240
  %4 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !308 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !236
  ret double %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi2EE16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !303
  %7 = fdiv double 1.000000e+00, %6
  %8 = and i64 %4, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = fmul double %7, -2.000000e+00
  %12 = fmul double %7, %11
  %13 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 2
  %14 = and i64 %4, 4294967295
  br label %16

15:                                               ; preds = %16, %3
  ret void

16:                                               ; preds = %10, %16
  %17 = phi i64 [ 0, %10 ], [ %40, %16 ]
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %17) #20
  %19 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %20 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %17) #20
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %20, i32 noundef 0) #18
  store double 0.000000e+00, ptr %21, align 8, !tbaa !236
  %22 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef 1) #18
  %23 = fmul double %22, -2.000000e+00
  %24 = fmul double %7, %23
  %25 = fmul double %7, %24
  %26 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %27 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %26, i64 noundef %17) #20
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %27, i32 noundef 1) #18
  store double %25, ptr %28, align 8, !tbaa !236
  %29 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %30 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %29, i64 noundef %17) #20
  %31 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSEd(ptr noundef nonnull align 8 dereferenceable(16) %30, double noundef 0.000000e+00) #18
  %32 = load double, ptr %13, align 8, !tbaa !305
  %33 = fdiv double %12, %32
  %34 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %35 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %17) #20
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %35, i32 noundef 0) #18
  store double %33, ptr %36, align 8, !tbaa !236
  %37 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %38 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %37, i64 noundef %17) #20
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %38, i32 noundef 1) #18
  store double 0.000000e+00, ptr %39, align 8, !tbaa !236
  %40 = add nuw nsw i64 %17, 1
  %41 = icmp eq i64 %40, %14
  br i1 %41, label %15, label %16, !llvm.loop !309
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !310 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSEd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !236
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi2EE17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = tail call noundef i64 @_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %14
  %8 = phi i64 [ %16, %14 ], [ 0, %3 ]
  %9 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #20
  %11 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #20
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %19

13:                                               ; preds = %14, %3
  ret void

14:                                               ; preds = %19, %7
  %15 = add i32 %9, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %7, label %13, !llvm.loop !311

19:                                               ; preds = %7, %19
  %20 = phi i64 [ %25, %19 ], [ 0, %7 ]
  %21 = phi i32 [ %24, %19 ], [ 0, %7 ]
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #20
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %20) #20
  store double 0.000000e+00, ptr %23, align 8, !tbaa !236
  %24 = add i32 %21, 1
  %25 = zext i32 %24 to i64
  %26 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #20
  %27 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %26) #20
  %28 = icmp ugt i64 %27, %25
  br i1 %28, label %19, label %14, !llvm.loop !312
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !313 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  %4 = load ptr, ptr %0, align 8, !tbaa !230
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !314 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !315
  %4 = load ptr, ptr %0, align 8, !tbaa !243
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi3EEC2Edd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi3EEC5Edd) align 2 !prof !199 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #18
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions15PoisseuilleFlowILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !200
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions15PoisseuilleFlowILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !200
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !316
  %6 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 2
  store double %2, ptr %6, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi3EED5Ev) align 2 !prof !199 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi3EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi3EED5Ev) align 2 {
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi3EED0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi3EE13vector_valuesERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !316
  %7 = fdiv double 1.000000e+00, %6
  %8 = and i64 %4, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = fmul double %7, 4.000000e+00
  %12 = fmul double %7, %11
  %13 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 1
  %15 = and i64 %4, 4294967295
  br label %17

16:                                               ; preds = %34, %3
  ret void

17:                                               ; preds = %10, %34
  %18 = phi i64 [ 0, %10 ], [ %43, %34 ]
  %19 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %18) #20
  br label %24

20:                                               ; preds = %24
  %21 = fsub double 1.000000e+00, %31
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %18) #20
  store double %21, ptr %23, align 8, !tbaa !236
  br label %45

24:                                               ; preds = %17, %24
  %25 = phi i32 [ 1, %17 ], [ %32, %24 ]
  %26 = phi double [ 0.000000e+00, %17 ], [ %31, %24 ]
  %27 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef %25) #18
  %28 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef %25) #18
  %29 = fmul double %27, %28
  %30 = fmul double %7, %29
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %7, double %26)
  %32 = add nuw nsw i32 %25, 1
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %20, label %24, !llvm.loop !319

34:                                               ; preds = %45
  %35 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 0) #18
  %36 = fmul double %12, %35
  %37 = load double, ptr %13, align 8, !tbaa !318
  %38 = fdiv double %36, %37
  %39 = load double, ptr %14, align 8, !tbaa !268
  %40 = fsub double %39, %38
  %41 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 3) #20
  %42 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %41, i64 noundef %18) #20
  store double %40, ptr %42, align 8, !tbaa !236
  %43 = add nuw nsw i64 %18, 1
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %16, label %17, !llvm.loop !320

45:                                               ; preds = %20, %45
  %46 = phi i64 [ 1, %20 ], [ %49, %45 ]
  %47 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %46) #20
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %47, i64 noundef %18) #20
  store double 0.000000e+00, ptr %48, align 8, !tbaa !236
  %49 = add nuw nsw i64 %46, 1
  %50 = icmp eq i64 %49, 3
  br i1 %50, label %34, label %45, !llvm.loop !321
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !322 {
  %3 = load ptr, ptr %0, align 8, !tbaa !283
  %4 = getelementptr inbounds %"class.dealii::Point.41", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !323 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !236
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi3EE16vector_gradientsERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !316
  %7 = fdiv double 1.000000e+00, %6
  %8 = and i64 %4, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = fmul double %7, -4.000000e+00
  %12 = fmul double %7, %11
  %13 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 2
  %14 = and i64 %4, 4294967295
  br label %16

15:                                               ; preds = %46, %3
  ret void

16:                                               ; preds = %10, %46
  %17 = phi i64 [ 0, %10 ], [ %47, %46 ]
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %17) #20
  %19 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %20 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %17) #20
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 0) #18
  store double 0.000000e+00, ptr %21, align 8, !tbaa !236
  br label %22

22:                                               ; preds = %16, %22
  %23 = phi i32 [ 1, %16 ], [ %31, %22 ]
  %24 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %23) #18
  %25 = fmul double %24, -2.000000e+00
  %26 = fmul double %7, %25
  %27 = fmul double %7, %26
  %28 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %29 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %17) #20
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef %23) #18
  store double %27, ptr %30, align 8, !tbaa !236
  %31 = add nuw nsw i32 %23, 1
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %39, label %22, !llvm.loop !324

33:                                               ; preds = %39
  %34 = load double, ptr %13, align 8, !tbaa !318
  %35 = fdiv double %12, %34
  %36 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 3) #20
  %37 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %17) #20
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %37, i32 noundef 0) #18
  store double %35, ptr %38, align 8, !tbaa !236
  br label %49

39:                                               ; preds = %22, %39
  %40 = phi i64 [ %44, %39 ], [ 1, %22 ]
  %41 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %40) #20
  %42 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %41, i64 noundef %17) #20
  %43 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSEd(ptr noundef nonnull align 8 dereferenceable(24) %42, double noundef 0.000000e+00) #18
  %44 = add nuw nsw i64 %40, 1
  %45 = icmp eq i64 %44, 3
  br i1 %45, label %33, label %39, !llvm.loop !325

46:                                               ; preds = %49
  %47 = add nuw nsw i64 %17, 1
  %48 = icmp eq i64 %47, %14
  br i1 %48, label %15, label %16, !llvm.loop !326

49:                                               ; preds = %33, %49
  %50 = phi i32 [ 1, %33 ], [ %54, %49 ]
  %51 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 3) #20
  %52 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %51, i64 noundef %17) #20
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef %50) #18
  store double 0.000000e+00, ptr %53, align 8, !tbaa !236
  %54 = add nuw nsw i32 %50, 1
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %46, label %49, !llvm.loop !327
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !328 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !236
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi3EE17vector_laplaciansERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = tail call noundef i64 @_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %14
  %8 = phi i64 [ %16, %14 ], [ 0, %3 ]
  %9 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #20
  %11 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #20
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %19

13:                                               ; preds = %14, %3
  ret void

14:                                               ; preds = %19, %7
  %15 = add i32 %9, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %7, label %13, !llvm.loop !329

19:                                               ; preds = %7, %19
  %20 = phi i64 [ %25, %19 ], [ 0, %7 ]
  %21 = phi i32 [ %24, %19 ], [ 0, %7 ]
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #20
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %20) #20
  store double 0.000000e+00, ptr %23, align 8, !tbaa !236
  %24 = add i32 %21, 1
  %25 = zext i32 %24 to i64
  %26 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #20
  %27 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %26) #20
  %28 = icmp ugt i64 %27, %25
  br i1 %28, label %19, label %14, !llvm.loop !330
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi2EEC2Edd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions12StokesCosineILi2EEC5Edd) align 2 !prof !199 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #18
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12StokesCosineILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !200
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12StokesCosineILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !200
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !331
  %6 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 2
  store double %2, ptr %6, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi2EE14set_parametersEdd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %4 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 1
  store double %1, ptr %4, align 8, !tbaa !331
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 2
  store double %2, ptr %5, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12StokesCosineILi2EED5Ev) align 2 !prof !199 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12StokesCosineILi2EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12StokesCosineILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12StokesCosineILi2EED5Ev) align 2 {
  tail call void @_ZN6dealii9Functions12StokesCosineILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12StokesCosineILi2EED0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12StokesCosineILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi2EE13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  %9 = and i64 %4, 4294967295
  br label %11

10:                                               ; preds = %11, %3
  ret void

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %39, %11 ]
  %13 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #20
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0) #18
  %15 = fmul double %14, 0x3FF921FB54442D18
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 1) #18
  %17 = fmul double %16, 0x3FF921FB54442D18
  %18 = tail call double @cos(double noundef %15) #20
  %19 = tail call double @cos(double noundef %17) #20
  %20 = tail call double @sin(double noundef %15) #20
  %21 = tail call double @sin(double noundef %17) #20
  %22 = fmul double %18, %18
  %23 = fmul double %22, %19
  %24 = fmul double %23, %21
  %25 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %12) #20
  store double %24, ptr %26, align 8, !tbaa !236
  %27 = fneg double %18
  %28 = fmul double %20, %27
  %29 = fmul double %19, %28
  %30 = fmul double %19, %29
  %31 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %12) #20
  store double %30, ptr %32, align 8, !tbaa !236
  %33 = fmul double %18, %20
  %34 = fmul double %19, %33
  %35 = load double, ptr %8, align 8, !tbaa !203
  %36 = tail call double @llvm.fmuladd.f64(double %34, double %21, double %35)
  %37 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %37, i64 noundef %12) #20
  store double %36, ptr %38, align 8, !tbaa !236
  %39 = add nuw nsw i64 %12, 1
  %40 = icmp eq i64 %39, %9
  br i1 %40, label %10, label %11, !llvm.loop !334
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi2EE16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = and i64 %4, 4294967295
  br label %10

9:                                                ; preds = %10, %3
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %54, %10 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %11) #20
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 0) #18
  %14 = fmul double %13, 0x3FF921FB54442D18
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 1) #18
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = fmul double %14, 2.000000e+00
  %18 = tail call double @cos(double noundef %17) #20
  %19 = fmul double %16, 2.000000e+00
  %20 = tail call double @cos(double noundef %19) #20
  %21 = tail call double @sin(double noundef %17) #20
  %22 = tail call double @sin(double noundef %19) #20
  %23 = tail call double @llvm.fmuladd.f64(double %18, double 5.000000e-01, double 5.000000e-01)
  %24 = tail call double @llvm.fmuladd.f64(double %20, double 5.000000e-01, double 5.000000e-01)
  %25 = fmul double %21, 0xBFE921FB54442D18
  %26 = fmul double %25, %22
  %27 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %28 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %11) #20
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %28, i32 noundef 0) #18
  store double %26, ptr %29, align 8, !tbaa !236
  %30 = fmul double %23, 0x3FF921FB54442D18
  %31 = fmul double %20, %30
  %32 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %33 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %32, i64 noundef %11) #20
  %34 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %33, i32 noundef 1) #18
  store double %31, ptr %34, align 8, !tbaa !236
  %35 = fmul double %18, 0xBFF921FB54442D18
  %36 = fmul double %35, %24
  %37 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %38 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %37, i64 noundef %11) #20
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %38, i32 noundef 0) #18
  store double %36, ptr %39, align 8, !tbaa !236
  %40 = fmul double %21, 0x3FE921FB54442D18
  %41 = fmul double %40, %22
  %42 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %43 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %42, i64 noundef %11) #20
  %44 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %43, i32 noundef 1) #18
  store double %41, ptr %44, align 8, !tbaa !236
  %45 = fmul double %18, 0x3FE921FB54442D18
  %46 = fmul double %45, %22
  %47 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %48 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %47, i64 noundef %11) #20
  %49 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %48, i32 noundef 0) #18
  store double %46, ptr %49, align 8, !tbaa !236
  %50 = fmul double %20, %40
  %51 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %52 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %51, i64 noundef %11) #20
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %52, i32 noundef 1) #18
  store double %50, ptr %53, align 8, !tbaa !236
  %54 = add nuw nsw i64 %11, 1
  %55 = icmp eq i64 %54, %8
  br i1 %55, label %9, label %10, !llvm.loop !335
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi2EE17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !333
  %7 = fcmp une double %6, 0.000000e+00
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !200
  %10 = getelementptr inbounds ptr, ptr %9, i64 16
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  br label %12

12:                                               ; preds = %8, %18
  %13 = phi i1 [ true, %8 ], [ false, %18 ]
  %14 = phi i64 [ 0, %8 ], [ 1, %18 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %14) #20
  %16 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #20
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %12
  br i1 %13, label %12, label %50, !llvm.loop !336

19:                                               ; preds = %12, %19
  %20 = phi i64 [ %29, %19 ], [ 0, %12 ]
  %21 = phi i32 [ %28, %19 ], [ 0, %12 ]
  %22 = load double, ptr %5, align 8, !tbaa !333
  %23 = fneg double %22
  %24 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %14) #20
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 noundef %20) #20
  %26 = load double, ptr %25, align 8, !tbaa !236
  %27 = fmul double %26, %23
  store double %27, ptr %25, align 8, !tbaa !236
  %28 = add i32 %21, 1
  %29 = zext i32 %28 to i64
  %30 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %14) #20
  %31 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %30) #20
  %32 = icmp ugt i64 %31, %29
  br i1 %32, label %19, label %18, !llvm.loop !337

33:                                               ; preds = %3, %39
  %34 = phi i1 [ false, %39 ], [ true, %3 ]
  %35 = phi i64 [ 1, %39 ], [ 0, %3 ]
  %36 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %35) #20
  %37 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %36) #20
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %40, %33
  br i1 %34, label %33, label %50, !llvm.loop !338

40:                                               ; preds = %33, %40
  %41 = phi i64 [ %46, %40 ], [ 0, %33 ]
  %42 = phi i32 [ %45, %40 ], [ 0, %33 ]
  %43 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %35) #20
  %44 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %43, i64 noundef %41) #20
  store double 0.000000e+00, ptr %44, align 8, !tbaa !236
  %45 = add i32 %42, 1
  %46 = zext i32 %45 to i64
  %47 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %35) #20
  %48 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %47) #20
  %49 = icmp ugt i64 %48, %46
  br i1 %49, label %40, label %39, !llvm.loop !339

50:                                               ; preds = %39, %18
  %51 = and i64 %4, 4294967295
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 1
  %55 = and i64 %4, 4294967295
  br label %57

56:                                               ; preds = %57, %50
  ret void

57:                                               ; preds = %53, %57
  %58 = phi i64 [ 0, %53 ], [ %94, %57 ]
  %59 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %58) #20
  %60 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %59, i32 noundef 0) #18
  %61 = fmul double %60, 0x3FF921FB54442D18
  %62 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %59, i32 noundef 1) #18
  %63 = fmul double %62, 0x3FF921FB54442D18
  %64 = fmul double %61, 2.000000e+00
  %65 = tail call double @cos(double noundef %64) #20
  %66 = fmul double %63, 2.000000e+00
  %67 = tail call double @cos(double noundef %66) #20
  %68 = tail call double @sin(double noundef %64) #20
  %69 = tail call double @sin(double noundef %66) #20
  %70 = load double, ptr %54, align 8, !tbaa !331
  %71 = fmul double %70, 0xC003BD3CC9BE45DE
  %72 = tail call double @llvm.fmuladd.f64(double %65, double 2.000000e+00, double 1.000000e+00)
  %73 = fmul double %72, %71
  %74 = fmul double %65, 0xBFE921FB54442D18
  %75 = fmul double %74, %69
  %76 = tail call double @llvm.fmuladd.f64(double %73, double %69, double %75)
  %77 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %78 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %77, i64 noundef %58) #20
  %79 = load double, ptr %78, align 8, !tbaa !236
  %80 = fadd double %79, %76
  store double %80, ptr %78, align 8, !tbaa !236
  %81 = load double, ptr %54, align 8, !tbaa !331
  %82 = fmul double %81, 0x4003BD3CC9BE45DE
  %83 = fmul double %68, %82
  %84 = tail call double @llvm.fmuladd.f64(double %67, double 2.000000e+00, double 1.000000e+00)
  %85 = fmul double %68, 0xBFE921FB54442D18
  %86 = fmul double %67, %85
  %87 = tail call double @llvm.fmuladd.f64(double %83, double %84, double %86)
  %88 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %89 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %88, i64 noundef %58) #20
  %90 = load double, ptr %89, align 8, !tbaa !236
  %91 = fadd double %90, %87
  store double %91, ptr %89, align 8, !tbaa !236
  %92 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %93 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %92, i64 noundef %58) #20
  store double 0.000000e+00, ptr %93, align 8, !tbaa !236
  %94 = add nuw nsw i64 %58, 1
  %95 = icmp eq i64 %94, %55
  br i1 %95, label %56, label %57, !llvm.loop !340
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi3EEC2Edd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions12StokesCosineILi3EEC5Edd) align 2 !prof !199 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #18
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12StokesCosineILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !200
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12StokesCosineILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !200
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !341
  %6 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 2
  store double %2, ptr %6, align 8, !tbaa !343
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi3EE14set_parametersEdd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %4 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 1
  store double %1, ptr %4, align 8, !tbaa !341
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 2
  store double %2, ptr %5, align 8, !tbaa !343
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12StokesCosineILi3EED5Ev) align 2 !prof !199 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12StokesCosineILi3EED1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12StokesCosineILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12StokesCosineILi3EED5Ev) align 2 {
  tail call void @_ZN6dealii9Functions12StokesCosineILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12StokesCosineILi3EED0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12StokesCosineILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi3EE13vector_valuesERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 1
  %9 = and i64 %4, 4294967295
  br label %11

10:                                               ; preds = %11, %3
  ret void

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %54, %11 ]
  %13 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #20
  %14 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 0) #18
  %15 = fmul double %14, 0x3FF921FB54442D18
  %16 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 1) #18
  %17 = fmul double %16, 0x3FF921FB54442D18
  %18 = tail call double @cos(double noundef %15) #20
  %19 = tail call double @cos(double noundef %17) #20
  %20 = tail call double @sin(double noundef %15) #20
  %21 = tail call double @sin(double noundef %17) #20
  %22 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 2) #18
  %23 = fmul double %22, 0x3FF921FB54442D18
  %24 = tail call double @cos(double noundef %23) #20
  %25 = tail call double @sin(double noundef %23) #20
  %26 = fmul double %18, %18
  %27 = fmul double %26, %19
  %28 = fmul double %27, %21
  %29 = fmul double %28, %24
  %30 = fmul double %29, %25
  %31 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %12) #20
  store double %30, ptr %32, align 8, !tbaa !236
  %33 = fmul double %18, %20
  %34 = fmul double %19, %33
  %35 = fmul double %19, %34
  %36 = fmul double %35, %24
  %37 = fmul double %36, %25
  %38 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %38, i64 noundef %12) #20
  store double %37, ptr %39, align 8, !tbaa !236
  %40 = fmul double %18, -2.000000e+00
  %41 = fmul double %40, %20
  %42 = fmul double %19, %41
  %43 = fmul double %21, %42
  %44 = fmul double %43, %24
  %45 = fmul double %24, %44
  %46 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %47 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %46, i64 noundef %12) #20
  store double %45, ptr %47, align 8, !tbaa !236
  %48 = fmul double %21, %34
  %49 = fmul double %48, %24
  %50 = load double, ptr %8, align 8, !tbaa !268
  %51 = tail call double @llvm.fmuladd.f64(double %49, double %25, double %50)
  %52 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 3) #20
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %52, i64 noundef %12) #20
  store double %51, ptr %53, align 8, !tbaa !236
  %54 = add nuw nsw i64 %12, 1
  %55 = icmp eq i64 %54, %9
  br i1 %55, label %10, label %11, !llvm.loop !344
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi3EE16vector_gradientsERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = and i64 %4, 4294967295
  br label %10

9:                                                ; preds = %10, %3
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %97, %10 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %11) #20
  %13 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 0) #18
  %14 = fmul double %13, 0x3FF921FB54442D18
  %15 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 1) #18
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = fmul double %14, 2.000000e+00
  %18 = tail call double @cos(double noundef %17) #20
  %19 = fmul double %16, 2.000000e+00
  %20 = tail call double @cos(double noundef %19) #20
  %21 = tail call double @sin(double noundef %17) #20
  %22 = tail call double @sin(double noundef %19) #20
  %23 = tail call double @llvm.fmuladd.f64(double %18, double 5.000000e-01, double 5.000000e-01)
  %24 = tail call double @llvm.fmuladd.f64(double %20, double 5.000000e-01, double 5.000000e-01)
  %25 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 2) #18
  %26 = fmul double %25, 0x3FF921FB54442D18
  %27 = fmul double %26, 2.000000e+00
  %28 = tail call double @cos(double noundef %27) #20
  %29 = tail call double @sin(double noundef %27) #20
  %30 = tail call double @llvm.fmuladd.f64(double %28, double 5.000000e-01, double 5.000000e-01)
  %31 = fmul double %21, 0xBFD921FB54442D18
  %32 = fmul double %31, %22
  %33 = fmul double %32, %29
  %34 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %35 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef %11) #20
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %35, i32 noundef 0) #18
  store double %33, ptr %36, align 8, !tbaa !236
  %37 = fmul double %23, 0x3FE921FB54442D18
  %38 = fmul double %20, %37
  %39 = fmul double %38, %29
  %40 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %41 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %40, i64 noundef %11) #20
  %42 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef 1) #18
  store double %39, ptr %42, align 8, !tbaa !236
  %43 = fmul double %37, %22
  %44 = fmul double %43, %28
  %45 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %46 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %45, i64 noundef %11) #20
  %47 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %46, i32 noundef 2) #18
  store double %44, ptr %47, align 8, !tbaa !236
  %48 = fmul double %18, 0x3FE921FB54442D18
  %49 = fmul double %48, %24
  %50 = fmul double %49, %29
  %51 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %52 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %51, i64 noundef %11) #20
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef 0) #18
  store double %50, ptr %53, align 8, !tbaa !236
  %54 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %55 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %54, i64 noundef %11) #20
  %56 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %55, i32 noundef 1) #18
  store double %33, ptr %56, align 8, !tbaa !236
  %57 = fmul double %21, 0x3FE921FB54442D18
  %58 = fmul double %24, %57
  %59 = fmul double %58, %28
  %60 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %61 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %60, i64 noundef %11) #20
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %61, i32 noundef 2) #18
  store double %59, ptr %62, align 8, !tbaa !236
  %63 = fmul double %18, 0xBFF921FB54442D18
  %64 = fmul double %63, %22
  %65 = fmul double %64, %30
  %66 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %67 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %66, i64 noundef %11) #20
  %68 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %67, i32 noundef 0) #18
  store double %65, ptr %68, align 8, !tbaa !236
  %69 = fmul double %21, 0xBFF921FB54442D18
  %70 = fmul double %20, %69
  %71 = fmul double %70, %30
  %72 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %73 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %72, i64 noundef %11) #20
  %74 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %73, i32 noundef 1) #18
  store double %71, ptr %74, align 8, !tbaa !236
  %75 = fmul double %57, %22
  %76 = fmul double %75, %29
  %77 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %78 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %77, i64 noundef %11) #20
  %79 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %78, i32 noundef 2) #18
  store double %76, ptr %79, align 8, !tbaa !236
  %80 = fmul double %18, 0x3FD921FB54442D18
  %81 = fmul double %80, %22
  %82 = fmul double %81, %29
  %83 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 3) #20
  %84 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %83, i64 noundef %11) #20
  %85 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %84, i32 noundef 0) #18
  store double %82, ptr %85, align 8, !tbaa !236
  %86 = fmul double %21, 0x3FD921FB54442D18
  %87 = fmul double %20, %86
  %88 = fmul double %87, %29
  %89 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 3) #20
  %90 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %89, i64 noundef %11) #20
  %91 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %90, i32 noundef 1) #18
  store double %88, ptr %91, align 8, !tbaa !236
  %92 = fmul double %86, %22
  %93 = fmul double %92, %28
  %94 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 3) #20
  %95 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %94, i64 noundef %11) #20
  %96 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %95, i32 noundef 2) #18
  store double %93, ptr %96, align 8, !tbaa !236
  %97 = add nuw nsw i64 %11, 1
  %98 = icmp eq i64 %97, %8
  br i1 %98, label %9, label %10, !llvm.loop !345
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi3EE17vector_laplaciansERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !343
  %7 = fcmp une double %6, 0.000000e+00
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !200
  %10 = getelementptr inbounds ptr, ptr %9, i64 16
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  br label %12

12:                                               ; preds = %8, %17
  %13 = phi i64 [ 0, %8 ], [ %18, %17 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #20
  %15 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #20
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %20, %12
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %52, label %12, !llvm.loop !346

20:                                               ; preds = %12, %20
  %21 = phi i64 [ %30, %20 ], [ 0, %12 ]
  %22 = phi i32 [ %29, %20 ], [ 0, %12 ]
  %23 = load double, ptr %5, align 8, !tbaa !343
  %24 = fneg double %23
  %25 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #20
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %21) #20
  %27 = load double, ptr %26, align 8, !tbaa !236
  %28 = fmul double %27, %24
  store double %28, ptr %26, align 8, !tbaa !236
  %29 = add i32 %22, 1
  %30 = zext i32 %29 to i64
  %31 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #20
  %32 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %31) #20
  %33 = icmp ugt i64 %32, %30
  br i1 %33, label %20, label %17, !llvm.loop !347

34:                                               ; preds = %3, %39
  %35 = phi i64 [ %40, %39 ], [ 0, %3 ]
  %36 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %35) #20
  %37 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %36) #20
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %42, %34
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %52, label %34, !llvm.loop !348

42:                                               ; preds = %34, %42
  %43 = phi i64 [ %48, %42 ], [ 0, %34 ]
  %44 = phi i32 [ %47, %42 ], [ 0, %34 ]
  %45 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %35) #20
  %46 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %45, i64 noundef %43) #20
  store double 0.000000e+00, ptr %46, align 8, !tbaa !236
  %47 = add i32 %44, 1
  %48 = zext i32 %47 to i64
  %49 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %35) #20
  %50 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %49) #20
  %51 = icmp ugt i64 %50, %48
  br i1 %51, label %42, label %39, !llvm.loop !349

52:                                               ; preds = %39, %17
  %53 = and i64 %4, 4294967295
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 1
  %57 = and i64 %4, 4294967295
  br label %59

58:                                               ; preds = %59, %52
  ret void

59:                                               ; preds = %55, %59
  %60 = phi i64 [ 0, %55 ], [ %120, %59 ]
  %61 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %60) #20
  %62 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %61, i32 noundef 0) #18
  %63 = fmul double %62, 0x3FF921FB54442D18
  %64 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %61, i32 noundef 1) #18
  %65 = fmul double %64, 0x3FF921FB54442D18
  %66 = fmul double %63, 2.000000e+00
  %67 = tail call double @cos(double noundef %66) #20
  %68 = fmul double %65, 2.000000e+00
  %69 = tail call double @cos(double noundef %68) #20
  %70 = tail call double @sin(double noundef %66) #20
  %71 = tail call double @sin(double noundef %68) #20
  %72 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %61, i32 noundef 2) #18
  %73 = fmul double %72, 0x400921FB54442D18
  %74 = fmul double %73, 2.000000e+00
  %75 = tail call double @cos(double noundef %74) #20
  %76 = tail call double @sin(double noundef %74) #20
  %77 = load double, ptr %56, align 8, !tbaa !341
  %78 = fmul double %77, -5.000000e-01
  %79 = fmul double %78, 0x4003BD3CC9BE45DE
  %80 = tail call double @llvm.fmuladd.f64(double %67, double 2.000000e+00, double 1.000000e+00)
  %81 = fmul double %80, %79
  %82 = fmul double %71, %81
  %83 = fmul double %67, 0xBFD921FB54442D18
  %84 = fmul double %83, %71
  %85 = fmul double %84, %76
  %86 = tail call double @llvm.fmuladd.f64(double %82, double %76, double %85)
  %87 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %88 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %87, i64 noundef %60) #20
  %89 = load double, ptr %88, align 8, !tbaa !236
  %90 = fadd double %89, %86
  store double %90, ptr %88, align 8, !tbaa !236
  %91 = load double, ptr %56, align 8, !tbaa !341
  %92 = fmul double %91, 5.000000e-01
  %93 = fmul double %92, 0x4003BD3CC9BE45DE
  %94 = fmul double %70, %93
  %95 = tail call double @llvm.fmuladd.f64(double %69, double 2.000000e+00, double 1.000000e+00)
  %96 = fmul double %95, %94
  %97 = fmul double %70, 0xBFD921FB54442D18
  %98 = fmul double %69, %97
  %99 = fmul double %98, %76
  %100 = tail call double @llvm.fmuladd.f64(double %96, double %76, double %99)
  %101 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %102 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %101, i64 noundef %60) #20
  %103 = load double, ptr %102, align 8, !tbaa !236
  %104 = fadd double %103, %100
  store double %104, ptr %102, align 8, !tbaa !236
  %105 = load double, ptr %56, align 8, !tbaa !341
  %106 = fmul double %105, -5.000000e-01
  %107 = fmul double %106, 0x4003BD3CC9BE45DE
  %108 = fmul double %70, %107
  %109 = fmul double %71, %108
  %110 = tail call double @llvm.fmuladd.f64(double %75, double 2.000000e+00, double 1.000000e+00)
  %111 = fmul double %71, %97
  %112 = fmul double %111, %75
  %113 = tail call double @llvm.fmuladd.f64(double %109, double %110, double %112)
  %114 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %115 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %114, i64 noundef %60) #20
  %116 = load double, ptr %115, align 8, !tbaa !236
  %117 = fadd double %116, %113
  store double %117, ptr %115, align 8, !tbaa !236
  %118 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 3) #20
  %119 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %118, i64 noundef %60) #20
  store double 0.000000e+00, ptr %119, align 8, !tbaa !236
  %120 = add nuw nsw i64 %60, 1
  %121 = icmp eq i64 %120, %57
  br i1 %121, label %58, label %59, !llvm.loop !350
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii9Functions18StokesLSingularityC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 align 2 !prof !199 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #18
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18StokesLSingularityE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !200
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18StokesLSingularityE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !200
  %3 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 1
  store <2 x double> <double 0x4012D97C7F3321D2, double 0xBFEAD7371E21E0D3>, ptr %3, align 8, !tbaa !236
  %4 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  store <2 x double> <double 0x3FF8B634942AF3DE, double 0x3FDD272DAF543088>, ptr %4, align 8, !tbaa !236
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions18StokesLSingularity13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  %11 = and i64 %4, 4294967295
  br label %13

12:                                               ; preds = %71, %3
  ret void

13:                                               ; preds = %7, %71
  %14 = phi i64 [ 0, %7 ], [ %72, %71 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %14) #20
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef 0) #18
  %17 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef 1) #18
  %18 = fcmp olt double %16, 0.000000e+00
  %19 = fcmp olt double %17, 0.000000e+00
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %13
  %22 = fneg double %16
  %23 = tail call double @atan2(double noundef %17, double noundef %22) #20
  %24 = fadd double %23, 0x400921FB54442D18
  %25 = fmul double %17, %17
  %26 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %25)
  %27 = tail call double @pow(double noundef %26, double noundef 0x3FD16C692855E7BC) #20
  %28 = tail call double @pow(double noundef %26, double noundef 0xBFCD272DAF543088) #20
  %29 = load double, ptr %8, align 8, !tbaa !351
  %30 = tail call double @sin(double noundef %24) #20
  %31 = fmul double %29, %30
  %32 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity3PsiEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %24) #18
  %33 = tail call double @cos(double noundef %24) #20
  %34 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_1Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %24) #18
  %35 = fmul double %33, %34
  %36 = tail call double @llvm.fmuladd.f64(double %31, double %32, double %35)
  %37 = fmul double %27, %36
  %38 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %38, i64 noundef %14) #20
  store double %37, ptr %39, align 8, !tbaa !236
  %40 = load double, ptr %8, align 8, !tbaa !351
  %41 = tail call double @cos(double noundef %24) #20
  %42 = fmul double %40, %41
  %43 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity3PsiEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %24) #18
  %44 = tail call double @sin(double noundef %24) #20
  %45 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_1Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %24) #18
  %46 = fneg double %44
  %47 = fmul double %45, %46
  %48 = tail call double @llvm.fmuladd.f64(double %42, double %43, double %47)
  %49 = fmul double %27, %48
  %50 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %50, i64 noundef %14) #20
  store double %49, ptr %51, align 8, !tbaa !236
  %52 = fneg double %28
  %53 = load double, ptr %8, align 8, !tbaa !351
  %54 = fmul double %53, %53
  %55 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_1Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %24) #18
  %56 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_3Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %24) #18
  %57 = tail call double @llvm.fmuladd.f64(double %54, double %55, double %56)
  %58 = fmul double %57, %52
  %59 = load double, ptr %9, align 8, !tbaa !353
  %60 = fdiv double %58, %59
  %61 = load double, ptr %10, align 8, !tbaa !203
  %62 = fadd double %61, %60
  %63 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %64 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %63, i64 noundef %14) #20
  store double %62, ptr %64, align 8, !tbaa !236
  br label %71

65:                                               ; preds = %13, %65
  %66 = phi i64 [ %69, %65 ], [ 0, %13 ]
  %67 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %66) #20
  %68 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %67, i64 noundef %14) #20
  store double 0.000000e+00, ptr %68, align 8, !tbaa !236
  %69 = add nuw nsw i64 %66, 1
  %70 = icmp eq i64 %69, 3
  br i1 %70, label %71, label %65, !llvm.loop !354

71:                                               ; preds = %65, %21
  %72 = add nuw nsw i64 %14, 1
  %73 = icmp eq i64 %72, %11
  br i1 %73, label %12, label %13, !llvm.loop !355
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii9Functions18StokesLSingularity3PsiEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 2
  %4 = load double, ptr %3, align 8, !tbaa !356
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !351
  %7 = fmul double %6, %1
  %8 = tail call double @sin(double noundef %7) #20
  %9 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 4
  %10 = load double, ptr %9, align 8, !tbaa !353
  %11 = fmul double %10, %1
  %12 = load <2 x double>, ptr %5, align 8
  %13 = tail call double @sin(double noundef %11) #20
  %14 = load double, ptr %9, align 8, !tbaa !353
  %15 = insertelement <2 x double> poison, double %8, i64 0
  %16 = insertelement <2 x double> %15, double %13, i64 1
  %17 = insertelement <2 x double> %12, double %14, i64 1
  %18 = fdiv <2 x double> %16, %17
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %20 = fsub <2 x double> %18, %19
  %21 = extractelement <2 x double> %20, i64 0
  %22 = load double, ptr %5, align 8, !tbaa !351
  %23 = fmul double %22, %1
  %24 = tail call double @cos(double noundef %23) #20
  %25 = fneg double %24
  %26 = tail call double @llvm.fmuladd.f64(double %4, double %21, double %25)
  %27 = load double, ptr %9, align 8, !tbaa !353
  %28 = fmul double %27, %1
  %29 = tail call double @cos(double noundef %28) #20
  %30 = fadd double %26, %29
  ret double %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_1Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 2
  %4 = load double, ptr %3, align 8, !tbaa !356
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !351
  %7 = fmul double %6, %1
  %8 = tail call double @cos(double noundef %7) #20
  %9 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 4
  %10 = load double, ptr %9, align 8, !tbaa !353
  %11 = fmul double %10, %1
  %12 = tail call double @cos(double noundef %11) #20
  %13 = fsub double %8, %12
  %14 = load double, ptr %5, align 8, !tbaa !351
  %15 = fmul double %14, %1
  %16 = tail call double @sin(double noundef %15) #20
  %17 = fmul double %14, %16
  %18 = tail call double @llvm.fmuladd.f64(double %4, double %13, double %17)
  %19 = load double, ptr %9, align 8, !tbaa !353
  %20 = fmul double %19, %1
  %21 = tail call double @sin(double noundef %20) #20
  %22 = fneg double %19
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %21, double %18)
  ret double %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_3Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 2
  %4 = load double, ptr %3, align 8, !tbaa !356
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 4
  %6 = load double, ptr %5, align 8, !tbaa !353
  %7 = fmul double %6, %6
  %8 = fmul double %6, %1
  %9 = tail call double @cos(double noundef %8) #20
  %10 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  %11 = load double, ptr %10, align 8, !tbaa !351
  %12 = fmul double %11, %1
  %13 = tail call double @cos(double noundef %12) #20
  %14 = fneg double %11
  %15 = fmul double %11, %14
  %16 = fmul double %15, %13
  %17 = tail call double @llvm.fmuladd.f64(double %7, double %9, double %16)
  %18 = load double, ptr %5, align 8, !tbaa !353
  %19 = fmul double %18, %18
  %20 = fmul double %18, %19
  %21 = fmul double %18, %1
  %22 = tail call double @sin(double noundef %21) #20
  %23 = fmul double %22, %20
  %24 = tail call double @llvm.fmuladd.f64(double %4, double %17, double %23)
  %25 = load double, ptr %10, align 8, !tbaa !351
  %26 = fmul double %25, %1
  %27 = tail call double @sin(double noundef %26) #20
  %28 = fneg double %25
  %29 = fmul double %25, %28
  %30 = fmul double %25, %29
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %27, double %24)
  ret double %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions18StokesLSingularity16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 4
  %10 = and i64 %4, 4294967295
  br label %12

11:                                               ; preds = %117, %3
  ret void

12:                                               ; preds = %7, %117
  %13 = phi i64 [ 0, %7 ], [ %118, %117 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #20
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef 0) #18
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef 1) #18
  %17 = fcmp olt double %15, 0.000000e+00
  %18 = fcmp olt double %16, 0.000000e+00
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %110

20:                                               ; preds = %12
  %21 = fneg double %15
  %22 = tail call double @atan2(double noundef %16, double noundef %21) #20
  %23 = fadd double %22, 0x400921FB54442D18
  %24 = fmul double %16, %16
  %25 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %24)
  %26 = tail call double @llvm.sqrt.f64(double %25)
  %27 = tail call double @pow(double noundef %25, double noundef 0x3FD16C692855E7BC) #20
  %28 = tail call double @pow(double noundef %25, double noundef 0xBFCD272DAF543088) #20
  %29 = tail call double @pow(double noundef %25, double noundef 0xBFE749CB6BD50C22) #20
  %30 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity3PsiEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %23) #18
  %31 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_1Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %23) #18
  %32 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_2Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %23) #18
  %33 = tail call double @cos(double noundef %23) #20
  %34 = tail call double @sin(double noundef %23) #20
  %35 = fmul double %28, 0x3FE16C692855E7BC
  %36 = load double, ptr %8, align 8, !tbaa !351
  %37 = fmul double %34, %36
  %38 = fmul double %31, %33
  %39 = tail call double @llvm.fmuladd.f64(double %37, double %30, double %38)
  %40 = fmul double %35, %39
  %41 = fmul double %33, %36
  %42 = fmul double %31, %37
  %43 = tail call double @llvm.fmuladd.f64(double %41, double %30, double %42)
  %44 = fneg double %34
  %45 = tail call double @llvm.fmuladd.f64(double %44, double %31, double %43)
  %46 = tail call double @llvm.fmuladd.f64(double %33, double %32, double %45)
  %47 = fmul double %27, %46
  %48 = fmul double %31, %44
  %49 = tail call double @llvm.fmuladd.f64(double %41, double %30, double %48)
  %50 = fmul double %35, %49
  %51 = fmul double %30, %44
  %52 = tail call double @llvm.fmuladd.f64(double %33, double %31, double %51)
  %53 = fneg double %38
  %54 = tail call double @llvm.fmuladd.f64(double %36, double %52, double %53)
  %55 = tail call double @llvm.fmuladd.f64(double %44, double %32, double %54)
  %56 = fmul double %27, %55
  %57 = fmul double %29, 0x3FDD272DAF543088
  %58 = fmul double %36, %36
  %59 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_3Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %23) #18
  %60 = tail call double @llvm.fmuladd.f64(double %58, double %31, double %59)
  %61 = fmul double %57, %60
  %62 = load double, ptr %9, align 8, !tbaa !353
  %63 = fdiv double %61, %62
  %64 = fneg double %28
  %65 = load double, ptr %8, align 8, !tbaa !351
  %66 = fmul double %65, %65
  %67 = tail call noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_4Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %23) #18
  %68 = tail call double @llvm.fmuladd.f64(double %66, double %32, double %67)
  %69 = fmul double %68, %64
  %70 = load double, ptr %9, align 8, !tbaa !353
  %71 = insertelement <2 x double> poison, double %44, i64 0
  %72 = insertelement <2 x double> %71, double %69, i64 1
  %73 = insertelement <2 x double> poison, double %26, i64 0
  %74 = insertelement <2 x double> %73, double %70, i64 1
  %75 = fdiv <2 x double> %72, %74
  %76 = extractelement <2 x double> %75, i64 0
  %77 = fmul double %76, %47
  %78 = tail call double @llvm.fmuladd.f64(double %33, double %40, double %77)
  %79 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %80 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %79, i64 noundef %13) #20
  %81 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %80, i32 noundef 0) #18
  store double %78, ptr %81, align 8, !tbaa !236
  %82 = fneg double %33
  %83 = fdiv double %82, %26
  %84 = fmul double %83, %47
  %85 = tail call double @llvm.fmuladd.f64(double %44, double %40, double %84)
  %86 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %87 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %86, i64 noundef %13) #20
  %88 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %87, i32 noundef 1) #18
  store double %85, ptr %88, align 8, !tbaa !236
  %89 = fmul double %76, %56
  %90 = tail call double @llvm.fmuladd.f64(double %33, double %50, double %89)
  %91 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %92 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %91, i64 noundef %13) #20
  %93 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %92, i32 noundef 0) #18
  store double %90, ptr %93, align 8, !tbaa !236
  %94 = fmul double %83, %56
  %95 = tail call double @llvm.fmuladd.f64(double %44, double %50, double %94)
  %96 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %97 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %96, i64 noundef %13) #20
  %98 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %97, i32 noundef 1) #18
  store double %95, ptr %98, align 8, !tbaa !236
  %99 = extractelement <2 x double> %75, i64 1
  %100 = fmul double %76, %99
  %101 = tail call double @llvm.fmuladd.f64(double %33, double %63, double %100)
  %102 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %103 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %102, i64 noundef %13) #20
  %104 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %103, i32 noundef 0) #18
  store double %101, ptr %104, align 8, !tbaa !236
  %105 = fmul double %83, %99
  %106 = tail call double @llvm.fmuladd.f64(double %44, double %63, double %105)
  %107 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %108 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %107, i64 noundef %13) #20
  %109 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %108, i32 noundef 1) #18
  store double %106, ptr %109, align 8, !tbaa !236
  br label %117

110:                                              ; preds = %12, %110
  %111 = phi i64 [ %115, %110 ], [ 0, %12 ]
  %112 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %111) #20
  %113 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %112, i64 noundef %13) #20
  %114 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSEd(ptr noundef nonnull align 8 dereferenceable(16) %113, double noundef 0.000000e+00) #18
  %115 = add nuw nsw i64 %111, 1
  %116 = icmp eq i64 %115, 3
  br i1 %116, label %117, label %110, !llvm.loop !357

117:                                              ; preds = %110, %20
  %118 = add nuw nsw i64 %13, 1
  %119 = icmp eq i64 %118, %10
  br i1 %119, label %11, label %12, !llvm.loop !358
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_2Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 2
  %4 = load double, ptr %3, align 8, !tbaa !356
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 4
  %6 = load double, ptr %5, align 8, !tbaa !353
  %7 = fmul double %6, %1
  %8 = tail call double @sin(double noundef %7) #20
  %9 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  %10 = load double, ptr %9, align 8, !tbaa !351
  %11 = fmul double %10, %1
  %12 = tail call double @sin(double noundef %11) #20
  %13 = fneg double %10
  %14 = fmul double %12, %13
  %15 = tail call double @llvm.fmuladd.f64(double %6, double %8, double %14)
  %16 = load double, ptr %9, align 8, !tbaa !351
  %17 = fmul double %16, %16
  %18 = fmul double %16, %1
  %19 = tail call double @cos(double noundef %18) #20
  %20 = fmul double %17, %19
  %21 = tail call double @llvm.fmuladd.f64(double %4, double %15, double %20)
  %22 = load double, ptr %5, align 8, !tbaa !353
  %23 = fmul double %22, %1
  %24 = tail call double @cos(double noundef %23) #20
  %25 = fneg double %22
  %26 = fmul double %22, %25
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %24, double %21)
  ret double %27
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii9Functions18StokesLSingularity5Psi_4Ed(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %3 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 2
  %4 = load double, ptr %3, align 8, !tbaa !356
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !351
  %7 = fmul double %6, %6
  %8 = fmul double %6, %7
  %9 = fmul double %6, %1
  %10 = tail call double @sin(double noundef %9) #20
  %11 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 4
  %12 = load double, ptr %11, align 8, !tbaa !353
  %13 = fmul double %12, %1
  %14 = tail call double @sin(double noundef %13) #20
  %15 = fneg double %12
  %16 = fmul double %12, %15
  %17 = fmul double %12, %16
  %18 = fmul double %14, %17
  %19 = tail call double @llvm.fmuladd.f64(double %8, double %10, double %18)
  %20 = load double, ptr %11, align 8, !tbaa !353
  %21 = fmul double %20, %20
  %22 = fmul double %20, %21
  %23 = fmul double %20, %22
  %24 = fmul double %20, %1
  %25 = tail call double @cos(double noundef %24) #20
  %26 = fmul double %25, %23
  %27 = tail call double @llvm.fmuladd.f64(double %4, double %19, double %26)
  %28 = load double, ptr %5, align 8, !tbaa !351
  %29 = fmul double %28, %1
  %30 = tail call double @cos(double noundef %29) #20
  %31 = fneg double %28
  %32 = fmul double %28, %31
  %33 = fmul double %28, %32
  %34 = fmul double %28, %33
  %35 = tail call double @llvm.fmuladd.f64(double %34, double %30, double %27)
  ret double %35
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions18StokesLSingularity17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = tail call noundef i64 @_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %14
  %8 = phi i64 [ %16, %14 ], [ 0, %3 ]
  %9 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #20
  %11 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #20
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %19

13:                                               ; preds = %14, %3
  ret void

14:                                               ; preds = %19, %7
  %15 = add i32 %9, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %7, label %13, !llvm.loop !359

19:                                               ; preds = %7, %19
  %20 = phi i64 [ %25, %19 ], [ 0, %7 ]
  %21 = phi i32 [ %24, %19 ], [ 0, %7 ]
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #20
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %20) #20
  store double 0.000000e+00, ptr %23, align 8, !tbaa !236
  %24 = add i32 %21, 1
  %25 = zext i32 %24 to i64
  %26 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #20
  %27 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %26) #20
  %28 = icmp ugt i64 %27, %25
  br i1 %28, label %19, label %14, !llvm.loop !360
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii9Functions9KovasznayC2Edb(ptr noundef nonnull align 8 dereferenceable(177) %0, double noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 !prof !199 {
  %4 = zext i1 %2 to i8
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #18
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions9KovasznayE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !200
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions9KovasznayE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !200
  %6 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 1
  store double %1, ptr %6, align 8, !tbaa !361
  %7 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 4
  store i8 %4, ptr %7, align 8, !tbaa !364
  %8 = fmul double %1, 5.000000e-01
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %8, double 0x4043BD3CC9BE45DE)
  %10 = tail call double @llvm.sqrt.f64(double %9)
  %11 = fadd double %8, %10
  %12 = fdiv double 0xC043BD3CC9BE45DE, %11
  %13 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 2
  store double %12, ptr %13, align 8, !tbaa !365
  %14 = fmul double %12, 8.000000e+00
  %15 = fdiv double 1.000000e+00, %14
  %16 = fmul double %12, 3.000000e+00
  %17 = tail call double @exp(double noundef %16) #20
  %18 = fneg double %12
  %19 = tail call double @exp(double noundef %18) #20
  %20 = fsub double %17, %19
  %21 = fmul double %15, %20
  %22 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 3
  store double %21, ptr %22, align 8, !tbaa !366
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii9Functions9KovasznayD2Ev(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #3 align 2 !prof !199 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N6dealii9Functions9KovasznayD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions9KovasznayD2Ev(ptr noundef nonnull align 8 dereferenceable(177) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii9Functions9KovasznayD0Ev(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN6dealii9Functions9KovasznayD2Ev(ptr noundef nonnull align 8 dereferenceable(177) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N6dealii9Functions9KovasznayD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions9KovasznayD0Ev(ptr noundef nonnull align 8 dereferenceable(177) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions9Kovasznay13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(177) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  %11 = and i64 %4, 4294967295
  br label %13

12:                                               ; preds = %13, %3
  ret void

13:                                               ; preds = %7, %13
  %14 = phi i64 [ 0, %7 ], [ %41, %13 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %14) #20
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef 0) #18
  %17 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef 1) #18
  %18 = fmul double %17, 0x401921FB54442D18
  %19 = load double, ptr %8, align 8, !tbaa !365
  %20 = fmul double %16, %19
  %21 = tail call double @exp(double noundef %20) #20
  %22 = tail call double @cos(double noundef %18) #20
  %23 = fneg double %21
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %22, double 1.000000e+00)
  %25 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %14) #20
  store double %24, ptr %26, align 8, !tbaa !236
  %27 = load double, ptr %8, align 8, !tbaa !365
  %28 = fmul double %27, 0x3FC45F306DC9C883
  %29 = fmul double %21, %28
  %30 = tail call double @sin(double noundef %18) #20
  %31 = fmul double %30, %29
  %32 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %32, i64 noundef %14) #20
  store double %31, ptr %33, align 8, !tbaa !236
  %34 = fmul double %21, -5.000000e-01
  %35 = load double, ptr %9, align 8, !tbaa !366
  %36 = tail call double @llvm.fmuladd.f64(double %34, double %21, double %35)
  %37 = load double, ptr %10, align 8, !tbaa !203
  %38 = fadd double %36, %37
  %39 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %39, i64 noundef %14) #20
  store double %38, ptr %40, align 8, !tbaa !236
  %41 = add nuw nsw i64 %14, 1
  %42 = icmp eq i64 %41, %11
  br i1 %42, label %12, label %13, !llvm.loop !367
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions9Kovasznay16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(177) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 2
  %9 = and i64 %4, 4294967295
  br label %11

10:                                               ; preds = %11, %3
  ret void

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %59, %11 ]
  %13 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #20
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0) #18
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #20
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef 1) #18
  %17 = load double, ptr %8, align 8, !tbaa !365
  %18 = fmul double %14, %17
  %19 = tail call double @exp(double noundef %18) #20
  %20 = fmul double %16, 0x401921FB54442D18
  %21 = tail call double @cos(double noundef %20) #20
  %22 = tail call double @sin(double noundef %20) #20
  %23 = load double, ptr %8, align 8, !tbaa !365
  %24 = fneg double %23
  %25 = fmul double %19, %24
  %26 = fmul double %21, %25
  %27 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %28 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %12) #20
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %28, i32 noundef 0) #18
  store double %26, ptr %29, align 8, !tbaa !236
  %30 = fmul double %19, 0x401921FB54442D18
  %31 = fmul double %30, %22
  %32 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %33 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %32, i64 noundef %12) #20
  %34 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %33, i32 noundef 1) #18
  store double %31, ptr %34, align 8, !tbaa !236
  %35 = load double, ptr %8, align 8, !tbaa !365
  %36 = fmul double %35, %35
  %37 = fdiv double %36, 0x401921FB54442D18
  %38 = fmul double %19, %37
  %39 = fmul double %22, %38
  %40 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %41 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %40, i64 noundef %12) #20
  %42 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %41, i32 noundef 0) #18
  store double %39, ptr %42, align 8, !tbaa !236
  %43 = load double, ptr %8, align 8, !tbaa !365
  %44 = fmul double %19, %43
  %45 = fmul double %21, %44
  %46 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %47 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %46, i64 noundef %12) #20
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef 1) #18
  store double %45, ptr %48, align 8, !tbaa !236
  %49 = load double, ptr %8, align 8, !tbaa !365
  %50 = fneg double %49
  %51 = fmul double %19, %50
  %52 = fmul double %19, %51
  %53 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %54 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %53, i64 noundef %12) #20
  %55 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %54, i32 noundef 0) #18
  store double %52, ptr %55, align 8, !tbaa !236
  %56 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %57 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %56, i64 noundef %12) #20
  %58 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %57, i32 noundef 1) #18
  store double 0.000000e+00, ptr %58, align 8, !tbaa !236
  %59 = add nuw nsw i64 %12, 1
  %60 = icmp eq i64 %59, %9
  br i1 %60, label %10, label %11, !llvm.loop !368
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions9Kovasznay17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(177) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #3 align 2 !prof !199 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 8, !tbaa !364, !range !369, !noundef !370
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = and i64 %4, 4294967295
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %92, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 2
  %13 = and i64 %4, 4294967295
  br label %17

14:                                               ; preds = %3
  %15 = tail call noundef i64 @_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %92, label %71

17:                                               ; preds = %11, %17
  %18 = phi i64 [ 0, %11 ], [ %69, %17 ]
  %19 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %18) #20
  %20 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 0) #18
  %21 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 1) #18
  %22 = fmul double %21, 0x401921FB54442D18
  %23 = load double, ptr %12, align 8, !tbaa !365
  %24 = fmul double %20, %23
  %25 = tail call double @exp(double noundef %24) #20
  %26 = tail call double @cos(double noundef %22) #20
  %27 = fneg double %25
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %26, double 1.000000e+00)
  %29 = load double, ptr %12, align 8, !tbaa !365
  %30 = fneg double %29
  %31 = fmul double %25, %30
  %32 = tail call double @cos(double noundef %22) #20
  %33 = fmul double %31, %32
  %34 = fmul double %25, 0x401921FB54442D18
  %35 = tail call double @sin(double noundef %22) #20
  %36 = fmul double %34, %35
  %37 = load <2 x double>, ptr %12, align 8
  %38 = tail call double @sin(double noundef %22) #20
  %39 = load double, ptr %12, align 8, !tbaa !365
  %40 = fmul double %39, %39
  %41 = fdiv double %40, 0x401921FB54442D18
  %42 = fmul double %25, %41
  %43 = tail call double @sin(double noundef %22) #20
  %44 = fmul double %43, %42
  %45 = load double, ptr %12, align 8, !tbaa !365
  %46 = fmul double %45, 0x401921FB54442D18
  %47 = tail call double @cos(double noundef %22) #20
  %48 = insertelement <2 x double> %37, double %46, i64 1
  %49 = fdiv <2 x double> %48, <double 0x401921FB54442D18, double 0x401921FB54442D18>
  %50 = insertelement <2 x double> poison, double %25, i64 0
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> zeroinitializer
  %52 = fmul <2 x double> %51, %49
  %53 = insertelement <2 x double> poison, double %38, i64 0
  %54 = insertelement <2 x double> %53, double %47, i64 1
  %55 = fmul <2 x double> %54, %52
  %56 = extractelement <2 x double> %55, i64 0
  %57 = fmul double %36, %56
  %58 = tail call double @llvm.fmuladd.f64(double %28, double %33, double %57)
  %59 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #20
  %60 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %59, i64 noundef %18) #20
  store double %58, ptr %60, align 8, !tbaa !236
  %61 = shufflevector <2 x double> %55, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %62 = fmul <2 x double> %55, %61
  %63 = extractelement <2 x double> %62, i64 0
  %64 = tail call double @llvm.fmuladd.f64(double %28, double %44, double %63)
  %65 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1) #20
  %66 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 noundef %18) #20
  store double %64, ptr %66, align 8, !tbaa !236
  %67 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 2) #20
  %68 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %67, i64 noundef %18) #20
  store double 0.000000e+00, ptr %68, align 8, !tbaa !236
  %69 = add nuw nsw i64 %18, 1
  %70 = icmp eq i64 %69, %13
  br i1 %70, label %92, label %17, !llvm.loop !371

71:                                               ; preds = %14, %77
  %72 = phi i64 [ %79, %77 ], [ 0, %14 ]
  %73 = phi i32 [ %78, %77 ], [ 0, %14 ]
  %74 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %72) #20
  %75 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %74) #20
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %82, %71
  %78 = add i32 %73, 1
  %79 = zext i32 %78 to i64
  %80 = tail call noundef i64 @_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %81 = icmp ugt i64 %80, %79
  br i1 %81, label %71, label %92, !llvm.loop !372

82:                                               ; preds = %71, %82
  %83 = phi i64 [ %88, %82 ], [ 0, %71 ]
  %84 = phi i32 [ %87, %82 ], [ 0, %71 ]
  %85 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %72) #20
  %86 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %85, i64 noundef %83) #20
  store double 0.000000e+00, ptr %86, align 8, !tbaa !236
  %87 = add i32 %84, 1
  %88 = zext i32 %87 to i64
  %89 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %72) #20
  %90 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %89) #20
  %91 = icmp ugt i64 %90, %88
  br i1 %91, label %82, label %77, !llvm.loop !373

92:                                               ; preds = %17, %77, %8, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZNK6dealii9Functions9Kovasznay6lambdaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(177) %0) local_unnamed_addr #10 align 2 !prof !199 {
  %2 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 2
  %3 = load double, ptr %2, align 8, !tbaa !365
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12FlowFunctionILi2EED5Ev) align 2 !prof !199 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !200
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !200
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18StokesLSingularityD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18StokesLSingularityD1Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18StokesLSingularityD0Ev(ptr noundef %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions18StokesLSingularityD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %2) #20
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.42") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !229 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !374 {
  %3 = alloca %"class.std::allocator.0", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSaISt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  %4 = call noundef i64 @_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  br i1 %5, label %6, label %7, !prof !375

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !374 {
  tail call void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  invoke void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !230
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %2 = load ptr, ptr %0, align 8, !tbaa !230
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !376
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !377 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 384307168202282325, ptr %2, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !378
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !379 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIdSaIdEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !380 {
  %3 = load i64, ptr %1, align 8, !tbaa !378
  %4 = load i64, ptr %0, align 8, !tbaa !378
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !381
  ret ptr %6
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt6vectorIdSaIdEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !377 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIdSaIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt6vectorIdSaIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !382 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !379 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !374 {
  tail call void @_ZNSaISt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !374 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !230
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !231
  %5 = getelementptr inbounds %"class.std::vector.13", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !376
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !383 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !229 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !384 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !385

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIdSaIdEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !386

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #24
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPSt6vectorIdSaIdEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !387 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPSt6vectorIdSaIdEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIdSaIdEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIdSaIdEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = phi i64 [ %7, %4 ], [ %1, %2 ]
  tail call void @_ZSt10_ConstructISt6vectorIdSaIdEEJEEvPT_DpOT0_(ptr noundef %5) #18
  %7 = add i64 %6, -1
  %8 = getelementptr inbounds %"class.std::vector.13", ptr %5, i64 1
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %10, label %4, !llvm.loop !388

10:                                               ; preds = %4, %2
  %11 = phi ptr [ %0, %2 ], [ %8, %4 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructISt6vectorIdSaIdEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #3 comdat {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !389 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !390 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !390 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !390 {
  tail call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !391 {
  tail call void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !392 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !393 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !389 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !394

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_(ptr noundef %5) #18
  %6 = getelementptr inbounds %"class.std::vector.13", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !395, !llvm.loop !396

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !397 {
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !398 {
  %2 = load ptr, ptr %0, align 8, !tbaa !243
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !315
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !399 {
  tail call void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !400 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !398 {
  %2 = load ptr, ptr %0, align 8, !tbaa !243
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !401
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !399 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !399 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !399 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !402

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !403 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !389 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !404

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIdSaIdEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !199 {
  %3 = alloca %"class.std::allocator.5", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEEC2ERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  %4 = call noundef i64 @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE11_S_max_sizeERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EEC2EmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE12_Vector_implC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  invoke void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !232
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEmS5_ET_S7_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 2>>, std::allocator<std::vector<dealii::Tensor<1, 2>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %2 = load ptr, ptr %0, align 8, !tbaa !232
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 2>>, std::allocator<std::vector<dealii::Tensor<1, 2>>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !405
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE11_S_max_sizeERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 384307168202282325, ptr %2, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEE8max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !378
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEEC2ERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEC2ERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEE8max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEC2ERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !199 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE12_Vector_implC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @_ZNSaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEEC2ERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !199 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !232
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 2>>, std::allocator<std::vector<dealii::Tensor<1, 2>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !233
  %5 = getelementptr inbounds %"class.std::vector.23", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 2>>, std::allocator<std::vector<dealii::Tensor<1, 2>>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !405
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !199 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !386

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #24
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEmS5_ET_S7_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEmET_S7_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEmET_S7_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS5_EEmEET_S9_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS5_EEmEET_S9_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = phi i64 [ %7, %4 ], [ %1, %2 ]
  tail call void @_ZSt10_ConstructISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEJEEvPT_DpOT0_(ptr noundef %5) #18
  %7 = add i64 %6, -1
  %8 = getelementptr inbounds %"class.std::vector.23", ptr %5, i64 1
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %10, label %4, !llvm.loop !406

10:                                               ; preds = %4, %2
  %11 = phi ptr [ %0, %2 ], [ %8, %4 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #3 comdat {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !199 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS5_EEEEvT_S9_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS5_EEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !199 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEvPT_(ptr noundef %5) #18
  %6 = getelementptr inbounds %"class.std::vector.23", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !407

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEvPT_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !199 {
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %2 = load ptr, ptr %0, align 8, !tbaa !262
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !408
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !199 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %2 = load ptr, ptr %0, align 8, !tbaa !262
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !409
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !199 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !199 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !199 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !389 {
  tail call void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EES5_EvT_S7_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !199 {
  tail call void @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EEEvT_S7_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !238 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !410 {
  %3 = alloca %"class.std::allocator.10", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  br i1 %5, label %6, label %7, !prof !411

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !412 {
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !240
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !249 {
  %2 = load ptr, ptr %0, align 8, !tbaa !240
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !413
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !414 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 576460752303423487, ptr %2, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !378
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !415 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !414 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !416 {
  ret i64 576460752303423487
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !415 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !412 {
  tail call void @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !412 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !240
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !250
  %5 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !413
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !417 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !418 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !419 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !420

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !386

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 4
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #24
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii5PointILi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !421 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii5PointILi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii5PointILi2EEEJEEvPT_DpOT0_(ptr noundef %5) #18
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Point", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !422

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #19
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #18
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %23) #21
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi2EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !423 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !prof !424 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !423 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !423 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !425

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !423 {
  tail call void @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !401
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 3
  %14 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !315
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #18
  store ptr %23, ptr %8, align 8, !tbaa !315
  br label %50

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !243
  %26 = load ptr, ptr %8, align 8, !tbaa !315
  %27 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #18
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #18
  %29 = getelementptr inbounds double, ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #18
          to label %40 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #19
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #18
          to label %36 unwind label %37

36:                                               ; preds = %32
  invoke void @__cxa_rethrow() #25
          to label %54 unwind label %37

37:                                               ; preds = %36, %32
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %39 unwind label %51

39:                                               ; preds = %37
  resume { ptr, i32 } %38

40:                                               ; preds = %24
  %41 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %42 = tail call noundef ptr @_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %41) #20
  %43 = load ptr, ptr %6, align 8, !tbaa !401
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %25 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 3
  tail call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %47) #18
  store ptr %28, ptr %0, align 8, !tbaa !243
  %48 = getelementptr inbounds double, ptr %29, i64 %1
  store ptr %48, ptr %8, align 8, !tbaa !315
  %49 = getelementptr inbounds double, ptr %28, i64 %27
  store ptr %49, ptr %6, align 8, !tbaa !401
  br label %50

50:                                               ; preds = %20, %40, %2
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #21
  unreachable

54:                                               ; preds = %36
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !315
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !315
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !426 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %3 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !427 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !378
  %6 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !428

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #23
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store i64 %13, ptr %5, align 8, !tbaa !378
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !378
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %17 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !428

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !428

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !429 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !430

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !431 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !378
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !432 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !431 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !433 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  tail call void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) #18
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = add i64 %1, -1
  %7 = tail call noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef nonnull %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ %0, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #3 comdat {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !236
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !434 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !435
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #18
  call void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %6 = call noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !434 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !436

5:                                                ; preds = %3
  %6 = getelementptr inbounds double, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #3 comdat !prof !437 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !438 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !439 {
  tail call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat !prof !440 {
  %4 = load double, ptr %2, align 8, !tbaa !236
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !441

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store double %4, ptr %7, align 8, !tbaa !236
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !442, !llvm.loop !443

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !444 {
  %3 = load i64, ptr %0, align 8, !tbaa !378
  %4 = load i64, ptr %1, align 8, !tbaa !378
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !445
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !386

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #24
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IddENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !446 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !408
  %4 = load ptr, ptr %0, align 8, !tbaa !262
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !409
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !408
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 4
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !408
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #18
  store ptr %23, ptr %8, align 8, !tbaa !408
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !262
  %26 = load ptr, ptr %8, align 8, !tbaa !408
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #18
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #18
  %29 = getelementptr inbounds %"class.dealii::Tensor", ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #18
          to label %36 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #19
  br label %49

36:                                               ; preds = %24
  %37 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %38 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %37) #18
          to label %52 unwind label %39

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #19
  %43 = icmp eq ptr %28, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.dealii::Tensor", ptr %29, i64 %1
  %46 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef nonnull %29, ptr noundef nonnull %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #18
          to label %49 unwind label %47

47:                                               ; preds = %50, %49, %44
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %62

49:                                               ; preds = %32, %44, %39
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #18
          to label %50 unwind label %47

50:                                               ; preds = %49
  invoke void @__cxa_rethrow() #25
          to label %65 unwind label %47

51:                                               ; preds = %47
  resume { ptr, i32 } %48

52:                                               ; preds = %36
  %53 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %53) #18
  %54 = load ptr, ptr %6, align 8, !tbaa !409
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 4
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #18
  store ptr %28, ptr %0, align 8, !tbaa !262
  %59 = getelementptr inbounds %"class.dealii::Tensor", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !408
  %60 = getelementptr inbounds %"class.dealii::Tensor", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !409
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #21
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !408
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !408
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi2EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !199 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !378
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #23
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store i64 %13, ptr %5, align 8, !tbaa !378
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !378
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !199 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi2EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !199 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_(ptr noundef %0) #18
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 576460752303423487, ptr %2, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !378
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !199 {
  ret i64 576460752303423487
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi2EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi2EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_(ptr noundef %5) #18
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !447

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #19
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #18
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %23) #21
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !448 {
  br i1 %1, label %3, label %4, !prof !449

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !236
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !386

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 4
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #24
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi2EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi2EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #3 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi2EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #18
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Tensor", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !450

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #19
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi2EEEEvT_S4_(ptr noundef %2, ptr noundef %6) #18
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #25
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %2, %3 ], [ %10, %8 ]
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
  tail call void @__clang_call_terminate(ptr %24) #21
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi2EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 !prof !451 {
  %3 = load double, ptr %1, align 8, !tbaa !236
  store double %3, ptr %0, align 8, !tbaa !236
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !236
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !236
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !275 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !452 {
  %3 = alloca %"class.std::allocator.33", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2ERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  %4 = call noundef i64 @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE11_S_max_sizeERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  br i1 %5, label %6, label %7, !prof !453

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EEC2EmRKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !454 {
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE12_Vector_implC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  invoke void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !277
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEmS5_ET_S7_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !278
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !276 {
  %2 = load ptr, ptr %0, align 8, !tbaa !277
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !455
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE11_S_max_sizeERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !456 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 384307168202282325, ptr %2, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE8max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !378
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2ERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !457 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEC2ERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE8max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !456 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !458 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEC2ERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !457 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE12_Vector_implC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !454 {
  tail call void @_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2ERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !454 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !277
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !278
  %5 = getelementptr inbounds %"class.std::vector.43", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !455
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !459 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !276 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !460 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !461

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !386

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #24
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEmS5_ET_S7_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEmET_S7_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !462 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEmET_S7_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS5_EEmEET_S9_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS5_EEmEET_S9_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = phi i64 [ %7, %4 ], [ %1, %2 ]
  tail call void @_ZSt10_ConstructISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEJEEvPT_DpOT0_(ptr noundef %5) #18
  %7 = add i64 %6, -1
  %8 = getelementptr inbounds %"class.std::vector.43", ptr %5, i64 1
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %10, label %4, !llvm.loop !463

10:                                               ; preds = %4, %2
  %11 = phi ptr [ %0, %2 ], [ %8, %4 ]
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #3 comdat {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !464 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS5_EEEEvT_S9_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !465 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !465 {
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !465 {
  tail call void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !466 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !467 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !466 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS5_EEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !468

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEvPT_(ptr noundef %5) #18
  %6 = getelementptr inbounds %"class.std::vector.43", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !469, !llvm.loop !470

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEvPT_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !471 {
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !467 {
  %2 = load ptr, ptr %0, align 8, !tbaa !296
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !472
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !473 {
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !474 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !467 {
  %2 = load ptr, ptr %0, align 8, !tbaa !296
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !475
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !473 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !473 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !473 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !476

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !478

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EES5_EvT_S7_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !464 {
  tail call void @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEvT_S7_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !281 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !479 {
  %3 = alloca %"class.std::allocator.38", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  %4 = call noundef i64 @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  br i1 %5, label %6, label %7, !prof !480

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #23
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !481 {
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !283
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %2 = load ptr, ptr %0, align 8, !tbaa !283
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !482
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !483 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 384307168202282325, ptr %2, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !378
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !484 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !483 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !485 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !484 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !481 {
  tail call void @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !481 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !283
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !286
  %5 = getelementptr inbounds %"class.dealii::Point.41", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !482
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !486 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !487 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !488 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !489

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !386

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #24
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii5PointILi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii5PointILi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !490 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii5PointILi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii5PointILi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii5PointILi3EEEJEEvPT_DpOT0_(ptr noundef %5) #18
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Point.41", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !491

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #19
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #18
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %23) #21
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi3EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !492 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !493 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !492 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !492 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !494

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !492 {
  tail call void @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !495 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !472
  %4 = load ptr, ptr %0, align 8, !tbaa !296
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !475
  %8 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !472
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 24
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !472
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #18
  store ptr %23, ptr %8, align 8, !tbaa !472
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !296
  %26 = load ptr, ptr %8, align 8, !tbaa !472
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #18
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #18
  %29 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #18
          to label %36 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #19
  br label %49

36:                                               ; preds = %24
  %37 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %38 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %37) #18
          to label %52 unwind label %39

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #19
  %43 = icmp eq ptr %28, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %29, i64 %1
  %46 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef nonnull %29, ptr noundef nonnull %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #18
          to label %49 unwind label %47

47:                                               ; preds = %50, %49, %44
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %62

49:                                               ; preds = %32, %44, %39
  invoke void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #18
          to label %50 unwind label %47

50:                                               ; preds = %49
  invoke void @__cxa_rethrow() #25
          to label %65 unwind label %47

51:                                               ; preds = %47
  resume { ptr, i32 } %48

52:                                               ; preds = %36
  %53 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %53) #18
  %54 = load ptr, ptr %6, align 8, !tbaa !475
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 24
  tail call void @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #18
  store ptr %28, ptr %0, align 8, !tbaa !296
  %59 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !472
  %60 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !475
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #21
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE15_M_erase_at_endEPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !472
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !472
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !496 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %3 = tail call noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6dealii6TensorILi1ELi3EEEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !497 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !378
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %7 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !498

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #23
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store i64 %13, ptr %5, align 8, !tbaa !378
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !378
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !498

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !498

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !499 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !500

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !496 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_(ptr noundef %0) #18
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !501 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 384307168202282325, ptr %2, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !378
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !378
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !502 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !501 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !503 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6dealii6TensorILi1ELi3EEEmET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6dealii6TensorILi1ELi3EEEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_(ptr noundef %5) #18
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !504

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #19
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %0, ptr noundef %5) #18
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %23) #21
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !505 {
  br i1 %1, label %3, label %4, !prof !506

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !236
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !386

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #24
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_(ptr noundef %0) local_unnamed_addr #3 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN6dealii6TensorILi1ELi3EEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJRKS2_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #18
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !llvm.loop !507

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #19
  invoke void @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_(ptr noundef %2, ptr noundef %6) #18
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #25
          to label %25 unwind label %19

17:                                               ; preds = %8, %3
  %18 = phi ptr [ %2, %3 ], [ %10, %8 ]
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
  tail call void @__clang_call_terminate(ptr %24) #21
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii6TensorILi1ELi3EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 !prof !508 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !236
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  store double %7, ptr %8, align 8, !tbaa !236
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !509, !llvm.loop !510
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #17

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind optsize }
attributes #23 = { noreturn optsize }
attributes #24 = { builtin optsize allocsize(0) }
attributes #25 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!198}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!35 = !{ptr @_ZNSaISt6vectorIdSaIdEEEC2Ev, ptr @_ZNSt15__new_allocatorISt6vectorIdSaIdEEEC2Ev, i64 183408}
!36 = !{ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE19_M_get_Tp_allocatorEv, i64 183408}
!37 = !{ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E, i64 183408}
!38 = !{ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev, i64 183408}
!39 = !{ptr @_ZNSaIN6dealii5PointILi2EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2Ev, i64 291927}
!40 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 683366}
!41 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E, i64 683366}
!42 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, i64 683365}
!43 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 1}
!44 = !{ptr @_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2Ev, ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEC2Ev, i64 2666078}
!45 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev, ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE19_M_get_Tp_allocatorEv, i64 2666239}
!46 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev, ptr @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EES5_EvT_S7_RSaIT0_E, i64 2666239}
!47 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev, ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EED2Ev, i64 2666236}
!48 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev, ptr @__clang_call_terminate, i64 3}
!49 = !{ptr @_ZNSaIN6dealii5PointILi3EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2Ev, i64 3972046}
!50 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 4516033}
!51 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E, i64 4516033}
!52 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, i64 4516029}
!53 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 4}
!54 = !{ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_, ptr @_ZNSaISt6vectorIdSaIdEEEC2ERKS2_, i64 8}
!55 = !{ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_, ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_max_sizeERKS2_, i64 8}
!56 = !{ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_, ptr @_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev, i64 8}
!57 = !{ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!58 = !{ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implC2ERKS3_, i64 8}
!59 = !{ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_M_create_storageEm, i64 8}
!60 = !{ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m, i64 183408}
!61 = !{ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorISt6vectorIdSaIdEEED2Ev, i64 183408}
!62 = !{ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_max_sizeERKS2_, ptr @_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE8max_sizeERKS3_, i64 8886}
!63 = !{ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_max_sizeERKS2_, ptr @_ZSt3minImERKT_S2_S2_, i64 8886}
!64 = !{ptr @_ZNSaISt6vectorIdSaIdEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorISt6vectorIdSaIdEEEC2ERKS3_, i64 16}
!65 = !{ptr @_ZNKSt15__new_allocatorISt6vectorIdSaIdEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorISt6vectorIdSaIdEEE11_M_max_sizeEv, i64 8886}
!66 = !{ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaISt6vectorIdSaIdEEEC2ERKS2_, i64 8}
!67 = !{ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataC2Ev, i64 8}
!68 = !{ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm, i64 8}
!69 = !{ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE8allocateERS3_m, i64 4446}
!70 = !{ptr @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_, i64 187847}
!71 = !{ptr @_ZNSt6vectorIdSaIdEEC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEEC2Ev, i64 7884403}
!72 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, i64 7884403}
!73 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, ptr @_ZNSaIdEC2Ev, i64 7884403}
!74 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 7884403}
!75 = !{ptr @_ZNSaIdEC2Ev, ptr @_ZNSt15__new_allocatorIdEC2Ev, i64 9261343}
!76 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_, ptr @_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_, i64 20929}
!77 = !{ptr @_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_, ptr @_ZNSt6vectorIdSaIdEED2Ev, i64 20928}
!78 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 10618017}
!79 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, i64 10618017}
!80 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 10618007}
!81 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!82 = !{ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPdEvT_S1_, i64 16422537}
!83 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, i64 10618017}
!84 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 10618007}
!85 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!86 = !{ptr @_ZSt8_DestroyIPdEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, i64 16422537}
!87 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, ptr @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, i64 8354765}
!88 = !{ptr @_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaISt6vectorIdSaIdEEEE10deallocateERS3_PS2_m, i64 4448}
!89 = !{ptr @_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_, i64 187847}
!90 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_, i64 112784}
!91 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_, i64 112784}
!92 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev, i64 112784}
!93 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!94 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_, i64 504243}
!95 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm, i64 504243}
!96 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m, i64 683366}
!97 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev, i64 683365}
!98 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 1}
!99 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8max_sizeERKS3_, i64 291944}
!100 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 291944}
!101 = !{ptr @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_, i64 617027}
!102 = !{ptr @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv, i64 291944}
!103 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_, i64 504243}
!104 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 504243}
!105 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm, i64 504243}
!106 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m, i64 324896}
!107 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_, i64 772946}
!108 = !{ptr @_ZN6dealii5PointILi2EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi2EEC2Eb, i64 202370}
!109 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m, i64 324885}
!110 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_, i64 772946}
!111 = !{ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 11605705}
!112 = !{ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, i64 11605705}
!113 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, i64 11602394}
!114 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 23204785}
!115 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!116 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 5801196}
!117 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, i64 8354784}
!118 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, i64 12982610}
!119 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 12982610}
!120 = !{ptr @_ZNKSt15__new_allocatorIdE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv, i64 12982610}
!121 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 7178069}
!122 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 7178069}
!123 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, i64 7178069}
!124 = !{ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 6994789}
!125 = !{ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 25807262}
!126 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_, ptr @_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2ERKS5_, i64 600477}
!127 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_, ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE11_S_max_sizeERKS5_, i64 600477}
!128 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_, ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEED2Ev, i64 600477}
!129 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!130 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EEC2EmRKS6_, ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE12_Vector_implC2ERKS6_, i64 600638}
!131 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EEC2EmRKS6_, ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_M_create_storageEm, i64 600638}
!132 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EEC2EmRKS6_, ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEED2Ev, i64 1}
!133 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m, i64 2666239}
!134 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EED2Ev, ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEED2Ev, i64 2666236}
!135 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EED2Ev, ptr @__clang_call_terminate, i64 3}
!136 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE11_S_max_sizeERKS5_, ptr @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE8max_sizeERKS6_, i64 1505251}
!137 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE11_S_max_sizeERKS5_, ptr @_ZSt3minImERKT_S2_S2_, i64 1505251}
!138 = !{ptr @_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2ERKS5_, ptr @_ZNSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEC2ERKS6_, i64 1201115}
!139 = !{ptr @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEE11_M_max_sizeEv, i64 1505251}
!140 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE12_Vector_implC2ERKS6_, ptr @_ZNSaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEEC2ERKS5_, i64 600638}
!141 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE12_Vector_implC2ERKS6_, ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataC2Ev, i64 600638}
!142 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE11_M_allocateEm, i64 600638}
!143 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE8allocateERS6_m, i64 1052940}
!144 = !{ptr @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS5_EEEEvT_S9_, i64 3118626}
!145 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev, i64 1078808}
!146 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EEC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev, i64 1078808}
!147 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev, ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev, i64 1078808}
!148 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 1078808}
!149 = !{ptr @_ZNSaIN6dealii6TensorILi1ELi3EEEEC2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEEC2Ev, i64 2314867}
!150 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS5_EEEEvT_S9_, ptr @_ZSt8_DestroyISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEvPT_, i64 8092912}
!151 = !{ptr @_ZSt8_DestroyISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEvPT_, ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, i64 8092914}
!152 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 10407865}
!153 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E, i64 10407865}
!154 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, i64 10407855}
!155 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 10}
!156 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_, i64 10953335}
!157 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m, i64 10407865}
!158 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEED2Ev, i64 10407855}
!159 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 10}
!160 = !{ptr @_ZSt8_DestroyIPN6dealii6TensorILi1ELi3EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii6TensorILi1ELi3EEEEEvT_S6_, i64 10953335}
!161 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE10deallocateERS3_PS2_m, i64 9690491}
!162 = !{ptr @_ZNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE13_M_deallocateEPS5_m, ptr @_ZNSt16allocator_traitsISaISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEE10deallocateERS6_PS5_m, i64 1052941}
!163 = !{ptr @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EES5_EvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIPSt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EEEvT_S7_, i64 3118626}
!164 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_, i64 806586}
!165 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_, i64 806586}
!166 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev, i64 806586}
!167 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE17_S_check_init_lenEmRKS3_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!168 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_, i64 1350593}
!169 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm, i64 1350593}
!170 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev, i64 1}
!171 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m, i64 4516033}
!172 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev, i64 4516029}
!173 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 4}
!174 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8max_sizeERKS3_, i64 3138089}
!175 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 3138089}
!176 = !{ptr @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_, i64 2157179}
!177 = !{ptr @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv, i64 3138089}
!178 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_, i64 1350593}
!179 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 1350593}
!180 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm, i64 1350593}
!181 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m, i64 2338637}
!182 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_, i64 5683492}
!183 = !{ptr @_ZN6dealii5PointILi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 5584274}
!184 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m, i64 2338625}
!185 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_, i64 5683492}
!186 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 1090940}
!187 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv, ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, i64 1090940}
!188 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE8max_sizeEv, i64 1090940}
!189 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv, i64 2181877}
!190 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!191 = !{ptr @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 545469}
!192 = !{ptr @_ZNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8allocateERS3_m, i64 9690491}
!193 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_, ptr @_ZSt32__make_move_if_noexcept_iteratorIN6dealii6TensorILi1ELi3EEEPKS2_ET0_PT_, i64 2181880}
!194 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPN6dealii6TensorILi1ELi3EEES3_SaIS2_EET0_T_S6_S5_RT1_, ptr @_ZSt22__uninitialized_copy_aIPKN6dealii6TensorILi1ELi3EEEPS2_S2_ET0_T_S7_S6_RSaIT1_E, i64 1090940}
!195 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZNSt16allocator_traitsISaIN6dealii6TensorILi1ELi3EEEEE8max_sizeERKS3_, i64 2326999}
!196 = !{ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE11_S_max_sizeERKS3_, ptr @_ZSt3minImERKT_S2_S2_, i64 2326999}
!197 = !{ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN6dealii6TensorILi1ELi3EEEE11_M_max_sizeEv, i64 2326999}
!198 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!199 = !{!"function_entry_count", i64 0}
!200 = !{!201, !201, i64 0}
!201 = !{!"vtable pointer", !202, i64 0}
!202 = !{!"Simple C++ TBAA"}
!203 = !{!204, !207, i64 96}
!204 = !{!"_ZTSN6dealii9Functions12FlowFunctionILi2EEE", !205, i64 0, !207, i64 96, !221, i64 104, !225, i64 128}
!205 = !{!"_ZTSN6dealii8FunctionILi2EEE", !206, i64 0, !209, i64 16, !210, i64 88}
!206 = !{!"_ZTSN6dealii12FunctionTimeE", !207, i64 8}
!207 = !{!"double", !208, i64 0}
!208 = !{!"omnipotent char", !202, i64 0}
!209 = !{!"_ZTSN6dealii11SubscriptorE", !210, i64 8, !211, i64 16, !219, i64 64}
!210 = !{!"int", !208, i64 0}
!211 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !212, i64 0}
!212 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !213, i64 0}
!213 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !214, i64 0, !216, i64 8}
!214 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !215, i64 0}
!215 = !{!"_ZTSSt4lessIPKcE"}
!216 = !{!"_ZTSSt15_Rb_tree_header", !217, i64 0, !220, i64 32}
!217 = !{!"_ZTSSt18_Rb_tree_node_base", !218, i64 0, !219, i64 8, !219, i64 16, !219, i64 24}
!218 = !{!"_ZTSSt14_Rb_tree_color", !208, i64 0}
!219 = !{!"any pointer", !208, i64 0}
!220 = !{!"long", !208, i64 0}
!221 = !{!"_ZTSSt6vectorIS_IdSaIdEESaIS1_EE", !222, i64 0}
!222 = !{!"_ZTSSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE", !223, i64 0}
!223 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implE", !224, i64 0}
!224 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!225 = !{!"_ZTSSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE", !226, i64 0}
!226 = !{!"_ZTSSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE", !227, i64 0}
!227 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE12_Vector_implE", !228, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!229 = !{!"function_entry_count", i64 183408}
!230 = !{!224, !219, i64 0}
!231 = !{!224, !219, i64 8}
!232 = !{!228, !219, i64 0}
!233 = !{!228, !219, i64 8}
!234 = distinct !{!234, !235}
!235 = !{!"llvm.loop.mustprogress"}
!236 = !{!207, !207, i64 0}
!237 = distinct !{!237, !235}
!238 = !{!"function_entry_count", i64 291927}
!239 = !{!"function_entry_count", i64 3339370}
!240 = !{!241, !219, i64 0}
!241 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!242 = !{!"function_entry_count", i64 33198151}
!243 = !{!244, !219, i64 0}
!244 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!245 = !{!"function_entry_count", i64 580699156}
!246 = !{!"function_entry_count", i64 138244457713}
!247 = !{!248, !219, i64 80}
!248 = !{!"_ZTSN6dealii6VectorIdEE", !209, i64 0, !210, i64 72, !210, i64 76, !219, i64 80}
!249 = !{!"function_entry_count", i64 683366}
!250 = !{!241, !219, i64 8}
!251 = distinct !{!251, !235}
!252 = distinct !{!252, !235}
!253 = distinct !{!253, !235}
!254 = distinct !{!254, !235}
!255 = !{!"function_entry_count", i64 955498}
!256 = !{!"function_entry_count", i64 892135194}
!257 = !{!258, !219, i64 0}
!258 = !{!"_ZTSNSt12_Vector_baseIN6dealii6VectorIdEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!259 = distinct !{!259, !235}
!260 = distinct !{!260, !235}
!261 = distinct !{!261, !235}
!262 = !{!263, !219, i64 0}
!263 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!264 = !{!"function_entry_count", i64 2866076}
!265 = distinct !{!265, !235}
!266 = distinct !{!266, !235}
!267 = distinct !{!267, !235}
!268 = !{!269, !207, i64 96}
!269 = !{!"_ZTSN6dealii9Functions12FlowFunctionILi3EEE", !270, i64 0, !207, i64 96, !221, i64 104, !271, i64 128}
!270 = !{!"_ZTSN6dealii8FunctionILi3EEE", !206, i64 0, !209, i64 16, !210, i64 88}
!271 = !{!"_ZTSSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE", !272, i64 0}
!272 = !{!"_ZTSSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE", !273, i64 0}
!273 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE12_Vector_implE", !274, i64 0}
!274 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!275 = !{!"function_entry_count", i64 2666078}
!276 = !{!"function_entry_count", i64 2666239}
!277 = !{!274, !219, i64 0}
!278 = !{!274, !219, i64 8}
!279 = distinct !{!279, !235}
!280 = distinct !{!280, !235}
!281 = !{!"function_entry_count", i64 3972046}
!282 = !{!"function_entry_count", i64 140354214}
!283 = !{!284, !219, i64 0}
!284 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!285 = !{!"function_entry_count", i64 4516033}
!286 = !{!284, !219, i64 8}
!287 = distinct !{!287, !235}
!288 = distinct !{!288, !235}
!289 = distinct !{!289, !235}
!290 = distinct !{!290, !235}
!291 = !{!"function_entry_count", i64 23475661}
!292 = distinct !{!292, !235}
!293 = distinct !{!293, !235}
!294 = distinct !{!294, !235}
!295 = !{!"function_entry_count", i64 371948270}
!296 = !{!297, !219, i64 0}
!297 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!298 = !{!"function_entry_count", i64 409051700}
!299 = !{!"function_entry_count", i64 98457587}
!300 = distinct !{!300, !235}
!301 = distinct !{!301, !235}
!302 = distinct !{!302, !235}
!303 = !{!304, !207, i64 152}
!304 = !{!"_ZTSN6dealii9Functions15PoisseuilleFlowILi2EEE", !204, i64 0, !207, i64 152, !207, i64 160}
!305 = !{!304, !207, i64 160}
!306 = distinct !{!306, !235}
!307 = !{!"function_entry_count", i64 5322946}
!308 = !{!"function_entry_count", i64 2169946}
!309 = distinct !{!309, !235}
!310 = !{!"function_entry_count", i64 287056}
!311 = distinct !{!311, !235}
!312 = distinct !{!312, !235}
!313 = !{!"function_entry_count", i64 26634}
!314 = !{!"function_entry_count", i64 103595384}
!315 = !{!244, !219, i64 8}
!316 = !{!317, !207, i64 152}
!317 = !{!"_ZTSN6dealii9Functions15PoisseuilleFlowILi3EEE", !269, i64 0, !207, i64 152, !207, i64 160}
!318 = !{!317, !207, i64 160}
!319 = distinct !{!319, !235}
!320 = distinct !{!320, !235}
!321 = distinct !{!321, !235}
!322 = !{!"function_entry_count", i64 59145566}
!323 = !{!"function_entry_count", i64 10444102}
!324 = distinct !{!324, !235}
!325 = distinct !{!325, !235}
!326 = distinct !{!326, !235}
!327 = distinct !{!327, !235}
!328 = !{!"function_entry_count", i64 2121454836}
!329 = distinct !{!329, !235}
!330 = distinct !{!330, !235}
!331 = !{!332, !207, i64 152}
!332 = !{!"_ZTSN6dealii9Functions12StokesCosineILi2EEE", !204, i64 0, !207, i64 152, !207, i64 160}
!333 = !{!332, !207, i64 160}
!334 = distinct !{!334, !235}
!335 = distinct !{!335, !235}
!336 = distinct !{!336, !235}
!337 = distinct !{!337, !235}
!338 = distinct !{!338, !235}
!339 = distinct !{!339, !235}
!340 = distinct !{!340, !235}
!341 = !{!342, !207, i64 152}
!342 = !{!"_ZTSN6dealii9Functions12StokesCosineILi3EEE", !269, i64 0, !207, i64 152, !207, i64 160}
!343 = !{!342, !207, i64 160}
!344 = distinct !{!344, !235}
!345 = distinct !{!345, !235}
!346 = distinct !{!346, !235}
!347 = distinct !{!347, !235}
!348 = distinct !{!348, !235}
!349 = distinct !{!349, !235}
!350 = distinct !{!350, !235}
!351 = !{!352, !207, i64 168}
!352 = !{!"_ZTSN6dealii9Functions18StokesLSingularityE", !204, i64 0, !207, i64 152, !207, i64 160, !207, i64 168, !207, i64 176}
!353 = !{!352, !207, i64 176}
!354 = distinct !{!354, !235}
!355 = distinct !{!355, !235}
!356 = !{!352, !207, i64 160}
!357 = distinct !{!357, !235}
!358 = distinct !{!358, !235}
!359 = distinct !{!359, !235}
!360 = distinct !{!360, !235}
!361 = !{!362, !207, i64 152}
!362 = !{!"_ZTSN6dealii9Functions9KovasznayE", !204, i64 0, !207, i64 152, !207, i64 160, !207, i64 168, !363, i64 176}
!363 = !{!"bool", !208, i64 0}
!364 = !{!362, !363, i64 176}
!365 = !{!362, !207, i64 160}
!366 = !{!362, !207, i64 168}
!367 = distinct !{!367, !235}
!368 = distinct !{!368, !235}
!369 = !{i8 0, i8 2}
!370 = !{}
!371 = distinct !{!371, !235}
!372 = distinct !{!372, !235}
!373 = distinct !{!373, !235}
!374 = !{!"function_entry_count", i64 8}
!375 = !{!"branch_weights", i32 1, i32 9}
!376 = !{!224, !219, i64 16}
!377 = !{!"function_entry_count", i64 8886}
!378 = !{!220, !220, i64 0}
!379 = !{!"function_entry_count", i64 16}
!380 = !{!"function_entry_count", i64 34204152}
!381 = !{!"branch_weights", i32 1, i32 34204153}
!382 = !{!"function_entry_count", i64 13333}
!383 = !{!"function_entry_count", i64 183424}
!384 = !{!"function_entry_count", i64 4447}
!385 = !{!"branch_weights", i32 1, i32 4448}
!386 = !{!"branch_weights", i32 1, i32 2000}
!387 = !{!"function_entry_count", i64 201172}
!388 = distinct !{!388, !235}
!389 = !{!"function_entry_count", i64 187847}
!390 = !{!"function_entry_count", i64 7884403}
!391 = !{!"function_entry_count", i64 9261343}
!392 = !{!"function_entry_count", i64 10618037}
!393 = !{!"function_entry_count", i64 9278493}
!394 = !{!"branch_weights", i32 166919, i32 20929}
!395 = !{!"branch_weights", i32 20929, i32 0}
!396 = distinct !{!396, !235}
!397 = !{!"function_entry_count", i64 20928}
!398 = !{!"function_entry_count", i64 10618017}
!399 = !{!"function_entry_count", i64 16422537}
!400 = !{!"function_entry_count", i64 42627443}
!401 = !{!244, !219, i64 16}
!402 = !{!"branch_weights", i32 8067773, i32 8354766}
!403 = !{!"function_entry_count", i64 13389012}
!404 = !{!"branch_weights", i32 183401, i32 4448}
!405 = !{!228, !219, i64 16}
!406 = distinct !{!406, !235}
!407 = distinct !{!407, !235}
!408 = !{!263, !219, i64 8}
!409 = !{!263, !219, i64 16}
!410 = !{!"function_entry_count", i64 112784}
!411 = !{!"branch_weights", i32 1, i32 112785}
!412 = !{!"function_entry_count", i64 504243}
!413 = !{!241, !219, i64 16}
!414 = !{!"function_entry_count", i64 291944}
!415 = !{!"function_entry_count", i64 617027}
!416 = !{!"function_entry_count", i64 616840}
!417 = !{!"function_entry_count", i64 908934}
!418 = !{!"function_entry_count", i64 683386}
!419 = !{!"function_entry_count", i64 593823}
!420 = !{!"branch_weights", i32 268928, i32 324897}
!421 = !{!"function_entry_count", i64 1545917}
!422 = distinct !{!422, !235}
!423 = !{!"function_entry_count", i64 772946}
!424 = !{!"function_entry_count", i64 202370}
!425 = !{!"branch_weights", i32 448062, i32 324886}
!426 = !{!"function_entry_count", i64 11605705}
!427 = !{!"function_entry_count", i64 5801197}
!428 = !{!"branch_weights", i32 1, i32 5801198}
!429 = !{!"function_entry_count", i64 8538154}
!430 = !{!"branch_weights", i32 183370, i32 8354786}
!431 = !{!"function_entry_count", i64 12982610}
!432 = !{!"function_entry_count", i64 12962434}
!433 = !{!"function_entry_count", i64 21337395}
!434 = !{!"function_entry_count", i64 7178069}
!435 = !{!219, !219, i64 0}
!436 = !{!"branch_weights", i32 183280, i32 6994791}
!437 = !{!"function_entry_count", i64 16082259}
!438 = !{!"function_entry_count", i64 32608285}
!439 = !{!"function_entry_count", i64 25807262}
!440 = !{!"function_entry_count", i64 25820050}
!441 = !{!"branch_weights", i32 1, i32 4303341}
!442 = !{!"branch_weights", i32 4303341, i32 -542009222}
!443 = distinct !{!443, !235}
!444 = !{!"function_entry_count", i64 12588445}
!445 = !{!"branch_weights", i32 11254134, i32 1334313}
!446 = !{!"function_entry_count", i64 46393777}
!447 = distinct !{!447, !235}
!448 = !{!"function_entry_count", i64 1130961}
!449 = !{!"branch_weights", i32 1130962, i32 1}
!450 = distinct !{!450, !235}
!451 = !{!"function_entry_count", i64 4593520}
!452 = !{!"function_entry_count", i64 600477}
!453 = !{!"branch_weights", i32 1, i32 600478}
!454 = !{!"function_entry_count", i64 600638}
!455 = !{!274, !219, i64 16}
!456 = !{!"function_entry_count", i64 1505251}
!457 = !{!"function_entry_count", i64 1201115}
!458 = !{!"function_entry_count", i64 2558192}
!459 = !{!"function_entry_count", i64 3867193}
!460 = !{!"function_entry_count", i64 1053025}
!461 = !{!"branch_weights", i32 85, i32 1052942}
!462 = !{!"function_entry_count", i64 5076425}
!463 = distinct !{!463, !235}
!464 = !{!"function_entry_count", i64 3118626}
!465 = !{!"function_entry_count", i64 1078808}
!466 = !{!"function_entry_count", i64 2314867}
!467 = !{!"function_entry_count", i64 10407865}
!468 = !{!"branch_weights", i32 1, i32 3118626}
!469 = !{!"branch_weights", i32 3118626, i32 4974289}
!470 = distinct !{!470, !235}
!471 = !{!"function_entry_count", i64 8092914}
!472 = !{!297, !219, i64 8}
!473 = !{!"function_entry_count", i64 10953335}
!474 = !{!"function_entry_count", i64 21918802}
!475 = !{!297, !219, i64 16}
!476 = !{!"branch_weights", i32 1262844, i32 9690493}
!477 = !{!"function_entry_count", i64 12879983}
!478 = !{!"branch_weights", i32 2065686, i32 1052942}
!479 = !{!"function_entry_count", i64 806586}
!480 = !{!"branch_weights", i32 1, i32 806587}
!481 = !{!"function_entry_count", i64 1350593}
!482 = !{!284, !219, i64 16}
!483 = !{!"function_entry_count", i64 3138089}
!484 = !{!"function_entry_count", i64 2157179}
!485 = !{!"function_entry_count", i64 5476727}
!486 = !{!"function_entry_count", i64 6129205}
!487 = !{!"function_entry_count", i64 4516053}
!488 = !{!"function_entry_count", i64 2518052}
!489 = !{!"branch_weights", i32 179415, i32 2338639}
!490 = !{!"function_entry_count", i64 10529730}
!491 = distinct !{!491, !235}
!492 = !{!"function_entry_count", i64 5683492}
!493 = !{!"function_entry_count", i64 5584274}
!494 = !{!"branch_weights", i32 3344868, i32 2338626}
!495 = !{!"function_entry_count", i64 26112830}
!496 = !{!"function_entry_count", i64 1090940}
!497 = !{!"function_entry_count", i64 545470}
!498 = !{!"branch_weights", i32 1, i32 545471}
!499 = !{!"function_entry_count", i64 9874527}
!500 = !{!"branch_weights", i32 184036, i32 9690493}
!501 = !{!"function_entry_count", i64 2326999}
!502 = !{!"function_entry_count", i64 9183938}
!503 = !{!"function_entry_count", i64 12017491}
!504 = distinct !{!504, !235}
!505 = !{!"function_entry_count", i64 627233310}
!506 = !{!"branch_weights", i32 627233311, i32 1}
!507 = distinct !{!507, !235}
!508 = !{!"function_entry_count", i64 4316510434}
!509 = !{!"branch_weights", i32 1079127609, i32 -2136712079}
!510 = distinct !{!510, !235}
