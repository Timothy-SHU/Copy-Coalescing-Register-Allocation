; ModuleID = 'source/base/flow_function.cc'
source_filename = "source/base/flow_function.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [2 x double] }
%"class.dealii::Vector" = type { %"class.dealii::Subscriptor", i32, i32, ptr }
%"class.dealii::Functions::FlowFunction.28" = type { %"class.dealii::Function.base.30", double, %"class.std::vector", %"class.std::vector.31" }
%"class.dealii::Function.base.30" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.std::vector.31" = type { %"struct.std::_Vector_base.32" }
%"struct.std::_Vector_base.32" = type { %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.43" = type { %"struct.std::_Vector_base.44" }
%"struct.std::_Vector_base.44" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.36" = type { %"struct.std::_Vector_base.37" }
%"struct.std::_Vector_base.37" = type { %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point.41" = type { %"class.dealii::Tensor.42" }
%"class.dealii::Tensor.42" = type { [3 x double] }
%"class.dealii::Functions::PoisseuilleFlow" = type { %"class.dealii::Functions::FlowFunction", double, double }
%"class.dealii::Functions::PoisseuilleFlow.48" = type { %"class.dealii::Functions::FlowFunction.28", double, double }
%"class.dealii::Functions::StokesCosine" = type { %"class.dealii::Functions::FlowFunction", double, double }
%"class.dealii::Functions::StokesCosine.49" = type { %"class.dealii::Functions::FlowFunction.28", double, double }
%"class.dealii::Functions::StokesLSingularity" = type { %"class.dealii::Functions::FlowFunction", double, double, double, double }
%"class.dealii::Functions::Kovasznay" = type <{ %"class.dealii::Functions::FlowFunction", double, double, double, i8, [7 x i8] }>

$_ZN6dealii9Functions12FlowFunctionILi2EEC5Ev = comdat any

$_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev = comdat any

$_ZThn16_N6dealii9Functions12FlowFunctionILi2EED1Ev = comdat any

$_ZN6dealii9Functions12FlowFunctionILi2EED5Ev = comdat any

$_ZThn16_N6dealii9Functions12FlowFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions12FlowFunctionILi2EE19pressure_adjustmentEd = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi2EE18memory_consumptionEv = comdat any

$_ZN6dealii9Functions12FlowFunctionILi3EEC5Ev = comdat any

$_ZN6dealii9Functions12FlowFunctionILi3EED5Ev = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev = comdat any

$_ZThn16_N6dealii9Functions12FlowFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions12FlowFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions12FlowFunctionILi3EE19pressure_adjustmentEd = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions12FlowFunctionILi3EE18memory_consumptionEv = comdat any

$_ZN6dealii9Functions15PoisseuilleFlowILi2EEC5Edd = comdat any

$_ZN6dealii9Functions15PoisseuilleFlowILi2EED5Ev = comdat any

$_ZThn16_N6dealii9Functions15PoisseuilleFlowILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions15PoisseuilleFlowILi2EED0Ev = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi2EE13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi2EE16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi2EE17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZN6dealii9Functions15PoisseuilleFlowILi3EEC5Edd = comdat any

$_ZN6dealii9Functions15PoisseuilleFlowILi3EED5Ev = comdat any

$_ZThn16_N6dealii9Functions15PoisseuilleFlowILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions15PoisseuilleFlowILi3EED0Ev = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi3EE13vector_valuesERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions15PoisseuilleFlowILi3EE16vector_gradientsERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE = comdat any

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

$_ZN6dealii9Functions18StokesLSingularityD0Ev = comdat any

$_ZThn16_N6dealii9Functions18StokesLSingularityD1Ev = comdat any

$_ZThn16_N6dealii9Functions18StokesLSingularityD0Ev = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm = comdat any

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

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat($_ZN6dealii9Functions12FlowFunctionILi2EEC5Ev) align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %6 = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %7 unwind label %30

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  store ptr %6, ptr %4, align 8, !tbaa !42
  store ptr %6, ptr %5, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.std::vector.13", ptr %6, i64 3
  store ptr %9, ptr %8, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %6, %7 ], [ %14, %10 ]
  %12 = phi i64 [ 3, %7 ], [ %13, %10 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds %"class.std::vector.13", ptr %11, i64 1
  %15 = icmp eq i64 %13, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %15, label %16, label %10, !llvm.loop !48

16:                                               ; preds = %10
  store ptr %14, ptr %5, align 8, !tbaa !46
  %17 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %19 = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %20 unwind label %32

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  store ptr %19, ptr %17, align 8, !tbaa !51
  store ptr %19, ptr %18, align 8, !tbaa !53
  %22 = getelementptr inbounds %"class.std::vector.23", ptr %19, i64 3
  store ptr %22, ptr %21, align 8, !tbaa !54
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %19, %20 ], [ %27, %23 ]
  %25 = phi i64 [ 3, %20 ], [ %26, %23 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds %"class.std::vector.23", ptr %24, i64 1
  %28 = icmp eq i64 %26, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  br i1 %28, label %29, label %23, !llvm.loop !55

29:                                               ; preds = %23
  store ptr %27, ptr %18, align 8, !tbaa !53
  ret void

30:                                               ; preds = %1
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %49

32:                                               ; preds = %16
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = icmp eq ptr %6, %35
  br i1 %36, label %45, label %37, !prof !56

37:                                               ; preds = %32, %42
  %38 = phi ptr [ %43, %42 ], [ %6, %32 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !59

41:                                               ; preds = %37
  tail call void @_ZdlPv(ptr noundef %39) #26
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %"class.std::vector.13", ptr %38, i64 1
  %44 = icmp eq ptr %43, %35
  br i1 %44, label %45, label %37, !prof !60, !llvm.loop !61

45:                                               ; preds = %42, %32
  %46 = load ptr, ptr %4, align 8, !tbaa !42
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !62

48:                                               ; preds = %45
  tail call void @_ZdlPv(ptr noundef %46) #26
  br label %49

49:                                               ; preds = %48, %45, %30
  %50 = phi { ptr, i32 } [ %31, %30 ], [ %33, %45 ], [ %33, %48 ]
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  resume { ptr, i32 } %50
}

declare void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %14, label %6, !prof !56

6:                                                ; preds = %1, %11
  %7 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !59

10:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #26
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.std::vector.13", ptr %7, i64 1
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %6, !prof !60, !llvm.loop !61

14:                                               ; preds = %11, %1
  %15 = load ptr, ptr %0, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !62

17:                                               ; preds = %14
  tail call void @_ZdlPv(ptr noundef %15) #26
  br label %18

18:                                               ; preds = %14, %17
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 2>>, std::allocator<std::vector<dealii::Tensor<1, 2>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %1, %11
  %7 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #26
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.std::vector.23", ptr %7, i64 1
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %6, !llvm.loop !67

14:                                               ; preds = %11, %1
  %15 = load ptr, ptr %0, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @_ZdlPv(ptr noundef %15) #26
  br label %18

18:                                               ; preds = %14, %17
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12FlowFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(152) %2) #27
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 comdat($_ZN6dealii9Functions12FlowFunctionILi2EED5Ev) align 2 !prof !64 {
  tail call void @llvm.trap() #28
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12FlowFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !64 {
  tail call void @llvm.trap() #28
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi2EE19pressure_adjustmentEd(ptr noundef nonnull align 8 dereferenceable(152) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 !prof !64 {
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %4 = alloca %"class.std::vector.8", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
  store ptr %7, ptr %4, align 8, !tbaa !90
  store ptr %7, ptr %5, align 8, !tbaa !92
  %8 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 1
  store ptr %8, ptr %6, align 8, !tbaa !93
  %9 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !tbaa !94
  store ptr %9, ptr %5, align 8, !tbaa !92
  %10 = load double, ptr %1, align 8, !tbaa !94
  store double %10, ptr %7, align 8, !tbaa !94
  %11 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !94
  %13 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  store double %12, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  br label %26

15:                                               ; preds = %46
  %16 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %0, align 8, !tbaa !39
  %18 = getelementptr inbounds ptr, ptr %17, i64 16
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %20 unwind label %24

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !42
  %22 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  br label %56

24:                                               ; preds = %15
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %64

26:                                               ; preds = %3, %46
  %27 = phi i64 [ 0, %3 ], [ %47, %46 ]
  %28 = load ptr, ptr %14, align 8, !tbaa !42
  %29 = getelementptr inbounds %"class.std::vector.13", ptr %28, i64 %27
  %30 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !97
  %32 = load ptr, ptr %29, align 8, !tbaa !57
  %33 = ptrtoint ptr %31 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 3
  %37 = icmp eq ptr %31, %32
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = sub nsw i64 1, %36
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %29, i64 noundef %39)
          to label %46 unwind label %49

40:                                               ; preds = %26
  %41 = icmp ugt i64 %36, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = getelementptr inbounds double, ptr %32, i64 1
  %44 = icmp eq ptr %31, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store ptr %43, ptr %30, align 8, !tbaa !97
  br label %46

46:                                               ; preds = %45, %42, %40, %38
  %47 = add nuw nsw i64 %27, 1
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %15, label %26, !llvm.loop !98

49:                                               ; preds = %38
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %64

51:                                               ; preds = %56
  %52 = load ptr, ptr %4, align 8, !tbaa !90
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call void @_ZdlPv(ptr noundef %52) #26
  br label %55

55:                                               ; preds = %51, %54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret void

56:                                               ; preds = %20, %56
  %57 = phi i64 [ 0, %20 ], [ %62, %56 ]
  %58 = getelementptr inbounds %"class.std::vector.13", ptr %21, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = load double, ptr %59, align 8, !tbaa !94
  %61 = getelementptr inbounds double, ptr %23, i64 %57
  store double %60, ptr %61, align 8, !tbaa !94
  %62 = add nuw nsw i64 %57, 1
  %63 = icmp eq i64 %62, 3
  br i1 %63, label %51, label %56, !llvm.loop !99

64:                                               ; preds = %49, %24
  %65 = phi { ptr, i32 } [ %50, %49 ], [ %25, %24 ]
  %66 = load ptr, ptr %4, align 8, !tbaa !90
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @_ZdlPv(ptr noundef %66) #26
  br label %69

69:                                               ; preds = %68, %64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  resume { ptr, i32 } %65
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12FlowFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %4 = alloca %"class.std::vector.8", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
  store ptr %7, ptr %4, align 8, !tbaa !90
  store ptr %7, ptr %5, align 8, !tbaa !92
  %8 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 1
  store ptr %8, ptr %6, align 8, !tbaa !93
  %9 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !tbaa !94
  store ptr %9, ptr %5, align 8, !tbaa !92
  %10 = load double, ptr %1, align 8, !tbaa !94
  store double %10, ptr %7, align 8, !tbaa !94
  %11 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !94
  %13 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  store double %12, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  br label %22

15:                                               ; preds = %42
  %16 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %0, align 8, !tbaa !39
  %18 = getelementptr inbounds ptr, ptr %17, i64 16
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %47 unwind label %20

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %57

22:                                               ; preds = %3, %42
  %23 = phi i64 [ 0, %3 ], [ %43, %42 ]
  %24 = load ptr, ptr %14, align 8, !tbaa !42
  %25 = getelementptr inbounds %"class.std::vector.13", ptr %24, i64 %23
  %26 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !97
  %28 = load ptr, ptr %25, align 8, !tbaa !57
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = ashr exact i64 %31, 3
  %33 = icmp eq ptr %27, %28
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = sub nsw i64 1, %32
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %35)
          to label %42 unwind label %45

36:                                               ; preds = %22
  %37 = icmp ugt i64 %32, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = getelementptr inbounds double, ptr %28, i64 1
  %40 = icmp eq ptr %27, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store ptr %39, ptr %26, align 8, !tbaa !97
  br label %42

42:                                               ; preds = %41, %38, %36, %34
  %43 = add nuw nsw i64 %23, 1
  %44 = icmp eq i64 %43, 3
  br i1 %44, label %15, label %22, !llvm.loop !100

45:                                               ; preds = %34
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %57

47:                                               ; preds = %15
  %48 = zext i32 %2 to i64
  %49 = load ptr, ptr %16, align 8, !tbaa !42
  %50 = getelementptr inbounds %"class.std::vector.13", ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = load double, ptr %51, align 8, !tbaa !94
  %53 = load ptr, ptr %4, align 8, !tbaa !90
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %53) #26
  br label %56

56:                                               ; preds = %47, %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret double %52

57:                                               ; preds = %45, %20
  %58 = phi { ptr, i32 } [ %46, %45 ], [ %21, %20 ]
  %59 = load ptr, ptr %4, align 8, !tbaa !90
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  call void @_ZdlPv(ptr noundef %59) #26
  br label %62

62:                                               ; preds = %61, %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  resume { ptr, i32 } %58
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = load ptr, ptr %1, align 8, !tbaa !90
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %12 = and i64 %10, 4294967295
  br label %24

13:                                               ; preds = %44
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %0, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 16
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %18 = and i64 %9, 68719476720
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8, !tbaa !42
  %22 = load ptr, ptr %2, align 8, !tbaa !101
  %23 = and i64 %10, 4294967295
  br label %47

24:                                               ; preds = %3, %44
  %25 = phi i64 [ 0, %3 ], [ %45, %44 ]
  %26 = load ptr, ptr %11, align 8, !tbaa !42
  %27 = getelementptr inbounds %"class.std::vector.13", ptr %26, i64 %25
  %28 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = load ptr, ptr %27, align 8, !tbaa !57
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp ult i64 %34, %12
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = sub nsw i64 %12, %34
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %37)
  br label %44

38:                                               ; preds = %24
  %39 = icmp ugt i64 %34, %12
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr inbounds double, ptr %30, i64 %12
  %42 = icmp eq ptr %29, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store ptr %41, ptr %28, align 8, !tbaa !97
  br label %44

44:                                               ; preds = %36, %38, %40, %43
  %45 = add nuw nsw i64 %25, 1
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %13, label %24, !llvm.loop !103

47:                                               ; preds = %20, %52
  %48 = phi i64 [ 0, %20 ], [ %53, %52 ]
  %49 = getelementptr inbounds %"class.dealii::Vector", ptr %22, i64 %48, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !95
  br label %55

51:                                               ; preds = %52, %13
  ret void

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %51, label %47, !llvm.loop !104

55:                                               ; preds = %47, %55
  %56 = phi i64 [ 0, %47 ], [ %62, %55 ]
  %57 = getelementptr inbounds %"class.std::vector.13", ptr %21, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = getelementptr inbounds double, ptr %58, i64 %48
  %60 = load double, ptr %59, align 8, !tbaa !94
  %61 = getelementptr inbounds double, ptr %50, i64 %56
  store double %60, ptr %61, align 8, !tbaa !94
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp eq i64 %62, 3
  br i1 %63, label %52, label %55, !llvm.loop !105
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = load ptr, ptr %1, align 8, !tbaa !90
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  %12 = and i64 %10, 4294967295
  br label %24

13:                                               ; preds = %44
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %0, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 17
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %18 = and i64 %9, 68719476720
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8, !tbaa !51
  %22 = load ptr, ptr %2, align 8, !tbaa !51
  %23 = and i64 %10, 4294967295
  br label %47

24:                                               ; preds = %3, %44
  %25 = phi i64 [ 0, %3 ], [ %45, %44 ]
  %26 = load ptr, ptr %11, align 8, !tbaa !51
  %27 = getelementptr inbounds %"class.std::vector.23", ptr %26, i64 %25
  %28 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = load ptr, ptr %27, align 8, !tbaa !65
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 4
  %35 = icmp ult i64 %34, %12
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = sub nsw i64 %12, %34
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %37)
  br label %44

38:                                               ; preds = %24
  %39 = icmp ugt i64 %34, %12
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr inbounds %"class.dealii::Tensor", ptr %30, i64 %12
  %42 = icmp eq ptr %29, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store ptr %41, ptr %28, align 8, !tbaa !106
  br label %44

44:                                               ; preds = %36, %38, %40, %43
  %45 = add nuw nsw i64 %25, 1
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %13, label %24, !llvm.loop !107

47:                                               ; preds = %20, %52
  %48 = phi i64 [ 0, %20 ], [ %53, %52 ]
  %49 = getelementptr inbounds %"class.std::vector.23", ptr %22, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !65
  br label %55

51:                                               ; preds = %52, %13
  ret void

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %51, label %47, !llvm.loop !108

55:                                               ; preds = %47, %55
  %56 = phi i64 [ 0, %47 ], [ %65, %55 ]
  %57 = getelementptr inbounds %"class.std::vector.23", ptr %21, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !65
  %59 = getelementptr inbounds %"class.dealii::Tensor", ptr %58, i64 %48
  %60 = getelementptr inbounds %"class.dealii::Tensor", ptr %50, i64 %56
  %61 = load double, ptr %59, align 8, !tbaa !94
  store double %61, ptr %60, align 8, !tbaa !94
  %62 = getelementptr inbounds [2 x double], ptr %59, i64 0, i64 1
  %63 = load double, ptr %62, align 8, !tbaa !94
  %64 = getelementptr inbounds [2 x double], ptr %60, i64 0, i64 1
  store double %63, ptr %64, align 8, !tbaa !94
  %65 = add nuw nsw i64 %56, 1
  %66 = icmp eq i64 %65, 3
  br i1 %66, label %52, label %55, !llvm.loop !109
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = load ptr, ptr %1, align 8, !tbaa !90
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %12 = and i64 %10, 4294967295
  br label %24

13:                                               ; preds = %44
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %0, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 18
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %18 = and i64 %9, 68719476720
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8, !tbaa !42
  %22 = load ptr, ptr %2, align 8, !tbaa !101
  %23 = and i64 %10, 4294967295
  br label %47

24:                                               ; preds = %3, %44
  %25 = phi i64 [ 0, %3 ], [ %45, %44 ]
  %26 = load ptr, ptr %11, align 8, !tbaa !42
  %27 = getelementptr inbounds %"class.std::vector.13", ptr %26, i64 %25
  %28 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = load ptr, ptr %27, align 8, !tbaa !57
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp ult i64 %34, %12
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = sub nsw i64 %12, %34
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %37)
  br label %44

38:                                               ; preds = %24
  %39 = icmp ugt i64 %34, %12
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr inbounds double, ptr %30, i64 %12
  %42 = icmp eq ptr %29, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store ptr %41, ptr %28, align 8, !tbaa !97
  br label %44

44:                                               ; preds = %36, %38, %40, %43
  %45 = add nuw nsw i64 %25, 1
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %13, label %24, !llvm.loop !110

47:                                               ; preds = %20, %52
  %48 = phi i64 [ 0, %20 ], [ %53, %52 ]
  %49 = getelementptr inbounds %"class.dealii::Vector", ptr %22, i64 %48, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !95
  br label %55

51:                                               ; preds = %52, %13
  ret void

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %51, label %47, !llvm.loop !111

55:                                               ; preds = %47, %55
  %56 = phi i64 [ 0, %47 ], [ %62, %55 ]
  %57 = getelementptr inbounds %"class.std::vector.13", ptr %21, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = getelementptr inbounds double, ptr %58, i64 %48
  %60 = load double, ptr %59, align 8, !tbaa !94
  %61 = getelementptr inbounds double, ptr %50, i64 %56
  store double %60, ptr %61, align 8, !tbaa !94
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp eq i64 %62, 3
  br i1 %63, label %52, label %55, !llvm.loop !112
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii9Functions12FlowFunctionILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 comdat align 2 !prof !64 {
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat($_ZN6dealii9Functions12FlowFunctionILi3EEC5Ev) align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 4, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %6 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %7 unwind label %30

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  store ptr %6, ptr %4, align 8, !tbaa !42
  store ptr %6, ptr %5, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.std::vector.13", ptr %6, i64 4
  store ptr %9, ptr %8, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %6, %7 ], [ %14, %10 ]
  %12 = phi i64 [ 4, %7 ], [ %13, %10 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds %"class.std::vector.13", ptr %11, i64 1
  %15 = icmp eq i64 %13, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %15, label %16, label %10, !llvm.loop !48

16:                                               ; preds = %10
  store ptr %14, ptr %5, align 8, !tbaa !46
  %17 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %19 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %20 unwind label %32

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 2
  store ptr %19, ptr %17, align 8, !tbaa !113
  store ptr %19, ptr %18, align 8, !tbaa !115
  %22 = getelementptr inbounds %"class.std::vector.43", ptr %19, i64 4
  store ptr %22, ptr %21, align 8, !tbaa !116
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %19, %20 ], [ %27, %23 ]
  %25 = phi i64 [ 4, %20 ], [ %26, %23 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds %"class.std::vector.43", ptr %24, i64 1
  %28 = icmp eq i64 %26, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  br i1 %28, label %29, label %23, !llvm.loop !117

29:                                               ; preds = %23
  store ptr %27, ptr %18, align 8, !tbaa !115
  ret void

30:                                               ; preds = %1
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %49

32:                                               ; preds = %16
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = icmp eq ptr %6, %35
  br i1 %36, label %45, label %37, !prof !56

37:                                               ; preds = %32, %42
  %38 = phi ptr [ %43, %42 ], [ %6, %32 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !59

41:                                               ; preds = %37
  tail call void @_ZdlPv(ptr noundef %39) #26
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %"class.std::vector.13", ptr %38, i64 1
  %44 = icmp eq ptr %43, %35
  br i1 %44, label %45, label %37, !prof !60, !llvm.loop !61

45:                                               ; preds = %42, %32
  %46 = load ptr, ptr %4, align 8, !tbaa !42
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !62

48:                                               ; preds = %45
  tail call void @_ZdlPv(ptr noundef %46) #26
  br label %49

49:                                               ; preds = %48, %45, %30
  %50 = phi { ptr, i32 } [ %31, %30 ], [ %33, %45 ], [ %33, %48 ]
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  resume { ptr, i32 } %50
}

declare void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12FlowFunctionILi3EED5Ev) align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %16, label %8, !prof !118

8:                                                ; preds = %1, %13
  %9 = phi ptr [ %14, %13 ], [ %4, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !121

12:                                               ; preds = %8
  tail call void @_ZdlPv(ptr noundef %10) #26
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %"class.std::vector.43", ptr %9, i64 1
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %16, label %8, !prof !122, !llvm.loop !123

16:                                               ; preds = %13, %1
  %17 = load ptr, ptr %3, align 8, !tbaa !113
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !124

19:                                               ; preds = %16
  tail call void @_ZdlPv(ptr noundef %17) #26
  br label %20

20:                                               ; preds = %16, %19
  %21 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %34, label %26, !prof !56

26:                                               ; preds = %20, %31
  %27 = phi ptr [ %32, %31 ], [ %22, %20 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !59

30:                                               ; preds = %26
  tail call void @_ZdlPv(ptr noundef %28) #26
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %"class.std::vector.13", ptr %27, i64 1
  %33 = icmp eq ptr %32, %24
  br i1 %33, label %34, label %26, !prof !60, !llvm.loop !61

34:                                               ; preds = %31, %20
  %35 = load ptr, ptr %21, align 8, !tbaa !42
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !62

37:                                               ; preds = %34
  tail call void @_ZdlPv(ptr noundef %35) #26
  br label %38

38:                                               ; preds = %34, %37
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %2 = load ptr, ptr %0, align 8, !tbaa !113
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<dealii::Tensor<1, 3>>, std::allocator<std::vector<dealii::Tensor<1, 3>>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %14, label %6, !prof !118

6:                                                ; preds = %1, %11
  %7 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !121

10:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #26
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.std::vector.43", ptr %7, i64 1
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %6, !prof !122, !llvm.loop !123

14:                                               ; preds = %11, %1
  %15 = load ptr, ptr %0, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !124

17:                                               ; preds = %14
  tail call void @_ZdlPv(ptr noundef %15) #26
  br label %18

18:                                               ; preds = %14, %17
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12FlowFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12FlowFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(152) %2) #27
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 comdat($_ZN6dealii9Functions12FlowFunctionILi3EED5Ev) align 2 !prof !64 {
  tail call void @llvm.trap() #28
  unreachable
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12FlowFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !64 {
  tail call void @llvm.trap() #28
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi3EE19pressure_adjustmentEd(ptr noundef nonnull align 8 dereferenceable(152) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 !prof !64 {
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %4 = alloca %"class.std::vector.36", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
  store ptr %7, ptr %4, align 8, !tbaa !132
  store ptr %7, ptr %5, align 8, !tbaa !134
  %8 = getelementptr inbounds %"class.dealii::Point.41", ptr %7, i64 1
  store ptr %8, ptr %6, align 8, !tbaa !135
  %9 = getelementptr inbounds %"class.dealii::Point.41", ptr %7, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !94
  store ptr %9, ptr %5, align 8, !tbaa !134
  %10 = load double, ptr %1, align 8, !tbaa !94
  store double %10, ptr %7, align 8, !tbaa !94
  %11 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !94
  %13 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  store double %12, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !94
  %16 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  store double %15, ptr %16, align 8, !tbaa !94
  %17 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  br label %29

18:                                               ; preds = %49
  %19 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %0, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 16
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %23 unwind label %27

23:                                               ; preds = %18
  %24 = load ptr, ptr %19, align 8, !tbaa !42
  %25 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  br label %59

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %67

29:                                               ; preds = %3, %49
  %30 = phi i64 [ 0, %3 ], [ %50, %49 ]
  %31 = load ptr, ptr %17, align 8, !tbaa !42
  %32 = getelementptr inbounds %"class.std::vector.13", ptr %31, i64 %30
  %33 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !97
  %35 = load ptr, ptr %32, align 8, !tbaa !57
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 3
  %40 = icmp eq ptr %34, %35
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = sub nsw i64 1, %39
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %32, i64 noundef %42)
          to label %49 unwind label %52

43:                                               ; preds = %29
  %44 = icmp ugt i64 %39, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = getelementptr inbounds double, ptr %35, i64 1
  %47 = icmp eq ptr %34, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store ptr %46, ptr %33, align 8, !tbaa !97
  br label %49

49:                                               ; preds = %48, %45, %43, %41
  %50 = add nuw nsw i64 %30, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %18, label %29, !llvm.loop !136

52:                                               ; preds = %41
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %67

54:                                               ; preds = %59
  %55 = load ptr, ptr %4, align 8, !tbaa !132
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %55) #26
  br label %58

58:                                               ; preds = %54, %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret void

59:                                               ; preds = %23, %59
  %60 = phi i64 [ 0, %23 ], [ %65, %59 ]
  %61 = getelementptr inbounds %"class.std::vector.13", ptr %24, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !57
  %63 = load double, ptr %62, align 8, !tbaa !94
  %64 = getelementptr inbounds double, ptr %26, i64 %60
  store double %63, ptr %64, align 8, !tbaa !94
  %65 = add nuw nsw i64 %60, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %54, label %59, !llvm.loop !137

67:                                               ; preds = %52, %27
  %68 = phi { ptr, i32 } [ %53, %52 ], [ %28, %27 ]
  %69 = load ptr, ptr %4, align 8, !tbaa !132
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %69) #26
  br label %72

72:                                               ; preds = %71, %67
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  resume { ptr, i32 } %68
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12FlowFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %4 = alloca %"class.std::vector.36", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
  store ptr %7, ptr %4, align 8, !tbaa !132
  store ptr %7, ptr %5, align 8, !tbaa !134
  %8 = getelementptr inbounds %"class.dealii::Point.41", ptr %7, i64 1
  store ptr %8, ptr %6, align 8, !tbaa !135
  %9 = getelementptr inbounds %"class.dealii::Point.41", ptr %7, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !tbaa !94
  store ptr %9, ptr %5, align 8, !tbaa !134
  %10 = load double, ptr %1, align 8, !tbaa !94
  store double %10, ptr %7, align 8, !tbaa !94
  %11 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !94
  %13 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  store double %12, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !94
  %16 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  store double %15, ptr %16, align 8, !tbaa !94
  %17 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  br label %25

18:                                               ; preds = %45
  %19 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %0, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 16
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %50 unwind label %23

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %60

25:                                               ; preds = %3, %45
  %26 = phi i64 [ 0, %3 ], [ %46, %45 ]
  %27 = load ptr, ptr %17, align 8, !tbaa !42
  %28 = getelementptr inbounds %"class.std::vector.13", ptr %27, i64 %26
  %29 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = load ptr, ptr %28, align 8, !tbaa !57
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 3
  %36 = icmp eq ptr %30, %31
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = sub nsw i64 1, %35
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 noundef %38)
          to label %45 unwind label %48

39:                                               ; preds = %25
  %40 = icmp ugt i64 %35, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = getelementptr inbounds double, ptr %31, i64 1
  %43 = icmp eq ptr %30, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store ptr %42, ptr %29, align 8, !tbaa !97
  br label %45

45:                                               ; preds = %44, %41, %39, %37
  %46 = add nuw nsw i64 %26, 1
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %18, label %25, !llvm.loop !138

48:                                               ; preds = %37
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %60

50:                                               ; preds = %18
  %51 = zext i32 %2 to i64
  %52 = load ptr, ptr %19, align 8, !tbaa !42
  %53 = getelementptr inbounds %"class.std::vector.13", ptr %52, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  %55 = load double, ptr %54, align 8, !tbaa !94
  %56 = load ptr, ptr %4, align 8, !tbaa !132
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  call void @_ZdlPv(ptr noundef %56) #26
  br label %59

59:                                               ; preds = %50, %58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret double %55

60:                                               ; preds = %48, %23
  %61 = phi { ptr, i32 } [ %49, %48 ], [ %24, %23 ]
  %62 = load ptr, ptr %4, align 8, !tbaa !132
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void @_ZdlPv(ptr noundef %62) #26
  br label %65

65:                                               ; preds = %64, %60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = load ptr, ptr %1, align 8, !tbaa !132
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  %12 = and i64 %10, 4294967295
  br label %24

13:                                               ; preds = %44
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %0, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 16
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %18 = and i64 %10, 4294967295
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8, !tbaa !42
  %22 = load ptr, ptr %2, align 8, !tbaa !101
  %23 = and i64 %10, 4294967295
  br label %47

24:                                               ; preds = %3, %44
  %25 = phi i64 [ 0, %3 ], [ %45, %44 ]
  %26 = load ptr, ptr %11, align 8, !tbaa !42
  %27 = getelementptr inbounds %"class.std::vector.13", ptr %26, i64 %25
  %28 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = load ptr, ptr %27, align 8, !tbaa !57
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp ult i64 %34, %12
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = sub nsw i64 %12, %34
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %37)
  br label %44

38:                                               ; preds = %24
  %39 = icmp ugt i64 %34, %12
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr inbounds double, ptr %30, i64 %12
  %42 = icmp eq ptr %29, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store ptr %41, ptr %28, align 8, !tbaa !97
  br label %44

44:                                               ; preds = %36, %38, %40, %43
  %45 = add nuw nsw i64 %25, 1
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %13, label %24, !llvm.loop !139

47:                                               ; preds = %20, %52
  %48 = phi i64 [ 0, %20 ], [ %53, %52 ]
  %49 = getelementptr inbounds %"class.dealii::Vector", ptr %22, i64 %48, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !95
  br label %55

51:                                               ; preds = %52, %13
  ret void

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %51, label %47, !llvm.loop !140

55:                                               ; preds = %47, %55
  %56 = phi i64 [ 0, %47 ], [ %62, %55 ]
  %57 = getelementptr inbounds %"class.std::vector.13", ptr %21, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = getelementptr inbounds double, ptr %58, i64 %48
  %60 = load double, ptr %59, align 8, !tbaa !94
  %61 = getelementptr inbounds double, ptr %50, i64 %56
  store double %60, ptr %61, align 8, !tbaa !94
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %52, label %55, !llvm.loop !141
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = load ptr, ptr %1, align 8, !tbaa !132
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3
  %12 = and i64 %10, 4294967295
  br label %24

13:                                               ; preds = %44
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %0, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 17
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %18 = and i64 %10, 4294967295
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8, !tbaa !113
  %22 = load ptr, ptr %2, align 8, !tbaa !113
  %23 = and i64 %10, 4294967295
  br label %47

24:                                               ; preds = %3, %44
  %25 = phi i64 [ 0, %3 ], [ %45, %44 ]
  %26 = load ptr, ptr %11, align 8, !tbaa !113
  %27 = getelementptr inbounds %"class.std::vector.43", ptr %26, i64 %25
  %28 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !142
  %30 = load ptr, ptr %27, align 8, !tbaa !119
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 24
  %35 = icmp ult i64 %34, %12
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = sub nsw i64 %12, %34
  tail call void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %37)
  br label %44

38:                                               ; preds = %24
  %39 = icmp ugt i64 %34, %12
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %30, i64 %12
  %42 = icmp eq ptr %29, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store ptr %41, ptr %28, align 8, !tbaa !142
  br label %44

44:                                               ; preds = %36, %38, %40, %43
  %45 = add nuw nsw i64 %25, 1
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %13, label %24, !llvm.loop !143

47:                                               ; preds = %20, %52
  %48 = phi i64 [ 0, %20 ], [ %53, %52 ]
  %49 = getelementptr inbounds %"class.std::vector.43", ptr %22, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !119
  br label %55

51:                                               ; preds = %52, %13
  ret void

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %51, label %47, !llvm.loop !144

55:                                               ; preds = %47, %55
  %56 = phi i64 [ 0, %47 ], [ %68, %55 ]
  %57 = getelementptr inbounds %"class.std::vector.43", ptr %21, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !119
  %59 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %58, i64 %48
  %60 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %50, i64 %56
  %61 = load double, ptr %59, align 8, !tbaa !94
  store double %61, ptr %60, align 8, !tbaa !94
  %62 = getelementptr inbounds [3 x double], ptr %59, i64 0, i64 1
  %63 = load double, ptr %62, align 8, !tbaa !94
  %64 = getelementptr inbounds [3 x double], ptr %60, i64 0, i64 1
  store double %63, ptr %64, align 8, !tbaa !94
  %65 = getelementptr inbounds [3 x double], ptr %59, i64 0, i64 2
  %66 = load double, ptr %65, align 8, !tbaa !94
  %67 = getelementptr inbounds [3 x double], ptr %60, i64 0, i64 2
  store double %66, ptr %67, align 8, !tbaa !94
  %68 = add nuw nsw i64 %56, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %52, label %55, !llvm.loop !145
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12FlowFunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = load ptr, ptr %1, align 8, !tbaa !132
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  %12 = and i64 %10, 4294967295
  br label %24

13:                                               ; preds = %44
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %0, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 18
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %18 = and i64 %10, 4294967295
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8, !tbaa !42
  %22 = load ptr, ptr %2, align 8, !tbaa !101
  %23 = and i64 %10, 4294967295
  br label %47

24:                                               ; preds = %3, %44
  %25 = phi i64 [ 0, %3 ], [ %45, %44 ]
  %26 = load ptr, ptr %11, align 8, !tbaa !42
  %27 = getelementptr inbounds %"class.std::vector.13", ptr %26, i64 %25
  %28 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = load ptr, ptr %27, align 8, !tbaa !57
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 3
  %35 = icmp ult i64 %34, %12
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = sub nsw i64 %12, %34
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %37)
  br label %44

38:                                               ; preds = %24
  %39 = icmp ugt i64 %34, %12
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr inbounds double, ptr %30, i64 %12
  %42 = icmp eq ptr %29, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store ptr %41, ptr %28, align 8, !tbaa !97
  br label %44

44:                                               ; preds = %36, %38, %40, %43
  %45 = add nuw nsw i64 %25, 1
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %13, label %24, !llvm.loop !146

47:                                               ; preds = %20, %52
  %48 = phi i64 [ 0, %20 ], [ %53, %52 ]
  %49 = getelementptr inbounds %"class.dealii::Vector", ptr %22, i64 %48, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !95
  br label %55

51:                                               ; preds = %52, %13
  ret void

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %51, label %47, !llvm.loop !147

55:                                               ; preds = %47, %55
  %56 = phi i64 [ 0, %47 ], [ %62, %55 ]
  %57 = getelementptr inbounds %"class.std::vector.13", ptr %21, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = getelementptr inbounds double, ptr %58, i64 %48
  %60 = load double, ptr %59, align 8, !tbaa !94
  %61 = getelementptr inbounds double, ptr %50, i64 %56
  store double %60, ptr %61, align 8, !tbaa !94
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %52, label %55, !llvm.loop !148
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii9Functions12FlowFunctionILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #5 comdat align 2 !prof !64 {
  ret i32 0
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi2EEC2Edd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) unnamed_addr #8 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi2EEC5Edd) align 2 !prof !64 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions15PoisseuilleFlowILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions15PoisseuilleFlowILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 2
  store double %2, ptr %6, align 8, !tbaa !151
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi2EED5Ev) align 2 !prof !64 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi2EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi2EED5Ev) align 2 !annotation !38 {
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #27
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi2EED0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 !annotation !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #27
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi2EE13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = load ptr, ptr %1, align 8, !tbaa !90
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !149
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %4 to i64
  %11 = sub i64 %9, %10
  %12 = fdiv double 1.000000e+00, %6
  %13 = and i64 %11, 68719476720
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %3
  %16 = lshr exact i64 %11, 4
  %17 = load ptr, ptr %2, align 8, !tbaa !42
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds %"class.std::vector.13", ptr %17, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = fmul double %12, 2.000000e+00
  %22 = fmul double %12, %21
  %23 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %"class.std::vector.13", ptr %17, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = and i64 %16, 4294967295
  br label %29

28:                                               ; preds = %29, %3
  ret void

29:                                               ; preds = %15, %29
  %30 = phi i64 [ 0, %15 ], [ %47, %29 ]
  %31 = getelementptr inbounds %"class.dealii::Point", ptr %4, i64 %30
  %32 = getelementptr inbounds [2 x double], ptr %31, i64 0, i64 1
  %33 = load double, ptr %32, align 8, !tbaa !94
  %34 = fmul double %33, %33
  %35 = fmul double %12, %34
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %12, double 0.000000e+00)
  %37 = fsub double 1.000000e+00, %36
  %38 = getelementptr inbounds double, ptr %18, i64 %30
  store double %37, ptr %38, align 8, !tbaa !94
  %39 = getelementptr inbounds double, ptr %20, i64 %30
  store double 0.000000e+00, ptr %39, align 8, !tbaa !94
  %40 = load double, ptr %31, align 8, !tbaa !94
  %41 = fmul double %22, %40
  %42 = load double, ptr %23, align 8, !tbaa !151
  %43 = fdiv double %41, %42
  %44 = load double, ptr %24, align 8, !tbaa !68
  %45 = fsub double %44, %43
  %46 = getelementptr inbounds double, ptr %26, i64 %30
  store double %45, ptr %46, align 8, !tbaa !94
  %47 = add nuw nsw i64 %30, 1
  %48 = icmp eq i64 %47, %27
  br i1 %48, label %28, label %29, !llvm.loop !152
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi2EE16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = load ptr, ptr %1, align 8, !tbaa !90
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !149
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %4 to i64
  %11 = sub i64 %9, %10
  %12 = fdiv double 1.000000e+00, %6
  %13 = and i64 %11, 68719476720
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = lshr exact i64 %11, 4
  %17 = load ptr, ptr %2, align 8, !tbaa !51
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = getelementptr inbounds %"class.std::vector.23", ptr %17, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = fmul double %12, -2.000000e+00
  %22 = fmul double %12, %21
  %23 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow", ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %"class.std::vector.23", ptr %17, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = and i64 %16, 4294967295
  br label %28

27:                                               ; preds = %28, %3
  ret void

28:                                               ; preds = %15, %28
  %29 = phi i64 [ 0, %15 ], [ %43, %28 ]
  %30 = shl nuw nsw i64 %29, 4
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = getelementptr inbounds %"class.dealii::Tensor", ptr %18, i64 %29
  store double 0.000000e+00, ptr %32, align 8, !tbaa !94
  %33 = getelementptr inbounds %"class.dealii::Point", ptr %4, i64 %29, i32 0, i32 0, i64 1
  %34 = load double, ptr %33, align 8, !tbaa !94
  %35 = fmul double %34, -2.000000e+00
  %36 = fmul double %12, %35
  %37 = fmul double %12, %36
  %38 = getelementptr inbounds %"class.dealii::Tensor", ptr %18, i64 %29, i32 0, i64 1
  store double %37, ptr %38, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false), !tbaa !94
  %39 = load double, ptr %23, align 8, !tbaa !151
  %40 = fdiv double %22, %39
  %41 = getelementptr inbounds %"class.dealii::Tensor", ptr %25, i64 %29
  store double %40, ptr %41, align 8, !tbaa !94
  %42 = getelementptr inbounds %"class.dealii::Tensor", ptr %25, i64 %29, i32 0, i64 1
  store double 0.000000e+00, ptr %42, align 8, !tbaa !94
  %43 = add nuw nsw i64 %29, 1
  %44 = icmp eq i64 %43, %26
  br i1 %44, label %27, label %28, !llvm.loop !153
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi2EE17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #5 comdat align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %2, align 8, !tbaa !42
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %23, label %12

12:                                               ; preds = %3, %24
  %13 = phi i64 [ %25, %24 ], [ 0, %3 ]
  %14 = getelementptr inbounds %"class.std::vector.13", ptr %6, i64 %13
  %15 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = load ptr, ptr %14, align 8, !tbaa !57
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 3
  %22 = icmp eq ptr %16, %17
  br i1 %22, label %24, label %28

23:                                               ; preds = %24, %3
  ret void

24:                                               ; preds = %28, %12
  %25 = add i64 %13, 1
  %26 = and i64 %25, 4294967295
  %27 = icmp ugt i64 %10, %26
  br i1 %27, label %12, label %23, !llvm.loop !154

28:                                               ; preds = %12, %28
  %29 = phi i64 [ %33, %28 ], [ 0, %12 ]
  %30 = phi i32 [ %32, %28 ], [ 0, %12 ]
  %31 = getelementptr inbounds double, ptr %17, i64 %29
  store double 0.000000e+00, ptr %31, align 8, !tbaa !94
  %32 = add i32 %30, 1
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %21, %33
  br i1 %34, label %28, label %24, !llvm.loop !155
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi3EEC2Edd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) unnamed_addr #8 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi3EEC5Edd) align 2 !prof !64 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions15PoisseuilleFlowILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions15PoisseuilleFlowILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !156
  %6 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 2
  store double %2, ptr %6, align 8, !tbaa !158
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi3EED5Ev) align 2 !prof !64 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi3EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions15PoisseuilleFlowILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions15PoisseuilleFlowILi3EED5Ev) align 2 !annotation !38 {
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #27
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions15PoisseuilleFlowILi3EED0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 !annotation !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15PoisseuilleFlowILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #27
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi3EE13vector_valuesERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = load ptr, ptr %1, align 8, !tbaa !132
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !156
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %4 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  %13 = fdiv double 1.000000e+00, %6
  %14 = and i64 %12, 4294967295
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %2, align 8, !tbaa !42
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = fmul double %13, 4.000000e+00
  %20 = fmul double %13, %19
  %21 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 1
  %23 = getelementptr inbounds %"class.std::vector.13", ptr %17, i64 3
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = and i64 %12, 4294967295
  br label %27

26:                                               ; preds = %43, %3
  ret void

27:                                               ; preds = %16, %43
  %28 = phi i64 [ 0, %16 ], [ %51, %43 ]
  %29 = getelementptr inbounds %"class.dealii::Point.41", ptr %4, i64 %28
  br label %33

30:                                               ; preds = %33
  %31 = fsub double 1.000000e+00, %40
  %32 = getelementptr inbounds double, ptr %18, i64 %28
  store double %31, ptr %32, align 8, !tbaa !94
  br label %53

33:                                               ; preds = %27, %33
  %34 = phi i64 [ 1, %27 ], [ %41, %33 ]
  %35 = phi double [ 0.000000e+00, %27 ], [ %40, %33 ]
  %36 = getelementptr inbounds [3 x double], ptr %29, i64 0, i64 %34
  %37 = load double, ptr %36, align 8, !tbaa !94
  %38 = fmul double %37, %37
  %39 = fmul double %13, %38
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %13, double %35)
  %41 = add nuw nsw i64 %34, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %30, label %33, !llvm.loop !159

43:                                               ; preds = %53
  %44 = load double, ptr %29, align 8, !tbaa !94
  %45 = fmul double %20, %44
  %46 = load double, ptr %21, align 8, !tbaa !158
  %47 = fdiv double %45, %46
  %48 = load double, ptr %22, align 8, !tbaa !126
  %49 = fsub double %48, %47
  %50 = getelementptr inbounds double, ptr %24, i64 %28
  store double %49, ptr %50, align 8, !tbaa !94
  %51 = add nuw nsw i64 %28, 1
  %52 = icmp eq i64 %51, %25
  br i1 %52, label %26, label %27, !llvm.loop !160

53:                                               ; preds = %30, %53
  %54 = phi i64 [ 1, %30 ], [ %58, %53 ]
  %55 = getelementptr inbounds %"class.std::vector.13", ptr %17, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = getelementptr inbounds double, ptr %56, i64 %28
  store double 0.000000e+00, ptr %57, align 8, !tbaa !94
  %58 = add nuw nsw i64 %54, 1
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %43, label %53, !llvm.loop !161
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi3EE16vector_gradientsERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = load ptr, ptr %1, align 8, !tbaa !132
  %5 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !156
  %7 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %4 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  %13 = fdiv double 1.000000e+00, %6
  %14 = and i64 %12, 4294967295
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %2, align 8, !tbaa !113
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  %19 = fmul double %13, -4.000000e+00
  %20 = fmul double %13, %19
  %21 = getelementptr inbounds %"class.dealii::Functions::PoisseuilleFlow.48", ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %"class.std::vector.43", ptr %17, i64 3
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = and i64 %12, 4294967295
  %25 = getelementptr i8, ptr %23, i64 8
  br label %27

26:                                               ; preds = %43, %3
  ret void

27:                                               ; preds = %16, %43
  %28 = phi i64 [ 0, %16 ], [ %47, %43 ]
  %29 = mul nuw nsw i64 %28, 24
  %30 = getelementptr i8, ptr %25, i64 %29
  %31 = getelementptr inbounds %"class.dealii::Point.41", ptr %4, i64 %28
  %32 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %18, i64 %28
  store double 0.000000e+00, ptr %32, align 8, !tbaa !94
  br label %33

33:                                               ; preds = %27, %33
  %34 = phi i64 [ 1, %27 ], [ %41, %33 ]
  %35 = getelementptr inbounds [3 x double], ptr %31, i64 0, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !94
  %37 = fmul double %36, -2.000000e+00
  %38 = fmul double %13, %37
  %39 = fmul double %13, %38
  %40 = getelementptr inbounds [3 x double], ptr %32, i64 0, i64 %34
  store double %39, ptr %40, align 8, !tbaa !94
  %41 = add nuw nsw i64 %34, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %49, label %33, !llvm.loop !162

43:                                               ; preds = %49
  %44 = load double, ptr %21, align 8, !tbaa !158
  %45 = fdiv double %20, %44
  %46 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %23, i64 %28
  store double %45, ptr %46, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false), !tbaa !94
  %47 = add nuw nsw i64 %28, 1
  %48 = icmp eq i64 %47, %24
  br i1 %48, label %26, label %27, !llvm.loop !163

49:                                               ; preds = %33, %49
  %50 = phi i64 [ %54, %49 ], [ 1, %33 ]
  %51 = getelementptr inbounds %"class.std::vector.43", ptr %17, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !119
  %53 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %52, i64 %28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false), !tbaa !94
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %43, label %49, !llvm.loop !164
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15PoisseuilleFlowILi3EE17vector_laplaciansERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #5 comdat align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %2, align 8, !tbaa !42
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %23, label %12

12:                                               ; preds = %3, %24
  %13 = phi i64 [ %25, %24 ], [ 0, %3 ]
  %14 = getelementptr inbounds %"class.std::vector.13", ptr %6, i64 %13
  %15 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = load ptr, ptr %14, align 8, !tbaa !57
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 3
  %22 = icmp eq ptr %16, %17
  br i1 %22, label %24, label %28

23:                                               ; preds = %24, %3
  ret void

24:                                               ; preds = %28, %12
  %25 = add i64 %13, 1
  %26 = and i64 %25, 4294967295
  %27 = icmp ugt i64 %10, %26
  br i1 %27, label %12, label %23, !llvm.loop !165

28:                                               ; preds = %12, %28
  %29 = phi i64 [ %33, %28 ], [ 0, %12 ]
  %30 = phi i32 [ %32, %28 ], [ 0, %12 ]
  %31 = getelementptr inbounds double, ptr %17, i64 %29
  store double 0.000000e+00, ptr %31, align 8, !tbaa !94
  %32 = add i32 %30, 1
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %21, %33
  br i1 %34, label %28, label %24, !llvm.loop !166
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi2EEC2Edd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) unnamed_addr #8 comdat($_ZN6dealii9Functions12StokesCosineILi2EEC5Edd) align 2 !prof !64 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12StokesCosineILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12StokesCosineILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !167
  %6 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 2
  store double %2, ptr %6, align 8, !tbaa !169
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi2EE14set_parametersEdd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) local_unnamed_addr #5 comdat align 2 !prof !64 {
  %4 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 1
  store double %1, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 2
  store double %2, ptr %5, align 8, !tbaa !169
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 comdat($_ZN6dealii9Functions12StokesCosineILi2EED5Ev) align 2 !prof !64 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12StokesCosineILi2EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12StokesCosineILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12StokesCosineILi2EED5Ev) align 2 !annotation !38 {
  tail call void @_ZN6dealii9Functions12StokesCosineILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #27
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12StokesCosineILi2EED0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 !annotation !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12StokesCosineILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #27
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi2EE13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr %1, align 8, !tbaa !90
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = and i64 %9, 68719476720
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = lshr exact i64 %9, 4
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  %15 = and i64 %13, 4294967295
  br label %17

16:                                               ; preds = %17, %3
  ret void

17:                                               ; preds = %12, %17
  %18 = phi i64 [ 0, %12 ], [ %50, %17 ]
  %19 = load ptr, ptr %1, align 8, !tbaa !90
  %20 = getelementptr inbounds %"class.dealii::Point", ptr %19, i64 %18
  %21 = load double, ptr %20, align 8, !tbaa !94
  %22 = fmul double %21, 0x3FF921FB54442D18
  %23 = getelementptr inbounds [2 x double], ptr %20, i64 0, i64 1
  %24 = load double, ptr %23, align 8, !tbaa !94
  %25 = fmul double %24, 0x3FF921FB54442D18
  %26 = tail call double @cos(double noundef %22) #27
  %27 = tail call double @cos(double noundef %25) #27
  %28 = tail call double @sin(double noundef %22) #27
  %29 = tail call double @sin(double noundef %25) #27
  %30 = fmul double %26, %26
  %31 = fmul double %30, %27
  %32 = fmul double %31, %29
  %33 = load ptr, ptr %2, align 8, !tbaa !42
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = getelementptr inbounds double, ptr %34, i64 %18
  store double %32, ptr %35, align 8, !tbaa !94
  %36 = fneg double %26
  %37 = fmul double %28, %36
  %38 = fmul double %27, %37
  %39 = fmul double %27, %38
  %40 = getelementptr inbounds %"class.std::vector.13", ptr %33, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = getelementptr inbounds double, ptr %41, i64 %18
  store double %39, ptr %42, align 8, !tbaa !94
  %43 = fmul double %26, %28
  %44 = fmul double %27, %43
  %45 = load double, ptr %14, align 8, !tbaa !68
  %46 = tail call double @llvm.fmuladd.f64(double %44, double %29, double %45)
  %47 = getelementptr inbounds %"class.std::vector.13", ptr %33, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = getelementptr inbounds double, ptr %48, i64 %18
  store double %46, ptr %49, align 8, !tbaa !94
  %50 = add nuw nsw i64 %18, 1
  %51 = icmp eq i64 %50, %15
  br i1 %51, label %16, label %17, !llvm.loop !170
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi2EE16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr %1, align 8, !tbaa !90
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = and i64 %9, 68719476720
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = lshr exact i64 %9, 4
  %14 = and i64 %13, 4294967295
  br label %16

15:                                               ; preds = %16, %3
  ret void

16:                                               ; preds = %12, %16
  %17 = phi i64 [ 0, %12 ], [ %56, %16 ]
  %18 = load ptr, ptr %1, align 8, !tbaa !90
  %19 = getelementptr inbounds %"class.dealii::Point", ptr %18, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !94
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = getelementptr inbounds [2 x double], ptr %19, i64 0, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !94
  %24 = fmul double %23, 0x3FF921FB54442D18
  %25 = fmul double %21, 2.000000e+00
  %26 = tail call double @cos(double noundef %25) #27
  %27 = fmul double %24, 2.000000e+00
  %28 = tail call double @cos(double noundef %27) #27
  %29 = tail call double @sin(double noundef %25) #27
  %30 = tail call double @sin(double noundef %27) #27
  %31 = tail call double @llvm.fmuladd.f64(double %26, double 5.000000e-01, double 5.000000e-01)
  %32 = tail call double @llvm.fmuladd.f64(double %28, double 5.000000e-01, double 5.000000e-01)
  %33 = fmul double %29, 0xBFE921FB54442D18
  %34 = fmul double %33, %30
  %35 = load ptr, ptr %2, align 8, !tbaa !51
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = getelementptr inbounds %"class.dealii::Tensor", ptr %36, i64 %17
  store double %34, ptr %37, align 8, !tbaa !94
  %38 = fmul double %31, 0x3FF921FB54442D18
  %39 = fmul double %28, %38
  %40 = getelementptr inbounds %"class.dealii::Tensor", ptr %36, i64 %17, i32 0, i64 1
  store double %39, ptr %40, align 8, !tbaa !94
  %41 = fmul double %26, 0xBFF921FB54442D18
  %42 = fmul double %41, %32
  %43 = getelementptr inbounds %"class.std::vector.23", ptr %35, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !65
  %45 = getelementptr inbounds %"class.dealii::Tensor", ptr %44, i64 %17
  store double %42, ptr %45, align 8, !tbaa !94
  %46 = fmul double %29, 0x3FE921FB54442D18
  %47 = fmul double %46, %30
  %48 = getelementptr inbounds %"class.dealii::Tensor", ptr %44, i64 %17, i32 0, i64 1
  store double %47, ptr %48, align 8, !tbaa !94
  %49 = fmul double %26, 0x3FE921FB54442D18
  %50 = fmul double %49, %30
  %51 = getelementptr inbounds %"class.std::vector.23", ptr %35, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !65
  %53 = getelementptr inbounds %"class.dealii::Tensor", ptr %52, i64 %17
  store double %50, ptr %53, align 8, !tbaa !94
  %54 = fmul double %28, %46
  %55 = getelementptr inbounds %"class.dealii::Tensor", ptr %52, i64 %17, i32 0, i64 1
  store double %54, ptr %55, align 8, !tbaa !94
  %56 = add nuw nsw i64 %17, 1
  %57 = icmp eq i64 %56, %14
  br i1 %57, label %15, label %16, !llvm.loop !171
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi2EE17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr %1, align 8, !tbaa !90
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = lshr i64 %9, 4
  %11 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !169
  %13 = fcmp une double %12, 0.000000e+00
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %2, align 8, !tbaa !42
  br label %46

16:                                               ; preds = %3
  %17 = load ptr, ptr %0, align 8, !tbaa !39
  %18 = getelementptr inbounds ptr, ptr %17, i64 16
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %20 = load ptr, ptr %2, align 8, !tbaa !42
  br label %21

21:                                               ; preds = %16, %32
  %22 = phi i64 [ 0, %16 ], [ %33, %32 ]
  %23 = getelementptr inbounds %"class.std::vector.13", ptr %20, i64 %22
  %24 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  %26 = load ptr, ptr %23, align 8, !tbaa !57
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 3
  %31 = icmp eq ptr %25, %26
  br i1 %31, label %32, label %35

32:                                               ; preds = %35, %21
  %33 = add nuw nsw i64 %22, 1
  %34 = icmp eq i64 %22, 0
  br i1 %34, label %21, label %67, !llvm.loop !172

35:                                               ; preds = %21, %35
  %36 = phi i64 [ %44, %35 ], [ 0, %21 ]
  %37 = phi i32 [ %43, %35 ], [ 0, %21 ]
  %38 = load double, ptr %11, align 8, !tbaa !169
  %39 = fneg double %38
  %40 = getelementptr inbounds double, ptr %26, i64 %36
  %41 = load double, ptr %40, align 8, !tbaa !94
  %42 = fmul double %41, %39
  store double %42, ptr %40, align 8, !tbaa !94
  %43 = add i32 %37, 1
  %44 = zext i32 %43 to i64
  %45 = icmp ugt i64 %30, %44
  br i1 %45, label %35, label %32, !llvm.loop !173

46:                                               ; preds = %14, %57
  %47 = phi i64 [ 0, %14 ], [ %58, %57 ]
  %48 = getelementptr inbounds %"class.std::vector.13", ptr %15, i64 %47
  %49 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !97
  %51 = load ptr, ptr %48, align 8, !tbaa !57
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = icmp eq ptr %50, %51
  br i1 %56, label %57, label %60

57:                                               ; preds = %60, %46
  %58 = add nuw nsw i64 %47, 1
  %59 = icmp eq i64 %47, 0
  br i1 %59, label %46, label %67, !llvm.loop !174

60:                                               ; preds = %46, %60
  %61 = phi i64 [ %65, %60 ], [ 0, %46 ]
  %62 = phi i32 [ %64, %60 ], [ 0, %46 ]
  %63 = getelementptr inbounds double, ptr %51, i64 %61
  store double 0.000000e+00, ptr %63, align 8, !tbaa !94
  %64 = add i32 %62, 1
  %65 = zext i32 %64 to i64
  %66 = icmp ugt i64 %55, %65
  br i1 %66, label %60, label %57, !llvm.loop !175

67:                                               ; preds = %57, %32
  %68 = and i64 %9, 68719476720
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %"class.dealii::Functions::StokesCosine", ptr %0, i64 0, i32 1
  %72 = and i64 %10, 4294967295
  br label %74

73:                                               ; preds = %74, %67
  ret void

74:                                               ; preds = %70, %74
  %75 = phi i64 [ 0, %70 ], [ %116, %74 ]
  %76 = load ptr, ptr %1, align 8, !tbaa !90
  %77 = getelementptr inbounds %"class.dealii::Point", ptr %76, i64 %75
  %78 = load double, ptr %77, align 8, !tbaa !94
  %79 = fmul double %78, 0x3FF921FB54442D18
  %80 = getelementptr inbounds [2 x double], ptr %77, i64 0, i64 1
  %81 = load double, ptr %80, align 8, !tbaa !94
  %82 = fmul double %81, 0x3FF921FB54442D18
  %83 = fmul double %79, 2.000000e+00
  %84 = tail call double @cos(double noundef %83) #27
  %85 = fmul double %82, 2.000000e+00
  %86 = tail call double @cos(double noundef %85) #27
  %87 = tail call double @sin(double noundef %83) #27
  %88 = tail call double @sin(double noundef %85) #27
  %89 = load double, ptr %71, align 8, !tbaa !167
  %90 = fmul double %89, 0xC003BD3CC9BE45DE
  %91 = tail call double @llvm.fmuladd.f64(double %84, double 2.000000e+00, double 1.000000e+00)
  %92 = fmul double %91, %90
  %93 = fmul double %84, 0xBFE921FB54442D18
  %94 = fmul double %93, %88
  %95 = tail call double @llvm.fmuladd.f64(double %92, double %88, double %94)
  %96 = load ptr, ptr %2, align 8, !tbaa !42
  %97 = load ptr, ptr %96, align 8, !tbaa !57
  %98 = getelementptr inbounds double, ptr %97, i64 %75
  %99 = load double, ptr %98, align 8, !tbaa !94
  %100 = fadd double %99, %95
  store double %100, ptr %98, align 8, !tbaa !94
  %101 = load double, ptr %71, align 8, !tbaa !167
  %102 = fmul double %101, 0x4003BD3CC9BE45DE
  %103 = fmul double %87, %102
  %104 = tail call double @llvm.fmuladd.f64(double %86, double 2.000000e+00, double 1.000000e+00)
  %105 = fmul double %87, 0xBFE921FB54442D18
  %106 = fmul double %86, %105
  %107 = tail call double @llvm.fmuladd.f64(double %103, double %104, double %106)
  %108 = getelementptr inbounds %"class.std::vector.13", ptr %96, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !57
  %110 = getelementptr inbounds double, ptr %109, i64 %75
  %111 = load double, ptr %110, align 8, !tbaa !94
  %112 = fadd double %111, %107
  store double %112, ptr %110, align 8, !tbaa !94
  %113 = getelementptr inbounds %"class.std::vector.13", ptr %96, i64 2
  %114 = load ptr, ptr %113, align 8, !tbaa !57
  %115 = getelementptr inbounds double, ptr %114, i64 %75
  store double 0.000000e+00, ptr %115, align 8, !tbaa !94
  %116 = add nuw nsw i64 %75, 1
  %117 = icmp eq i64 %116, %72
  br i1 %117, label %73, label %74, !llvm.loop !176
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi3EEC2Edd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) unnamed_addr #8 comdat($_ZN6dealii9Functions12StokesCosineILi3EEC5Edd) align 2 !prof !64 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12StokesCosineILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12StokesCosineILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !177
  %6 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 2
  store double %2, ptr %6, align 8, !tbaa !179
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi3EE14set_parametersEdd(ptr noundef nonnull align 8 dereferenceable(168) %0, double noundef %1, double noundef %2) local_unnamed_addr #5 comdat align 2 !prof !64 {
  %4 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 1
  store double %1, ptr %4, align 8, !tbaa !177
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 2
  store double %2, ptr %5, align 8, !tbaa !179
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 comdat($_ZN6dealii9Functions12StokesCosineILi3EED5Ev) align 2 !prof !64 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12StokesCosineILi3EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12StokesCosineILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12StokesCosineILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12StokesCosineILi3EED5Ev) align 2 !annotation !38 {
  tail call void @_ZN6dealii9Functions12StokesCosineILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #27
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii9Functions12StokesCosineILi3EED0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 !annotation !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12StokesCosineILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(168) %2) #27
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi3EE13vector_valuesERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr %1, align 8, !tbaa !132
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = sdiv exact i64 %9, 24
  %11 = and i64 %10, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.dealii::Functions::FlowFunction.28", ptr %0, i64 0, i32 1
  %15 = and i64 %10, 4294967295
  br label %17

16:                                               ; preds = %17, %3
  ret void

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %67, %17 ]
  %19 = load ptr, ptr %1, align 8, !tbaa !132
  %20 = getelementptr inbounds %"class.dealii::Point.41", ptr %19, i64 %18
  %21 = load double, ptr %20, align 8, !tbaa !94
  %22 = fmul double %21, 0x3FF921FB54442D18
  %23 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 1
  %24 = load double, ptr %23, align 8, !tbaa !94
  %25 = fmul double %24, 0x3FF921FB54442D18
  %26 = tail call double @cos(double noundef %22) #27
  %27 = tail call double @cos(double noundef %25) #27
  %28 = tail call double @sin(double noundef %22) #27
  %29 = tail call double @sin(double noundef %25) #27
  %30 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 2
  %31 = load double, ptr %30, align 8, !tbaa !94
  %32 = fmul double %31, 0x3FF921FB54442D18
  %33 = tail call double @cos(double noundef %32) #27
  %34 = tail call double @sin(double noundef %32) #27
  %35 = fmul double %26, %26
  %36 = fmul double %35, %27
  %37 = fmul double %36, %29
  %38 = fmul double %37, %33
  %39 = fmul double %38, %34
  %40 = load ptr, ptr %2, align 8, !tbaa !42
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = getelementptr inbounds double, ptr %41, i64 %18
  store double %39, ptr %42, align 8, !tbaa !94
  %43 = fmul double %26, %28
  %44 = fmul double %27, %43
  %45 = fmul double %27, %44
  %46 = fmul double %45, %33
  %47 = fmul double %46, %34
  %48 = getelementptr inbounds %"class.std::vector.13", ptr %40, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = getelementptr inbounds double, ptr %49, i64 %18
  store double %47, ptr %50, align 8, !tbaa !94
  %51 = fmul double %26, -2.000000e+00
  %52 = fmul double %51, %28
  %53 = fmul double %27, %52
  %54 = fmul double %29, %53
  %55 = fmul double %54, %33
  %56 = fmul double %33, %55
  %57 = getelementptr inbounds %"class.std::vector.13", ptr %40, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = getelementptr inbounds double, ptr %58, i64 %18
  store double %56, ptr %59, align 8, !tbaa !94
  %60 = fmul double %29, %44
  %61 = fmul double %60, %33
  %62 = load double, ptr %14, align 8, !tbaa !126
  %63 = tail call double @llvm.fmuladd.f64(double %61, double %34, double %62)
  %64 = getelementptr inbounds %"class.std::vector.13", ptr %40, i64 3
  %65 = load ptr, ptr %64, align 8, !tbaa !57
  %66 = getelementptr inbounds double, ptr %65, i64 %18
  store double %63, ptr %66, align 8, !tbaa !94
  %67 = add nuw nsw i64 %18, 1
  %68 = icmp eq i64 %67, %15
  br i1 %68, label %16, label %17, !llvm.loop !180
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi3EE16vector_gradientsERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr %1, align 8, !tbaa !132
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = sdiv exact i64 %9, 24
  %11 = and i64 %10, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = and i64 %10, 4294967295
  br label %16

15:                                               ; preds = %16, %3
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %90, %16 ]
  %18 = load ptr, ptr %1, align 8, !tbaa !132
  %19 = getelementptr inbounds %"class.dealii::Point.41", ptr %18, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !94
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = getelementptr inbounds [3 x double], ptr %19, i64 0, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !94
  %24 = fmul double %23, 0x3FF921FB54442D18
  %25 = fmul double %21, 2.000000e+00
  %26 = tail call double @cos(double noundef %25) #27
  %27 = fmul double %24, 2.000000e+00
  %28 = tail call double @cos(double noundef %27) #27
  %29 = tail call double @sin(double noundef %25) #27
  %30 = tail call double @sin(double noundef %27) #27
  %31 = tail call double @llvm.fmuladd.f64(double %26, double 5.000000e-01, double 5.000000e-01)
  %32 = tail call double @llvm.fmuladd.f64(double %28, double 5.000000e-01, double 5.000000e-01)
  %33 = getelementptr inbounds [3 x double], ptr %19, i64 0, i64 2
  %34 = load double, ptr %33, align 8, !tbaa !94
  %35 = fmul double %34, 0x3FF921FB54442D18
  %36 = fmul double %35, 2.000000e+00
  %37 = tail call double @cos(double noundef %36) #27
  %38 = tail call double @sin(double noundef %36) #27
  %39 = tail call double @llvm.fmuladd.f64(double %37, double 5.000000e-01, double 5.000000e-01)
  %40 = fmul double %29, 0xBFD921FB54442D18
  %41 = fmul double %40, %30
  %42 = fmul double %41, %38
  %43 = load ptr, ptr %2, align 8, !tbaa !113
  %44 = load ptr, ptr %43, align 8, !tbaa !119
  %45 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %44, i64 %17
  store double %42, ptr %45, align 8, !tbaa !94
  %46 = fmul double %31, 0x3FE921FB54442D18
  %47 = fmul double %28, %46
  %48 = fmul double %47, %38
  %49 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %44, i64 %17, i32 0, i64 1
  store double %48, ptr %49, align 8, !tbaa !94
  %50 = fmul double %46, %30
  %51 = fmul double %50, %37
  %52 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %44, i64 %17, i32 0, i64 2
  store double %51, ptr %52, align 8, !tbaa !94
  %53 = fmul double %26, 0x3FE921FB54442D18
  %54 = fmul double %53, %32
  %55 = fmul double %54, %38
  %56 = getelementptr inbounds %"class.std::vector.43", ptr %43, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !119
  %58 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %57, i64 %17
  store double %55, ptr %58, align 8, !tbaa !94
  %59 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %57, i64 %17, i32 0, i64 1
  store double %42, ptr %59, align 8, !tbaa !94
  %60 = fmul double %29, 0x3FE921FB54442D18
  %61 = fmul double %32, %60
  %62 = fmul double %61, %37
  %63 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %57, i64 %17, i32 0, i64 2
  store double %62, ptr %63, align 8, !tbaa !94
  %64 = fmul double %26, 0xBFF921FB54442D18
  %65 = fmul double %64, %30
  %66 = fmul double %65, %39
  %67 = getelementptr inbounds %"class.std::vector.43", ptr %43, i64 2
  %68 = load ptr, ptr %67, align 8, !tbaa !119
  %69 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %68, i64 %17
  store double %66, ptr %69, align 8, !tbaa !94
  %70 = fmul double %29, 0xBFF921FB54442D18
  %71 = fmul double %28, %70
  %72 = fmul double %71, %39
  %73 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %68, i64 %17, i32 0, i64 1
  store double %72, ptr %73, align 8, !tbaa !94
  %74 = fmul double %60, %30
  %75 = fmul double %74, %38
  %76 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %68, i64 %17, i32 0, i64 2
  store double %75, ptr %76, align 8, !tbaa !94
  %77 = fmul double %26, 0x3FD921FB54442D18
  %78 = fmul double %77, %30
  %79 = fmul double %78, %38
  %80 = getelementptr inbounds %"class.std::vector.43", ptr %43, i64 3
  %81 = load ptr, ptr %80, align 8, !tbaa !119
  %82 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %81, i64 %17
  store double %79, ptr %82, align 8, !tbaa !94
  %83 = fmul double %29, 0x3FD921FB54442D18
  %84 = fmul double %28, %83
  %85 = fmul double %84, %38
  %86 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %81, i64 %17, i32 0, i64 1
  store double %85, ptr %86, align 8, !tbaa !94
  %87 = fmul double %83, %30
  %88 = fmul double %87, %37
  %89 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %81, i64 %17, i32 0, i64 2
  store double %88, ptr %89, align 8, !tbaa !94
  %90 = add nuw nsw i64 %17, 1
  %91 = icmp eq i64 %90, %14
  br i1 %91, label %15, label %16, !llvm.loop !181
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12StokesCosineILi3EE17vector_laplaciansERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_IdSaIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr %1, align 8, !tbaa !132
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = sdiv exact i64 %9, 24
  %11 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !179
  %13 = fcmp une double %12, 0.000000e+00
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %2, align 8, !tbaa !42
  br label %46

16:                                               ; preds = %3
  %17 = load ptr, ptr %0, align 8, !tbaa !39
  %18 = getelementptr inbounds ptr, ptr %17, i64 16
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %20 = load ptr, ptr %2, align 8, !tbaa !42
  br label %21

21:                                               ; preds = %16, %32
  %22 = phi i64 [ 0, %16 ], [ %33, %32 ]
  %23 = getelementptr inbounds %"class.std::vector.13", ptr %20, i64 %22
  %24 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  %26 = load ptr, ptr %23, align 8, !tbaa !57
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 3
  %31 = icmp eq ptr %25, %26
  br i1 %31, label %32, label %35

32:                                               ; preds = %35, %21
  %33 = add nuw nsw i64 %22, 1
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %67, label %21, !llvm.loop !182

35:                                               ; preds = %21, %35
  %36 = phi i64 [ %44, %35 ], [ 0, %21 ]
  %37 = phi i32 [ %43, %35 ], [ 0, %21 ]
  %38 = load double, ptr %11, align 8, !tbaa !179
  %39 = fneg double %38
  %40 = getelementptr inbounds double, ptr %26, i64 %36
  %41 = load double, ptr %40, align 8, !tbaa !94
  %42 = fmul double %41, %39
  store double %42, ptr %40, align 8, !tbaa !94
  %43 = add i32 %37, 1
  %44 = zext i32 %43 to i64
  %45 = icmp ugt i64 %30, %44
  br i1 %45, label %35, label %32, !llvm.loop !183

46:                                               ; preds = %14, %57
  %47 = phi i64 [ 0, %14 ], [ %58, %57 ]
  %48 = getelementptr inbounds %"class.std::vector.13", ptr %15, i64 %47
  %49 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !97
  %51 = load ptr, ptr %48, align 8, !tbaa !57
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = icmp eq ptr %50, %51
  br i1 %56, label %57, label %60

57:                                               ; preds = %60, %46
  %58 = add nuw nsw i64 %47, 1
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %67, label %46, !llvm.loop !184

60:                                               ; preds = %46, %60
  %61 = phi i64 [ %65, %60 ], [ 0, %46 ]
  %62 = phi i32 [ %64, %60 ], [ 0, %46 ]
  %63 = getelementptr inbounds double, ptr %51, i64 %61
  store double 0.000000e+00, ptr %63, align 8, !tbaa !94
  %64 = add i32 %62, 1
  %65 = zext i32 %64 to i64
  %66 = icmp ugt i64 %55, %65
  br i1 %66, label %60, label %57, !llvm.loop !185

67:                                               ; preds = %57, %32
  %68 = and i64 %10, 4294967295
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %"class.dealii::Functions::StokesCosine.49", ptr %0, i64 0, i32 1
  %72 = and i64 %10, 4294967295
  br label %74

73:                                               ; preds = %74, %67
  ret void

74:                                               ; preds = %70, %74
  %75 = phi i64 [ 0, %70 ], [ %142, %74 ]
  %76 = load ptr, ptr %1, align 8, !tbaa !132
  %77 = getelementptr inbounds %"class.dealii::Point.41", ptr %76, i64 %75
  %78 = load double, ptr %77, align 8, !tbaa !94
  %79 = fmul double %78, 0x3FF921FB54442D18
  %80 = getelementptr inbounds [3 x double], ptr %77, i64 0, i64 1
  %81 = load double, ptr %80, align 8, !tbaa !94
  %82 = fmul double %81, 0x3FF921FB54442D18
  %83 = fmul double %79, 2.000000e+00
  %84 = tail call double @cos(double noundef %83) #27
  %85 = fmul double %82, 2.000000e+00
  %86 = tail call double @cos(double noundef %85) #27
  %87 = tail call double @sin(double noundef %83) #27
  %88 = tail call double @sin(double noundef %85) #27
  %89 = getelementptr inbounds [3 x double], ptr %77, i64 0, i64 2
  %90 = load double, ptr %89, align 8, !tbaa !94
  %91 = fmul double %90, 0x400921FB54442D18
  %92 = fmul double %91, 2.000000e+00
  %93 = tail call double @cos(double noundef %92) #27
  %94 = tail call double @sin(double noundef %92) #27
  %95 = load double, ptr %71, align 8, !tbaa !177
  %96 = fmul double %95, -5.000000e-01
  %97 = fmul double %96, 0x4003BD3CC9BE45DE
  %98 = tail call double @llvm.fmuladd.f64(double %84, double 2.000000e+00, double 1.000000e+00)
  %99 = fmul double %98, %97
  %100 = fmul double %88, %99
  %101 = fmul double %84, 0xBFD921FB54442D18
  %102 = fmul double %101, %88
  %103 = fmul double %102, %94
  %104 = tail call double @llvm.fmuladd.f64(double %100, double %94, double %103)
  %105 = load ptr, ptr %2, align 8, !tbaa !42
  %106 = load ptr, ptr %105, align 8, !tbaa !57
  %107 = getelementptr inbounds double, ptr %106, i64 %75
  %108 = load double, ptr %107, align 8, !tbaa !94
  %109 = fadd double %108, %104
  store double %109, ptr %107, align 8, !tbaa !94
  %110 = load double, ptr %71, align 8, !tbaa !177
  %111 = fmul double %110, 5.000000e-01
  %112 = fmul double %111, 0x4003BD3CC9BE45DE
  %113 = fmul double %87, %112
  %114 = tail call double @llvm.fmuladd.f64(double %86, double 2.000000e+00, double 1.000000e+00)
  %115 = fmul double %114, %113
  %116 = fmul double %87, 0xBFD921FB54442D18
  %117 = fmul double %86, %116
  %118 = fmul double %117, %94
  %119 = tail call double @llvm.fmuladd.f64(double %115, double %94, double %118)
  %120 = getelementptr inbounds %"class.std::vector.13", ptr %105, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !57
  %122 = getelementptr inbounds double, ptr %121, i64 %75
  %123 = load double, ptr %122, align 8, !tbaa !94
  %124 = fadd double %123, %119
  store double %124, ptr %122, align 8, !tbaa !94
  %125 = load double, ptr %71, align 8, !tbaa !177
  %126 = fmul double %125, -5.000000e-01
  %127 = fmul double %126, 0x4003BD3CC9BE45DE
  %128 = fmul double %87, %127
  %129 = fmul double %88, %128
  %130 = tail call double @llvm.fmuladd.f64(double %93, double 2.000000e+00, double 1.000000e+00)
  %131 = fmul double %88, %116
  %132 = fmul double %131, %93
  %133 = tail call double @llvm.fmuladd.f64(double %129, double %130, double %132)
  %134 = getelementptr inbounds %"class.std::vector.13", ptr %105, i64 2
  %135 = load ptr, ptr %134, align 8, !tbaa !57
  %136 = getelementptr inbounds double, ptr %135, i64 %75
  %137 = load double, ptr %136, align 8, !tbaa !94
  %138 = fadd double %137, %133
  store double %138, ptr %136, align 8, !tbaa !94
  %139 = getelementptr inbounds %"class.std::vector.13", ptr %105, i64 3
  %140 = load ptr, ptr %139, align 8, !tbaa !57
  %141 = getelementptr inbounds double, ptr %140, i64 %75
  store double 0.000000e+00, ptr %141, align 8, !tbaa !94
  %142 = add nuw nsw i64 %75, 1
  %143 = icmp eq i64 %142, %72
  br i1 %143, label %73, label %74, !llvm.loop !186
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii9Functions18StokesLSingularityC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #8 align 2 !prof !64 {
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18StokesLSingularityE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18StokesLSingularityE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 1
  store double 0x4012D97C7F3321D2, ptr %3, align 8, !tbaa !187
  %4 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 2
  store double 0xBFEAD7371E21E0D3, ptr %4, align 8, !tbaa !189
  %5 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  store double 0x3FF8B634942AF3DE, ptr %5, align 8, !tbaa !190
  %6 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 4
  store double 0x3FDD272DAF543088, ptr %6, align 8, !tbaa !191
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions18StokesLSingularity13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(184) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #13 align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr %1, align 8, !tbaa !90
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = and i64 %9, 68719476720
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = lshr exact i64 %9, 4
  %14 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  %18 = and i64 %13, 4294967295
  br label %20

19:                                               ; preds = %203, %3
  ret void

20:                                               ; preds = %12, %203
  %21 = phi i64 [ 0, %12 ], [ %204, %203 ]
  %22 = load ptr, ptr %1, align 8, !tbaa !90
  %23 = getelementptr inbounds %"class.dealii::Point", ptr %22, i64 %21
  %24 = load double, ptr %23, align 8, !tbaa !94
  %25 = getelementptr inbounds [2 x double], ptr %23, i64 0, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !94
  %27 = fcmp olt double %24, 0.000000e+00
  %28 = fcmp olt double %26, 0.000000e+00
  %29 = or i1 %27, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %2, align 8, !tbaa !42
  br label %196

32:                                               ; preds = %20
  %33 = fneg double %24
  %34 = tail call double @atan2(double noundef %26, double noundef %33) #27
  %35 = fadd double %34, 0x400921FB54442D18
  %36 = fmul double %26, %26
  %37 = tail call double @llvm.fmuladd.f64(double %24, double %24, double %36)
  %38 = tail call double @pow(double noundef %37, double noundef 0x3FD16C692855E7BC) #27
  %39 = tail call double @pow(double noundef %37, double noundef 0xBFCD272DAF543088) #27
  %40 = load double, ptr %14, align 8, !tbaa !190
  %41 = tail call double @sin(double noundef %35) #27
  %42 = fmul double %40, %41
  %43 = load double, ptr %15, align 8, !tbaa !189
  %44 = load double, ptr %14, align 8, !tbaa !190
  %45 = fmul double %35, %44
  %46 = tail call double @sin(double noundef %45) #27
  %47 = load double, ptr %14, align 8, !tbaa !190
  %48 = fdiv double %46, %47
  %49 = load double, ptr %16, align 8, !tbaa !191
  %50 = fmul double %35, %49
  %51 = tail call double @sin(double noundef %50) #27
  %52 = load double, ptr %16, align 8, !tbaa !191
  %53 = fdiv double %51, %52
  %54 = fsub double %48, %53
  %55 = load double, ptr %14, align 8, !tbaa !190
  %56 = fmul double %35, %55
  %57 = tail call double @cos(double noundef %56) #27
  %58 = fneg double %57
  %59 = tail call double @llvm.fmuladd.f64(double %43, double %54, double %58)
  %60 = load double, ptr %16, align 8, !tbaa !191
  %61 = fmul double %35, %60
  %62 = tail call double @cos(double noundef %61) #27
  %63 = fadd double %59, %62
  %64 = tail call double @cos(double noundef %35) #27
  %65 = load double, ptr %15, align 8, !tbaa !189
  %66 = load double, ptr %14, align 8, !tbaa !190
  %67 = fmul double %35, %66
  %68 = tail call double @cos(double noundef %67) #27
  %69 = load double, ptr %16, align 8, !tbaa !191
  %70 = fmul double %35, %69
  %71 = tail call double @cos(double noundef %70) #27
  %72 = fsub double %68, %71
  %73 = load double, ptr %14, align 8, !tbaa !190
  %74 = fmul double %35, %73
  %75 = tail call double @sin(double noundef %74) #27
  %76 = fmul double %73, %75
  %77 = tail call double @llvm.fmuladd.f64(double %65, double %72, double %76)
  %78 = load double, ptr %16, align 8, !tbaa !191
  %79 = fmul double %35, %78
  %80 = tail call double @sin(double noundef %79) #27
  %81 = fneg double %78
  %82 = tail call noundef double @llvm.fmuladd.f64(double %81, double %80, double %77)
  %83 = fmul double %64, %82
  %84 = tail call double @llvm.fmuladd.f64(double %42, double %63, double %83)
  %85 = fmul double %38, %84
  %86 = load ptr, ptr %2, align 8, !tbaa !42
  %87 = load ptr, ptr %86, align 8, !tbaa !57
  %88 = getelementptr inbounds double, ptr %87, i64 %21
  store double %85, ptr %88, align 8, !tbaa !94
  %89 = load double, ptr %14, align 8, !tbaa !190
  %90 = tail call double @cos(double noundef %35) #27
  %91 = fmul double %89, %90
  %92 = load double, ptr %15, align 8, !tbaa !189
  %93 = load double, ptr %14, align 8, !tbaa !190
  %94 = fmul double %35, %93
  %95 = tail call double @sin(double noundef %94) #27
  %96 = load double, ptr %14, align 8, !tbaa !190
  %97 = fdiv double %95, %96
  %98 = load double, ptr %16, align 8, !tbaa !191
  %99 = fmul double %35, %98
  %100 = tail call double @sin(double noundef %99) #27
  %101 = load double, ptr %16, align 8, !tbaa !191
  %102 = fdiv double %100, %101
  %103 = fsub double %97, %102
  %104 = load double, ptr %14, align 8, !tbaa !190
  %105 = fmul double %35, %104
  %106 = tail call double @cos(double noundef %105) #27
  %107 = fneg double %106
  %108 = tail call double @llvm.fmuladd.f64(double %92, double %103, double %107)
  %109 = load double, ptr %16, align 8, !tbaa !191
  %110 = fmul double %35, %109
  %111 = tail call double @cos(double noundef %110) #27
  %112 = fadd double %108, %111
  %113 = tail call double @sin(double noundef %35) #27
  %114 = load double, ptr %15, align 8, !tbaa !189
  %115 = load double, ptr %14, align 8, !tbaa !190
  %116 = fmul double %35, %115
  %117 = tail call double @cos(double noundef %116) #27
  %118 = load double, ptr %16, align 8, !tbaa !191
  %119 = fmul double %35, %118
  %120 = tail call double @cos(double noundef %119) #27
  %121 = fsub double %117, %120
  %122 = load double, ptr %14, align 8, !tbaa !190
  %123 = fmul double %35, %122
  %124 = tail call double @sin(double noundef %123) #27
  %125 = fmul double %122, %124
  %126 = tail call double @llvm.fmuladd.f64(double %114, double %121, double %125)
  %127 = load double, ptr %16, align 8, !tbaa !191
  %128 = fmul double %35, %127
  %129 = tail call double @sin(double noundef %128) #27
  %130 = fneg double %127
  %131 = tail call noundef double @llvm.fmuladd.f64(double %130, double %129, double %126)
  %132 = fneg double %113
  %133 = fmul double %131, %132
  %134 = tail call double @llvm.fmuladd.f64(double %91, double %112, double %133)
  %135 = fmul double %38, %134
  %136 = load ptr, ptr %2, align 8, !tbaa !42
  %137 = getelementptr inbounds %"class.std::vector.13", ptr %136, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !57
  %139 = getelementptr inbounds double, ptr %138, i64 %21
  store double %135, ptr %139, align 8, !tbaa !94
  %140 = fneg double %39
  %141 = load double, ptr %14, align 8, !tbaa !190
  %142 = fmul double %141, %141
  %143 = load double, ptr %15, align 8, !tbaa !189
  %144 = fmul double %35, %141
  %145 = tail call double @cos(double noundef %144) #27
  %146 = load double, ptr %16, align 8, !tbaa !191
  %147 = fmul double %35, %146
  %148 = tail call double @cos(double noundef %147) #27
  %149 = fsub double %145, %148
  %150 = load double, ptr %14, align 8, !tbaa !190
  %151 = fmul double %35, %150
  %152 = tail call double @sin(double noundef %151) #27
  %153 = fmul double %150, %152
  %154 = tail call double @llvm.fmuladd.f64(double %143, double %149, double %153)
  %155 = load double, ptr %16, align 8, !tbaa !191
  %156 = fmul double %35, %155
  %157 = tail call double @sin(double noundef %156) #27
  %158 = fneg double %155
  %159 = tail call noundef double @llvm.fmuladd.f64(double %158, double %157, double %154)
  %160 = load double, ptr %15, align 8, !tbaa !189
  %161 = load double, ptr %16, align 8, !tbaa !191
  %162 = fmul double %161, %161
  %163 = fmul double %35, %161
  %164 = tail call double @cos(double noundef %163) #27
  %165 = load double, ptr %14, align 8, !tbaa !190
  %166 = fmul double %35, %165
  %167 = tail call double @cos(double noundef %166) #27
  %168 = fneg double %165
  %169 = fmul double %165, %168
  %170 = fmul double %169, %167
  %171 = tail call double @llvm.fmuladd.f64(double %162, double %164, double %170)
  %172 = load double, ptr %16, align 8, !tbaa !191
  %173 = fmul double %172, %172
  %174 = fmul double %172, %173
  %175 = fmul double %35, %172
  %176 = tail call double @sin(double noundef %175) #27
  %177 = fmul double %176, %174
  %178 = tail call double @llvm.fmuladd.f64(double %160, double %171, double %177)
  %179 = load double, ptr %14, align 8, !tbaa !190
  %180 = fmul double %35, %179
  %181 = tail call double @sin(double noundef %180) #27
  %182 = fneg double %179
  %183 = fmul double %179, %182
  %184 = fmul double %179, %183
  %185 = tail call noundef double @llvm.fmuladd.f64(double %184, double %181, double %178)
  %186 = tail call double @llvm.fmuladd.f64(double %142, double %159, double %185)
  %187 = fmul double %186, %140
  %188 = load double, ptr %16, align 8, !tbaa !191
  %189 = fdiv double %187, %188
  %190 = load double, ptr %17, align 8, !tbaa !68
  %191 = fadd double %190, %189
  %192 = load ptr, ptr %2, align 8, !tbaa !42
  %193 = getelementptr inbounds %"class.std::vector.13", ptr %192, i64 2
  %194 = load ptr, ptr %193, align 8, !tbaa !57
  %195 = getelementptr inbounds double, ptr %194, i64 %21
  store double %191, ptr %195, align 8, !tbaa !94
  br label %203

196:                                              ; preds = %30, %196
  %197 = phi i64 [ 0, %30 ], [ %201, %196 ]
  %198 = getelementptr inbounds %"class.std::vector.13", ptr %31, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !57
  %200 = getelementptr inbounds double, ptr %199, i64 %21
  store double 0.000000e+00, ptr %200, align 8, !tbaa !94
  %201 = add nuw nsw i64 %197, 1
  %202 = icmp eq i64 %201, 3
  br i1 %202, label %203, label %196, !llvm.loop !192

203:                                              ; preds = %196, %32
  %204 = add nuw nsw i64 %21, 1
  %205 = icmp eq i64 %204, %18
  br i1 %205, label %19, label %20, !llvm.loop !193
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions18StokesLSingularity16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(184) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #13 align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr %1, align 8, !tbaa !90
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = and i64 %9, 68719476720
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = lshr exact i64 %9, 4
  %14 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %"class.dealii::Functions::StokesLSingularity", ptr %0, i64 0, i32 4
  %17 = and i64 %13, 4294967295
  br label %19

18:                                               ; preds = %227, %3
  ret void

19:                                               ; preds = %12, %227
  %20 = phi i64 [ 0, %12 ], [ %228, %227 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !90
  %22 = getelementptr inbounds %"class.dealii::Point", ptr %21, i64 %20
  %23 = load double, ptr %22, align 8, !tbaa !94
  %24 = getelementptr inbounds [2 x double], ptr %22, i64 0, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !94
  %26 = fcmp olt double %23, 0.000000e+00
  %27 = fcmp olt double %25, 0.000000e+00
  %28 = or i1 %26, %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr %2, align 8, !tbaa !51
  br label %220

31:                                               ; preds = %19
  %32 = fneg double %23
  %33 = tail call double @atan2(double noundef %25, double noundef %32) #27
  %34 = fadd double %33, 0x400921FB54442D18
  %35 = fmul double %25, %25
  %36 = tail call double @llvm.fmuladd.f64(double %23, double %23, double %35)
  %37 = tail call double @sqrt(double noundef %36) #27
  %38 = tail call double @pow(double noundef %36, double noundef 0x3FD16C692855E7BC) #27
  %39 = tail call double @pow(double noundef %36, double noundef 0xBFCD272DAF543088) #27
  %40 = tail call double @pow(double noundef %36, double noundef 0xBFE749CB6BD50C22) #27
  %41 = load double, ptr %14, align 8, !tbaa !189
  %42 = load double, ptr %15, align 8, !tbaa !190
  %43 = fmul double %34, %42
  %44 = tail call double @sin(double noundef %43) #27
  %45 = load double, ptr %15, align 8, !tbaa !190
  %46 = fdiv double %44, %45
  %47 = load double, ptr %16, align 8, !tbaa !191
  %48 = fmul double %34, %47
  %49 = tail call double @sin(double noundef %48) #27
  %50 = load double, ptr %16, align 8, !tbaa !191
  %51 = fdiv double %49, %50
  %52 = fsub double %46, %51
  %53 = load double, ptr %15, align 8, !tbaa !190
  %54 = fmul double %34, %53
  %55 = tail call double @cos(double noundef %54) #27
  %56 = fneg double %55
  %57 = tail call double @llvm.fmuladd.f64(double %41, double %52, double %56)
  %58 = load double, ptr %16, align 8, !tbaa !191
  %59 = fmul double %34, %58
  %60 = tail call double @cos(double noundef %59) #27
  %61 = fadd double %57, %60
  %62 = load double, ptr %14, align 8, !tbaa !189
  %63 = load double, ptr %15, align 8, !tbaa !190
  %64 = fmul double %34, %63
  %65 = tail call double @cos(double noundef %64) #27
  %66 = load double, ptr %16, align 8, !tbaa !191
  %67 = fmul double %34, %66
  %68 = tail call double @cos(double noundef %67) #27
  %69 = fsub double %65, %68
  %70 = load double, ptr %15, align 8, !tbaa !190
  %71 = fmul double %34, %70
  %72 = tail call double @sin(double noundef %71) #27
  %73 = fmul double %70, %72
  %74 = tail call double @llvm.fmuladd.f64(double %62, double %69, double %73)
  %75 = load double, ptr %16, align 8, !tbaa !191
  %76 = fmul double %34, %75
  %77 = tail call double @sin(double noundef %76) #27
  %78 = fneg double %75
  %79 = tail call noundef double @llvm.fmuladd.f64(double %78, double %77, double %74)
  %80 = load double, ptr %14, align 8, !tbaa !189
  %81 = load double, ptr %16, align 8, !tbaa !191
  %82 = fmul double %34, %81
  %83 = tail call double @sin(double noundef %82) #27
  %84 = load double, ptr %15, align 8, !tbaa !190
  %85 = fmul double %34, %84
  %86 = tail call double @sin(double noundef %85) #27
  %87 = fneg double %84
  %88 = fmul double %86, %87
  %89 = tail call double @llvm.fmuladd.f64(double %81, double %83, double %88)
  %90 = load double, ptr %15, align 8, !tbaa !190
  %91 = fmul double %90, %90
  %92 = fmul double %34, %90
  %93 = tail call double @cos(double noundef %92) #27
  %94 = fmul double %91, %93
  %95 = tail call double @llvm.fmuladd.f64(double %80, double %89, double %94)
  %96 = load double, ptr %16, align 8, !tbaa !191
  %97 = fmul double %34, %96
  %98 = tail call double @cos(double noundef %97) #27
  %99 = fneg double %96
  %100 = fmul double %96, %99
  %101 = tail call noundef double @llvm.fmuladd.f64(double %100, double %98, double %95)
  %102 = tail call double @cos(double noundef %34) #27
  %103 = tail call double @sin(double noundef %34) #27
  %104 = fmul double %39, 0x3FE16C692855E7BC
  %105 = load double, ptr %15, align 8, !tbaa !190
  %106 = fmul double %103, %105
  %107 = fmul double %79, %102
  %108 = tail call double @llvm.fmuladd.f64(double %106, double %61, double %107)
  %109 = fmul double %104, %108
  %110 = fmul double %102, %105
  %111 = fmul double %79, %106
  %112 = tail call double @llvm.fmuladd.f64(double %110, double %61, double %111)
  %113 = fneg double %103
  %114 = tail call double @llvm.fmuladd.f64(double %113, double %79, double %112)
  %115 = tail call double @llvm.fmuladd.f64(double %102, double %101, double %114)
  %116 = fmul double %38, %115
  %117 = fmul double %79, %113
  %118 = tail call double @llvm.fmuladd.f64(double %110, double %61, double %117)
  %119 = fmul double %104, %118
  %120 = fmul double %61, %113
  %121 = tail call double @llvm.fmuladd.f64(double %102, double %79, double %120)
  %122 = fneg double %107
  %123 = tail call double @llvm.fmuladd.f64(double %105, double %121, double %122)
  %124 = tail call double @llvm.fmuladd.f64(double %113, double %101, double %123)
  %125 = fmul double %38, %124
  %126 = fmul double %40, 0x3FDD272DAF543088
  %127 = fmul double %105, %105
  %128 = load double, ptr %14, align 8, !tbaa !189
  %129 = load double, ptr %16, align 8, !tbaa !191
  %130 = fmul double %129, %129
  %131 = fmul double %34, %129
  %132 = tail call double @cos(double noundef %131) #27
  %133 = load double, ptr %15, align 8, !tbaa !190
  %134 = fmul double %34, %133
  %135 = tail call double @cos(double noundef %134) #27
  %136 = fneg double %133
  %137 = fmul double %133, %136
  %138 = fmul double %137, %135
  %139 = tail call double @llvm.fmuladd.f64(double %130, double %132, double %138)
  %140 = load double, ptr %16, align 8, !tbaa !191
  %141 = fmul double %140, %140
  %142 = fmul double %140, %141
  %143 = fmul double %34, %140
  %144 = tail call double @sin(double noundef %143) #27
  %145 = fmul double %144, %142
  %146 = tail call double @llvm.fmuladd.f64(double %128, double %139, double %145)
  %147 = load double, ptr %15, align 8, !tbaa !190
  %148 = fmul double %34, %147
  %149 = tail call double @sin(double noundef %148) #27
  %150 = fneg double %147
  %151 = fmul double %147, %150
  %152 = fmul double %147, %151
  %153 = tail call noundef double @llvm.fmuladd.f64(double %152, double %149, double %146)
  %154 = tail call double @llvm.fmuladd.f64(double %127, double %79, double %153)
  %155 = fmul double %126, %154
  %156 = load double, ptr %16, align 8, !tbaa !191
  %157 = fdiv double %155, %156
  %158 = fneg double %39
  %159 = load double, ptr %15, align 8, !tbaa !190
  %160 = fmul double %159, %159
  %161 = load double, ptr %14, align 8, !tbaa !189
  %162 = fmul double %159, %160
  %163 = fmul double %34, %159
  %164 = tail call double @sin(double noundef %163) #27
  %165 = load double, ptr %16, align 8, !tbaa !191
  %166 = fmul double %34, %165
  %167 = tail call double @sin(double noundef %166) #27
  %168 = fneg double %165
  %169 = fmul double %165, %168
  %170 = fmul double %165, %169
  %171 = fmul double %167, %170
  %172 = tail call double @llvm.fmuladd.f64(double %162, double %164, double %171)
  %173 = load double, ptr %16, align 8, !tbaa !191
  %174 = fmul double %173, %173
  %175 = fmul double %173, %174
  %176 = fmul double %173, %175
  %177 = fmul double %34, %173
  %178 = tail call double @cos(double noundef %177) #27
  %179 = fmul double %178, %176
  %180 = tail call double @llvm.fmuladd.f64(double %161, double %172, double %179)
  %181 = load double, ptr %15, align 8, !tbaa !190
  %182 = fmul double %34, %181
  %183 = tail call double @cos(double noundef %182) #27
  %184 = fneg double %181
  %185 = fmul double %181, %184
  %186 = fmul double %181, %185
  %187 = fmul double %181, %186
  %188 = tail call noundef double @llvm.fmuladd.f64(double %187, double %183, double %180)
  %189 = tail call double @llvm.fmuladd.f64(double %160, double %101, double %188)
  %190 = fmul double %189, %158
  %191 = load double, ptr %16, align 8, !tbaa !191
  %192 = fdiv double %190, %191
  %193 = fdiv double %113, %37
  %194 = fmul double %193, %116
  %195 = tail call double @llvm.fmuladd.f64(double %102, double %109, double %194)
  %196 = load ptr, ptr %2, align 8, !tbaa !51
  %197 = load ptr, ptr %196, align 8, !tbaa !65
  %198 = getelementptr inbounds %"class.dealii::Tensor", ptr %197, i64 %20
  store double %195, ptr %198, align 8, !tbaa !94
  %199 = fneg double %102
  %200 = fdiv double %199, %37
  %201 = fmul double %200, %116
  %202 = tail call double @llvm.fmuladd.f64(double %113, double %109, double %201)
  %203 = getelementptr inbounds %"class.dealii::Tensor", ptr %197, i64 %20, i32 0, i64 1
  store double %202, ptr %203, align 8, !tbaa !94
  %204 = fmul double %193, %125
  %205 = tail call double @llvm.fmuladd.f64(double %102, double %119, double %204)
  %206 = getelementptr inbounds %"class.std::vector.23", ptr %196, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !65
  %208 = getelementptr inbounds %"class.dealii::Tensor", ptr %207, i64 %20
  store double %205, ptr %208, align 8, !tbaa !94
  %209 = fmul double %200, %125
  %210 = tail call double @llvm.fmuladd.f64(double %113, double %119, double %209)
  %211 = getelementptr inbounds %"class.dealii::Tensor", ptr %207, i64 %20, i32 0, i64 1
  store double %210, ptr %211, align 8, !tbaa !94
  %212 = fmul double %193, %192
  %213 = tail call double @llvm.fmuladd.f64(double %102, double %157, double %212)
  %214 = getelementptr inbounds %"class.std::vector.23", ptr %196, i64 2
  %215 = load ptr, ptr %214, align 8, !tbaa !65
  %216 = getelementptr inbounds %"class.dealii::Tensor", ptr %215, i64 %20
  store double %213, ptr %216, align 8, !tbaa !94
  %217 = fmul double %200, %192
  %218 = tail call double @llvm.fmuladd.f64(double %113, double %157, double %217)
  %219 = getelementptr inbounds %"class.dealii::Tensor", ptr %215, i64 %20, i32 0, i64 1
  store double %218, ptr %219, align 8, !tbaa !94
  br label %227

220:                                              ; preds = %29, %220
  %221 = phi i64 [ 0, %29 ], [ %225, %220 ]
  %222 = getelementptr inbounds %"class.std::vector.23", ptr %30, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !65
  %224 = getelementptr inbounds %"class.dealii::Tensor", ptr %223, i64 %20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %224, i8 0, i64 16, i1 false), !tbaa !94
  %225 = add nuw nsw i64 %221, 1
  %226 = icmp eq i64 %225, 3
  br i1 %226, label %227, label %220, !llvm.loop !194

227:                                              ; preds = %220, %31
  %228 = add nuw nsw i64 %20, 1
  %229 = icmp eq i64 %228, %17
  br i1 %229, label %18, label %19, !llvm.loop !195
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZNK6dealii9Functions18StokesLSingularity17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #14 align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %2, align 8, !tbaa !42
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %23, label %12

12:                                               ; preds = %3, %24
  %13 = phi i64 [ %25, %24 ], [ 0, %3 ]
  %14 = getelementptr inbounds %"class.std::vector.13", ptr %6, i64 %13
  %15 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = load ptr, ptr %14, align 8, !tbaa !57
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 3
  %22 = icmp eq ptr %16, %17
  br i1 %22, label %24, label %28

23:                                               ; preds = %24, %3
  ret void

24:                                               ; preds = %28, %12
  %25 = add i64 %13, 1
  %26 = and i64 %25, 4294967295
  %27 = icmp ugt i64 %10, %26
  br i1 %27, label %12, label %23, !llvm.loop !196

28:                                               ; preds = %12, %28
  %29 = phi i64 [ %33, %28 ], [ 0, %12 ]
  %30 = phi i32 [ %32, %28 ], [ 0, %12 ]
  %31 = getelementptr inbounds double, ptr %17, i64 %29
  store double 0.000000e+00, ptr %31, align 8, !tbaa !94
  %32 = add i32 %30, 1
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %21, %33
  br i1 %34, label %28, label %24, !llvm.loop !197
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii9Functions9KovasznayC2Edb(ptr noundef nonnull align 8 dereferenceable(177) %0, double noundef %1, i1 noundef zeroext %2) unnamed_addr #8 align 2 !prof !64 {
  %4 = zext i1 %2 to i8
  tail call void @_ZN6dealii9Functions12FlowFunctionILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions9KovasznayE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions9KovasznayE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 1
  store double %1, ptr %6, align 8, !tbaa !198
  %7 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 4
  store i8 %4, ptr %7, align 8, !tbaa !201
  %8 = fmul double %1, 5.000000e-01
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %8, double 0x4043BD3CC9BE45DE)
  %10 = tail call double @sqrt(double noundef %9) #27
  %11 = fadd double %8, %10
  %12 = fdiv double 0xC043BD3CC9BE45DE, %11
  %13 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 2
  store double %12, ptr %13, align 8, !tbaa !202
  %14 = fmul double %12, 8.000000e+00
  %15 = fdiv double 1.000000e+00, %14
  %16 = fmul double %12, 3.000000e+00
  %17 = tail call double @exp(double noundef %16) #27
  %18 = fneg double %12
  %19 = tail call double @exp(double noundef %18) #27
  %20 = fsub double %17, %19
  %21 = fmul double %15, %20
  %22 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 3
  store double %21, ptr %22, align 8, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN6dealii9Functions9KovasznayD2Ev(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #5 align 2 !prof !64 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N6dealii9Functions9KovasznayD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !64 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 112
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds i8, ptr %0, i64 88
  tail call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6dealii9Functions9KovasznayD0Ev(ptr noundef nonnull align 8 dereferenceable(177) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %17, label %9, !prof !56

9:                                                ; preds = %1, %14
  %10 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !59

13:                                               ; preds = %9
  tail call void @_ZdlPv(ptr noundef %11) #26
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %"class.std::vector.13", ptr %10, i64 1
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %9, !prof !60, !llvm.loop !61

17:                                               ; preds = %14, %1
  %18 = load ptr, ptr %4, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !62

20:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %18) #26
  br label %21

21:                                               ; preds = %17, %20
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N6dealii9Functions9KovasznayD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !64 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions9KovasznayD0Ev(ptr noundef nonnull align 8 dereferenceable(177) %2) #27
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions9Kovasznay13vector_valuesERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(177) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #13 align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr %1, align 8, !tbaa !90
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = and i64 %9, 68719476720
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = lshr exact i64 %9, 4
  %14 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 1
  %17 = and i64 %13, 4294967295
  br label %19

18:                                               ; preds = %19, %3
  ret void

19:                                               ; preds = %12, %19
  %20 = phi i64 [ 0, %12 ], [ %53, %19 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !90
  %22 = getelementptr inbounds %"class.dealii::Point", ptr %21, i64 %20
  %23 = load double, ptr %22, align 8, !tbaa !94
  %24 = getelementptr inbounds [2 x double], ptr %22, i64 0, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !94
  %26 = fmul double %25, 0x401921FB54442D18
  %27 = load double, ptr %14, align 8, !tbaa !202
  %28 = fmul double %23, %27
  %29 = tail call double @exp(double noundef %28) #27
  %30 = tail call double @cos(double noundef %26) #27
  %31 = fneg double %29
  %32 = tail call double @llvm.fmuladd.f64(double %31, double %30, double 1.000000e+00)
  %33 = load ptr, ptr %2, align 8, !tbaa !42
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = getelementptr inbounds double, ptr %34, i64 %20
  store double %32, ptr %35, align 8, !tbaa !94
  %36 = load double, ptr %14, align 8, !tbaa !202
  %37 = fmul double %36, 0x3FC45F306DC9C883
  %38 = fmul double %29, %37
  %39 = tail call double @sin(double noundef %26) #27
  %40 = fmul double %39, %38
  %41 = load ptr, ptr %2, align 8, !tbaa !42
  %42 = getelementptr inbounds %"class.std::vector.13", ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  %44 = getelementptr inbounds double, ptr %43, i64 %20
  store double %40, ptr %44, align 8, !tbaa !94
  %45 = fmul double %29, -5.000000e-01
  %46 = load double, ptr %15, align 8, !tbaa !203
  %47 = tail call double @llvm.fmuladd.f64(double %45, double %29, double %46)
  %48 = load double, ptr %16, align 8, !tbaa !68
  %49 = fadd double %47, %48
  %50 = getelementptr inbounds %"class.std::vector.13", ptr %41, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = getelementptr inbounds double, ptr %51, i64 %20
  store double %49, ptr %52, align 8, !tbaa !94
  %53 = add nuw nsw i64 %20, 1
  %54 = icmp eq i64 %53, %17
  br i1 %54, label %18, label %19, !llvm.loop !204
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions9Kovasznay16vector_gradientsERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(177) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #13 align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = load ptr, ptr %1, align 8, !tbaa !90
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = and i64 %9, 68719476720
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = lshr exact i64 %9, 4
  %14 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 2
  %15 = and i64 %13, 4294967295
  br label %17

16:                                               ; preds = %17, %3
  ret void

17:                                               ; preds = %12, %17
  %18 = phi i64 [ 0, %12 ], [ %60, %17 ]
  %19 = load ptr, ptr %1, align 8, !tbaa !90
  %20 = getelementptr inbounds %"class.dealii::Point", ptr %19, i64 %18
  %21 = load double, ptr %20, align 8, !tbaa !94
  %22 = getelementptr inbounds [2 x double], ptr %20, i64 0, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !94
  %24 = load double, ptr %14, align 8, !tbaa !202
  %25 = fmul double %21, %24
  %26 = tail call double @exp(double noundef %25) #27
  %27 = fmul double %23, 0x401921FB54442D18
  %28 = tail call double @cos(double noundef %27) #27
  %29 = tail call double @sin(double noundef %27) #27
  %30 = load double, ptr %14, align 8, !tbaa !202
  %31 = fneg double %30
  %32 = fmul double %26, %31
  %33 = fmul double %28, %32
  %34 = load ptr, ptr %2, align 8, !tbaa !51
  %35 = load ptr, ptr %34, align 8, !tbaa !65
  %36 = getelementptr inbounds %"class.dealii::Tensor", ptr %35, i64 %18
  store double %33, ptr %36, align 8, !tbaa !94
  %37 = fmul double %26, 0x401921FB54442D18
  %38 = fmul double %37, %29
  %39 = getelementptr inbounds %"class.dealii::Tensor", ptr %35, i64 %18, i32 0, i64 1
  store double %38, ptr %39, align 8, !tbaa !94
  %40 = load double, ptr %14, align 8, !tbaa !202
  %41 = fmul double %40, %40
  %42 = fdiv double %41, 0x401921FB54442D18
  %43 = fmul double %26, %42
  %44 = fmul double %29, %43
  %45 = getelementptr inbounds %"class.std::vector.23", ptr %34, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !65
  %47 = getelementptr inbounds %"class.dealii::Tensor", ptr %46, i64 %18
  store double %44, ptr %47, align 8, !tbaa !94
  %48 = load double, ptr %14, align 8, !tbaa !202
  %49 = fmul double %26, %48
  %50 = fmul double %28, %49
  %51 = getelementptr inbounds %"class.dealii::Tensor", ptr %46, i64 %18, i32 0, i64 1
  store double %50, ptr %51, align 8, !tbaa !94
  %52 = load double, ptr %14, align 8, !tbaa !202
  %53 = fneg double %52
  %54 = fmul double %26, %53
  %55 = fmul double %26, %54
  %56 = getelementptr inbounds %"class.std::vector.23", ptr %34, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !65
  %58 = getelementptr inbounds %"class.dealii::Tensor", ptr %57, i64 %18
  store double %55, ptr %58, align 8, !tbaa !94
  %59 = getelementptr inbounds %"class.dealii::Tensor", ptr %57, i64 %18, i32 0, i64 1
  store double 0.000000e+00, ptr %59, align 8, !tbaa !94
  %60 = add nuw nsw i64 %18, 1
  %61 = icmp eq i64 %60, %15
  br i1 %61, label %16, label %17, !llvm.loop !205
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions9Kovasznay17vector_laplaciansERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_IdSaIdEESaISA_EE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(177) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #13 align 2 !prof !64 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = ptrtoint ptr %5 to i64
  %7 = load ptr, ptr %1, align 8, !tbaa !90
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %6, %8
  %10 = lshr i64 %9, 4
  %11 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 4
  %12 = load i8, ptr %11, align 8, !tbaa !201, !range !206, !noundef !207
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = and i64 %9, 68719476720
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %105, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 2
  %19 = and i64 %10, 4294967295
  br label %29

20:                                               ; preds = %3
  %21 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<double>, std::allocator<std::vector<double>>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = load ptr, ptr %2, align 8, !tbaa !42
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 24
  %28 = icmp eq ptr %22, %23
  br i1 %28, label %105, label %83

29:                                               ; preds = %17, %29
  %30 = phi i64 [ 0, %17 ], [ %81, %29 ]
  %31 = load ptr, ptr %1, align 8, !tbaa !90
  %32 = getelementptr inbounds %"class.dealii::Point", ptr %31, i64 %30
  %33 = load double, ptr %32, align 8, !tbaa !94
  %34 = getelementptr inbounds [2 x double], ptr %32, i64 0, i64 1
  %35 = load double, ptr %34, align 8, !tbaa !94
  %36 = fmul double %35, 0x401921FB54442D18
  %37 = load double, ptr %18, align 8, !tbaa !202
  %38 = fmul double %33, %37
  %39 = tail call double @exp(double noundef %38) #27
  %40 = tail call double @cos(double noundef %36) #27
  %41 = fneg double %39
  %42 = tail call double @llvm.fmuladd.f64(double %41, double %40, double 1.000000e+00)
  %43 = load double, ptr %18, align 8, !tbaa !202
  %44 = fneg double %43
  %45 = fmul double %39, %44
  %46 = tail call double @cos(double noundef %36) #27
  %47 = fmul double %45, %46
  %48 = fmul double %39, 0x401921FB54442D18
  %49 = tail call double @sin(double noundef %36) #27
  %50 = fmul double %48, %49
  %51 = load double, ptr %18, align 8, !tbaa !202
  %52 = fdiv double %51, 0x401921FB54442D18
  %53 = fmul double %39, %52
  %54 = tail call double @sin(double noundef %36) #27
  %55 = fmul double %54, %53
  %56 = load double, ptr %18, align 8, !tbaa !202
  %57 = fmul double %56, %56
  %58 = fdiv double %57, 0x401921FB54442D18
  %59 = fmul double %39, %58
  %60 = tail call double @sin(double noundef %36) #27
  %61 = fmul double %60, %59
  %62 = load double, ptr %18, align 8, !tbaa !202
  %63 = fmul double %62, 0x401921FB54442D18
  %64 = fdiv double %63, 0x401921FB54442D18
  %65 = fmul double %39, %64
  %66 = tail call double @cos(double noundef %36) #27
  %67 = fmul double %66, %65
  %68 = fmul double %50, %55
  %69 = tail call double @llvm.fmuladd.f64(double %42, double %47, double %68)
  %70 = load ptr, ptr %2, align 8, !tbaa !42
  %71 = load ptr, ptr %70, align 8, !tbaa !57
  %72 = getelementptr inbounds double, ptr %71, i64 %30
  store double %69, ptr %72, align 8, !tbaa !94
  %73 = fmul double %55, %67
  %74 = tail call double @llvm.fmuladd.f64(double %42, double %61, double %73)
  %75 = getelementptr inbounds %"class.std::vector.13", ptr %70, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !57
  %77 = getelementptr inbounds double, ptr %76, i64 %30
  store double %74, ptr %77, align 8, !tbaa !94
  %78 = getelementptr inbounds %"class.std::vector.13", ptr %70, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = getelementptr inbounds double, ptr %79, i64 %30
  store double 0.000000e+00, ptr %80, align 8, !tbaa !94
  %81 = add nuw nsw i64 %30, 1
  %82 = icmp eq i64 %81, %19
  br i1 %82, label %105, label %29, !llvm.loop !208

83:                                               ; preds = %20, %94
  %84 = phi i64 [ %95, %94 ], [ 0, %20 ]
  %85 = getelementptr inbounds %"class.std::vector.13", ptr %23, i64 %84
  %86 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !97
  %88 = load ptr, ptr %85, align 8, !tbaa !57
  %89 = ptrtoint ptr %87 to i64
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %89, %90
  %92 = ashr exact i64 %91, 3
  %93 = icmp eq ptr %87, %88
  br i1 %93, label %94, label %98

94:                                               ; preds = %98, %83
  %95 = add i64 %84, 1
  %96 = and i64 %95, 4294967295
  %97 = icmp ugt i64 %27, %96
  br i1 %97, label %83, label %105, !llvm.loop !209

98:                                               ; preds = %83, %98
  %99 = phi i64 [ %103, %98 ], [ 0, %83 ]
  %100 = phi i32 [ %102, %98 ], [ 0, %83 ]
  %101 = getelementptr inbounds double, ptr %88, i64 %99
  store double 0.000000e+00, ptr %101, align 8, !tbaa !94
  %102 = add i32 %100, 1
  %103 = zext i32 %102 to i64
  %104 = icmp ugt i64 %92, %103
  br i1 %104, label %98, label %94, !llvm.loop !210

105:                                              ; preds = %29, %94, %14, %20
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZNK6dealii9Functions9Kovasznay6lambdaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(177) %0) local_unnamed_addr #15 align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.dealii::Functions::Kovasznay", ptr %0, i64 0, i32 2
  %3 = load double, ptr %2, align 8, !tbaa !202
  ret double %3
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12FlowFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 comdat($_ZN6dealii9Functions12FlowFunctionILi2EED5Ev) align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %17, label %9, !prof !56

9:                                                ; preds = %1, %14
  %10 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !59

13:                                               ; preds = %9
  tail call void @_ZdlPv(ptr noundef %11) #26
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %"class.std::vector.13", ptr %10, i64 1
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %9, !prof !60, !llvm.loop !61

17:                                               ; preds = %14, %1
  %18 = load ptr, ptr %4, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !62

20:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %18) #26
  br label %21

21:                                               ; preds = %17, %20
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18StokesLSingularityD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %"class.dealii::Functions::FlowFunction", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %17, label %9, !prof !56

9:                                                ; preds = %1, %14
  %10 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !59

13:                                               ; preds = %9
  tail call void @_ZdlPv(ptr noundef %11) #26
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %"class.std::vector.13", ptr %10, i64 1
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %9, !prof !60, !llvm.loop !61

17:                                               ; preds = %14, %1
  %18 = load ptr, ptr %4, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !62

20:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %18) #26
  br label %21

21:                                               ; preds = %17, %20
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #27
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18StokesLSingularityD1Ev(ptr noundef %0) unnamed_addr #17 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 112
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds i8, ptr %0, i64 88
  tail call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #27
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18StokesLSingularityD0Ev(ptr noundef %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [21 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12FlowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 112
  tail call void @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  %4 = getelementptr inbounds i8, ptr %0, i64 88
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds i8, ptr %0, i64 96
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %17, label %9, !prof !56

9:                                                ; preds = %1, %14
  %10 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !59

13:                                               ; preds = %9
  tail call void @_ZdlPv(ptr noundef %11) #26
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %"class.std::vector.13", ptr %10, i64 1
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %9, !prof !60, !llvm.loop !61

17:                                               ; preds = %14, %1
  %18 = load ptr, ptr %4, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !62

20:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %18) #26
  br label %21

21:                                               ; preds = %17, %20
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #27
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.42") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #1

declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = load ptr, ptr %0, align 8, !tbaa !57
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !211
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = ashr exact i64 %15, 3
  %17 = icmp ult i64 %11, 1152921504606846976
  tail call void @llvm.assume(i1 %17)
  %18 = xor i64 %11, 1152921504606846975
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  store double 0.000000e+00, ptr %6, align 8, !tbaa !94
  %22 = getelementptr double, ptr %6, i64 1
  %23 = icmp eq i64 %1, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds double, ptr %6, i64 %1
  %26 = shl i64 %1, 3
  %27 = add i64 %26, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %27, i1 false), !tbaa !94
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi ptr [ %22, %21 ], [ %25, %24 ]
  store ptr %29, ptr %5, align 8, !tbaa !97
  br label %60

30:                                               ; preds = %4
  %31 = icmp ult i64 %18, %1
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
  unreachable

33:                                               ; preds = %30
  %34 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %35 = add i64 %34, %11
  %36 = icmp ult i64 %35, %11
  %37 = tail call i64 @llvm.umin.i64(i64 %35, i64 1152921504606846975)
  %38 = select i1 %36, i64 1152921504606846975, i64 %37
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = shl nuw nsw i64 %38, 3
  %42 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %41) #25
  br label %43

43:                                               ; preds = %33, %40
  %44 = phi ptr [ %42, %40 ], [ null, %33 ]
  %45 = getelementptr inbounds double, ptr %44, i64 %11
  store double 0.000000e+00, ptr %45, align 8, !tbaa !94
  %46 = icmp eq i64 %1, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr double, ptr %45, i64 1
  %49 = shl i64 %1, 3
  %50 = add i64 %49, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %48, i8 0, i64 %50, i1 false), !tbaa !94
  br label %51

51:                                               ; preds = %47, %43
  %52 = icmp sgt i64 %10, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %44, ptr align 8 %7, i64 %10, i1 false)
  br label %54

54:                                               ; preds = %51, %53
  %55 = icmp eq ptr %7, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @_ZdlPv(ptr noundef %7) #26
  br label %57

57:                                               ; preds = %54, %56
  store ptr %44, ptr %0, align 8, !tbaa !57
  %58 = getelementptr inbounds double, ptr %45, i64 %1
  store ptr %58, ptr %5, align 8, !tbaa !97
  %59 = getelementptr inbounds double, ptr %44, i64 %38
  store ptr %59, ptr %12, align 8, !tbaa !211
  br label %60

60:                                               ; preds = %28, %57, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %62, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = load ptr, ptr %0, align 8, !tbaa !65
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !212
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = ashr exact i64 %15, 4
  %17 = icmp ult i64 %11, 576460752303423488
  tail call void @llvm.assume(i1 %17)
  %18 = xor i64 %11, 576460752303423487
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = shl nuw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !94
  %23 = shl nuw i64 %1, 4
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !106
  br label %62

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
  unreachable

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %30 = add i64 %29, %11
  %31 = icmp ult i64 %30, %11
  %32 = tail call i64 @llvm.umin.i64(i64 %30, i64 576460752303423487)
  %33 = select i1 %31, i64 576460752303423487, i64 %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %33, ptr noundef null)
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi ptr [ %36, %35 ], [ null, %28 ]
  %39 = getelementptr %"class.dealii::Tensor", ptr %38, i64 %11
  %40 = shl nuw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %40, i1 false), !tbaa !94
  %41 = icmp eq ptr %7, %6
  br i1 %41, label %56, label %42

42:                                               ; preds = %37, %52
  %43 = phi ptr [ %54, %52 ], [ %38, %37 ]
  %44 = phi ptr [ %53, %52 ], [ %7, %37 ]
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi i64 [ 0, %42 ], [ %50, %45 ]
  %47 = getelementptr inbounds [2 x double], ptr %44, i64 0, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !94
  %49 = getelementptr inbounds [2 x double], ptr %43, i64 0, i64 %46
  store double %48, ptr %49, align 8, !tbaa !94
  %50 = add nuw nsw i64 %46, 1
  %51 = icmp eq i64 %46, 0
  br i1 %51, label %45, label %52, !llvm.loop !213

52:                                               ; preds = %45
  %53 = getelementptr inbounds %"class.dealii::Tensor", ptr %44, i64 1
  %54 = getelementptr inbounds %"class.dealii::Tensor", ptr %43, i64 1
  %55 = icmp eq ptr %53, %6
  br i1 %55, label %56, label %42, !llvm.loop !214

56:                                               ; preds = %52, %37
  %57 = icmp eq ptr %7, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  tail call void @_ZdlPv(ptr noundef %7) #26
  br label %59

59:                                               ; preds = %56, %58
  store ptr %38, ptr %0, align 8, !tbaa !65
  %60 = getelementptr inbounds %"class.dealii::Tensor", ptr %39, i64 %1
  store ptr %60, ptr %5, align 8, !tbaa !106
  %61 = getelementptr inbounds %"class.dealii::Tensor", ptr %38, i64 %33
  store ptr %61, ptr %12, align 8, !tbaa !212
  br label %62

62:                                               ; preds = %21, %59, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii6TensorILi1ELi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 !prof !64 {
  %4 = icmp ugt i64 %1, 576460752303423487
  br i1 %4, label %5, label %9, !prof !215

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 1152921504606846975
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 4
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #25
  ret ptr %11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = load ptr, ptr %0, align 8, !tbaa !119
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !216
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = sdiv exact i64 %15, 24
  %17 = icmp ult i64 %11, 384307168202282326
  tail call void @llvm.assume(i1 %17)
  %18 = sub nuw nsw i64 384307168202282325, %11
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = mul nuw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !94
  %23 = mul nuw i64 %1, 24
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !142
  br label %63

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
  unreachable

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %30 = add i64 %29, %11
  %31 = icmp ult i64 %30, %11
  %32 = tail call i64 @llvm.umin.i64(i64 %30, i64 384307168202282325)
  %33 = select i1 %31, i64 384307168202282325, i64 %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = mul nuw nsw i64 %33, 24
  %37 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %36) #25
  br label %38

38:                                               ; preds = %28, %35
  %39 = phi ptr [ %37, %35 ], [ null, %28 ]
  %40 = getelementptr %"class.dealii::Tensor.42", ptr %39, i64 %11
  %41 = mul nuw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %40, i8 0, i64 %41, i1 false), !tbaa !94
  %42 = icmp eq ptr %7, %6
  br i1 %42, label %57, label %43

43:                                               ; preds = %38, %53
  %44 = phi ptr [ %55, %53 ], [ %39, %38 ]
  %45 = phi ptr [ %54, %53 ], [ %7, %38 ]
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ 0, %43 ], [ %51, %46 ]
  %48 = getelementptr inbounds [3 x double], ptr %45, i64 0, i64 %47
  %49 = load double, ptr %48, align 8, !tbaa !94
  %50 = getelementptr inbounds [3 x double], ptr %44, i64 0, i64 %47
  store double %49, ptr %50, align 8, !tbaa !94
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, 3
  br i1 %52, label %53, label %46, !llvm.loop !217

53:                                               ; preds = %46
  %54 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %45, i64 1
  %55 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %44, i64 1
  %56 = icmp eq ptr %54, %6
  br i1 %56, label %57, label %43, !llvm.loop !218

57:                                               ; preds = %53, %38
  %58 = icmp eq ptr %7, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call void @_ZdlPv(ptr noundef %7) #26
  br label %60

60:                                               ; preds = %57, %59
  store ptr %39, ptr %0, align 8, !tbaa !119
  %61 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %40, i64 %1
  store ptr %61, ptr %5, align 8, !tbaa !142
  %62 = getelementptr inbounds %"class.dealii::Tensor.42", ptr %39, i64 %33
  store ptr %62, ptr %12, align 8, !tbaa !216
  br label %63

63:                                               ; preds = %21, %60, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev, ptr @_ZdlPv, i64 25279}
!36 = !{ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EED2Ev, ptr @_ZdlPv, i64 7942283}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"instr_prof_hash_mismatch"}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !41, i64 0}
!46 = !{!43, !44, i64 8}
!47 = !{!43, !44, i64 16}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !44, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!53 = !{!52, !44, i64 8}
!54 = !{!52, !44, i64 16}
!55 = distinct !{!55, !49, !50}
!56 = !{!"branch_weights", i32 162560, i32 20840}
!57 = !{!58, !44, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!59 = !{!"branch_weights", i32 0, i32 20840}
!60 = !{!"branch_weights", i32 20840, i32 0}
!61 = distinct !{!61, !49, !50}
!62 = !{!"branch_weights", i32 178961, i32 4439}
!63 = !{!"function_entry_count", i64 183400}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !44, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!67 = distinct !{!67, !49, !50}
!68 = !{!69, !72, i64 96}
!69 = !{!"_ZTSN6dealii9Functions12FlowFunctionILi2EEE", !70, i64 0, !72, i64 96, !84, i64 104, !87, i64 128}
!70 = !{!"_ZTSN6dealii8FunctionILi2EEE", !71, i64 0, !73, i64 16, !74, i64 88}
!71 = !{!"_ZTSN6dealii12FunctionTimeE", !72, i64 8}
!72 = !{!"double", !45, i64 0}
!73 = !{!"_ZTSN6dealii11SubscriptorE", !74, i64 8, !75, i64 16, !44, i64 64}
!74 = !{!"int", !45, i64 0}
!75 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !76, i64 0}
!76 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !77, i64 0}
!77 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !78, i64 0, !80, i64 8}
!78 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !79, i64 0}
!79 = !{!"_ZTSSt4lessIPKcE"}
!80 = !{!"_ZTSSt15_Rb_tree_header", !81, i64 0, !83, i64 32}
!81 = !{!"_ZTSSt18_Rb_tree_node_base", !82, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!82 = !{!"_ZTSSt14_Rb_tree_color", !45, i64 0}
!83 = !{!"long", !45, i64 0}
!84 = !{!"_ZTSSt6vectorIS_IdSaIdEESaIS1_EE", !85, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implE", !43, i64 0}
!87 = !{!"_ZTSSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE12_Vector_implE", !52, i64 0}
!90 = !{!91, !44, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!92 = !{!91, !44, i64 8}
!93 = !{!91, !44, i64 16}
!94 = !{!72, !72, i64 0}
!95 = !{!96, !44, i64 80}
!96 = !{!"_ZTSN6dealii6VectorIdEE", !73, i64 0, !74, i64 72, !74, i64 76, !44, i64 80}
!97 = !{!58, !44, i64 8}
!98 = distinct !{!98, !49, !50}
!99 = distinct !{!99, !49, !50}
!100 = distinct !{!100, !49, !50}
!101 = !{!102, !44, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN6dealii6VectorIdEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!103 = distinct !{!103, !49, !50}
!104 = distinct !{!104, !49, !50}
!105 = distinct !{!105, !49, !50}
!106 = !{!66, !44, i64 8}
!107 = distinct !{!107, !49, !50}
!108 = distinct !{!108, !49, !50}
!109 = distinct !{!109, !49, !50}
!110 = distinct !{!110, !49, !50}
!111 = distinct !{!111, !49, !50}
!112 = distinct !{!112, !49, !50}
!113 = !{!114, !44, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!115 = !{!114, !44, i64 8}
!116 = !{!114, !44, i64 16}
!117 = distinct !{!117, !49, !50}
!118 = !{!"branch_weights", i32 1, i32 2065838}
!119 = !{!120, !44, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!121 = !{!"branch_weights", i32 0, i32 7489742}
!122 = !{!"branch_weights", i32 2065838, i32 5423904}
!123 = distinct !{!123, !49, !50}
!124 = !{!"branch_weights", i32 1613298, i32 452541}
!125 = !{!"function_entry_count", i64 2065839}
!126 = !{!127, !72, i64 96}
!127 = !{!"_ZTSN6dealii9Functions12FlowFunctionILi3EEE", !128, i64 0, !72, i64 96, !84, i64 104, !129, i64 128}
!128 = !{!"_ZTSN6dealii8FunctionILi3EEE", !71, i64 0, !73, i64 16, !74, i64 88}
!129 = !{!"_ZTSSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EE", !130, i64 0}
!130 = !{!"_ZTSSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE", !131, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE12_Vector_implE", !114, i64 0}
!132 = !{!133, !44, i64 0}
!133 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!134 = !{!133, !44, i64 8}
!135 = !{!133, !44, i64 16}
!136 = distinct !{!136, !49, !50}
!137 = distinct !{!137, !49, !50}
!138 = distinct !{!138, !49, !50}
!139 = distinct !{!139, !49, !50}
!140 = distinct !{!140, !49, !50}
!141 = distinct !{!141, !49, !50}
!142 = !{!120, !44, i64 8}
!143 = distinct !{!143, !49, !50}
!144 = distinct !{!144, !49, !50}
!145 = distinct !{!145, !49, !50}
!146 = distinct !{!146, !49, !50}
!147 = distinct !{!147, !49, !50}
!148 = distinct !{!148, !49, !50}
!149 = !{!150, !72, i64 152}
!150 = !{!"_ZTSN6dealii9Functions15PoisseuilleFlowILi2EEE", !69, i64 0, !72, i64 152, !72, i64 160}
!151 = !{!150, !72, i64 160}
!152 = distinct !{!152, !49, !50}
!153 = distinct !{!153, !49, !50}
!154 = distinct !{!154, !49, !50}
!155 = distinct !{!155, !49, !50}
!156 = !{!157, !72, i64 152}
!157 = !{!"_ZTSN6dealii9Functions15PoisseuilleFlowILi3EEE", !127, i64 0, !72, i64 152, !72, i64 160}
!158 = !{!157, !72, i64 160}
!159 = distinct !{!159, !49, !50}
!160 = distinct !{!160, !49, !50}
!161 = distinct !{!161, !49, !50}
!162 = distinct !{!162, !49, !50}
!163 = distinct !{!163, !49, !50}
!164 = distinct !{!164, !49, !50}
!165 = distinct !{!165, !49, !50}
!166 = distinct !{!166, !49, !50}
!167 = !{!168, !72, i64 152}
!168 = !{!"_ZTSN6dealii9Functions12StokesCosineILi2EEE", !69, i64 0, !72, i64 152, !72, i64 160}
!169 = !{!168, !72, i64 160}
!170 = distinct !{!170, !49, !50}
!171 = distinct !{!171, !49, !50}
!172 = distinct !{!172, !49, !50}
!173 = distinct !{!173, !49, !50}
!174 = distinct !{!174, !49, !50}
!175 = distinct !{!175, !49, !50}
!176 = distinct !{!176, !49, !50}
!177 = !{!178, !72, i64 152}
!178 = !{!"_ZTSN6dealii9Functions12StokesCosineILi3EEE", !127, i64 0, !72, i64 152, !72, i64 160}
!179 = !{!178, !72, i64 160}
!180 = distinct !{!180, !49, !50}
!181 = distinct !{!181, !49, !50}
!182 = distinct !{!182, !49, !50}
!183 = distinct !{!183, !49, !50}
!184 = distinct !{!184, !49, !50}
!185 = distinct !{!185, !49, !50}
!186 = distinct !{!186, !49, !50}
!187 = !{!188, !72, i64 152}
!188 = !{!"_ZTSN6dealii9Functions18StokesLSingularityE", !69, i64 0, !72, i64 152, !72, i64 160, !72, i64 168, !72, i64 176}
!189 = !{!188, !72, i64 160}
!190 = !{!188, !72, i64 168}
!191 = !{!188, !72, i64 176}
!192 = distinct !{!192, !49, !50}
!193 = distinct !{!193, !49, !50}
!194 = distinct !{!194, !49, !50}
!195 = distinct !{!195, !49, !50}
!196 = distinct !{!196, !49, !50}
!197 = distinct !{!197, !49, !50}
!198 = !{!199, !72, i64 152}
!199 = !{!"_ZTSN6dealii9Functions9KovasznayE", !69, i64 0, !72, i64 152, !72, i64 160, !72, i64 168, !200, i64 176}
!200 = !{!"bool", !45, i64 0}
!201 = !{!199, !200, i64 176}
!202 = !{!199, !72, i64 160}
!203 = !{!199, !72, i64 168}
!204 = distinct !{!204, !49, !50}
!205 = distinct !{!205, !49, !50}
!206 = !{i8 0, i8 2}
!207 = !{}
!208 = distinct !{!208, !49, !50}
!209 = distinct !{!209, !49, !50}
!210 = distinct !{!210, !49, !50}
!211 = !{!58, !44, i64 16}
!212 = !{!66, !44, i64 16}
!213 = distinct !{!213, !49, !50}
!214 = distinct !{!214, !49, !50}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{!120, !44, i64 16}
!217 = distinct !{!217, !49, !50}
!218 = distinct !{!218, !49, !50}
