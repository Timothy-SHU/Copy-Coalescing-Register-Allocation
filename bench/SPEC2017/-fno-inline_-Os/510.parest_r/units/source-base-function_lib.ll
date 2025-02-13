; ModuleID = 'source/base/function_lib.cc'
source_filename = "source/base/function_lib.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [1 x double] }
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point.10" = type { %"class.dealii::Tensor.11" }
%"class.dealii::Tensor.11" = type { [2 x double] }
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point.22" = type { %"class.dealii::Tensor.23" }
%"class.dealii::Tensor.23" = type { [3 x double] }
%"class.dealii::Vector" = type { %"class.dealii::Subscriptor", i32, i32, ptr }
%"class.dealii::Subscriptor" = type { ptr, i32, %"class.std::map", ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.29" = type { %"struct.std::_Vector_base.30" }
%"struct.std::_Vector_base.30" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Functions::PillowFunction" = type { %"class.dealii::Function.base", double }
%"class.dealii::Function.base" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::FunctionTime" = type { ptr, double }
%"class.dealii::Functions::PillowFunction.57" = type { %"class.dealii::Function.base.59", double }
%"class.dealii::Function.base.59" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::Functions::PillowFunction.60" = type { %"class.dealii::Function.base.62", double }
%"class.dealii::Function.base.62" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::Tensor.63" = type { [1 x %"class.dealii::Tensor"] }
%"class.dealii::Tensor.69" = type { [2 x %"class.dealii::Tensor.11"] }
%"class.dealii::Tensor.75" = type { [3 x %"class.dealii::Tensor.23"] }
%"class.dealii::Functions::JumpFunction" = type { %"class.dealii::Function.base", %"class.dealii::Point", double, double, double, double }
%"class.dealii::Functions::JumpFunction.81" = type { %"class.dealii::Function.base.59", %"class.dealii::Point.10", double, double, double, double }
%"class.dealii::Functions::JumpFunction.82" = type { %"class.dealii::Function.base.62", %"class.dealii::Point.22", double, double, double, double }
%"class.dealii::Functions::FourierCosineFunction" = type { %"class.dealii::Function.base", %"class.dealii::Point" }
%"class.dealii::Functions::FourierCosineFunction.83" = type { %"class.dealii::Function.base.59", %"class.dealii::Point.10" }
%"class.dealii::Functions::FourierCosineFunction.84" = type { %"class.dealii::Function.base.62", %"class.dealii::Point.22" }
%"class.dealii::Functions::FourierSineFunction" = type { %"class.dealii::Function.base", %"class.dealii::Point" }
%"class.dealii::Functions::FourierSineFunction.85" = type { %"class.dealii::Function.base.59", %"class.dealii::Point.10" }
%"class.dealii::Functions::FourierSineFunction.86" = type { %"class.dealii::Function.base.62", %"class.dealii::Point.22" }
%"class.dealii::Functions::FourierCosineSum" = type { %"class.dealii::Function.base", %"class.std::vector", %"class.std::vector.0" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.std::allocator.2" = type { i8 }
%"class.dealii::Functions::FourierCosineSum.87" = type { %"class.dealii::Function.base.59", %"class.std::vector.12", %"class.std::vector.0" }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" }
%"class.std::allocator.14" = type { i8 }
%"class.dealii::Functions::FourierCosineSum.88" = type { %"class.dealii::Function.base.62", %"class.std::vector.24", %"class.std::vector.0" }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" }
%"class.std::allocator.26" = type { i8 }
%"class.dealii::Functions::FourierSineSum" = type { %"class.dealii::Function.base", %"class.std::vector", %"class.std::vector.0" }
%"class.dealii::Functions::FourierSineSum.89" = type { %"class.dealii::Function.base.59", %"class.std::vector.12", %"class.std::vector.0" }
%"class.dealii::Functions::FourierSineSum.90" = type { %"class.dealii::Function.base.62", %"class.std::vector.24", %"class.std::vector.0" }
%"class.dealii::Functions::Monomial" = type { %"class.dealii::Function.base", %"class.dealii::Tensor" }
%"class.dealii::Functions::Monomial.91" = type { %"class.dealii::Function.base.59", %"class.dealii::Tensor.11" }
%"class.dealii::Functions::Monomial.92" = type { %"class.dealii::Function.base.62", %"class.dealii::Tensor.23" }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.111" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.112" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.113" = type { ptr }

$_ZNK6dealii9Functions14SquareFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii5PointILi1EE6squareEv = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii5PointILi1EEmlEd = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2ERKS1_ = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi1EEaSERKS1_ = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii5PointILi2EE6squareEv = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii5PointILi2EEmlEd = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2ERKS1_ = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi2EEaSERKS1_ = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii5PointILi3EE6squareEv = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii5PointILi3EEmlEd = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2ERKS1_ = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi3EEaSERKS1_ = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii5PointILi1EEclEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm = comdat any

$_ZN6dealii6VectorIdEclEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2Eb = comdat any

$_ZN6dealii6TensorILi1ELi1EEixEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi1EEESaISB_EESaISD_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii5PointILi2EEclEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2Eb = comdat any

$_ZN6dealii6TensorILi1ELi2EEixEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii5PointILi3EEclEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2Eb = comdat any

$_ZN6dealii6TensorILi1ELi3EEixEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZN6dealii9Functions14PillowFunctionILi1EEC5Ed = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZN6dealii9Functions14PillowFunctionILi2EEC5Ed = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZN6dealii9Functions14PillowFunctionILi3EEC5Ed = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14PillowFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi1EE7hessianERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii6TensorILi2ELi1EEC2Ev = comdat any

$_ZN6dealii6TensorILi2ELi1EEixEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi1EE12hessian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi2ELi1EEESaISB_EEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE7hessianERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii6TensorILi2ELi2EEC2Ev = comdat any

$_ZN6dealii6TensorILi2ELi2EEixEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE12hessian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi2ELi2EEESaISB_EEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE7hessianERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii6TensorILi2ELi3EEC2Ev = comdat any

$_ZN6dealii6TensorILi2ELi3EEixEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE12hessian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi2ELi3EEESaISB_EEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions11ExpFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZN6dealii9Functions12JumpFunctionILi1EEC5ERKNS_5PointILi1EEEd = comdat any

$_ZN6dealii5PointILi1EEC2ERKS1_ = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE18memory_consumptionEv = comdat any

$_ZN6dealii9Functions12JumpFunctionILi2EEC5ERKNS_5PointILi2EEEd = comdat any

$_ZN6dealii5PointILi2EEC2ERKS1_ = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE18memory_consumptionEv = comdat any

$_ZN6dealii9Functions12JumpFunctionILi3EEC5ERKNS_5PointILi3EEEd = comdat any

$_ZN6dealii5PointILi3EEC2ERKS1_ = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE18memory_consumptionEv = comdat any

$_ZN6dealii9Functions21FourierCosineFunctionILi1EEC5ERKNS_5PointILi1EEE = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii5PointILi1EEngEv = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions21FourierCosineFunctionILi2EEC5ERKNS_5PointILi2EEE = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii5PointILi2EEngEv = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions21FourierCosineFunctionILi3EEC5ERKNS_5PointILi3EEE = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii5PointILi3EEngEv = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii9Functions19FourierSineFunctionILi1EEC5ERKNS_5PointILi1EEE = comdat any

$_ZNK6dealii9Functions19FourierSineFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions19FourierSineFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions19FourierSineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions19FourierSineFunctionILi2EEC5ERKNS_5PointILi2EEE = comdat any

$_ZNK6dealii9Functions19FourierSineFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions19FourierSineFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions19FourierSineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions19FourierSineFunctionILi3EEC5ERKNS_5PointILi3EEE = comdat any

$_ZNK6dealii9Functions19FourierSineFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions19FourierSineFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions19FourierSineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi1EEC5ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2ERKS4_ = comdat any

$_ZNSt6vectorIdSaIdEEC2ERKS1_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZNKSt6vectorIdSaIdEEixEm = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii6TensorILi1ELi1EEmIERKS1_ = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi2EEC5ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii6TensorILi1ELi2EEmIERKS1_ = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi3EEC5ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_ = comdat any

$_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii6TensorILi1ELi3EEmIERKS1_ = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii9Functions14FourierSineSumILi1EEC5ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii6TensorILi1ELi1EEpLERKS1_ = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions14FourierSineSumILi2EEC5ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii6TensorILi1ELi2EEpLERKS1_ = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions14FourierSineSumILi3EEC5ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii6TensorILi1ELi3EEpLERKS1_ = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZN6dealii9Functions8MonomialILi1EEC5ERKNS_6TensorILi1ELi1EEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii6TensorILi1ELi1EEixEj = comdat any

$_ZNK6dealii9Functions8MonomialILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii6VectorIdE4sizeEv = comdat any

$_ZNK6dealii9Functions8MonomialILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions8MonomialILi2EEC5ERKNS_6TensorILi1ELi2EEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii6TensorILi1ELi2EEixEj = comdat any

$_ZNK6dealii9Functions8MonomialILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii9Functions8MonomialILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions8MonomialILi3EEC5ERKNS_6TensorILi1ELi3EEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii6TensorILi1ELi3EEixEj = comdat any

$_ZNK6dealii9Functions8MonomialILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii9Functions8MonomialILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii9Functions20LSingularityFunctionD0Ev = comdat any

$_ZThn16_N6dealii9Functions20LSingularityFunctionD1Ev = comdat any

$_ZThn16_N6dealii9Functions20LSingularityFunctionD0Ev = comdat any

$_ZN6dealii9Functions28SlitHyperSingularityFunctionD0Ev = comdat any

$_ZThn16_N6dealii9Functions28SlitHyperSingularityFunctionD1Ev = comdat any

$_ZThn16_N6dealii9Functions28SlitHyperSingularityFunctionD0Ev = comdat any

$_ZN6dealii9Functions14SquareFunctionILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14SquareFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14SquareFunctionILi1EED0Ev = comdat any

$_ZN6dealii9Functions14SquareFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14SquareFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14SquareFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions14SquareFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14SquareFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14SquareFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions15Q1WedgeFunctionILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi1EED0Ev = comdat any

$_ZN6dealii9Functions15Q1WedgeFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions15Q1WedgeFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions14PillowFunctionILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14PillowFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14PillowFunctionILi1EED0Ev = comdat any

$_ZN6dealii9Functions14PillowFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14PillowFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14PillowFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions14PillowFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14PillowFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14PillowFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions14CosineFunctionILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14CosineFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14CosineFunctionILi1EED0Ev = comdat any

$_ZN6dealii9Functions14CosineFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14CosineFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14CosineFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions14CosineFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14CosineFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14CosineFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions11ExpFunctionILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions11ExpFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions11ExpFunctionILi1EED0Ev = comdat any

$_ZN6dealii9Functions11ExpFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions11ExpFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions11ExpFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions11ExpFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions11ExpFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions11ExpFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions12JumpFunctionILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions12JumpFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions12JumpFunctionILi1EED0Ev = comdat any

$_ZN6dealii9Functions12JumpFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions12JumpFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions12JumpFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions12JumpFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions12JumpFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions12JumpFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions21FourierCosineFunctionILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions21FourierCosineFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions21FourierCosineFunctionILi1EED0Ev = comdat any

$_ZN6dealii9Functions21FourierCosineFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions21FourierCosineFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions21FourierCosineFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions21FourierCosineFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions21FourierCosineFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions21FourierCosineFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions19FourierSineFunctionILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions19FourierSineFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions19FourierSineFunctionILi1EED0Ev = comdat any

$_ZN6dealii9Functions19FourierSineFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions19FourierSineFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions19FourierSineFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions19FourierSineFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions19FourierSineFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions19FourierSineFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi1EED2Ev = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions16FourierCosineSumILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions16FourierCosineSumILi1EED0Ev = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi2EED2Ev = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions16FourierCosineSumILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions16FourierCosineSumILi2EED0Ev = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi3EED2Ev = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions16FourierCosineSumILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions16FourierCosineSumILi3EED0Ev = comdat any

$_ZN6dealii9Functions14FourierSineSumILi1EED2Ev = comdat any

$_ZN6dealii9Functions14FourierSineSumILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14FourierSineSumILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14FourierSineSumILi1EED0Ev = comdat any

$_ZN6dealii9Functions14FourierSineSumILi2EED2Ev = comdat any

$_ZN6dealii9Functions14FourierSineSumILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14FourierSineSumILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14FourierSineSumILi2EED0Ev = comdat any

$_ZN6dealii9Functions14FourierSineSumILi3EED2Ev = comdat any

$_ZN6dealii9Functions14FourierSineSumILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions14FourierSineSumILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions14FourierSineSumILi3EED0Ev = comdat any

$_ZN6dealii9Functions23SlitSingularityFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi2EED0Ev = comdat any

$_ZN6dealii9Functions23SlitSingularityFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi3EED0Ev = comdat any

$_ZN6dealii9Functions8MonomialILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions8MonomialILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions8MonomialILi1EED0Ev = comdat any

$_ZN6dealii9Functions8MonomialILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions8MonomialILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions8MonomialILi2EED0Ev = comdat any

$_ZN6dealii9Functions8MonomialILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions8MonomialILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions8MonomialILi3EED0Ev = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm = comdat any

$_ZNSt15__new_allocatorIdE10deallocateEPdm = comdat any

$_ZN6dealii6TensorILi1ELi1EEmLEd = comdat any

$_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE = comdat any

$_ZN6dealii6TensorILi1ELi2EEmLEd = comdat any

$_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE = comdat any

$_ZN6dealii6TensorILi1ELi3EEmLEd = comdat any

$_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE = comdat any

$_ZNK6dealii6TensorILi1ELi1EEmlERKS1_ = comdat any

$_ZN6dealii5PointILi1EEC2Ev = comdat any

$_ZNK6dealii6TensorILi1ELi2EEmlERKS1_ = comdat any

$_ZN6dealii5PointILi2EEC2Ev = comdat any

$_ZNK6dealii6TensorILi1ELi3EEmlERKS1_ = comdat any

$_ZN6dealii5PointILi3EEC2Ev = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi1EEEES3_E17_S_select_on_copyERKS4_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE5beginEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE3endEv = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE37select_on_container_copy_constructionERKS3_ = comdat any

$_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_ = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_ = comdat any

$_ZN9__gnu_cxxneIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi1EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEppEv = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi1EEEEEvT_S6_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEC2ERKS5_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE10deallocateEPS2_m = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIdED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNKSt6vectorIdSaIdEE3endEv = comdat any

$_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIdEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIdEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIdEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIdE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPdET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_ = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi1EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi2EEEES3_E17_S_select_on_copyERKS4_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE5beginEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE3endEv = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE37select_on_container_copy_constructionERKS3_ = comdat any

$_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_ = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_ = comdat any

$_ZN9__gnu_cxxneIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi2EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEppEv = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEC2ERKS5_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi3EEEES3_E17_S_select_on_copyERKS4_ = comdat any

$_ZNKSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE5beginEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE3endEv = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE37select_on_container_copy_constructionERKS3_ = comdat any

$_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_ = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_ = comdat any

$_ZN9__gnu_cxxneIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_ = comdat any

$_ZSt10_ConstructIN6dealii5PointILi3EEEJRKS2_EEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEppEv = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEE4baseEv = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEC2ERKS5_ = comdat any

$_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE10deallocateEPS2_m = comdat any

$_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E = comdat any

$_ZTVN6dealii9Functions14PillowFunctionILi1EEE = comdat any

$_ZTVN6dealii9Functions14PillowFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions14PillowFunctionILi3EEE = comdat any

$_ZTVN6dealii9Functions12JumpFunctionILi1EEE = comdat any

$_ZTVN6dealii9Functions12JumpFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions12JumpFunctionILi3EEE = comdat any

$_ZTVN6dealii9Functions21FourierCosineFunctionILi1EEE = comdat any

$_ZTVN6dealii9Functions21FourierCosineFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions21FourierCosineFunctionILi3EEE = comdat any

$_ZTVN6dealii9Functions19FourierSineFunctionILi1EEE = comdat any

$_ZTVN6dealii9Functions19FourierSineFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions19FourierSineFunctionILi3EEE = comdat any

$_ZTVN6dealii9Functions16FourierCosineSumILi1EEE = comdat any

$_ZTVN6dealii9Functions16FourierCosineSumILi2EEE = comdat any

$_ZTVN6dealii9Functions16FourierCosineSumILi3EEE = comdat any

$_ZTVN6dealii9Functions14FourierSineSumILi1EEE = comdat any

$_ZTVN6dealii9Functions14FourierSineSumILi2EEE = comdat any

$_ZTVN6dealii9Functions14FourierSineSumILi3EEE = comdat any

$_ZTVN6dealii9Functions8MonomialILi1EEE = comdat any

$_ZTVN6dealii9Functions8MonomialILi2EEE = comdat any

$_ZTVN6dealii9Functions8MonomialILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii8FunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions14SquareFunctionILi1EEE = comdat any

$_ZTSN6dealii9Functions14SquareFunctionILi1EEE = comdat any

$_ZTSN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions14SquareFunctionILi1EEE = comdat any

$_ZTVN6dealii9Functions14SquareFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions14SquareFunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions14SquareFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions14SquareFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions14SquareFunctionILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions14SquareFunctionILi3EEE = comdat any

$_ZTVN6dealii9Functions15Q1WedgeFunctionILi1EEE = comdat any

$_ZTSN6dealii9Functions15Q1WedgeFunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions15Q1WedgeFunctionILi1EEE = comdat any

$_ZTVN6dealii9Functions15Q1WedgeFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions15Q1WedgeFunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions15Q1WedgeFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions15Q1WedgeFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions15Q1WedgeFunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions15Q1WedgeFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions14PillowFunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions14PillowFunctionILi1EEE = comdat any

$_ZTSN6dealii9Functions14PillowFunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions14PillowFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions14PillowFunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions14PillowFunctionILi3EEE = comdat any

$_ZTVN6dealii9Functions14CosineFunctionILi1EEE = comdat any

$_ZTSN6dealii9Functions14CosineFunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions14CosineFunctionILi1EEE = comdat any

$_ZTVN6dealii9Functions14CosineFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions14CosineFunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions14CosineFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions14CosineFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions14CosineFunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions14CosineFunctionILi3EEE = comdat any

$_ZTVN6dealii9Functions11ExpFunctionILi1EEE = comdat any

$_ZTSN6dealii9Functions11ExpFunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions11ExpFunctionILi1EEE = comdat any

$_ZTVN6dealii9Functions11ExpFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions11ExpFunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions11ExpFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions11ExpFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions11ExpFunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions11ExpFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions12JumpFunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions12JumpFunctionILi1EEE = comdat any

$_ZTSN6dealii9Functions12JumpFunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions12JumpFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions12JumpFunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions12JumpFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions21FourierCosineFunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions21FourierCosineFunctionILi1EEE = comdat any

$_ZTSN6dealii9Functions21FourierCosineFunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions21FourierCosineFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions21FourierCosineFunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions21FourierCosineFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions19FourierSineFunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions19FourierSineFunctionILi1EEE = comdat any

$_ZTSN6dealii9Functions19FourierSineFunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions19FourierSineFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions19FourierSineFunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions19FourierSineFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions16FourierCosineSumILi1EEE = comdat any

$_ZTIN6dealii9Functions16FourierCosineSumILi1EEE = comdat any

$_ZTSN6dealii9Functions16FourierCosineSumILi2EEE = comdat any

$_ZTIN6dealii9Functions16FourierCosineSumILi2EEE = comdat any

$_ZTSN6dealii9Functions16FourierCosineSumILi3EEE = comdat any

$_ZTIN6dealii9Functions16FourierCosineSumILi3EEE = comdat any

$_ZTSN6dealii9Functions14FourierSineSumILi1EEE = comdat any

$_ZTIN6dealii9Functions14FourierSineSumILi1EEE = comdat any

$_ZTSN6dealii9Functions14FourierSineSumILi2EEE = comdat any

$_ZTIN6dealii9Functions14FourierSineSumILi2EEE = comdat any

$_ZTSN6dealii9Functions14FourierSineSumILi3EEE = comdat any

$_ZTIN6dealii9Functions14FourierSineSumILi3EEE = comdat any

$_ZTVN6dealii9Functions23SlitSingularityFunctionILi2EEE = comdat any

$_ZTSN6dealii9Functions23SlitSingularityFunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions23SlitSingularityFunctionILi2EEE = comdat any

$_ZTVN6dealii9Functions23SlitSingularityFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions23SlitSingularityFunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions23SlitSingularityFunctionILi3EEE = comdat any

$_ZTSN6dealii9Functions8MonomialILi1EEE = comdat any

$_ZTIN6dealii9Functions8MonomialILi1EEE = comdat any

$_ZTSN6dealii9Functions8MonomialILi2EEE = comdat any

$_ZTIN6dealii9Functions8MonomialILi2EEE = comdat any

$_ZTSN6dealii9Functions8MonomialILi3EEE = comdat any

$_ZTIN6dealii9Functions8MonomialILi3EEE = comdat any

@_ZTVN6dealii9Functions14PillowFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14PillowFunctionILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions14PillowFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14PillowFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14PillowFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14PillowFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii9Functions14PillowFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14PillowFunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14PillowFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14PillowFunctionILi1EEE, ptr @_ZThn16_N6dealii9Functions14PillowFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions14PillowFunctionILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions14PillowFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14PillowFunctionILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions14PillowFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14PillowFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14PillowFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14PillowFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii9Functions14PillowFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14PillowFunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14PillowFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14PillowFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions14PillowFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions14PillowFunctionILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions14PillowFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14PillowFunctionILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions14PillowFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14PillowFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14PillowFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14PillowFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii9Functions14PillowFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14PillowFunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14PillowFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14PillowFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions14PillowFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions14PillowFunctionILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions12JumpFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions12JumpFunctionILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions12JumpFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12JumpFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions12JumpFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions12JumpFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii9Functions12JumpFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions12JumpFunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions12JumpFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions12JumpFunctionILi1EEE, ptr @_ZThn16_N6dealii9Functions12JumpFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions12JumpFunctionILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions12JumpFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions12JumpFunctionILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions12JumpFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12JumpFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions12JumpFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions12JumpFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii9Functions12JumpFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions12JumpFunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions12JumpFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions12JumpFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions12JumpFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions12JumpFunctionILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions12JumpFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions12JumpFunctionILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions12JumpFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions12JumpFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions12JumpFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions12JumpFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii9Functions12JumpFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions12JumpFunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions12JumpFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions12JumpFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions12JumpFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions12JumpFunctionILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions21FourierCosineFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions21FourierCosineFunctionILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions21FourierCosineFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions21FourierCosineFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions21FourierCosineFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions21FourierCosineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions21FourierCosineFunctionILi1EEE, ptr @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions21FourierCosineFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions21FourierCosineFunctionILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions21FourierCosineFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions21FourierCosineFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions21FourierCosineFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions21FourierCosineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions21FourierCosineFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions21FourierCosineFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions21FourierCosineFunctionILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions21FourierCosineFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions21FourierCosineFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions21FourierCosineFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions21FourierCosineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions21FourierCosineFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions19FourierSineFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions19FourierSineFunctionILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions19FourierSineFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions19FourierSineFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions19FourierSineFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions19FourierSineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions19FourierSineFunctionILi1EEE, ptr @_ZThn16_N6dealii9Functions19FourierSineFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions19FourierSineFunctionILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions19FourierSineFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions19FourierSineFunctionILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions19FourierSineFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions19FourierSineFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions19FourierSineFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions19FourierSineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions19FourierSineFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions19FourierSineFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions19FourierSineFunctionILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions19FourierSineFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions19FourierSineFunctionILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions19FourierSineFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions19FourierSineFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions19FourierSineFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions19FourierSineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions19FourierSineFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions19FourierSineFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions19FourierSineFunctionILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions16FourierCosineSumILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions16FourierCosineSumILi1EEE, ptr @_ZN6dealii9Functions16FourierCosineSumILi1EED2Ev, ptr @_ZN6dealii9Functions16FourierCosineSumILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions16FourierCosineSumILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions16FourierCosineSumILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions16FourierCosineSumILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions16FourierCosineSumILi1EEE, ptr @_ZThn16_N6dealii9Functions16FourierCosineSumILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions16FourierCosineSumILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions16FourierCosineSumILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions16FourierCosineSumILi2EEE, ptr @_ZN6dealii9Functions16FourierCosineSumILi2EED2Ev, ptr @_ZN6dealii9Functions16FourierCosineSumILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions16FourierCosineSumILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions16FourierCosineSumILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions16FourierCosineSumILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions16FourierCosineSumILi2EEE, ptr @_ZThn16_N6dealii9Functions16FourierCosineSumILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions16FourierCosineSumILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions16FourierCosineSumILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions16FourierCosineSumILi3EEE, ptr @_ZN6dealii9Functions16FourierCosineSumILi3EED2Ev, ptr @_ZN6dealii9Functions16FourierCosineSumILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions16FourierCosineSumILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions16FourierCosineSumILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions16FourierCosineSumILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions16FourierCosineSumILi3EEE, ptr @_ZThn16_N6dealii9Functions16FourierCosineSumILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions16FourierCosineSumILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions14FourierSineSumILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14FourierSineSumILi1EEE, ptr @_ZN6dealii9Functions14FourierSineSumILi1EED2Ev, ptr @_ZN6dealii9Functions14FourierSineSumILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14FourierSineSumILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14FourierSineSumILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14FourierSineSumILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14FourierSineSumILi1EEE, ptr @_ZThn16_N6dealii9Functions14FourierSineSumILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions14FourierSineSumILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions14FourierSineSumILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14FourierSineSumILi2EEE, ptr @_ZN6dealii9Functions14FourierSineSumILi2EED2Ev, ptr @_ZN6dealii9Functions14FourierSineSumILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14FourierSineSumILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14FourierSineSumILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14FourierSineSumILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14FourierSineSumILi2EEE, ptr @_ZThn16_N6dealii9Functions14FourierSineSumILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions14FourierSineSumILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions14FourierSineSumILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14FourierSineSumILi3EEE, ptr @_ZN6dealii9Functions14FourierSineSumILi3EED2Ev, ptr @_ZN6dealii9Functions14FourierSineSumILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14FourierSineSumILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14FourierSineSumILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14FourierSineSumILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14FourierSineSumILi3EEE, ptr @_ZThn16_N6dealii9Functions14FourierSineSumILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions14FourierSineSumILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions8MonomialILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions8MonomialILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions8MonomialILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions8MonomialILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii9Functions8MonomialILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions8MonomialILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions8MonomialILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions8MonomialILi1EEE, ptr @_ZThn16_N6dealii9Functions8MonomialILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions8MonomialILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions8MonomialILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions8MonomialILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions8MonomialILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions8MonomialILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii9Functions8MonomialILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions8MonomialILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions8MonomialILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions8MonomialILi2EEE, ptr @_ZThn16_N6dealii9Functions8MonomialILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions8MonomialILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions8MonomialILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions8MonomialILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions8MonomialILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions8MonomialILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii9Functions8MonomialILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions8MonomialILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions8MonomialILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions8MonomialILi3EEE, ptr @_ZThn16_N6dealii9Functions8MonomialILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions8MonomialILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20LSingularityFunctionE = dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20LSingularityFunctionE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions20LSingularityFunctionD0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20LSingularityFunction5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20LSingularityFunction10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions20LSingularityFunction17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions20LSingularityFunction8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii9Functions20LSingularityFunction13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii9Functions20LSingularityFunction20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions20LSingularityFunction9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20LSingularityFunction14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20LSingularityFunctionE, ptr @_ZThn16_N6dealii9Functions20LSingularityFunctionD1Ev, ptr @_ZThn16_N6dealii9Functions20LSingularityFunctionD0Ev] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii9Functions20LSingularityFunctionE = dso_local constant [42 x i8] c"N6dealii9Functions20LSingularityFunctionE\00", align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii12FunctionTimeE = external constant ptr
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi2EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions20LSingularityFunctionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20LSingularityFunctionE, ptr @_ZTIN6dealii8FunctionILi2EEE }, align 8
@_ZTVN6dealii9Functions28SlitHyperSingularityFunctionE = dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions28SlitHyperSingularityFunctionE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions28SlitHyperSingularityFunctionD0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions28SlitHyperSingularityFunction5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions28SlitHyperSingularityFunction10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii9Functions28SlitHyperSingularityFunction17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions28SlitHyperSingularityFunction8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii9Functions28SlitHyperSingularityFunction13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii9Functions28SlitHyperSingularityFunction20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions28SlitHyperSingularityFunction9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions28SlitHyperSingularityFunction14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions28SlitHyperSingularityFunctionE, ptr @_ZThn16_N6dealii9Functions28SlitHyperSingularityFunctionD1Ev, ptr @_ZThn16_N6dealii9Functions28SlitHyperSingularityFunctionD0Ev] }, align 8
@_ZTSN6dealii9Functions28SlitHyperSingularityFunctionE = dso_local constant [50 x i8] c"N6dealii9Functions28SlitHyperSingularityFunctionE\00", align 1
@_ZTIN6dealii9Functions28SlitHyperSingularityFunctionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions28SlitHyperSingularityFunctionE, ptr @_ZTIN6dealii8FunctionILi2EEE }, align 8
@_ZTVN6dealii9Functions14SquareFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14SquareFunctionILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions14SquareFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14SquareFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14SquareFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14SquareFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii9Functions14SquareFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14SquareFunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14SquareFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14SquareFunctionILi1EEE, ptr @_ZThn16_N6dealii9Functions14SquareFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions14SquareFunctionILi1EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions14SquareFunctionILi1EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14SquareFunctionILi1EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi1EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions14SquareFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14SquareFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTVN6dealii9Functions14SquareFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14SquareFunctionILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions14SquareFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14SquareFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14SquareFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14SquareFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii9Functions14SquareFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14SquareFunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14SquareFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14SquareFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions14SquareFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions14SquareFunctionILi2EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions14SquareFunctionILi2EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14SquareFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions14SquareFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14SquareFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTVN6dealii9Functions14SquareFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14SquareFunctionILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions14SquareFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14SquareFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14SquareFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14SquareFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii9Functions14SquareFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14SquareFunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14SquareFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14SquareFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions14SquareFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions14SquareFunctionILi3EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions14SquareFunctionILi3EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14SquareFunctionILi3EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi3EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions14SquareFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14SquareFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTVN6dealii9Functions15Q1WedgeFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions15Q1WedgeFunctionILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions15Q1WedgeFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi1EEESaISB_EESaISD_EE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions15Q1WedgeFunctionILi1EEE, ptr @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi1EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions15Q1WedgeFunctionILi1EEE = weak_odr dso_local constant [43 x i8] c"N6dealii9Functions15Q1WedgeFunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions15Q1WedgeFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions15Q1WedgeFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTVN6dealii9Functions15Q1WedgeFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions15Q1WedgeFunctionILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions15Q1WedgeFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions15Q1WedgeFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi2EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions15Q1WedgeFunctionILi2EEE = weak_odr dso_local constant [43 x i8] c"N6dealii9Functions15Q1WedgeFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions15Q1WedgeFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions15Q1WedgeFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTVN6dealii9Functions15Q1WedgeFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions15Q1WedgeFunctionILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions15Q1WedgeFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions15Q1WedgeFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi3EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions15Q1WedgeFunctionILi3EEE = weak_odr dso_local constant [43 x i8] c"N6dealii9Functions15Q1WedgeFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions15Q1WedgeFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions15Q1WedgeFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions14PillowFunctionILi1EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14PillowFunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions14PillowFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14PillowFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions14PillowFunctionILi2EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14PillowFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions14PillowFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14PillowFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions14PillowFunctionILi3EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14PillowFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions14PillowFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14PillowFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTVN6dealii9Functions14CosineFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [20 x ptr], [4 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14CosineFunctionILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions14CosineFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14CosineFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14CosineFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14CosineFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi1EE7hessianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii9Functions14CosineFunctionILi1EE12hessian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi2ELi1EEESaISB_EEj], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14CosineFunctionILi1EEE, ptr @_ZThn16_N6dealii9Functions14CosineFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions14CosineFunctionILi1EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions14CosineFunctionILi1EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14CosineFunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions14CosineFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14CosineFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTVN6dealii9Functions14CosineFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [20 x ptr], [4 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14CosineFunctionILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions14CosineFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14CosineFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14CosineFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14CosineFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi2EE7hessianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii9Functions14CosineFunctionILi2EE12hessian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi2ELi2EEESaISB_EEj], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14CosineFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions14CosineFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions14CosineFunctionILi2EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions14CosineFunctionILi2EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14CosineFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions14CosineFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14CosineFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTVN6dealii9Functions14CosineFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [20 x ptr], [4 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions14CosineFunctionILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions14CosineFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions14CosineFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14CosineFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions14CosineFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions14CosineFunctionILi3EE7hessianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii9Functions14CosineFunctionILi3EE12hessian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi2ELi3EEESaISB_EEj], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions14CosineFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions14CosineFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions14CosineFunctionILi3EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions14CosineFunctionILi3EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14CosineFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions14CosineFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14CosineFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTVN6dealii9Functions11ExpFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions11ExpFunctionILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions11ExpFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions11ExpFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions11ExpFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions11ExpFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii9Functions11ExpFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions11ExpFunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions11ExpFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions11ExpFunctionILi1EEE, ptr @_ZThn16_N6dealii9Functions11ExpFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions11ExpFunctionILi1EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions11ExpFunctionILi1EEE = weak_odr dso_local constant [39 x i8] c"N6dealii9Functions11ExpFunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions11ExpFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions11ExpFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTVN6dealii9Functions11ExpFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions11ExpFunctionILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions11ExpFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions11ExpFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions11ExpFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions11ExpFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii9Functions11ExpFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions11ExpFunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions11ExpFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions11ExpFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions11ExpFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions11ExpFunctionILi2EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions11ExpFunctionILi2EEE = weak_odr dso_local constant [39 x i8] c"N6dealii9Functions11ExpFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions11ExpFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions11ExpFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTVN6dealii9Functions11ExpFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions11ExpFunctionILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions11ExpFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions11ExpFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions11ExpFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii9Functions11ExpFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii9Functions11ExpFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii9Functions11ExpFunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions11ExpFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions11ExpFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions11ExpFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions11ExpFunctionILi3EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions11ExpFunctionILi3EEE = weak_odr dso_local constant [39 x i8] c"N6dealii9Functions11ExpFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions11ExpFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions11ExpFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions12JumpFunctionILi1EEE = weak_odr dso_local constant [40 x i8] c"N6dealii9Functions12JumpFunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions12JumpFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions12JumpFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions12JumpFunctionILi2EEE = weak_odr dso_local constant [40 x i8] c"N6dealii9Functions12JumpFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions12JumpFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions12JumpFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions12JumpFunctionILi3EEE = weak_odr dso_local constant [40 x i8] c"N6dealii9Functions12JumpFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions12JumpFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions12JumpFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions21FourierCosineFunctionILi1EEE = weak_odr dso_local constant [49 x i8] c"N6dealii9Functions21FourierCosineFunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions21FourierCosineFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions21FourierCosineFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions21FourierCosineFunctionILi2EEE = weak_odr dso_local constant [49 x i8] c"N6dealii9Functions21FourierCosineFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions21FourierCosineFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions21FourierCosineFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions21FourierCosineFunctionILi3EEE = weak_odr dso_local constant [49 x i8] c"N6dealii9Functions21FourierCosineFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions21FourierCosineFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions21FourierCosineFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions19FourierSineFunctionILi1EEE = weak_odr dso_local constant [47 x i8] c"N6dealii9Functions19FourierSineFunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions19FourierSineFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions19FourierSineFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions19FourierSineFunctionILi2EEE = weak_odr dso_local constant [47 x i8] c"N6dealii9Functions19FourierSineFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions19FourierSineFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions19FourierSineFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions19FourierSineFunctionILi3EEE = weak_odr dso_local constant [47 x i8] c"N6dealii9Functions19FourierSineFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions19FourierSineFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions19FourierSineFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions16FourierCosineSumILi1EEE = weak_odr dso_local constant [44 x i8] c"N6dealii9Functions16FourierCosineSumILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions16FourierCosineSumILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions16FourierCosineSumILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions16FourierCosineSumILi2EEE = weak_odr dso_local constant [44 x i8] c"N6dealii9Functions16FourierCosineSumILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions16FourierCosineSumILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions16FourierCosineSumILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions16FourierCosineSumILi3EEE = weak_odr dso_local constant [44 x i8] c"N6dealii9Functions16FourierCosineSumILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions16FourierCosineSumILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions16FourierCosineSumILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions14FourierSineSumILi1EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14FourierSineSumILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions14FourierSineSumILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14FourierSineSumILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions14FourierSineSumILi2EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14FourierSineSumILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions14FourierSineSumILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14FourierSineSumILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions14FourierSineSumILi3EEE = weak_odr dso_local constant [42 x i8] c"N6dealii9Functions14FourierSineSumILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions14FourierSineSumILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions14FourierSineSumILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTVN6dealii9Functions23SlitSingularityFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions23SlitSingularityFunctionILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions23SlitSingularityFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions23SlitSingularityFunctionILi2EEE, ptr @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi2EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions23SlitSingularityFunctionILi2EEE = weak_odr dso_local constant [51 x i8] c"N6dealii9Functions23SlitSingularityFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions23SlitSingularityFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions23SlitSingularityFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTVN6dealii9Functions23SlitSingularityFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions23SlitSingularityFunctionILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions23SlitSingularityFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions23SlitSingularityFunctionILi3EEE, ptr @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi3EED0Ev] }, comdat, align 8
@_ZTSN6dealii9Functions23SlitSingularityFunctionILi3EEE = weak_odr dso_local constant [51 x i8] c"N6dealii9Functions23SlitSingularityFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions23SlitSingularityFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions23SlitSingularityFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions8MonomialILi1EEE = weak_odr dso_local constant [35 x i8] c"N6dealii9Functions8MonomialILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions8MonomialILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions8MonomialILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions8MonomialILi2EEE = weak_odr dso_local constant [35 x i8] c"N6dealii9Functions8MonomialILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions8MonomialILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions8MonomialILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions8MonomialILi3EEE = weak_odr dso_local constant [35 x i8] c"N6dealii9Functions8MonomialILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions8MonomialILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions8MonomialILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8

@_ZN6dealii9Functions14PillowFunctionILi1EEC1Ed = weak_odr dso_local unnamed_addr alias void (ptr, double), ptr @_ZN6dealii9Functions14PillowFunctionILi1EEC2Ed
@_ZN6dealii9Functions14PillowFunctionILi2EEC1Ed = weak_odr dso_local unnamed_addr alias void (ptr, double), ptr @_ZN6dealii9Functions14PillowFunctionILi2EEC2Ed
@_ZN6dealii9Functions14PillowFunctionILi3EEC1Ed = weak_odr dso_local unnamed_addr alias void (ptr, double), ptr @_ZN6dealii9Functions14PillowFunctionILi3EEC2Ed
@_ZN6dealii9Functions12JumpFunctionILi1EEC1ERKNS_5PointILi1EEEd = weak_odr dso_local unnamed_addr alias void (ptr, ptr, double), ptr @_ZN6dealii9Functions12JumpFunctionILi1EEC2ERKNS_5PointILi1EEEd
@_ZN6dealii9Functions12JumpFunctionILi2EEC1ERKNS_5PointILi2EEEd = weak_odr dso_local unnamed_addr alias void (ptr, ptr, double), ptr @_ZN6dealii9Functions12JumpFunctionILi2EEC2ERKNS_5PointILi2EEEd
@_ZN6dealii9Functions12JumpFunctionILi3EEC1ERKNS_5PointILi3EEEd = weak_odr dso_local unnamed_addr alias void (ptr, ptr, double), ptr @_ZN6dealii9Functions12JumpFunctionILi3EEC2ERKNS_5PointILi3EEEd
@_ZN6dealii9Functions21FourierCosineFunctionILi1EEC1ERKNS_5PointILi1EEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6dealii9Functions21FourierCosineFunctionILi1EEC2ERKNS_5PointILi1EEE
@_ZN6dealii9Functions21FourierCosineFunctionILi2EEC1ERKNS_5PointILi2EEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6dealii9Functions21FourierCosineFunctionILi2EEC2ERKNS_5PointILi2EEE
@_ZN6dealii9Functions21FourierCosineFunctionILi3EEC1ERKNS_5PointILi3EEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6dealii9Functions21FourierCosineFunctionILi3EEC2ERKNS_5PointILi3EEE
@_ZN6dealii9Functions19FourierSineFunctionILi1EEC1ERKNS_5PointILi1EEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6dealii9Functions19FourierSineFunctionILi1EEC2ERKNS_5PointILi1EEE
@_ZN6dealii9Functions19FourierSineFunctionILi2EEC1ERKNS_5PointILi2EEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6dealii9Functions19FourierSineFunctionILi2EEC2ERKNS_5PointILi2EEE
@_ZN6dealii9Functions19FourierSineFunctionILi3EEC1ERKNS_5PointILi3EEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6dealii9Functions19FourierSineFunctionILi3EEC2ERKNS_5PointILi3EEE
@_ZN6dealii9Functions16FourierCosineSumILi1EEC1ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6dealii9Functions16FourierCosineSumILi1EEC2ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE
@_ZN6dealii9Functions16FourierCosineSumILi2EEC1ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6dealii9Functions16FourierCosineSumILi2EEC2ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE
@_ZN6dealii9Functions16FourierCosineSumILi3EEC1ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6dealii9Functions16FourierCosineSumILi3EEC2ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE
@_ZN6dealii9Functions14FourierSineSumILi1EEC1ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6dealii9Functions14FourierSineSumILi1EEC2ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE
@_ZN6dealii9Functions14FourierSineSumILi2EEC1ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6dealii9Functions14FourierSineSumILi2EEC2ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE
@_ZN6dealii9Functions14FourierSineSumILi3EEC1ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE = weak_odr dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6dealii9Functions14FourierSineSumILi3EEC2ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE
@_ZN6dealii9Functions8MonomialILi1EEC1ERKNS_6TensorILi1ELi1EEEj = weak_odr dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6dealii9Functions8MonomialILi1EEC2ERKNS_6TensorILi1ELi1EEEj
@_ZN6dealii9Functions8MonomialILi2EEC1ERKNS_6TensorILi1ELi2EEEj = weak_odr dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6dealii9Functions8MonomialILi2EEC2ERKNS_6TensorILi1ELi2EEEj
@_ZN6dealii9Functions8MonomialILi3EEC1ERKNS_6TensorILi1ELi3EEEj = weak_odr dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6dealii9Functions8MonomialILi3EEC2ERKNS_6TensorILi1ELi3EEEj

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi1EE6squareEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret double %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi1EE6squareEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %2 = load double, ptr %0, align 8, !tbaa !185
  %3 = tail call double @llvm.fmuladd.f64(double %2, double %2, double 0.000000e+00)
  ret double %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %15, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %14, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EE6squareEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %12, ptr %13, align 8, !tbaa !185
  %14 = add i32 %10, 1
  %15 = zext i32 %14 to i64
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %17 = icmp ugt i64 %16, %15
  br i1 %17, label %8, label %7, !llvm.loop !189
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !191 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  %4 = load ptr, ptr %0, align 8, !tbaa !195
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !196 {
  %3 = load ptr, ptr %0, align 8, !tbaa !195
  %4 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !197 {
  %3 = load ptr, ptr %0, align 8, !tbaa !198
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef 2.000000e+00) #16
  call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmLEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %2) #16
  call void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !200 {
  %3 = load double, ptr %1, align 8, !tbaa !185
  store double %3, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point", align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %4
  ret void

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %16, %9 ], [ 0, %4 ]
  %11 = phi i32 [ %15, %9 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %10) #17
  call void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %12, double noundef 2.000000e+00) #16
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #17
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  %15 = add i32 %11, 1
  %16 = zext i32 %15 to i64
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %9, label %8, !llvm.loop !201
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load ptr, ptr %0, align 8, !tbaa !202
  %4 = getelementptr inbounds %"class.dealii::Tensor", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %3 = load double, ptr %1, align 8, !tbaa !185
  store double %3, ptr %0, align 8, !tbaa !185
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !184 {
  ret double 2.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double 2.000000e+00, ptr %11, align 8, !tbaa !185
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !205
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EE6squareEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  ret double %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi2EE6squareEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %2 = load double, ptr %0, align 8, !tbaa !185
  %3 = tail call double @llvm.fmuladd.f64(double %2, double %2, double 0.000000e+00)
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !185
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %3)
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %15, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %14, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EE6squareEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %12, ptr %13, align 8, !tbaa !185
  %14 = add i32 %10, 1
  %15 = zext i32 %14 to i64
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %17 = icmp ugt i64 %16, %15
  br i1 %17, label %8, label %7, !llvm.loop !206
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !207 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  %4 = load ptr, ptr %0, align 8, !tbaa !210
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !211 {
  %3 = load ptr, ptr %0, align 8, !tbaa !210
  %4 = getelementptr inbounds %"class.dealii::Point.10", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.10", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2, double noundef 2.000000e+00) #16
  call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = alloca %"class.dealii::Point.10", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmLEd(ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %2) #16
  call void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 !prof !212 {
  %3 = load double, ptr %1, align 8, !tbaa !185
  store double %3, ptr %0, align 8, !tbaa !185
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.10", align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %4
  ret void

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %16, %9 ], [ 0, %4 ]
  %11 = phi i32 [ %15, %9 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %10) #17
  call void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %12, double noundef 2.000000e+00) #16
  %13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #17
  %14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  %15 = add i32 %11, 1
  %16 = zext i32 %15 to i64
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %9, label %8, !llvm.loop !213
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load ptr, ptr %0, align 8, !tbaa !214
  %4 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !216 {
  %3 = load double, ptr %1, align 8, !tbaa !185
  store double %3, ptr %0, align 8, !tbaa !185
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !185
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !184 {
  ret double 4.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double 4.000000e+00, ptr %11, align 8, !tbaa !185
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !217
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi3EE6squareEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret double %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi3EE6squareEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !218 {
  br label %3

2:                                                ; preds = %3
  ret double %8

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %9, %3 ]
  %5 = phi double [ 0.000000e+00, %1 ], [ %8, %3 ]
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %4
  %7 = load double, ptr %6, align 8, !tbaa !185
  %8 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %5)
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %2, label %3, !prof !219, !llvm.loop !220
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %15, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %14, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EE6squareEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %12, ptr %13, align 8, !tbaa !185
  %14 = add i32 %10, 1
  %15 = zext i32 %14 to i64
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %17 = icmp ugt i64 %16, %15
  br i1 %17, label %8, label %7, !llvm.loop !221
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !222 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  %4 = load ptr, ptr %0, align 8, !tbaa !225
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !226 {
  %3 = load ptr, ptr %0, align 8, !tbaa !225
  %4 = getelementptr inbounds %"class.dealii::Point.22", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.22", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.22") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef 2.000000e+00) #16
  call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !227 {
  %4 = alloca %"class.dealii::Point.22", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmLEd(ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %2) #16
  call void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !228 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  store double %7, ptr %8, align 8, !tbaa !185
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !229, !llvm.loop !230
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.22", align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %4
  ret void

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %16, %9 ], [ 0, %4 ]
  %11 = phi i32 [ %15, %9 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %12 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %10) #17
  call void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.22") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %12, double noundef 2.000000e+00) #16
  %13 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #17
  %14 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %15 = add i32 %11, 1
  %16 = zext i32 %15 to i64
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %9, label %8, !llvm.loop !231
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !232 {
  %3 = load ptr, ptr %0, align 8, !tbaa !233
  %4 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !235 {
  %3 = load double, ptr %1, align 8, !tbaa !185
  store double %3, ptr %0, align 8, !tbaa !185
  %4 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !185
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %8, ptr %9, align 8, !tbaa !185
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !184 {
  ret double 6.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double 6.000000e+00, ptr %11, align 8, !tbaa !185
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !236
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1) #16
  %6 = fmul double %4, %5
  ret double %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !237 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !185
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %17, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %16, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1) #16
  %14 = fmul double %12, %13
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %14, ptr %15, align 8, !tbaa !185
  %16 = add i32 %10, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %8, label %7, !llvm.loop !238
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %17, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %16, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0) #16
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1) #16
  %13 = fmul double %11, %12
  %14 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %14, i32 noundef 0) #16
  store double %13, ptr %15, align 8, !tbaa !185
  %16 = add i32 %9, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %7, label %6, !llvm.loop !239
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !240 {
  %3 = load ptr, ptr %0, align 8, !tbaa !241
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !243 {
  %3 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds double, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) #16
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #16
  store double %5, ptr %6, align 8, !tbaa !185
  %7 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1) #16
  store double %7, ptr %8, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !257 {
  br i1 %1, label %3, label %4, !prof !258

3:                                                ; preds = %2
  store double 0.000000e+00, ptr %0, align 8, !tbaa !185
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %20, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %19, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0) #16
  store double %12, ptr %14, align 8, !tbaa !185
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %16 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 0) #16
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1) #16
  store double %16, ptr %18, align 8, !tbaa !185
  %19 = add i32 %10, 1
  %20 = zext i32 %19 to i64
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %22 = icmp ugt i64 %21, %20
  br i1 %22, label %8, label %7, !llvm.loop !259
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi1EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %21, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %20, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1) #16
  %12 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 0) #17
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0) #16
  store double %11, ptr %14, align 8, !tbaa !185
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %16 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 0) #16
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 0) #17
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1) #16
  store double %16, ptr %19, align 8, !tbaa !185
  %20 = add i32 %9, 1
  %21 = zext i32 %20 to i64
  %22 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %23 = icmp ugt i64 %22, %21
  br i1 %23, label %7, label %6, !llvm.loop !260
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load ptr, ptr %0, align 8, !tbaa !261
  %4 = getelementptr inbounds %"class.std::vector.5", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !184 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double 0.000000e+00, ptr %11, align 8, !tbaa !185
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !263
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %6 = fmul double %4, %5
  ret double %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !264 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !185
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %17, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %16, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %14 = fmul double %12, %13
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %14, ptr %15, align 8, !tbaa !185
  %16 = add i32 %10, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %8, label %7, !llvm.loop !265
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %17, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %16, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0) #16
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 1) #16
  %13 = fmul double %11, %12
  %14 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %14, i32 noundef 0) #16
  store double %13, ptr %15, align 8, !tbaa !185
  %16 = add i32 %9, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %7, label %6, !llvm.loop !266
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #16
  store double %5, ptr %6, align 8, !tbaa !185
  %7 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #16
  store double %7, ptr %8, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !267 {
  br i1 %1, label %3, label %4, !prof !268

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !185
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %20, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %19, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0) #16
  store double %12, ptr %14, align 8, !tbaa !185
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef 0) #16
  %17 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef 1) #16
  store double %16, ptr %18, align 8, !tbaa !185
  %19 = add i32 %10, 1
  %20 = zext i32 %19 to i64
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %22 = icmp ugt i64 %21, %20
  br i1 %22, label %8, label %7, !llvm.loop !270
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %21, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %20, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 1) #16
  %12 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %13 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 0) #17
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0) #16
  store double %11, ptr %14, align 8, !tbaa !185
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef 0) #16
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 0) #17
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef 1) #16
  store double %16, ptr %19, align 8, !tbaa !185
  %20 = add i32 %9, 1
  %21 = zext i32 %20 to i64
  %22 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %23 = icmp ugt i64 %22, %21
  br i1 %23, label %7, label %6, !llvm.loop !271
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load ptr, ptr %0, align 8, !tbaa !272
  %4 = getelementptr inbounds %"class.std::vector.17", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !184 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double 0.000000e+00, ptr %11, align 8, !tbaa !185
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !274
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %6 = fmul double %4, %5
  ret double %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !275 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !185
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %17, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %16, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %14 = fmul double %12, %13
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %14, ptr %15, align 8, !tbaa !185
  %16 = add i32 %10, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %8, label %7, !llvm.loop !276
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %17, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %16, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0) #16
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 1) #16
  %13 = fmul double %11, %12
  %14 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %14, i32 noundef 0) #16
  store double %13, ptr %15, align 8, !tbaa !185
  %16 = add i32 %9, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %7, label %6, !llvm.loop !277
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #16
  store double %5, ptr %6, align 8, !tbaa !185
  %7 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 1) #16
  store double %7, ptr %8, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !278 {
  br i1 %1, label %3, label %4, !prof !279

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !185
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !280 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %20, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %19, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 0) #16
  store double %12, ptr %14, align 8, !tbaa !185
  %15 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %16 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 0) #16
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef 1) #16
  store double %16, ptr %18, align 8, !tbaa !185
  %19 = add i32 %10, 1
  %20 = zext i32 %19 to i64
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %22 = icmp ugt i64 %21, %20
  br i1 %22, label %8, label %7, !llvm.loop !281
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %21, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %20, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 1) #16
  %12 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %13 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef 0) #17
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 0) #16
  store double %11, ptr %14, align 8, !tbaa !185
  %15 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %16 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 0) #16
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %17, i64 noundef 0) #17
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef 1) #16
  store double %16, ptr %19, align 8, !tbaa !185
  %20 = add i32 %9, 1
  %21 = zext i32 %20 to i64
  %22 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %23 = icmp ugt i64 %22, %21
  br i1 %23, label %7, label %6, !llvm.loop !282
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !283 {
  %3 = load ptr, ptr %0, align 8, !tbaa !284
  %4 = getelementptr inbounds %"class.std::vector.29", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !184 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double 0.000000e+00, ptr %11, align 8, !tbaa !185
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !286
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi1EEC2Ed(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii9Functions14PillowFunctionILi1EEC5Ed) align 2 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !287
  %4 = getelementptr inbounds %"class.dealii::Functions::PillowFunction", ptr %0, i64 0, i32 1
  store double %1, ptr %4, align 8, !tbaa !289
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #16
  %6 = fneg double %4
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %5, double 1.000000e+00)
  %8 = getelementptr inbounds %"class.dealii::Functions::PillowFunction", ptr %0, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !289
  %10 = fadd double %7, %9
  ret double %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.dealii::Functions::PillowFunction", ptr %0, i64 0, i32 1
  br label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %22, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %21, %10 ]
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %11) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0) #16
  %15 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0) #16
  %16 = fneg double %14
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %15, double 1.000000e+00)
  %18 = load double, ptr %8, align 8, !tbaa !289
  %19 = fadd double %17, %18
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %11) #17
  store double %19, ptr %20, align 8, !tbaa !185
  %21 = add i32 %12, 1
  %22 = zext i32 %21 to i64
  %23 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %24 = icmp ugt i64 %23, %22
  br i1 %24, label %10, label %9, !llvm.loop !293
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #16
  %6 = fmul double %5, -2.000000e+00
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #16
  store double %6, ptr %7, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %17, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %16, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #16
  %13 = fmul double %12, -2.000000e+00
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 0) #16
  store double %13, ptr %15, align 8, !tbaa !185
  %16 = add i32 %10, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %8, label %7, !llvm.loop !294
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !184 {
  ret double -2.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %14, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %13, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double -2.000000e+00, ptr %12, align 8, !tbaa !185
  %13 = add i32 %10, 1
  %14 = zext i32 %13 to i64
  %15 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %16 = icmp ugt i64 %15, %14
  br i1 %16, label %8, label %7, !llvm.loop !295
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi2EEC2Ed(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii9Functions14PillowFunctionILi2EEC5Ed) align 2 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !287
  %4 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.57", ptr %0, i64 0, i32 1
  store double %1, ptr %4, align 8, !tbaa !296
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %6 = fneg double %4
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %5, double 1.000000e+00)
  %8 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %9 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %10 = fneg double %8
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %9, double 1.000000e+00)
  %12 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.57", ptr %0, i64 0, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !296
  %14 = tail call double @llvm.fmuladd.f64(double %7, double %11, double %13)
  ret double %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.57", ptr %0, i64 0, i32 1
  br label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %26, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %25, %10 ]
  %13 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %11) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0) #16
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 0) #16
  %16 = fneg double %14
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %15, double 1.000000e+00)
  %18 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 1) #16
  %19 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 1) #16
  %20 = fneg double %18
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %19, double 1.000000e+00)
  %22 = load double, ptr %8, align 8, !tbaa !296
  %23 = tail call double @llvm.fmuladd.f64(double %17, double %21, double %22)
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %11) #17
  store double %23, ptr %24, align 8, !tbaa !185
  %25 = add i32 %12, 1
  %26 = zext i32 %25 to i64
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %28 = icmp ugt i64 %27, %26
  br i1 %28, label %10, label %9, !llvm.loop !299
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %6 = fmul double %5, -2.000000e+00
  %7 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %8 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %9 = fneg double %7
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %8, double 1.000000e+00)
  %11 = fmul double %6, %10
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #16
  store double %11, ptr %12, align 8, !tbaa !185
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %14 = fmul double %13, -2.000000e+00
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %17 = fneg double %15
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %16, double 1.000000e+00)
  %19 = fmul double %14, %18
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #16
  store double %19, ptr %20, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %31, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %30, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = fmul double %12, -2.000000e+00
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %16 = fneg double %14
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %15, double 1.000000e+00)
  %18 = fmul double %13, %17
  %19 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 0) #16
  store double %18, ptr %20, align 8, !tbaa !185
  %21 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %22 = fmul double %21, -2.000000e+00
  %23 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %24 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %25 = fneg double %23
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %24, double 1.000000e+00)
  %27 = fmul double %22, %26
  %28 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %28, i32 noundef 1) #16
  store double %27, ptr %29, align 8, !tbaa !185
  %30 = add i32 %10, 1
  %31 = zext i32 %30 to i64
  %32 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %33 = icmp ugt i64 %32, %31
  br i1 %33, label %8, label %7, !llvm.loop !300
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %7 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %8 = insertelement <2 x double> poison, double %4, i64 0
  %9 = insertelement <2 x double> %8, double %6, i64 1
  %10 = fneg <2 x double> %9
  %11 = insertelement <2 x double> poison, double %5, i64 0
  %12 = insertelement <2 x double> %11, double %7, i64 1
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %12, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %15 = fadd <2 x double> %13, %14
  %16 = extractelement <2 x double> %15, i64 0
  %17 = fmul double %16, -2.000000e+00
  ret double %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %28, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %27, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %16 = insertelement <2 x double> poison, double %12, i64 0
  %17 = insertelement <2 x double> %16, double %14, i64 1
  %18 = fneg <2 x double> %17
  %19 = insertelement <2 x double> poison, double %13, i64 0
  %20 = insertelement <2 x double> %19, double %15, i64 1
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %20, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %23 = fadd <2 x double> %21, %22
  %24 = extractelement <2 x double> %23, i64 0
  %25 = fmul double %24, -2.000000e+00
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %25, ptr %26, align 8, !tbaa !185
  %27 = add i32 %10, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %30 = icmp ugt i64 %29, %28
  br i1 %30, label %8, label %7, !llvm.loop !301
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi3EEC2Ed(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii9Functions14PillowFunctionILi3EEC5Ed) align 2 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !287
  %4 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.60", ptr %0, i64 0, i32 1
  store double %1, ptr %4, align 8, !tbaa !302
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %7 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %8 = insertelement <2 x double> poison, double %4, i64 0
  %9 = insertelement <2 x double> %8, double %6, i64 1
  %10 = fneg <2 x double> %9
  %11 = insertelement <2 x double> poison, double %5, i64 0
  %12 = insertelement <2 x double> %11, double %7, i64 1
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %12, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %15 = fmul <2 x double> %13, %14
  %16 = extractelement <2 x double> %15, i64 0
  %17 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2) #16
  %18 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2) #16
  %19 = fneg double %17
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %18, double 1.000000e+00)
  %21 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.60", ptr %0, i64 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !302
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %20, double %22)
  ret double %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.60", ptr %0, i64 0, i32 1
  br label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %35, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %34, %10 ]
  %13 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %11) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 0) #16
  %15 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 0) #16
  %16 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 1) #16
  %17 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 1) #16
  %18 = insertelement <2 x double> poison, double %14, i64 0
  %19 = insertelement <2 x double> %18, double %16, i64 1
  %20 = fneg <2 x double> %19
  %21 = insertelement <2 x double> poison, double %15, i64 0
  %22 = insertelement <2 x double> %21, double %17, i64 1
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %22, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %25 = fmul <2 x double> %23, %24
  %26 = extractelement <2 x double> %25, i64 0
  %27 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 2) #16
  %28 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 2) #16
  %29 = fneg double %27
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %28, double 1.000000e+00)
  %31 = load double, ptr %8, align 8, !tbaa !302
  %32 = tail call double @llvm.fmuladd.f64(double %26, double %30, double %31)
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %11) #17
  store double %32, ptr %33, align 8, !tbaa !185
  %34 = add i32 %12, 1
  %35 = zext i32 %34 to i64
  %36 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %37 = icmp ugt i64 %36, %35
  br i1 %37, label %10, label %9, !llvm.loop !305
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %6 = fmul double %5, -2.000000e+00
  %7 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %8 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %9 = fneg double %7
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %8, double 1.000000e+00)
  %11 = fmul double %6, %10
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %14 = fneg double %12
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %13, double 1.000000e+00)
  %16 = fmul double %11, %15
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #16
  store double %16, ptr %17, align 8, !tbaa !185
  %18 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %19 = fmul double %18, -2.000000e+00
  %20 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %21 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %22 = fneg double %20
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %21, double 1.000000e+00)
  %24 = fmul double %19, %23
  %25 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %26 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %27 = fneg double %25
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %26, double 1.000000e+00)
  %29 = fmul double %24, %28
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 1) #16
  store double %29, ptr %30, align 8, !tbaa !185
  %31 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %32 = fmul double %31, -2.000000e+00
  %33 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %34 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %35 = fneg double %33
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %34, double 1.000000e+00)
  %37 = fmul double %32, %36
  %38 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %39 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %40 = fneg double %38
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %39, double 1.000000e+00)
  %42 = fmul double %37, %41
  %43 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 2) #16
  store double %42, ptr %43, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %55, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %54, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = fmul double %12, -2.000000e+00
  %14 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %15 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %16 = fneg double %14
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %15, double 1.000000e+00)
  %18 = fmul double %13, %17
  %19 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %20 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %21 = fneg double %19
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double 1.000000e+00)
  %23 = fmul double %18, %22
  %24 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef 0) #16
  store double %23, ptr %25, align 8, !tbaa !185
  %26 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %27 = fmul double %26, -2.000000e+00
  %28 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %29 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %30 = fneg double %28
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %29, double 1.000000e+00)
  %32 = fmul double %27, %31
  %33 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %34 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %35 = fneg double %33
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %34, double 1.000000e+00)
  %37 = fmul double %32, %36
  %38 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %38, i32 noundef 1) #16
  store double %37, ptr %39, align 8, !tbaa !185
  %40 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %41 = fmul double %40, -2.000000e+00
  %42 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %43 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %44 = fneg double %42
  %45 = tail call double @llvm.fmuladd.f64(double %44, double %43, double 1.000000e+00)
  %46 = fmul double %41, %45
  %47 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %48 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %49 = fneg double %47
  %50 = tail call double @llvm.fmuladd.f64(double %49, double %48, double 1.000000e+00)
  %51 = fmul double %46, %50
  %52 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef 2) #16
  store double %51, ptr %53, align 8, !tbaa !185
  %54 = add i32 %10, 1
  %55 = zext i32 %54 to i64
  %56 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %57 = icmp ugt i64 %56, %55
  br i1 %57, label %8, label %7, !llvm.loop !306
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %6 = fneg double %4
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %5, double 1.000000e+00)
  %8 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %9 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %10 = fneg double %8
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %9, double 1.000000e+00)
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %14 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2) #16
  %15 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2) #16
  %16 = insertelement <2 x double> poison, double %12, i64 0
  %17 = insertelement <2 x double> %16, double %14, i64 1
  %18 = fneg <2 x double> %17
  %19 = insertelement <2 x double> poison, double %13, i64 0
  %20 = insertelement <2 x double> %19, double %15, i64 1
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %20, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %23 = fmul <2 x double> %21, %22
  %24 = extractelement <2 x double> %23, i64 0
  %25 = tail call double @llvm.fmuladd.f64(double %7, double %11, double %24)
  %26 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2) #16
  %27 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2) #16
  %28 = fneg double %26
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %27, double 1.000000e+00)
  %30 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %31 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %32 = fneg double %30
  %33 = tail call double @llvm.fmuladd.f64(double %32, double %31, double 1.000000e+00)
  %34 = tail call double @llvm.fmuladd.f64(double %29, double %33, double %25)
  %35 = fmul double %34, -2.000000e+00
  ret double %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %46, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %45, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %14 = fneg double %12
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %13, double 1.000000e+00)
  %16 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %17 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %18 = fneg double %16
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %17, double 1.000000e+00)
  %20 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %21 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %22 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %23 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %24 = insertelement <2 x double> poison, double %20, i64 0
  %25 = insertelement <2 x double> %24, double %22, i64 1
  %26 = fneg <2 x double> %25
  %27 = insertelement <2 x double> poison, double %21, i64 0
  %28 = insertelement <2 x double> %27, double %23, i64 1
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %28, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %31 = fmul <2 x double> %29, %30
  %32 = extractelement <2 x double> %31, i64 0
  %33 = tail call double @llvm.fmuladd.f64(double %15, double %19, double %32)
  %34 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %35 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %36 = fneg double %34
  %37 = tail call double @llvm.fmuladd.f64(double %36, double %35, double 1.000000e+00)
  %38 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %39 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %40 = fneg double %38
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %39, double 1.000000e+00)
  %42 = tail call double @llvm.fmuladd.f64(double %37, double %41, double %33)
  %43 = fmul double %42, -2.000000e+00
  %44 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %43, ptr %44, align 8, !tbaa !185
  %45 = add i32 %10, 1
  %46 = zext i32 %45 to i64
  %47 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %48 = icmp ugt i64 %47, %46
  br i1 %48, label %8, label %7, !llvm.loop !307
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #16
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #17
  ret double %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %17, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %16, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @cos(double noundef %13) #17
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %14, ptr %15, align 8, !tbaa !185
  %16 = add i32 %10, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %8, label %7, !llvm.loop !308
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #16
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @sin(double noundef %6) #17
  %8 = fmul double %7, 0xBFF921FB54442D18
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #16
  store double %8, ptr %9, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %19, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %18, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @sin(double noundef %13) #17
  %15 = fmul double %14, 0xBFF921FB54442D18
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0) #16
  store double %15, ptr %17, align 8, !tbaa !185
  %18 = add i32 %10, 1
  %19 = zext i32 %18 to i64
  %20 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %21 = icmp ugt i64 %20, %19
  br i1 %21, label %8, label %7, !llvm.loop !309
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #16
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #17
  %7 = fmul double %6, 0xC003BD3CC9BE45DE
  ret double %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %18, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @cos(double noundef %13) #17
  %15 = fmul double %14, 0xC003BD3CC9BE45DE
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %15, ptr %16, align 8, !tbaa !185
  %17 = add i32 %10, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %8, label %7, !llvm.loop !310
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE7hessianERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.63") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi2ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #16
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @cos(double noundef %6) #17
  %8 = fmul double %7, 0xC003BD3CC9BE45DE
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #16
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 0) #16
  store double %8, ptr %10, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x %"class.dealii::Tensor"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE12hessian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi2ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %20, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %19, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @cos(double noundef %13) #17
  %15 = fmul double %14, 0xC003BD3CC9BE45DE
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 0) #16
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 0) #16
  store double %15, ptr %18, align 8, !tbaa !185
  %19 = add i32 %10, 1
  %20 = zext i32 %19 to i64
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %22 = icmp ugt i64 %21, %20
  br i1 %22, label %8, label %7, !llvm.loop !311
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load ptr, ptr %0, align 8, !tbaa !312
  %4 = getelementptr inbounds %"class.dealii::Tensor.63", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #17
  %7 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %8 = fmul double %7, 0x3FF921FB54442D18
  %9 = tail call double @cos(double noundef %8) #17
  %10 = fmul double %6, %9
  ret double %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %21, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %20, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @cos(double noundef %13) #17
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #17
  %18 = fmul double %14, %17
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %18, ptr %19, align 8, !tbaa !185
  %20 = add i32 %10, 1
  %21 = zext i32 %20 to i64
  %22 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %23 = icmp ugt i64 %22, %21
  br i1 %23, label %8, label %7, !llvm.loop !314
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @sin(double noundef %6) #17
  %8 = fmul double %7, 0xBFF921FB54442D18
  %9 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %10 = fmul double %9, 0x3FF921FB54442D18
  %11 = tail call double @cos(double noundef %10) #17
  %12 = fmul double %8, %11
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #16
  store double %12, ptr %13, align 8, !tbaa !185
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %15 = fmul double %14, 0x3FF921FB54442D18
  %16 = tail call double @cos(double noundef %15) #17
  %17 = fmul double %16, 0xBFF921FB54442D18
  %18 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %19 = fmul double %18, 0x3FF921FB54442D18
  %20 = tail call double @sin(double noundef %19) #17
  %21 = fmul double %17, %20
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #16
  store double %21, ptr %22, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %33, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %32, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @sin(double noundef %13) #17
  %15 = fmul double %14, 0xBFF921FB54442D18
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %17 = fmul double %16, 0x3FF921FB54442D18
  %18 = tail call double @cos(double noundef %17) #17
  %19 = fmul double %15, %18
  %20 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %20, i32 noundef 0) #16
  store double %19, ptr %21, align 8, !tbaa !185
  %22 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %23 = fmul double %22, 0x3FF921FB54442D18
  %24 = tail call double @cos(double noundef %23) #17
  %25 = fmul double %24, 0xBFF921FB54442D18
  %26 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %27 = fmul double %26, 0x3FF921FB54442D18
  %28 = tail call double @sin(double noundef %27) #17
  %29 = fmul double %25, %28
  %30 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %30, i32 noundef 1) #16
  store double %29, ptr %31, align 8, !tbaa !185
  %32 = add i32 %10, 1
  %33 = zext i32 %32 to i64
  %34 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %35 = icmp ugt i64 %34, %33
  br i1 %35, label %8, label %7, !llvm.loop !315
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #17
  %7 = fmul double %6, 0xC013BD3CC9BE45DE
  %8 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %9 = fmul double %8, 0x3FF921FB54442D18
  %10 = tail call double @cos(double noundef %9) #17
  %11 = fmul double %7, %10
  ret double %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %22, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %21, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @cos(double noundef %13) #17
  %15 = fmul double %14, 0xC013BD3CC9BE45DE
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %17 = fmul double %16, 0x3FF921FB54442D18
  %18 = tail call double @cos(double noundef %17) #17
  %19 = fmul double %15, %18
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %19, ptr %20, align 8, !tbaa !185
  %21 = add i32 %10, 1
  %22 = zext i32 %21 to i64
  %23 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %24 = icmp ugt i64 %23, %22
  br i1 %24, label %8, label %7, !llvm.loop !316
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE7hessianERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.69") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi2ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @cos(double noundef %6) #17
  %8 = fmul double %7, 0xC003BD3CC9BE45DE
  %9 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %10 = fmul double %9, 0x3FF921FB54442D18
  %11 = tail call double @cos(double noundef %10) #17
  %12 = fmul double %8, %11
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %14 = fmul double %13, 0x3FF921FB54442D18
  %15 = tail call double @sin(double noundef %14) #17
  %16 = fmul double %15, 0x4003BD3CC9BE45DE
  %17 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %18 = fmul double %17, 0x3FF921FB54442D18
  %19 = tail call double @sin(double noundef %18) #17
  %20 = fmul double %16, %19
  %21 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0) #16
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %21, i32 noundef 0) #16
  store double %12, ptr %22, align 8, !tbaa !185
  %23 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #16
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %23, i32 noundef 1) #16
  store double %12, ptr %24, align 8, !tbaa !185
  %25 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0) #16
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %25, i32 noundef 1) #16
  store double %20, ptr %26, align 8, !tbaa !185
  %27 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #16
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %27, i32 noundef 0) #16
  store double %20, ptr %28, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !184 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true) #16
  %5 = add nuw nsw i64 %3, 16
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x %"class.dealii::Tensor.11"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE12hessian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi2ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %41, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %40, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @cos(double noundef %13) #17
  %15 = fmul double %14, 0xC003BD3CC9BE45DE
  %16 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %17 = fmul double %16, 0x3FF921FB54442D18
  %18 = tail call double @cos(double noundef %17) #17
  %19 = fmul double %15, %18
  %20 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = tail call double @sin(double noundef %21) #17
  %23 = fmul double %22, 0x4003BD3CC9BE45DE
  %24 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %25 = fmul double %24, 0x3FF921FB54442D18
  %26 = tail call double @sin(double noundef %25) #17
  %27 = fmul double %23, %26
  %28 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %29 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 0) #16
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %29, i32 noundef 0) #16
  store double %19, ptr %30, align 8, !tbaa !185
  %31 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %32 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef 1) #16
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %32, i32 noundef 1) #16
  store double %19, ptr %33, align 8, !tbaa !185
  %34 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %35 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef 0) #16
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %35, i32 noundef 1) #16
  store double %27, ptr %36, align 8, !tbaa !185
  %37 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %38 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %37, i32 noundef 1) #16
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %38, i32 noundef 0) #16
  store double %27, ptr %39, align 8, !tbaa !185
  %40 = add i32 %10, 1
  %41 = zext i32 %40 to i64
  %42 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %43 = icmp ugt i64 %42, %41
  br i1 %43, label %8, label %7, !llvm.loop !317
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load ptr, ptr %0, align 8, !tbaa !318
  %4 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #17
  %7 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %8 = fmul double %7, 0x3FF921FB54442D18
  %9 = tail call double @cos(double noundef %8) #17
  %10 = fmul double %6, %9
  %11 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2) #16
  %12 = fmul double %11, 0x3FF921FB54442D18
  %13 = tail call double @cos(double noundef %12) #17
  %14 = fmul double %10, %13
  ret double %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %25, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %24, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @cos(double noundef %13) #17
  %15 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #17
  %18 = fmul double %14, %17
  %19 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %20 = fmul double %19, 0x3FF921FB54442D18
  %21 = tail call double @cos(double noundef %20) #17
  %22 = fmul double %18, %21
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %22, ptr %23, align 8, !tbaa !185
  %24 = add i32 %10, 1
  %25 = zext i32 %24 to i64
  %26 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %27 = icmp ugt i64 %26, %25
  br i1 %27, label %8, label %7, !llvm.loop !320
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @sin(double noundef %6) #17
  %8 = fmul double %7, 0xBFF921FB54442D18
  %9 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %10 = fmul double %9, 0x3FF921FB54442D18
  %11 = tail call double @cos(double noundef %10) #17
  %12 = fmul double %8, %11
  %13 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %14 = fmul double %13, 0x3FF921FB54442D18
  %15 = tail call double @cos(double noundef %14) #17
  %16 = fmul double %12, %15
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #16
  store double %16, ptr %17, align 8, !tbaa !185
  %18 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %19 = fmul double %18, 0x3FF921FB54442D18
  %20 = tail call double @cos(double noundef %19) #17
  %21 = fmul double %20, 0xBFF921FB54442D18
  %22 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %23 = fmul double %22, 0x3FF921FB54442D18
  %24 = tail call double @sin(double noundef %23) #17
  %25 = fmul double %21, %24
  %26 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %27 = fmul double %26, 0x3FF921FB54442D18
  %28 = tail call double @cos(double noundef %27) #17
  %29 = fmul double %25, %28
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 1) #16
  store double %29, ptr %30, align 8, !tbaa !185
  %31 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %32 = fmul double %31, 0x3FF921FB54442D18
  %33 = tail call double @cos(double noundef %32) #17
  %34 = fmul double %33, 0xBFF921FB54442D18
  %35 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %36 = fmul double %35, 0x3FF921FB54442D18
  %37 = tail call double @cos(double noundef %36) #17
  %38 = fmul double %34, %37
  %39 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %40 = fmul double %39, 0x3FF921FB54442D18
  %41 = tail call double @sin(double noundef %40) #17
  %42 = fmul double %38, %41
  %43 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 2) #16
  store double %42, ptr %43, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %55, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %54, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @sin(double noundef %13) #17
  %15 = fmul double %14, 0xBFF921FB54442D18
  %16 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %17 = fmul double %16, 0x3FF921FB54442D18
  %18 = tail call double @cos(double noundef %17) #17
  %19 = fmul double %15, %18
  %20 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = tail call double @cos(double noundef %21) #17
  %23 = fmul double %19, %22
  %24 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef 0) #16
  store double %23, ptr %25, align 8, !tbaa !185
  %26 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %27 = fmul double %26, 0x3FF921FB54442D18
  %28 = tail call double @cos(double noundef %27) #17
  %29 = fmul double %28, 0xBFF921FB54442D18
  %30 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %31 = fmul double %30, 0x3FF921FB54442D18
  %32 = tail call double @sin(double noundef %31) #17
  %33 = fmul double %29, %32
  %34 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %35 = fmul double %34, 0x3FF921FB54442D18
  %36 = tail call double @cos(double noundef %35) #17
  %37 = fmul double %33, %36
  %38 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %38, i32 noundef 1) #16
  store double %37, ptr %39, align 8, !tbaa !185
  %40 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %41 = fmul double %40, 0x3FF921FB54442D18
  %42 = tail call double @cos(double noundef %41) #17
  %43 = fmul double %42, 0xBFF921FB54442D18
  %44 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %45 = fmul double %44, 0x3FF921FB54442D18
  %46 = tail call double @cos(double noundef %45) #17
  %47 = fmul double %43, %46
  %48 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %49 = fmul double %48, 0x3FF921FB54442D18
  %50 = tail call double @sin(double noundef %49) #17
  %51 = fmul double %47, %50
  %52 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %53 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef 2) #16
  store double %51, ptr %53, align 8, !tbaa !185
  %54 = add i32 %10, 1
  %55 = zext i32 %54 to i64
  %56 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %57 = icmp ugt i64 %56, %55
  br i1 %57, label %8, label %7, !llvm.loop !321
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #17
  %7 = fmul double %6, 0xC01D9BDB2E9D68CD
  %8 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %9 = fmul double %8, 0x3FF921FB54442D18
  %10 = tail call double @cos(double noundef %9) #17
  %11 = fmul double %7, %10
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @cos(double noundef %13) #17
  %15 = fmul double %11, %14
  ret double %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %26, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %25, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @cos(double noundef %13) #17
  %15 = fmul double %14, 0xC01D9BDB2E9D68CD
  %16 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %17 = fmul double %16, 0x3FF921FB54442D18
  %18 = tail call double @cos(double noundef %17) #17
  %19 = fmul double %15, %18
  %20 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = tail call double @cos(double noundef %21) #17
  %23 = fmul double %19, %22
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %23, ptr %24, align 8, !tbaa !185
  %25 = add i32 %10, 1
  %26 = zext i32 %25 to i64
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %28 = icmp ugt i64 %27, %26
  br i1 %28, label %8, label %7, !llvm.loop !322
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE7hessianERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi2ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @cos(double noundef %6) #17
  %8 = fmul double %7, 0xC003BD3CC9BE45DE
  %9 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %10 = fmul double %9, 0x3FF921FB54442D18
  %11 = tail call double @cos(double noundef %10) #17
  %12 = fmul double %8, %11
  %13 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %14 = fmul double %13, 0x3FF921FB54442D18
  %15 = tail call double @cos(double noundef %14) #17
  %16 = fmul double %12, %15
  %17 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %18 = fmul double %17, 0x3FF921FB54442D18
  %19 = tail call double @sin(double noundef %18) #17
  %20 = fmul double %19, 0x4003BD3CC9BE45DE
  %21 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %22 = fmul double %21, 0x3FF921FB54442D18
  %23 = tail call double @sin(double noundef %22) #17
  %24 = fmul double %20, %23
  %25 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %26 = fmul double %25, 0x3FF921FB54442D18
  %27 = tail call double @cos(double noundef %26) #17
  %28 = fmul double %24, %27
  %29 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %30 = fmul double %29, 0x3FF921FB54442D18
  %31 = tail call double @sin(double noundef %30) #17
  %32 = fmul double %31, 0x4003BD3CC9BE45DE
  %33 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %34 = fmul double %33, 0x3FF921FB54442D18
  %35 = tail call double @cos(double noundef %34) #17
  %36 = fmul double %32, %35
  %37 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %38 = fmul double %37, 0x3FF921FB54442D18
  %39 = tail call double @sin(double noundef %38) #17
  %40 = fmul double %36, %39
  %41 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %42 = fmul double %41, 0x3FF921FB54442D18
  %43 = tail call double @cos(double noundef %42) #17
  %44 = fmul double %43, 0x4003BD3CC9BE45DE
  %45 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %46 = fmul double %45, 0x3FF921FB54442D18
  %47 = tail call double @sin(double noundef %46) #17
  %48 = fmul double %44, %47
  %49 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %50 = fmul double %49, 0x3FF921FB54442D18
  %51 = tail call double @sin(double noundef %50) #17
  %52 = fmul double %48, %51
  %53 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0) #16
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %53, i32 noundef 0) #16
  store double %16, ptr %54, align 8, !tbaa !185
  %55 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 1) #16
  %56 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %55, i32 noundef 1) #16
  store double %16, ptr %56, align 8, !tbaa !185
  %57 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2) #16
  %58 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %57, i32 noundef 2) #16
  store double %16, ptr %58, align 8, !tbaa !185
  %59 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0) #16
  %60 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %59, i32 noundef 1) #16
  store double %28, ptr %60, align 8, !tbaa !185
  %61 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 1) #16
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %61, i32 noundef 0) #16
  store double %28, ptr %62, align 8, !tbaa !185
  %63 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0) #16
  %64 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %63, i32 noundef 2) #16
  store double %40, ptr %64, align 8, !tbaa !185
  %65 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2) #16
  %66 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %65, i32 noundef 0) #16
  store double %40, ptr %66, align 8, !tbaa !185
  %67 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 1) #16
  %68 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %67, i32 noundef 2) #16
  store double %52, ptr %68, align 8, !tbaa !185
  %69 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2) #16
  %70 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %69, i32 noundef 1) #16
  store double %52, ptr %70, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 !prof !323 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true) #16
  %5 = add nuw nsw i64 %3, 24
  %6 = icmp eq i64 %5, 72
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !324 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x %"class.dealii::Tensor.23"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE12hessian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi2ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %88, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %87, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = fmul double %12, 0x3FF921FB54442D18
  %14 = tail call double @cos(double noundef %13) #17
  %15 = fmul double %14, 0xC003BD3CC9BE45DE
  %16 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %17 = fmul double %16, 0x3FF921FB54442D18
  %18 = tail call double @cos(double noundef %17) #17
  %19 = fmul double %15, %18
  %20 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = tail call double @cos(double noundef %21) #17
  %23 = fmul double %19, %22
  %24 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %25 = fmul double %24, 0x3FF921FB54442D18
  %26 = tail call double @sin(double noundef %25) #17
  %27 = fmul double %26, 0x4003BD3CC9BE45DE
  %28 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %29 = fmul double %28, 0x3FF921FB54442D18
  %30 = tail call double @sin(double noundef %29) #17
  %31 = fmul double %27, %30
  %32 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %33 = fmul double %32, 0x3FF921FB54442D18
  %34 = tail call double @cos(double noundef %33) #17
  %35 = fmul double %31, %34
  %36 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %37 = fmul double %36, 0x3FF921FB54442D18
  %38 = tail call double @sin(double noundef %37) #17
  %39 = fmul double %38, 0x4003BD3CC9BE45DE
  %40 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %41 = fmul double %40, 0x3FF921FB54442D18
  %42 = tail call double @cos(double noundef %41) #17
  %43 = fmul double %39, %42
  %44 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %45 = fmul double %44, 0x3FF921FB54442D18
  %46 = tail call double @sin(double noundef %45) #17
  %47 = fmul double %43, %46
  %48 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %49 = fmul double %48, 0x3FF921FB54442D18
  %50 = tail call double @cos(double noundef %49) #17
  %51 = fmul double %50, 0x4003BD3CC9BE45DE
  %52 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %53 = fmul double %52, 0x3FF921FB54442D18
  %54 = tail call double @sin(double noundef %53) #17
  %55 = fmul double %51, %54
  %56 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %57 = fmul double %56, 0x3FF921FB54442D18
  %58 = tail call double @sin(double noundef %57) #17
  %59 = fmul double %55, %58
  %60 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %61 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %60, i32 noundef 0) #16
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %61, i32 noundef 0) #16
  store double %23, ptr %62, align 8, !tbaa !185
  %63 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %64 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %63, i32 noundef 1) #16
  %65 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %64, i32 noundef 1) #16
  store double %23, ptr %65, align 8, !tbaa !185
  %66 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %67 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %66, i32 noundef 2) #16
  %68 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %67, i32 noundef 2) #16
  store double %23, ptr %68, align 8, !tbaa !185
  %69 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %70 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %69, i32 noundef 0) #16
  %71 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %70, i32 noundef 1) #16
  store double %35, ptr %71, align 8, !tbaa !185
  %72 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %73 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %72, i32 noundef 1) #16
  %74 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %73, i32 noundef 0) #16
  store double %35, ptr %74, align 8, !tbaa !185
  %75 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %76 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %75, i32 noundef 0) #16
  %77 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %76, i32 noundef 2) #16
  store double %47, ptr %77, align 8, !tbaa !185
  %78 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %79 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %78, i32 noundef 2) #16
  %80 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %79, i32 noundef 0) #16
  store double %47, ptr %80, align 8, !tbaa !185
  %81 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %82 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %81, i32 noundef 1) #16
  %83 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %82, i32 noundef 2) #16
  store double %59, ptr %83, align 8, !tbaa !185
  %84 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %85 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %84, i32 noundef 2) #16
  %86 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %85, i32 noundef 1) #16
  store double %59, ptr %86, align 8, !tbaa !185
  %87 = add i32 %10, 1
  %88 = zext i32 %87 to i64
  %89 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %90 = icmp ugt i64 %89, %88
  br i1 %90, label %8, label %7, !llvm.loop !325
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !326 {
  %3 = load ptr, ptr %0, align 8, !tbaa !327
  %4 = getelementptr inbounds %"class.dealii::Tensor.75", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #16
  %5 = tail call double @exp(double noundef %4) #17
  ret double %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %16, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #16
  %13 = tail call double @exp(double noundef %12) #17
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %13, ptr %14, align 8, !tbaa !185
  %15 = add i32 %10, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %8, label %7, !llvm.loop !329
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #16
  %6 = tail call double @exp(double noundef %5) #17
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #16
  store double %6, ptr %7, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %17, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %16, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #16
  %13 = tail call double @exp(double noundef %12) #17
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 0) #16
  store double %13, ptr %15, align 8, !tbaa !185
  %16 = add i32 %10, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %8, label %7, !llvm.loop !330
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #16
  %5 = tail call double @exp(double noundef %4) #17
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %16, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #16
  %13 = tail call double @exp(double noundef %12) #17
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %13, ptr %14, align 8, !tbaa !185
  %15 = add i32 %10, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %8, label %7, !llvm.loop !331
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %5 = tail call double @exp(double noundef %4) #17
  %6 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %7 = tail call double @exp(double noundef %6) #17
  %8 = fmul double %5, %7
  ret double %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %19, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %18, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call double @exp(double noundef %12) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %15 = tail call double @exp(double noundef %14) #17
  %16 = fmul double %13, %15
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %16, ptr %17, align 8, !tbaa !185
  %18 = add i32 %10, 1
  %19 = zext i32 %18 to i64
  %20 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %21 = icmp ugt i64 %20, %19
  br i1 %21, label %8, label %7, !llvm.loop !332
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %6 = tail call double @exp(double noundef %5) #17
  %7 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %8 = tail call double @exp(double noundef %7) #17
  %9 = fmul double %6, %8
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #16
  store double %9, ptr %10, align 8, !tbaa !185
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %12 = tail call double @exp(double noundef %11) #17
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %14 = tail call double @exp(double noundef %13) #17
  %15 = fmul double %12, %14
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #16
  store double %15, ptr %16, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %27, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %26, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call double @exp(double noundef %12) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %15 = tail call double @exp(double noundef %14) #17
  %16 = fmul double %13, %15
  %17 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef 0) #16
  store double %16, ptr %18, align 8, !tbaa !185
  %19 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %20 = tail call double @exp(double noundef %19) #17
  %21 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %22 = tail call double @exp(double noundef %21) #17
  %23 = fmul double %20, %22
  %24 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %24, i32 noundef 1) #16
  store double %23, ptr %25, align 8, !tbaa !185
  %26 = add i32 %10, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %29 = icmp ugt i64 %28, %27
  br i1 %29, label %8, label %7, !llvm.loop !333
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %5 = tail call double @exp(double noundef %4) #17
  %6 = fmul double %5, 2.000000e+00
  %7 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %8 = tail call double @exp(double noundef %7) #17
  %9 = fmul double %6, %8
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %20, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %19, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call double @exp(double noundef %12) #17
  %14 = fmul double %13, 2.000000e+00
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %16 = tail call double @exp(double noundef %15) #17
  %17 = fmul double %14, %16
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %17, ptr %18, align 8, !tbaa !185
  %19 = add i32 %10, 1
  %20 = zext i32 %19 to i64
  %21 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %22 = icmp ugt i64 %21, %20
  br i1 %22, label %8, label %7, !llvm.loop !334
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %5 = tail call double @exp(double noundef %4) #17
  %6 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %7 = tail call double @exp(double noundef %6) #17
  %8 = fmul double %5, %7
  %9 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2) #16
  %10 = tail call double @exp(double noundef %9) #17
  %11 = fmul double %8, %10
  ret double %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %22, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %21, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = tail call double @exp(double noundef %12) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %15 = tail call double @exp(double noundef %14) #17
  %16 = fmul double %13, %15
  %17 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %18 = tail call double @exp(double noundef %17) #17
  %19 = fmul double %16, %18
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %19, ptr %20, align 8, !tbaa !185
  %21 = add i32 %10, 1
  %22 = zext i32 %21 to i64
  %23 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %24 = icmp ugt i64 %23, %22
  br i1 %24, label %8, label %7, !llvm.loop !335
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %6 = tail call double @exp(double noundef %5) #17
  %7 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %8 = tail call double @exp(double noundef %7) #17
  %9 = fmul double %6, %8
  %10 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %11 = tail call double @exp(double noundef %10) #17
  %12 = fmul double %9, %11
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #16
  store double %12, ptr %13, align 8, !tbaa !185
  %14 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %15 = tail call double @exp(double noundef %14) #17
  %16 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %17 = tail call double @exp(double noundef %16) #17
  %18 = fmul double %15, %17
  %19 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %20 = tail call double @exp(double noundef %19) #17
  %21 = fmul double %18, %20
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 1) #16
  store double %21, ptr %22, align 8, !tbaa !185
  %23 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %24 = tail call double @exp(double noundef %23) #17
  %25 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %26 = tail call double @exp(double noundef %25) #17
  %27 = fmul double %24, %26
  %28 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 2) #16
  %29 = tail call double @exp(double noundef %28) #17
  %30 = fmul double %27, %29
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 2) #16
  store double %30, ptr %31, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %43, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %42, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = tail call double @exp(double noundef %12) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %15 = tail call double @exp(double noundef %14) #17
  %16 = fmul double %13, %15
  %17 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %18 = tail call double @exp(double noundef %17) #17
  %19 = fmul double %16, %18
  %20 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 0) #16
  store double %19, ptr %21, align 8, !tbaa !185
  %22 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %23 = tail call double @exp(double noundef %22) #17
  %24 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %25 = tail call double @exp(double noundef %24) #17
  %26 = fmul double %23, %25
  %27 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %28 = tail call double @exp(double noundef %27) #17
  %29 = fmul double %26, %28
  %30 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %30, i32 noundef 1) #16
  store double %29, ptr %31, align 8, !tbaa !185
  %32 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %33 = tail call double @exp(double noundef %32) #17
  %34 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %35 = tail call double @exp(double noundef %34) #17
  %36 = fmul double %33, %35
  %37 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %38 = tail call double @exp(double noundef %37) #17
  %39 = fmul double %36, %38
  %40 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %41 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %40, i32 noundef 2) #16
  store double %39, ptr %41, align 8, !tbaa !185
  %42 = add i32 %10, 1
  %43 = zext i32 %42 to i64
  %44 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %45 = icmp ugt i64 %44, %43
  br i1 %45, label %8, label %7, !llvm.loop !336
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %5 = tail call double @exp(double noundef %4) #17
  %6 = fmul double %5, 3.000000e+00
  %7 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %8 = tail call double @exp(double noundef %7) #17
  %9 = fmul double %6, %8
  %10 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 2) #16
  %11 = tail call double @exp(double noundef %10) #17
  %12 = fmul double %9, %11
  ret double %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %23, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %22, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = tail call double @exp(double noundef %12) #17
  %14 = fmul double %13, 3.000000e+00
  %15 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %16 = tail call double @exp(double noundef %15) #17
  %17 = fmul double %14, %16
  %18 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 2) #16
  %19 = tail call double @exp(double noundef %18) #17
  %20 = fmul double %17, %19
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %20, ptr %21, align 8, !tbaa !185
  %22 = add i32 %10, 1
  %23 = zext i32 %22 to i64
  %24 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %25 = icmp ugt i64 %24, %23
  br i1 %25, label %8, label %7, !llvm.loop !337
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi1EEC2ERKNS_5PointILi1EEEd(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions12JumpFunctionILi1EEC5ERKNS_5PointILi1EEEd) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
          to label %6 unwind label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  store double %2, ptr %7, align 8, !tbaa !338
  %8 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %9, align 8, !tbaa !342
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !338
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !342
  %8 = fneg double %7
  %9 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #16
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !343
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1) #16
  %13 = fmul double %11, %12
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %13)
  %15 = fmul double %5, %14
  %16 = tail call double @atan(double noundef %15) #17
  %17 = fneg double %16
  ret double %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 4
  br label %12

11:                                               ; preds = %12, %4
  ret void

12:                                               ; preds = %7, %12
  %13 = phi i64 [ 0, %7 ], [ %30, %12 ]
  %14 = phi i32 [ 0, %7 ], [ %29, %12 ]
  %15 = load double, ptr %8, align 8, !tbaa !338
  %16 = load double, ptr %9, align 8, !tbaa !342
  %17 = fneg double %16
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 0) #16
  %20 = load double, ptr %10, align 8, !tbaa !343
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %22 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1) #16
  %23 = fmul double %20, %22
  %24 = tail call double @llvm.fmuladd.f64(double %17, double %19, double %23)
  %25 = fmul double %15, %24
  %26 = tail call double @atan(double noundef %25) #17
  %27 = fneg double %26
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #17
  store double %27, ptr %28, align 8, !tbaa !185
  %29 = add i32 %14, 1
  %30 = zext i32 %29 to i64
  %31 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %32 = icmp ugt i64 %31, %30
  br i1 %32, label %12, label %11, !llvm.loop !344
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %1, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !338
  %7 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %1, i64 0, i32 5
  %8 = load double, ptr %7, align 8, !tbaa !342
  %9 = fneg double %8
  %10 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #16
  %11 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %1, i64 0, i32 4
  %12 = load double, ptr %11, align 8, !tbaa !343
  %13 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) #16
  %14 = fmul double %12, %13
  %15 = tail call double @llvm.fmuladd.f64(double %9, double %10, double %14)
  %16 = fmul double %6, %15
  %17 = load double, ptr %5, align 8, !tbaa !338
  %18 = fneg double %17
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %16, double 1.000000e+00)
  %20 = fmul double %19, %18
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #16
  %21 = load double, ptr %7, align 8, !tbaa !342
  %22 = fmul double %21, %20
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #16
  store double %22, ptr %23, align 8, !tbaa !185
  %24 = load double, ptr %11, align 8, !tbaa !343
  %25 = fmul double %20, %24
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1) #16
  store double %25, ptr %26, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 4
  br label %12

11:                                               ; preds = %12, %4
  ret void

12:                                               ; preds = %7, %12
  %13 = phi i64 [ 0, %7 ], [ %38, %12 ]
  %14 = phi i32 [ 0, %7 ], [ %37, %12 ]
  %15 = load double, ptr %8, align 8, !tbaa !338
  %16 = load double, ptr %9, align 8, !tbaa !342
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %18 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 0) #16
  %19 = load double, ptr %10, align 8, !tbaa !343
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %21 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1) #16
  %22 = fmul double %19, %21
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %18, double %22)
  %24 = fmul double %15, %23
  %25 = load double, ptr %8, align 8, !tbaa !338
  %26 = fneg double %25
  %27 = tail call double @llvm.fmuladd.f64(double %24, double %24, double 1.000000e+00)
  %28 = fmul double %27, %26
  %29 = load double, ptr %9, align 8, !tbaa !342
  %30 = fmul double %29, %28
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #17
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 0) #16
  store double %30, ptr %32, align 8, !tbaa !185
  %33 = load double, ptr %10, align 8, !tbaa !343
  %34 = fmul double %28, %33
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #17
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 1) #16
  store double %34, ptr %36, align 8, !tbaa !185
  %37 = add i32 %14, 1
  %38 = zext i32 %37 to i64
  %39 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %40 = icmp ugt i64 %39, %38
  br i1 %40, label %12, label %11, !llvm.loop !345
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !338
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !342
  %8 = fneg double %7
  %9 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #16
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !343
  %12 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1) #16
  %13 = fmul double %11, %12
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %13)
  %15 = fmul double %5, %14
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double 1.000000e+00)
  %17 = load double, ptr %4, align 8, !tbaa !338
  %18 = fmul double %17, 2.000000e+00
  %19 = fmul double %17, %18
  %20 = fmul double %19, %15
  %21 = fmul double %16, %16
  %22 = fdiv double %20, %21
  ret double %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !338
  %7 = fmul double %6, 2.000000e+00
  %8 = fmul double %6, %7
  %9 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 4
  br label %15

14:                                               ; preds = %15, %4
  ret void

15:                                               ; preds = %11, %15
  %16 = phi i64 [ 0, %11 ], [ %35, %15 ]
  %17 = phi i32 [ 0, %11 ], [ %34, %15 ]
  %18 = load double, ptr %5, align 8, !tbaa !338
  %19 = load double, ptr %12, align 8, !tbaa !342
  %20 = fneg double %19
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %16) #17
  %22 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 0) #16
  %23 = load double, ptr %13, align 8, !tbaa !343
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %16) #17
  %25 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1) #16
  %26 = fmul double %23, %25
  %27 = tail call double @llvm.fmuladd.f64(double %20, double %22, double %26)
  %28 = fmul double %18, %27
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %28, double 1.000000e+00)
  %30 = fmul double %8, %28
  %31 = fmul double %29, %29
  %32 = fdiv double %30, %31
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %16) #17
  store double %32, ptr %33, align 8, !tbaa !185
  %34 = add i32 %17, 1
  %35 = zext i32 %34 to i64
  %36 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %37 = icmp ugt i64 %36, %35
  br i1 %37, label %15, label %14, !llvm.loop !346
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii9Functions12JumpFunctionILi1EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  ret i32 136
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi2EEC2ERKNS_5PointILi2EEEd(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions12JumpFunctionILi2EEC5ERKNS_5PointILi2EEEd) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
          to label %6 unwind label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  store double %2, ptr %7, align 8, !tbaa !347
  %8 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %9 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %10 = tail call double @atan2(double noundef %8, double noundef %9) #17
  %11 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 3
  store double %10, ptr %11, align 8, !tbaa !351
  %12 = tail call double @sin(double noundef %10) #17
  %13 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  store double %12, ptr %13, align 8, !tbaa !352
  %14 = load double, ptr %11, align 8, !tbaa !351
  %15 = tail call double @cos(double noundef %14) #17
  %16 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  store double %15, ptr %16, align 8, !tbaa !353
  ret void

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !347
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !353
  %8 = fneg double %7
  %9 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !352
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %13 = fmul double %11, %12
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %13)
  %15 = fmul double %5, %14
  %16 = tail call double @atan(double noundef %15) #17
  %17 = fneg double %16
  ret double %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  br label %12

11:                                               ; preds = %12, %4
  ret void

12:                                               ; preds = %7, %12
  %13 = phi i64 [ 0, %7 ], [ %30, %12 ]
  %14 = phi i32 [ 0, %7 ], [ %29, %12 ]
  %15 = load double, ptr %8, align 8, !tbaa !347
  %16 = load double, ptr %9, align 8, !tbaa !353
  %17 = fneg double %16
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef 0) #16
  %20 = load double, ptr %10, align 8, !tbaa !352
  %21 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %22 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %21, i32 noundef 1) #16
  %23 = fmul double %20, %22
  %24 = tail call double @llvm.fmuladd.f64(double %17, double %19, double %23)
  %25 = fmul double %15, %24
  %26 = tail call double @atan(double noundef %25) #17
  %27 = fneg double %26
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #17
  store double %27, ptr %28, align 8, !tbaa !185
  %29 = add i32 %14, 1
  %30 = zext i32 %29 to i64
  %31 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %32 = icmp ugt i64 %31, %30
  br i1 %32, label %12, label %11, !llvm.loop !354
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %1, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !347
  %7 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %1, i64 0, i32 5
  %8 = load double, ptr %7, align 8, !tbaa !353
  %9 = fneg double %8
  %10 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %11 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %1, i64 0, i32 4
  %12 = load double, ptr %11, align 8, !tbaa !352
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %14 = fmul double %12, %13
  %15 = tail call double @llvm.fmuladd.f64(double %9, double %10, double %14)
  %16 = fmul double %6, %15
  %17 = load double, ptr %5, align 8, !tbaa !347
  %18 = fneg double %17
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %16, double 1.000000e+00)
  %20 = fmul double %19, %18
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %21 = load double, ptr %7, align 8, !tbaa !353
  %22 = fmul double %21, %20
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #16
  store double %22, ptr %23, align 8, !tbaa !185
  %24 = load double, ptr %11, align 8, !tbaa !352
  %25 = fmul double %20, %24
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #16
  store double %25, ptr %26, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  br label %12

11:                                               ; preds = %12, %4
  ret void

12:                                               ; preds = %7, %12
  %13 = phi i64 [ 0, %7 ], [ %38, %12 ]
  %14 = phi i32 [ 0, %7 ], [ %37, %12 ]
  %15 = load double, ptr %8, align 8, !tbaa !347
  %16 = load double, ptr %9, align 8, !tbaa !353
  %17 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %18 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef 0) #16
  %19 = load double, ptr %10, align 8, !tbaa !352
  %20 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %21 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %20, i32 noundef 1) #16
  %22 = fmul double %19, %21
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %18, double %22)
  %24 = fmul double %15, %23
  %25 = load double, ptr %8, align 8, !tbaa !347
  %26 = fneg double %25
  %27 = tail call double @llvm.fmuladd.f64(double %24, double %24, double 1.000000e+00)
  %28 = fmul double %27, %26
  %29 = load double, ptr %9, align 8, !tbaa !353
  %30 = fmul double %29, %28
  %31 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #17
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %31, i32 noundef 0) #16
  store double %30, ptr %32, align 8, !tbaa !185
  %33 = load double, ptr %10, align 8, !tbaa !352
  %34 = fmul double %28, %33
  %35 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #17
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %35, i32 noundef 1) #16
  store double %34, ptr %36, align 8, !tbaa !185
  %37 = add i32 %14, 1
  %38 = zext i32 %37 to i64
  %39 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %40 = icmp ugt i64 %39, %38
  br i1 %40, label %12, label %11, !llvm.loop !355
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !347
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !353
  %8 = fneg double %7
  %9 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !352
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %13 = fmul double %11, %12
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %13)
  %15 = fmul double %5, %14
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double 1.000000e+00)
  %17 = load double, ptr %4, align 8, !tbaa !347
  %18 = fmul double %17, 2.000000e+00
  %19 = fmul double %17, %18
  %20 = fmul double %19, %15
  %21 = fmul double %16, %16
  %22 = fdiv double %20, %21
  ret double %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !347
  %7 = fmul double %6, 2.000000e+00
  %8 = fmul double %6, %7
  %9 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  br label %15

14:                                               ; preds = %15, %4
  ret void

15:                                               ; preds = %11, %15
  %16 = phi i64 [ 0, %11 ], [ %35, %15 ]
  %17 = phi i32 [ 0, %11 ], [ %34, %15 ]
  %18 = load double, ptr %5, align 8, !tbaa !347
  %19 = load double, ptr %12, align 8, !tbaa !353
  %20 = fneg double %19
  %21 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %16) #17
  %22 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %21, i32 noundef 0) #16
  %23 = load double, ptr %13, align 8, !tbaa !352
  %24 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %16) #17
  %25 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %24, i32 noundef 1) #16
  %26 = fmul double %23, %25
  %27 = tail call double @llvm.fmuladd.f64(double %20, double %22, double %26)
  %28 = fmul double %18, %27
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %28, double 1.000000e+00)
  %30 = fmul double %8, %28
  %31 = fmul double %29, %29
  %32 = fdiv double %30, %31
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %16) #17
  store double %32, ptr %33, align 8, !tbaa !185
  %34 = add i32 %17, 1
  %35 = zext i32 %34 to i64
  %36 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %37 = icmp ugt i64 %36, %35
  br i1 %37, label %15, label %14, !llvm.loop !356
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii9Functions12JumpFunctionILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  ret i32 144
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi3EEC2ERKNS_5PointILi3EEEd(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions12JumpFunctionILi3EEC5ERKNS_5PointILi3EEEd) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
          to label %6 unwind label %15

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  store double %2, ptr %7, align 8, !tbaa !357
  %8 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 3
  %9 = load double, ptr %8, align 8, !tbaa !361
  %10 = tail call double @sin(double noundef %9) #17
  %11 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  store double %10, ptr %11, align 8, !tbaa !362
  %12 = load double, ptr %8, align 8, !tbaa !361
  %13 = tail call double @cos(double noundef %12) #17
  %14 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  store double %13, ptr %14, align 8, !tbaa !363
  ret void

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !357
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !363
  %8 = fneg double %7
  %9 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !362
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %13 = fmul double %11, %12
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %13)
  %15 = fmul double %5, %14
  %16 = tail call double @atan(double noundef %15) #17
  %17 = fneg double %16
  ret double %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  br label %12

11:                                               ; preds = %12, %4
  ret void

12:                                               ; preds = %7, %12
  %13 = phi i64 [ 0, %7 ], [ %30, %12 ]
  %14 = phi i32 [ 0, %7 ], [ %29, %12 ]
  %15 = load double, ptr %8, align 8, !tbaa !357
  %16 = load double, ptr %9, align 8, !tbaa !363
  %17 = fneg double %16
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef 0) #16
  %20 = load double, ptr %10, align 8, !tbaa !362
  %21 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %22 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef 1) #16
  %23 = fmul double %20, %22
  %24 = tail call double @llvm.fmuladd.f64(double %17, double %19, double %23)
  %25 = fmul double %15, %24
  %26 = tail call double @atan(double noundef %25) #17
  %27 = fneg double %26
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #17
  store double %27, ptr %28, align 8, !tbaa !185
  %29 = add i32 %14, 1
  %30 = zext i32 %29 to i64
  %31 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %32 = icmp ugt i64 %31, %30
  br i1 %32, label %12, label %11, !llvm.loop !364
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %1, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !357
  %7 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %1, i64 0, i32 5
  %8 = load double, ptr %7, align 8, !tbaa !363
  %9 = fneg double %8
  %10 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %11 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %1, i64 0, i32 4
  %12 = load double, ptr %11, align 8, !tbaa !362
  %13 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %14 = fmul double %12, %13
  %15 = tail call double @llvm.fmuladd.f64(double %9, double %10, double %14)
  %16 = fmul double %6, %15
  %17 = load double, ptr %5, align 8, !tbaa !357
  %18 = fneg double %17
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %16, double 1.000000e+00)
  %20 = fmul double %19, %18
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #16
  %21 = load double, ptr %7, align 8, !tbaa !363
  %22 = fmul double %21, %20
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #16
  store double %22, ptr %23, align 8, !tbaa !185
  %24 = load double, ptr %11, align 8, !tbaa !362
  %25 = fmul double %20, %24
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 1) #16
  store double %25, ptr %26, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  br label %12

11:                                               ; preds = %12, %4
  ret void

12:                                               ; preds = %7, %12
  %13 = phi i64 [ 0, %7 ], [ %38, %12 ]
  %14 = phi i32 [ 0, %7 ], [ %37, %12 ]
  %15 = load double, ptr %8, align 8, !tbaa !357
  %16 = load double, ptr %9, align 8, !tbaa !363
  %17 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %18 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef 0) #16
  %19 = load double, ptr %10, align 8, !tbaa !362
  %20 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %13) #17
  %21 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef 1) #16
  %22 = fmul double %19, %21
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %18, double %22)
  %24 = fmul double %15, %23
  %25 = load double, ptr %8, align 8, !tbaa !357
  %26 = fneg double %25
  %27 = tail call double @llvm.fmuladd.f64(double %24, double %24, double 1.000000e+00)
  %28 = fmul double %27, %26
  %29 = load double, ptr %9, align 8, !tbaa !363
  %30 = fmul double %29, %28
  %31 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #17
  %32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %31, i32 noundef 0) #16
  store double %30, ptr %32, align 8, !tbaa !185
  %33 = load double, ptr %10, align 8, !tbaa !362
  %34 = fmul double %28, %33
  %35 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %13) #17
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %35, i32 noundef 1) #16
  store double %34, ptr %36, align 8, !tbaa !185
  %37 = add i32 %14, 1
  %38 = zext i32 %37 to i64
  %39 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %40 = icmp ugt i64 %39, %38
  br i1 %40, label %12, label %11, !llvm.loop !365
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !357
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !363
  %8 = fneg double %7
  %9 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !362
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %13 = fmul double %11, %12
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %13)
  %15 = fmul double %5, %14
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %15, double 1.000000e+00)
  %17 = load double, ptr %4, align 8, !tbaa !357
  %18 = fmul double %17, 2.000000e+00
  %19 = fmul double %17, %18
  %20 = fmul double %19, %15
  %21 = fmul double %16, %16
  %22 = fdiv double %20, %21
  ret double %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !357
  %7 = fmul double %6, 2.000000e+00
  %8 = fmul double %6, %7
  %9 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  br label %15

14:                                               ; preds = %15, %4
  ret void

15:                                               ; preds = %11, %15
  %16 = phi i64 [ 0, %11 ], [ %35, %15 ]
  %17 = phi i32 [ 0, %11 ], [ %34, %15 ]
  %18 = load double, ptr %5, align 8, !tbaa !357
  %19 = load double, ptr %12, align 8, !tbaa !363
  %20 = fneg double %19
  %21 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %16) #17
  %22 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %21, i32 noundef 0) #16
  %23 = load double, ptr %13, align 8, !tbaa !362
  %24 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %16) #17
  %25 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef 1) #16
  %26 = fmul double %23, %25
  %27 = tail call double @llvm.fmuladd.f64(double %20, double %22, double %26)
  %28 = fmul double %18, %27
  %29 = tail call double @llvm.fmuladd.f64(double %28, double %28, double 1.000000e+00)
  %30 = fmul double %8, %28
  %31 = fmul double %29, %29
  %32 = fdiv double %30, %31
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %16) #17
  store double %32, ptr %33, align 8, !tbaa !185
  %34 = add i32 %17, 1
  %35 = zext i32 %34 to i64
  %36 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %37 = icmp ugt i64 %36, %35
  br i1 %37, label %15, label %14, !llvm.loop !366
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii9Functions12JumpFunctionILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  ret i32 152
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi1EEC2ERKNS_5PointILi1EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions21FourierCosineFunctionILi1EEC5ERKNS_5PointILi1EEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !287
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = tail call double @cos(double noundef %5) #17
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !184 {
  %3 = tail call noundef double @_ZNK6dealii6TensorILi1ELi1EEmlERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret double %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions21FourierCosineFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction", ptr %1, i64 0, i32 1
  call void @_ZNK6dealii5PointILi1EEngEv(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  %8 = call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %9 = call double @sin(double noundef %8) #17
  call void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef %9) #16
  call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi1EEngEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load double, ptr %1, align 8, !tbaa !185
  %4 = fneg double %3
  store double %4, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EE6squareEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %7 = tail call double @cos(double noundef %6) #17
  %8 = fneg double %7
  %9 = fmul double %5, %8
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi2EEC2ERKNS_5PointILi2EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions21FourierCosineFunctionILi2EEC5ERKNS_5PointILi2EEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !287
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  %6 = tail call double @cos(double noundef %5) #17
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !prof !367 {
  %3 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEmlERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  ret double %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions21FourierCosineFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.10", align 8
  %6 = alloca %"class.dealii::Point.10", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %1, i64 0, i32 1
  call void @_ZNK6dealii5PointILi2EEngEv(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.10") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  %8 = call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %9 = call double @sin(double noundef %8) #17
  call void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, double noundef %9) #16
  call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi2EEngEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  %3 = load <2 x double>, ptr %1, align 8, !tbaa !185
  %4 = fneg <2 x double> %3
  store <2 x double> %4, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EE6squareEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  %7 = tail call double @cos(double noundef %6) #17
  %8 = fneg double %7
  %9 = fmul double %5, %8
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi3EEC2ERKNS_5PointILi3EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions21FourierCosineFunctionILi3EEC5ERKNS_5PointILi3EEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !287
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %6 = tail call double @cos(double noundef %5) #17
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !184 {
  %3 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEmlERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret double %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions21FourierCosineFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.22", align 8
  %6 = alloca %"class.dealii::Point.22", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %1, i64 0, i32 1
  call void @_ZNK6dealii5PointILi3EEngEv(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.22") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  %8 = call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %9 = call double @sin(double noundef %8) #17
  call void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.22") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %9) #16
  call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi3EEngEv(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %10, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !185
  %8 = fneg double %7
  %9 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  store double %8, ptr %9, align 8, !tbaa !185
  %10 = add nuw nsw i64 %5, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %3, label %4, !llvm.loop !368
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EE6squareEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %7 = tail call double @cos(double noundef %6) #17
  %8 = fneg double %7
  %9 = fmul double %5, %8
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi1EEC2ERKNS_5PointILi1EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions19FourierSineFunctionILi1EEC5ERKNS_5PointILi1EEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !287
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = tail call double @sin(double noundef %5) #17
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions19FourierSineFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction", ptr %1, i64 0, i32 1
  %7 = tail call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %8 = tail call double @cos(double noundef %7) #17
  call void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef %8) #16
  call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi1EE6squareEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %7 = tail call double @sin(double noundef %6) #17
  %8 = fneg double %7
  %9 = fmul double %5, %8
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi2EEC2ERKNS_5PointILi2EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions19FourierSineFunctionILi2EEC5ERKNS_5PointILi2EEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !287
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  %6 = tail call double @sin(double noundef %5) #17
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions19FourierSineFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.10", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %1, i64 0, i32 1
  %7 = tail call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %8 = tail call double @cos(double noundef %7) #17
  call void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, double noundef %8) #16
  call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EE6squareEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  %7 = tail call double @sin(double noundef %6) #17
  %8 = fneg double %7
  %9 = fmul double %5, %8
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi3EEC2ERKNS_5PointILi3EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions19FourierSineFunctionILi3EEC5ERKNS_5PointILi3EEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !287
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %6 = tail call double @sin(double noundef %5) #17
  ret double %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions19FourierSineFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.22", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %1, i64 0, i32 1
  %7 = tail call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %8 = tail call double @cos(double noundef %7) #17
  call void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.22") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %8) #16
  call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EE6squareEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %7 = tail call double @sin(double noundef %6) #17
  %8 = fneg double %7
  %9 = fmul double %5, %8
  ret double %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi1EEC2ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat($_ZN6dealii9Functions16FourierCosineSumILi1EEC5ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
          to label %6 unwind label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
          to label %8 unwind label %11

8:                                                ; preds = %6
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi1EEEES3_E17_S_select_on_copyERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  %7 = call ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %8 = call ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !195
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #16
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !192
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !369 {
  %3 = alloca %"class.std::allocator.2", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.2") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  %7 = call ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %8 = call ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !198
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #16
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !370
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !371 {
  %2 = load ptr, ptr %0, align 8, !tbaa !195
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !192
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %21, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %22, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %21, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %14) #17
  %17 = load double, ptr %16, align 8, !tbaa !185
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %20 = tail call double @cos(double noundef %19) #17
  %21 = tail call double @llvm.fmuladd.f64(double %17, double %20, double %15)
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %11, label %13, !llvm.loop !372
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !373 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !370
  %4 = load ptr, ptr %0, align 8, !tbaa !198
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !374 {
  %3 = load ptr, ptr %0, align 8, !tbaa !198
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16FourierCosineSumILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point", align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %1, i64 0, i32 2
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #16
  %8 = and i64 %7, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %1, i64 0, i32 1
  %12 = and i64 %7, 4294967295
  br label %14

13:                                               ; preds = %14, %4
  ret void

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %21, %14 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %18 = call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %19 = call double @sin(double noundef %18) #17
  call void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %16, double noundef %19) #16
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %13, label %14, !llvm.loop !375
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load double, ptr %1, align 8, !tbaa !185
  %4 = load double, ptr %0, align 8, !tbaa !185
  %5 = fsub double %4, %3
  store double %5, ptr %0, align 8, !tbaa !185
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %22, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %23, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %22, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %17 = tail call noundef double @_ZNK6dealii5PointILi1EE6squareEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #16
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %20 = tail call double @cos(double noundef %19) #17
  %21 = fneg double %17
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double %15)
  %23 = add nuw nsw i64 %14, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %13, !llvm.loop !376
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi2EEC2ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat($_ZN6dealii9Functions16FourierCosineSumILi2EEC5ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
          to label %6 unwind label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
          to label %8 unwind label %11

8:                                                ; preds = %6
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !377 {
  %3 = alloca %"class.std::allocator.14", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi2EEEES3_E17_S_select_on_copyERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.14") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  %7 = call ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %8 = call ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !210
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #16
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !208
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !378 {
  %2 = load ptr, ptr %0, align 8, !tbaa !210
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !208
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %21, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %22, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %21, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %14) #17
  %17 = load double, ptr %16, align 8, !tbaa !185
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  %20 = tail call double @cos(double noundef %19) #17
  %21 = tail call double @llvm.fmuladd.f64(double %17, double %20, double %15)
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %11, label %13, !llvm.loop !379
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16FourierCosineSumILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.10", align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %1, i64 0, i32 2
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %8 = and i64 %7, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %1, i64 0, i32 1
  %12 = and i64 %7, 4294967295
  br label %14

13:                                               ; preds = %14, %4
  ret void

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %21, %14 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %16 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %18 = call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %19 = call double @sin(double noundef %18) #17
  call void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %16, double noundef %19) #16
  %20 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %13, label %14, !llvm.loop !380
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !367 {
  %3 = load double, ptr %1, align 8, !tbaa !185
  %4 = load double, ptr %0, align 8, !tbaa !185
  %5 = fsub double %4, %3
  store double %5, ptr %0, align 8, !tbaa !185
  %6 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !185
  %10 = fsub double %9, %7
  store double %10, ptr %8, align 8, !tbaa !185
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %22, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %23, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %22, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %17 = tail call noundef double @_ZNK6dealii5PointILi2EE6squareEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #16
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  %20 = tail call double @cos(double noundef %19) #17
  %21 = fneg double %17
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double %15)
  %23 = add nuw nsw i64 %14, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %13, !llvm.loop !381
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi3EEC2ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat($_ZN6dealii9Functions16FourierCosineSumILi3EEC5ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
          to label %6 unwind label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
          to label %8 unwind label %11

8:                                                ; preds = %6
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !382 {
  %3 = alloca %"class.std::allocator.26", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi3EEEES3_E17_S_select_on_copyERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.26") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  %7 = call ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %8 = call ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %9 = load ptr, ptr %0, align 8, !tbaa !225
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #16
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !223
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !383 {
  %2 = load ptr, ptr %0, align 8, !tbaa !225
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %21, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %22, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %21, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %14) #17
  %17 = load double, ptr %16, align 8, !tbaa !185
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %20 = tail call double @cos(double noundef %19) #17
  %21 = tail call double @llvm.fmuladd.f64(double %17, double %20, double %15)
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %11, label %13, !llvm.loop !384
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16FourierCosineSumILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.22", align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %1, i64 0, i32 2
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #16
  %8 = and i64 %7, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %1, i64 0, i32 1
  %12 = and i64 %7, 4294967295
  br label %14

13:                                               ; preds = %14, %4
  ret void

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %21, %14 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %16 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %17 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %18 = call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %19 = call double @sin(double noundef %18) #17
  call void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.22") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %16, double noundef %19) #16
  %20 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %13, label %14, !llvm.loop !385
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !386 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %11, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %9 = load double, ptr %8, align 8, !tbaa !185
  %10 = fsub double %9, %7
  store double %10, ptr %8, align 8, !tbaa !185
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %3, label %4, !prof !387, !llvm.loop !388
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %22, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %23, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %22, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %17 = tail call noundef double @_ZNK6dealii5PointILi3EE6squareEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #16
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %20 = tail call double @cos(double noundef %19) #17
  %21 = fneg double %17
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double %15)
  %23 = add nuw nsw i64 %14, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %13, !llvm.loop !389
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi1EEC2ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat($_ZN6dealii9Functions14FourierSineSumILi1EEC5ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
          to label %6 unwind label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
          to label %8 unwind label %11

8:                                                ; preds = %6
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %21, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %22, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %21, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %14) #17
  %17 = load double, ptr %16, align 8, !tbaa !185
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %20 = tail call double @sin(double noundef %19) #17
  %21 = tail call double @llvm.fmuladd.f64(double %17, double %20, double %15)
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %11, label %13, !llvm.loop !390
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14FourierSineSumILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point", align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %1, i64 0, i32 2
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #16
  %8 = and i64 %7, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %1, i64 0, i32 1
  %12 = and i64 %7, 4294967295
  br label %14

13:                                               ; preds = %14, %4
  ret void

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %21, %14 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %18 = call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %19 = call double @cos(double noundef %18) #17
  call void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %16, double noundef %19) #16
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %13, label %14, !llvm.loop !391
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load double, ptr %1, align 8, !tbaa !185
  %4 = load double, ptr %0, align 8, !tbaa !185
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !185
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %22, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %23, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %22, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %17 = tail call noundef double @_ZNK6dealii5PointILi1EE6squareEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #16
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi1EEmlERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %20 = tail call double @sin(double noundef %19) #17
  %21 = fneg double %17
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double %15)
  %23 = add nuw nsw i64 %14, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %13, !llvm.loop !392
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi2EEC2ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat($_ZN6dealii9Functions14FourierSineSumILi2EEC5ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
          to label %6 unwind label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
          to label %8 unwind label %11

8:                                                ; preds = %6
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %21, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %22, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %21, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %14) #17
  %17 = load double, ptr %16, align 8, !tbaa !185
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  %20 = tail call double @sin(double noundef %19) #17
  %21 = tail call double @llvm.fmuladd.f64(double %17, double %20, double %15)
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %11, label %13, !llvm.loop !393
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14FourierSineSumILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.10", align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %1, i64 0, i32 2
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %8 = and i64 %7, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %1, i64 0, i32 1
  %12 = and i64 %7, 4294967295
  br label %14

13:                                               ; preds = %14, %4
  ret void

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %21, %14 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %16 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %18 = call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  %19 = call double @cos(double noundef %18) #17
  call void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %16, double noundef %19) #16
  %20 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %13, label %14, !llvm.loop !394
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load double, ptr %1, align 8, !tbaa !185
  %4 = load double, ptr %0, align 8, !tbaa !185
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !185
  %6 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !185
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !185
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %22, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %23, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %22, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %17 = tail call noundef double @_ZNK6dealii5PointILi2EE6squareEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #16
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  %20 = tail call double @sin(double noundef %19) #17
  %21 = fneg double %17
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double %15)
  %23 = add nuw nsw i64 %14, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %13, !llvm.loop !395
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi3EEC2ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat($_ZN6dealii9Functions14FourierSineSumILi3EEC5ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
          to label %6 unwind label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2
  invoke void @_ZNSt6vectorIdSaIdEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
          to label %8 unwind label %11

8:                                                ; preds = %6
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %21, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %22, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %21, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %14) #17
  %17 = load double, ptr %16, align 8, !tbaa !185
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %20 = tail call double @sin(double noundef %19) #17
  %21 = tail call double @llvm.fmuladd.f64(double %17, double %20, double %15)
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %11, label %13, !llvm.loop !396
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14FourierSineSumILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca %"class.dealii::Point.22", align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %1, i64 0, i32 2
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #16
  %8 = and i64 %7, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %1, i64 0, i32 1
  %12 = and i64 %7, 4294967295
  br label %14

13:                                               ; preds = %14, %4
  ret void

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %21, %14 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %16 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %17 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %15) #17
  %18 = call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %19 = call double @cos(double noundef %18) #17
  call void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.22") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %16, double noundef %19) #16
  %20 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %13, label %14, !llvm.loop !397
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEpLERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !398 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %11, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %9 = load double, ptr %8, align 8, !tbaa !185
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !185
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %3, label %4, !prof !399, !llvm.loop !400
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1
  %10 = and i64 %5, 4294967295
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi double [ 0.000000e+00, %3 ], [ %22, %13 ]
  ret double %12

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %23, %13 ]
  %15 = phi double [ 0.000000e+00, %8 ], [ %22, %13 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %17 = tail call noundef double @_ZNK6dealii5PointILi3EE6squareEv(ptr noundef nonnull align 8 dereferenceable(24) %16) #16
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %14) #17
  %19 = tail call noundef double @_ZNK6dealii5PointILi3EEmlERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %20 = tail call double @sin(double noundef %19) #17
  %21 = fneg double %17
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double %15)
  %23 = add nuw nsw i64 %14, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %13, !llvm.loop !401
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %6 = tail call double @atan2(double noundef %4, double noundef %5) #17
  %7 = fadd double %6, 0x400921FB54442D18
  %8 = fmul double %5, %5
  %9 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %8)
  %10 = tail call double @pow(double noundef %9, double noundef 2.500000e-01) #17
  %11 = fmul double %7, 5.000000e-01
  %12 = tail call double @sin(double noundef %11) #17
  %13 = fmul double %10, %12
  ret double %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %25, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %24, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 1) #16
  %15 = tail call double @atan2(double noundef %12, double noundef %14) #17
  %16 = fadd double %15, 0x400921FB54442D18
  %17 = fmul double %14, %14
  %18 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %17)
  %19 = tail call double @pow(double noundef %18, double noundef 2.500000e-01) #17
  %20 = fmul double %16, 5.000000e-01
  %21 = tail call double @sin(double noundef %20) #17
  %22 = fmul double %19, %21
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %22, ptr %23, align 8, !tbaa !185
  %24 = add i32 %10, 1
  %25 = zext i32 %24 to i64
  %26 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %27 = icmp ugt i64 %26, %25
  br i1 %27, label %8, label %7, !llvm.loop !402
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %25, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %24, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0) #16
  %12 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 1) #16
  %14 = tail call double @atan2(double noundef %11, double noundef %13) #17
  %15 = fadd double %14, 0x400921FB54442D18
  %16 = fmul double %13, %13
  %17 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %16)
  %18 = tail call double @pow(double noundef %17, double noundef 2.500000e-01) #17
  %19 = fmul double %15, 5.000000e-01
  %20 = tail call double @sin(double noundef %19) #17
  %21 = fmul double %18, %20
  %22 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %22, i32 noundef 0) #16
  store double %21, ptr %23, align 8, !tbaa !185
  %24 = add i32 %9, 1
  %25 = zext i32 %24 to i64
  %26 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %27 = icmp ugt i64 %26, %25
  br i1 %27, label %7, label %6, !llvm.loop !403
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %7 = tail call double @atan2(double noundef %5, double noundef %6) #17
  %8 = fadd double %7, 0x400921FB54442D18
  %9 = fmul double %6, %6
  %10 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %9)
  %11 = tail call double @pow(double noundef %10, double noundef 7.500000e-01) #17
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %12 = fmul double %8, 5.000000e-01
  %13 = tail call double @sin(double noundef %12) #17
  %14 = tail call double @cos(double noundef %12) #17
  %15 = fmul double %6, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %5, double %15)
  %17 = fmul double %16, 5.000000e-01
  %18 = fdiv double %17, %11
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #16
  store double %18, ptr %19, align 8, !tbaa !185
  %20 = tail call double @sin(double noundef %12) #17
  %21 = tail call double @cos(double noundef %12) #17
  %22 = fneg double %21
  %23 = fmul double %5, %22
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %6, double %23)
  %25 = fmul double %24, 5.000000e-01
  %26 = fdiv double %25, %11
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #16
  store double %26, ptr %27, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %38, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %37, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %14 = tail call double @atan2(double noundef %12, double noundef %13) #17
  %15 = fadd double %14, 0x400921FB54442D18
  %16 = fmul double %13, %13
  %17 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %16)
  %18 = tail call double @pow(double noundef %17, double noundef 7.500000e-01) #17
  %19 = fmul double %15, 5.000000e-01
  %20 = tail call double @sin(double noundef %19) #17
  %21 = tail call double @cos(double noundef %19) #17
  %22 = fmul double %13, %21
  %23 = tail call double @llvm.fmuladd.f64(double %20, double %12, double %22)
  %24 = fmul double %23, 5.000000e-01
  %25 = fdiv double %24, %18
  %26 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %26, i32 noundef 0) #16
  store double %25, ptr %27, align 8, !tbaa !185
  %28 = tail call double @sin(double noundef %19) #17
  %29 = tail call double @cos(double noundef %19) #17
  %30 = fneg double %29
  %31 = fmul double %12, %30
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %13, double %31)
  %33 = fmul double %32, 5.000000e-01
  %34 = fdiv double %33, %18
  %35 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %35, i32 noundef 1) #16
  store double %34, ptr %36, align 8, !tbaa !185
  %37 = add i32 %10, 1
  %38 = zext i32 %37 to i64
  %39 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %40 = icmp ugt i64 %39, %38
  br i1 %40, label %8, label %7, !llvm.loop !404
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %39, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %38, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0) #16
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 1) #16
  %13 = tail call double @atan2(double noundef %11, double noundef %12) #17
  %14 = fadd double %13, 0x400921FB54442D18
  %15 = fmul double %12, %12
  %16 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %15)
  %17 = tail call double @pow(double noundef %16, double noundef 7.500000e-01) #17
  %18 = fmul double %14, 5.000000e-01
  %19 = tail call double @sin(double noundef %18) #17
  %20 = tail call double @cos(double noundef %18) #17
  %21 = fmul double %12, %20
  %22 = tail call double @llvm.fmuladd.f64(double %19, double %11, double %21)
  %23 = fmul double %22, 5.000000e-01
  %24 = fdiv double %23, %17
  %25 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %26 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef 0) #17
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %26, i32 noundef 0) #16
  store double %24, ptr %27, align 8, !tbaa !185
  %28 = tail call double @sin(double noundef %18) #17
  %29 = tail call double @cos(double noundef %18) #17
  %30 = fneg double %29
  %31 = fmul double %11, %30
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %12, double %31)
  %33 = fmul double %32, 5.000000e-01
  %34 = fdiv double %33, %17
  %35 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %36 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %35, i64 noundef 0) #17
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %36, i32 noundef 1) #16
  store double %34, ptr %37, align 8, !tbaa !185
  %38 = add i32 %9, 1
  %39 = zext i32 %38 to i64
  %40 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %41 = icmp ugt i64 %40, %39
  br i1 %41, label %7, label %6, !llvm.loop !405
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !184 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double 0.000000e+00, ptr %11, align 8, !tbaa !185
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !406
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 1) #16
  %6 = tail call double @atan2(double noundef %4, double noundef %5) #17
  %7 = fadd double %6, 0x400921FB54442D18
  %8 = fmul double %5, %5
  %9 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %8)
  %10 = tail call double @pow(double noundef %9, double noundef 2.500000e-01) #17
  %11 = fmul double %7, 5.000000e-01
  %12 = tail call double @sin(double noundef %11) #17
  %13 = fmul double %10, %12
  ret double %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %25, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %24, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 1) #16
  %15 = tail call double @atan2(double noundef %12, double noundef %14) #17
  %16 = fadd double %15, 0x400921FB54442D18
  %17 = fmul double %14, %14
  %18 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %17)
  %19 = tail call double @pow(double noundef %18, double noundef 2.500000e-01) #17
  %20 = fmul double %16, 5.000000e-01
  %21 = tail call double @sin(double noundef %20) #17
  %22 = fmul double %19, %21
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %22, ptr %23, align 8, !tbaa !185
  %24 = add i32 %10, 1
  %25 = zext i32 %24 to i64
  %26 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %27 = icmp ugt i64 %26, %25
  br i1 %27, label %8, label %7, !llvm.loop !407
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %25, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %24, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0) #16
  %12 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %13 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 1) #16
  %14 = tail call double @atan2(double noundef %11, double noundef %13) #17
  %15 = fadd double %14, 0x400921FB54442D18
  %16 = fmul double %13, %13
  %17 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %16)
  %18 = tail call double @pow(double noundef %17, double noundef 2.500000e-01) #17
  %19 = fmul double %15, 5.000000e-01
  %20 = tail call double @sin(double noundef %19) #17
  %21 = fmul double %18, %20
  %22 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %22, i32 noundef 0) #16
  store double %21, ptr %23, align 8, !tbaa !185
  %24 = add i32 %9, 1
  %25 = zext i32 %24 to i64
  %26 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %27 = icmp ugt i64 %26, %25
  br i1 %27, label %7, label %6, !llvm.loop !408
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1) #16
  %7 = tail call double @atan2(double noundef %5, double noundef %6) #17
  %8 = fadd double %7, 0x400921FB54442D18
  %9 = fmul double %6, %6
  %10 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %9)
  %11 = tail call double @pow(double noundef %10, double noundef 7.500000e-01) #17
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #16
  %12 = fmul double %8, 5.000000e-01
  %13 = tail call double @sin(double noundef %12) #17
  %14 = tail call double @cos(double noundef %12) #17
  %15 = fmul double %6, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %5, double %15)
  %17 = fmul double %16, 5.000000e-01
  %18 = fdiv double %17, %11
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #16
  store double %18, ptr %19, align 8, !tbaa !185
  %20 = tail call double @sin(double noundef %12) #17
  %21 = tail call double @cos(double noundef %12) #17
  %22 = fneg double %21
  %23 = fmul double %5, %22
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %6, double %23)
  %25 = fmul double %24, 5.000000e-01
  %26 = fdiv double %25, %11
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 1) #16
  store double %26, ptr %27, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %40, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %39, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 1) #16
  %14 = tail call double @atan2(double noundef %12, double noundef %13) #17
  %15 = fadd double %14, 0x400921FB54442D18
  %16 = fmul double %13, %13
  %17 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %16)
  %18 = tail call double @pow(double noundef %17, double noundef 7.500000e-01) #17
  %19 = fmul double %15, 5.000000e-01
  %20 = tail call double @sin(double noundef %19) #17
  %21 = tail call double @cos(double noundef %19) #17
  %22 = fmul double %13, %21
  %23 = tail call double @llvm.fmuladd.f64(double %20, double %12, double %22)
  %24 = fmul double %23, 5.000000e-01
  %25 = fdiv double %24, %18
  %26 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 0) #16
  store double %25, ptr %27, align 8, !tbaa !185
  %28 = tail call double @sin(double noundef %19) #17
  %29 = tail call double @cos(double noundef %19) #17
  %30 = fneg double %29
  %31 = fmul double %12, %30
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %13, double %31)
  %33 = fmul double %32, 5.000000e-01
  %34 = fdiv double %33, %18
  %35 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %35, i32 noundef 1) #16
  store double %34, ptr %36, align 8, !tbaa !185
  %37 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %37, i32 noundef 2) #16
  store double 0.000000e+00, ptr %38, align 8, !tbaa !185
  %39 = add i32 %10, 1
  %40 = zext i32 %39 to i64
  %41 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %42 = icmp ugt i64 %41, %40
  br i1 %42, label %8, label %7, !llvm.loop !409
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %42, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %41, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0) #16
  %12 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 1) #16
  %13 = tail call double @atan2(double noundef %11, double noundef %12) #17
  %14 = fadd double %13, 0x400921FB54442D18
  %15 = fmul double %12, %12
  %16 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %15)
  %17 = tail call double @pow(double noundef %16, double noundef 7.500000e-01) #17
  %18 = fmul double %14, 5.000000e-01
  %19 = tail call double @sin(double noundef %18) #17
  %20 = tail call double @cos(double noundef %18) #17
  %21 = fmul double %12, %20
  %22 = tail call double @llvm.fmuladd.f64(double %19, double %11, double %21)
  %23 = fmul double %22, 5.000000e-01
  %24 = fdiv double %23, %17
  %25 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %26 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef 0) #17
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 0) #16
  store double %24, ptr %27, align 8, !tbaa !185
  %28 = tail call double @sin(double noundef %18) #17
  %29 = tail call double @cos(double noundef %18) #17
  %30 = fneg double %29
  %31 = fmul double %11, %30
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %12, double %31)
  %33 = fmul double %32, 5.000000e-01
  %34 = fdiv double %33, %17
  %35 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %36 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %35, i64 noundef 0) #17
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %36, i32 noundef 1) #16
  store double %34, ptr %37, align 8, !tbaa !185
  %38 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %39 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %38, i64 noundef 0) #17
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %39, i32 noundef 2) #16
  store double 0.000000e+00, ptr %40, align 8, !tbaa !185
  %41 = add i32 %9, 1
  %42 = zext i32 %41 to i64
  %43 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %44 = icmp ugt i64 %43, %42
  br i1 %44, label %7, label %6, !llvm.loop !410
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !184 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double 0.000000e+00, ptr %11, align 8, !tbaa !185
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !411
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions8MonomialILi1EEC2ERKNS_6TensorILi1ELi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions8MonomialILi1EEC5ERKNS_6TensorILi1ELi1EEEj) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions8MonomialILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::Monomial", ptr %0, i64 0, i32 1
  %5 = tail call noundef double @_ZNK6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #16
  %6 = tail call noundef double @_ZNK6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #16
  %7 = tail call double @pow(double noundef %5, double noundef %6) #17
  ret double %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !185
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %9 = tail call noundef double @_ZNK6dealii9Functions8MonomialILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %8) #16
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %8) #16
  store double %9, ptr %10, align 8, !tbaa !185
  %11 = add nuw i32 %8, 1
  %12 = tail call noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #16
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %7, label %6, !llvm.loop !412
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #1 comdat align 2 !prof !413 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !414
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %15, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %14, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii9Functions8MonomialILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %3) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %12, ptr %13, align 8, !tbaa !185
  %14 = add i32 %10, 1
  %15 = zext i32 %14 to i64
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %17 = icmp ugt i64 %16, %15
  br i1 %17, label %8, label %7, !llvm.loop !415
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #16
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial", ptr %1, i64 0, i32 1
  %6 = tail call noundef double @_ZNK6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #16
  %7 = tail call noundef double @_ZNK6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #16
  %8 = tail call noundef double @_ZNK6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #16
  %9 = fadd double %8, -1.000000e+00
  %10 = tail call double @pow(double noundef %7, double noundef %9) #17
  %11 = fmul double %6, %10
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #16
  store double %11, ptr %12, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions8MonomialILi2EEC2ERKNS_6TensorILi1ELi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions8MonomialILi2EEC5ERKNS_6TensorILi1ELi2EEEj) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial.91", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions8MonomialILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::Monomial.91", ptr %0, i64 0, i32 1
  br label %6

5:                                                ; preds = %6
  ret double %13

6:                                                ; preds = %3, %6
  %7 = phi i1 [ true, %3 ], [ false, %6 ]
  %8 = phi i32 [ 0, %3 ], [ 1, %6 ]
  %9 = phi double [ 1.000000e+00, %3 ], [ %13, %6 ]
  %10 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %8) #16
  %11 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %8) #16
  %12 = tail call double @pow(double noundef %10, double noundef %11) #17
  %13 = fmul double %9, %12
  br i1 %7, label %6, label %5, !llvm.loop !416
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !185
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %9 = tail call noundef double @_ZNK6dealii9Functions8MonomialILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %8) #16
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %8) #16
  store double %9, ptr %10, align 8, !tbaa !185
  %11 = add nuw i32 %8, 1
  %12 = tail call noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #16
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %7, label %6, !llvm.loop !417
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %15, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %14, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii9Functions8MonomialILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %3) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %12, ptr %13, align 8, !tbaa !185
  %14 = add i32 %10, 1
  %15 = zext i32 %14 to i64
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %17 = icmp ugt i64 %16, %15
  br i1 %17, label %8, label %7, !llvm.loop !418
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial.91", ptr %1, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %10
  %7 = phi i1 [ true, %4 ], [ false, %10 ]
  %8 = phi i32 [ 0, %4 ], [ 1, %10 ]
  br label %12

9:                                                ; preds = %10
  ret void

10:                                               ; preds = %28
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %8) #16
  store double %30, ptr %11, align 8, !tbaa !185
  br i1 %7, label %6, label %9, !llvm.loop !419

12:                                               ; preds = %6, %28
  %13 = phi i1 [ true, %6 ], [ false, %28 ]
  %14 = phi i32 [ 0, %6 ], [ 1, %28 ]
  %15 = phi double [ 1.000000e+00, %6 ], [ %30, %28 ]
  %16 = icmp eq i32 %14, %8
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %8) #16
  %19 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %8) #16
  %20 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %8) #16
  %21 = fadd double %20, -1.000000e+00
  %22 = tail call double @pow(double noundef %19, double noundef %21) #17
  %23 = fmul double %18, %22
  br label %28

24:                                               ; preds = %12
  %25 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %14) #16
  %26 = tail call noundef double @_ZNK6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %14) #16
  %27 = tail call double @pow(double noundef %25, double noundef %26) #17
  br label %28

28:                                               ; preds = %24, %17
  %29 = phi double [ %23, %17 ], [ %27, %24 ]
  %30 = fmul double %15, %29
  br i1 %13, label %12, label %10, !llvm.loop !420
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions8MonomialILi3EEC2ERKNS_6TensorILi1ELi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions8MonomialILi3EEC5ERKNS_6TensorILi1ELi3EEEj) align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00) #16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !287
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial.92", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions8MonomialILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = getelementptr inbounds %"class.dealii::Functions::Monomial.92", ptr %0, i64 0, i32 1
  br label %6

5:                                                ; preds = %6
  ret double %12

6:                                                ; preds = %3, %6
  %7 = phi i32 [ 0, %3 ], [ %13, %6 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %12, %6 ]
  %9 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %7) #16
  %10 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %7) #16
  %11 = tail call double @pow(double noundef %9, double noundef %10) #17
  %12 = fmul double %8, %11
  %13 = add nuw nsw i32 %7, 1
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %5, label %6, !llvm.loop !421
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !422 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !185
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %9 = tail call noundef double @_ZNK6dealii9Functions8MonomialILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %8) #16
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %8) #16
  store double %9, ptr %10, align 8, !tbaa !185
  %11 = add nuw i32 %8, 1
  %12 = tail call noundef i32 @_ZNK6dealii6VectorIdE4sizeEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #16
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %7, label %6, !llvm.loop !423
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %15, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %14, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii9Functions8MonomialILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %3) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %12, ptr %13, align 8, !tbaa !185
  %14 = add i32 %10, 1
  %15 = zext i32 %14 to i64
  %16 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %17 = icmp ugt i64 %16, %15
  br i1 %17, label %8, label %7, !llvm.loop !424
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #16
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial.92", ptr %1, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %9
  %7 = phi i32 [ 0, %4 ], [ %11, %9 ]
  br label %13

8:                                                ; preds = %9
  ret void

9:                                                ; preds = %28
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %7) #16
  store double %30, ptr %10, align 8, !tbaa !185
  %11 = add nuw nsw i32 %7, 1
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %8, label %6, !llvm.loop !425

13:                                               ; preds = %6, %28
  %14 = phi i32 [ 0, %6 ], [ %31, %28 ]
  %15 = phi double [ 1.000000e+00, %6 ], [ %30, %28 ]
  %16 = icmp eq i32 %14, %7
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %7) #16
  %19 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %7) #16
  %20 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %7) #16
  %21 = fadd double %20, -1.000000e+00
  %22 = tail call double @pow(double noundef %19, double noundef %21) #17
  %23 = fmul double %18, %22
  br label %28

24:                                               ; preds = %13
  %25 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %14) #16
  %26 = tail call noundef double @_ZNK6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %14) #16
  %27 = tail call double @pow(double noundef %25, double noundef %26) #17
  br label %28

28:                                               ; preds = %24, %17
  %29 = phi double [ %23, %17 ], [ %27, %24 ]
  %30 = fmul double %15, %29
  %31 = add nuw nsw i32 %14, 1
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %9, label %13, !llvm.loop !426
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZNK6dealii9Functions20LSingularityFunction5valueERKNS_5PointILi2EEEj(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 %2) unnamed_addr #1 align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %6 = fcmp oge double %4, 0.000000e+00
  %7 = fcmp oge double %5, 0.000000e+00
  %8 = and i1 %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = fneg double %4
  %11 = tail call double @atan2(double noundef %5, double noundef %10) #17
  %12 = fadd double %11, 0x400921FB54442D18
  %13 = fmul double %5, %5
  %14 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %13)
  %15 = tail call double @pow(double noundef %14, double noundef 0x3FD5555555555555) #17
  %16 = fmul double %12, 0x3FE5555555555555
  %17 = tail call double @sin(double noundef %16) #17
  %18 = fmul double %15, %17
  br label %19

19:                                               ; preds = %3, %9
  %20 = phi double [ %18, %9 ], [ 0.000000e+00, %3 ]
  ret double %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #1 align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %28, %4
  ret void

8:                                                ; preds = %4, %28
  %9 = phi i64 [ %32, %28 ], [ 0, %4 ]
  %10 = phi i32 [ %31, %28 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 1) #16
  %15 = fcmp oge double %12, 0.000000e+00
  %16 = fcmp oge double %14, 0.000000e+00
  %17 = and i1 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %8
  %19 = fneg double %12
  %20 = tail call double @atan2(double noundef %14, double noundef %19) #17
  %21 = fadd double %20, 0x400921FB54442D18
  %22 = fmul double %14, %14
  %23 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %22)
  %24 = tail call double @pow(double noundef %23, double noundef 0x3FD5555555555555) #17
  %25 = fmul double %21, 0x3FE5555555555555
  %26 = tail call double @sin(double noundef %25) #17
  %27 = fmul double %24, %26
  br label %28

28:                                               ; preds = %8, %18
  %29 = phi double [ %27, %18 ], [ 0.000000e+00, %8 ]
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %29, ptr %30, align 8, !tbaa !185
  %31 = add i32 %10, 1
  %32 = zext i32 %31 to i64
  %33 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %34 = icmp ugt i64 %33, %32
  br i1 %34, label %8, label %7, !llvm.loop !427
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %27, %3
  ret void

7:                                                ; preds = %3, %27
  %8 = phi i64 [ %32, %27 ], [ 0, %3 ]
  %9 = phi i32 [ %31, %27 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0) #16
  %12 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 1) #16
  %14 = fcmp oge double %11, 0.000000e+00
  %15 = fcmp oge double %13, 0.000000e+00
  %16 = and i1 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %7
  %18 = fneg double %11
  %19 = tail call double @atan2(double noundef %13, double noundef %18) #17
  %20 = fadd double %19, 0x400921FB54442D18
  %21 = fmul double %13, %13
  %22 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %21)
  %23 = tail call double @pow(double noundef %22, double noundef 0x3FD5555555555555) #17
  %24 = fmul double %20, 0x3FE5555555555555
  %25 = tail call double @sin(double noundef %24) #17
  %26 = fmul double %23, %25
  br label %27

27:                                               ; preds = %7, %17
  %28 = phi double [ %26, %17 ], [ 0.000000e+00, %7 ]
  %29 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %29, i32 noundef 0) #16
  store double %28, ptr %30, align 8, !tbaa !185
  %31 = add i32 %9, 1
  %32 = zext i32 %31 to i64
  %33 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %34 = icmp ugt i64 %33, %32
  br i1 %34, label %7, label %6, !llvm.loop !428
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @_ZNK6dealii9Functions20LSingularityFunction9laplacianERKNS_5PointILi2EEEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 %2) unnamed_addr #6 align 2 !prof !184 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #1 align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double 0.000000e+00, ptr %11, align 8, !tbaa !185
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !429
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 %3) unnamed_addr #1 align 2 !prof !184 {
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %7 = fneg double %5
  %8 = tail call double @atan2(double noundef %6, double noundef %7) #17
  %9 = fadd double %8, 0x400921FB54442D18
  %10 = fmul double %6, %6
  %11 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %10)
  %12 = tail call double @pow(double noundef %11, double noundef 0x3FE5555555555555) #17
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %13 = fmul double %9, 0x3FE5555555555555
  %14 = tail call double @sin(double noundef %13) #17
  %15 = tail call double @cos(double noundef %13) #17
  %16 = fmul double %6, %15
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %5, double %16)
  %18 = fmul double %17, 0x3FE5555555555555
  %19 = fdiv double %18, %12
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #16
  store double %19, ptr %20, align 8, !tbaa !185
  %21 = tail call double @sin(double noundef %13) #17
  %22 = tail call double @cos(double noundef %13) #17
  %23 = fneg double %22
  %24 = fmul double %5, %23
  %25 = tail call double @llvm.fmuladd.f64(double %21, double %6, double %24)
  %26 = fmul double %25, 0x3FE5555555555555
  %27 = fdiv double %26, %12
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #16
  store double %27, ptr %28, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #1 align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %39, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %38, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %14 = fneg double %12
  %15 = tail call double @atan2(double noundef %13, double noundef %14) #17
  %16 = fadd double %15, 0x400921FB54442D18
  %17 = fmul double %13, %13
  %18 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %17)
  %19 = tail call double @pow(double noundef %18, double noundef 0x3FE5555555555555) #17
  %20 = fmul double %16, 0x3FE5555555555555
  %21 = tail call double @sin(double noundef %20) #17
  %22 = tail call double @cos(double noundef %20) #17
  %23 = fmul double %13, %22
  %24 = tail call double @llvm.fmuladd.f64(double %21, double %12, double %23)
  %25 = fmul double %24, 0x3FE5555555555555
  %26 = fdiv double %25, %19
  %27 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %27, i32 noundef 0) #16
  store double %26, ptr %28, align 8, !tbaa !185
  %29 = tail call double @sin(double noundef %20) #17
  %30 = tail call double @cos(double noundef %20) #17
  %31 = fneg double %30
  %32 = fmul double %12, %31
  %33 = tail call double @llvm.fmuladd.f64(double %29, double %13, double %32)
  %34 = fmul double %33, 0x3FE5555555555555
  %35 = fdiv double %34, %19
  %36 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %36, i32 noundef 1) #16
  store double %35, ptr %37, align 8, !tbaa !185
  %38 = add i32 %10, 1
  %39 = zext i32 %38 to i64
  %40 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %41 = icmp ugt i64 %40, %39
  br i1 %41, label %8, label %7, !llvm.loop !430
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %40, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %39, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0) #16
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 1) #16
  %13 = fneg double %11
  %14 = tail call double @atan2(double noundef %12, double noundef %13) #17
  %15 = fadd double %14, 0x400921FB54442D18
  %16 = fmul double %12, %12
  %17 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %16)
  %18 = tail call double @pow(double noundef %17, double noundef 0x3FE5555555555555) #17
  %19 = fmul double %15, 0x3FE5555555555555
  %20 = tail call double @sin(double noundef %19) #17
  %21 = tail call double @cos(double noundef %19) #17
  %22 = fmul double %12, %21
  %23 = tail call double @llvm.fmuladd.f64(double %20, double %11, double %22)
  %24 = fmul double %23, 0x3FE5555555555555
  %25 = fdiv double %24, %18
  %26 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %27 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %26, i64 noundef 0) #17
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %27, i32 noundef 0) #16
  store double %25, ptr %28, align 8, !tbaa !185
  %29 = tail call double @sin(double noundef %19) #17
  %30 = tail call double @cos(double noundef %19) #17
  %31 = fneg double %30
  %32 = fmul double %11, %31
  %33 = tail call double @llvm.fmuladd.f64(double %29, double %12, double %32)
  %34 = fmul double %33, 0x3FE5555555555555
  %35 = fdiv double %34, %18
  %36 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %37 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %36, i64 noundef 0) #17
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %37, i32 noundef 1) #16
  store double %35, ptr %38, align 8, !tbaa !185
  %39 = add i32 %9, 1
  %40 = zext i32 %39 to i64
  %41 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %42 = icmp ugt i64 %41, %40
  br i1 %42, label %7, label %6, !llvm.loop !431
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef double @_ZNK6dealii9Functions28SlitHyperSingularityFunction5valueERKNS_5PointILi2EEEj(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 %2) unnamed_addr #1 align 2 !prof !184 {
  %4 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0) #16
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1) #16
  %6 = tail call double @atan2(double noundef %4, double noundef %5) #17
  %7 = fadd double %6, 0x400921FB54442D18
  %8 = fmul double %5, %5
  %9 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %8)
  %10 = tail call double @pow(double noundef %9, double noundef 1.250000e-01) #17
  %11 = fmul double %7, 2.500000e-01
  %12 = tail call double @sin(double noundef %11) #17
  %13 = fmul double %10, %12
  ret double %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #1 align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %25, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %24, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %14 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef 1) #16
  %15 = tail call double @atan2(double noundef %12, double noundef %14) #17
  %16 = fadd double %15, 0x400921FB54442D18
  %17 = fmul double %14, %14
  %18 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %17)
  %19 = tail call double @pow(double noundef %18, double noundef 1.250000e-01) #17
  %20 = fmul double %16, 2.500000e-01
  %21 = tail call double @sin(double noundef %20) #17
  %22 = fmul double %19, %21
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double %22, ptr %23, align 8, !tbaa !185
  %24 = add i32 %10, 1
  %25 = zext i32 %24 to i64
  %26 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %27 = icmp ugt i64 %26, %25
  br i1 %27, label %8, label %7, !llvm.loop !432
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %25, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %24, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0) #16
  %12 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 1) #16
  %14 = tail call double @atan2(double noundef %11, double noundef %13) #17
  %15 = fadd double %14, 0x400921FB54442D18
  %16 = fmul double %13, %13
  %17 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %16)
  %18 = tail call double @pow(double noundef %17, double noundef 1.250000e-01) #17
  %19 = fmul double %15, 2.500000e-01
  %20 = tail call double @sin(double noundef %19) #17
  %21 = fmul double %18, %20
  %22 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %22, i32 noundef 0) #16
  store double %21, ptr %23, align 8, !tbaa !185
  %24 = add i32 %9, 1
  %25 = zext i32 %24 to i64
  %26 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %27 = icmp ugt i64 %26, %25
  br i1 %27, label %7, label %6, !llvm.loop !433
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @_ZNK6dealii9Functions28SlitHyperSingularityFunction9laplacianERKNS_5PointILi2EEEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 %2) unnamed_addr #6 align 2 !prof !184 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #1 align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  store double 0.000000e+00, ptr %11, align 8, !tbaa !185
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !434
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 %3) unnamed_addr #1 align 2 !prof !184 {
  %5 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0) #16
  %6 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1) #16
  %7 = tail call double @atan2(double noundef %5, double noundef %6) #17
  %8 = fadd double %7, 0x400921FB54442D18
  %9 = fmul double %6, %6
  %10 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %9)
  %11 = tail call double @pow(double noundef %10, double noundef 8.750000e-01) #17
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  %12 = fmul double %8, 2.500000e-01
  %13 = tail call double @sin(double noundef %12) #17
  %14 = tail call double @cos(double noundef %12) #17
  %15 = fmul double %6, %14
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %5, double %15)
  %17 = fmul double %16, 2.500000e-01
  %18 = fdiv double %17, %11
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #16
  store double %18, ptr %19, align 8, !tbaa !185
  %20 = tail call double @sin(double noundef %12) #17
  %21 = tail call double @cos(double noundef %12) #17
  %22 = fneg double %21
  %23 = fmul double %5, %22
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %6, double %23)
  %25 = fmul double %24, 2.500000e-01
  %26 = fdiv double %25, %11
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #16
  store double %26, ptr %27, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #1 align 2 !prof !184 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %38, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %37, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #17
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0) #16
  %13 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 1) #16
  %14 = tail call double @atan2(double noundef %12, double noundef %13) #17
  %15 = fadd double %14, 0x400921FB54442D18
  %16 = fmul double %13, %13
  %17 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %16)
  %18 = tail call double @pow(double noundef %17, double noundef 8.750000e-01) #17
  %19 = fmul double %15, 2.500000e-01
  %20 = tail call double @sin(double noundef %19) #17
  %21 = tail call double @cos(double noundef %19) #17
  %22 = fmul double %13, %21
  %23 = tail call double @llvm.fmuladd.f64(double %20, double %12, double %22)
  %24 = fmul double %23, 2.500000e-01
  %25 = fdiv double %24, %18
  %26 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %26, i32 noundef 0) #16
  store double %25, ptr %27, align 8, !tbaa !185
  %28 = tail call double @sin(double noundef %19) #17
  %29 = tail call double @cos(double noundef %19) #17
  %30 = fneg double %29
  %31 = fmul double %12, %30
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %13, double %31)
  %33 = fmul double %32, 2.500000e-01
  %34 = fdiv double %33, %18
  %35 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #17
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %35, i32 noundef 1) #16
  store double %34, ptr %36, align 8, !tbaa !185
  %37 = add i32 %10, 1
  %38 = zext i32 %37 to i64
  %39 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %40 = icmp ugt i64 %39, %38
  br i1 %40, label %8, label %7, !llvm.loop !435
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 align 2 !prof !184 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %39, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %38, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #17
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 0) #16
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 1) #16
  %13 = tail call double @atan2(double noundef %11, double noundef %12) #17
  %14 = fadd double %13, 0x400921FB54442D18
  %15 = fmul double %12, %12
  %16 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %15)
  %17 = tail call double @pow(double noundef %16, double noundef 8.750000e-01) #17
  %18 = fmul double %14, 2.500000e-01
  %19 = tail call double @sin(double noundef %18) #17
  %20 = tail call double @cos(double noundef %18) #17
  %21 = fmul double %12, %20
  %22 = tail call double @llvm.fmuladd.f64(double %19, double %11, double %21)
  %23 = fmul double %22, 2.500000e-01
  %24 = fdiv double %23, %17
  %25 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %26 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %25, i64 noundef 0) #17
  %27 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %26, i32 noundef 0) #16
  store double %24, ptr %27, align 8, !tbaa !185
  %28 = tail call double @sin(double noundef %18) #17
  %29 = tail call double @cos(double noundef %18) #17
  %30 = fneg double %29
  %31 = fmul double %11, %30
  %32 = tail call double @llvm.fmuladd.f64(double %28, double %12, double %31)
  %33 = fmul double %32, 2.500000e-01
  %34 = fdiv double %33, %17
  %35 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #17
  %36 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %35, i64 noundef 0) #17
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %36, i32 noundef 1) #16
  store double %34, ptr %37, align 8, !tbaa !185
  %38 = add i32 %9, 1
  %39 = zext i32 %38 to i64
  %40 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %41 = icmp ugt i64 %40, %39
  br i1 %41, label %7, label %6, !llvm.loop !436
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20LSingularityFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20LSingularityFunctionD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20LSingularityFunctionD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions20LSingularityFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions28SlitHyperSingularityFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions28SlitHyperSingularityFunctionD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions28SlitHyperSingularityFunctionD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions28SlitHyperSingularityFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14SquareFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14SquareFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14SquareFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14SquareFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14SquareFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14SquareFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions15Q1WedgeFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15Q1WedgeFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions15Q1WedgeFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15Q1WedgeFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions15Q1WedgeFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions15Q1WedgeFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14PillowFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14PillowFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14PillowFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14CosineFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14CosineFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14CosineFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14CosineFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14CosineFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14CosineFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions11ExpFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions11ExpFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions11ExpFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions11ExpFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions11ExpFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions11ExpFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12JumpFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12JumpFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions12JumpFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions21FourierCosineFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions21FourierCosineFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions21FourierCosineFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions19FourierSineFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions19FourierSineFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions19FourierSineFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !287
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii9Functions16FourierCosineSumILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions16FourierCosineSumILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions16FourierCosineSumILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !287
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii9Functions16FourierCosineSumILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions16FourierCosineSumILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions16FourierCosineSumILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !287
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii9Functions16FourierCosineSumILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions16FourierCosineSumILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions16FourierCosineSumILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !287
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii9Functions14FourierSineSumILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14FourierSineSumILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14FourierSineSumILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !287
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii9Functions14FourierSineSumILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14FourierSineSumILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14FourierSineSumILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !287
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !287
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii9Functions14FourierSineSumILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14FourierSineSumILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions14FourierSineSumILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions23SlitSingularityFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions23SlitSingularityFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions23SlitSingularityFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions23SlitSingularityFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #17
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions8MonomialILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi1EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi1EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions8MonomialILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #17
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions8MonomialILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi2EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi2EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions8MonomialILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions8MonomialILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi3EED1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi3EED0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions8MonomialILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #17
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !437 {
  %2 = load ptr, ptr %0, align 8, !tbaa !198
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !370
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !438 {
  tail call void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !439 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !437 {
  %2 = load ptr, ptr %0, align 8, !tbaa !198
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !440
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !438 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !438 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !438 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !441

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #16
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmLEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load double, ptr %0, align 8, !tbaa !185
  %4 = fmul double %3, %1
  store double %4, ptr %0, align 8, !tbaa !185
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !184 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmLEd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load <2 x double>, ptr %0, align 8, !tbaa !185
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x double> %3, %5
  store <2 x double> %6, ptr %0, align 8, !tbaa !185
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 !prof !367 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmLEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #1 comdat align 2 !prof !442 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !185
  %8 = fmul double %7, %1
  store double %8, ptr %6, align 8, !tbaa !185
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !443, !llvm.loop !444
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !445 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii6TensorILi1ELi1EEmlERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load double, ptr %0, align 8, !tbaa !185
  %4 = load double, ptr %1, align 8, !tbaa !185
  %5 = fmul double %3, %4
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !371 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii6TensorILi1ELi2EEmlERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !367 {
  %3 = load double, ptr %0, align 8, !tbaa !185
  %4 = load double, ptr %1, align 8, !tbaa !185
  %5 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !185
  %7 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !185
  %9 = fmul double %6, %8
  %10 = tail call double @llvm.fmuladd.f64(double %3, double %4, double %9)
  ret double %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 !prof !446 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii6TensorILi1ELi3EEmlERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !447 {
  %3 = load double, ptr %0, align 8, !tbaa !185
  %4 = load double, ptr %1, align 8, !tbaa !185
  %5 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !185
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !185
  %9 = fmul double %6, %8
  %10 = tail call double @llvm.fmuladd.f64(double %3, double %4, double %9)
  %11 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !185
  %13 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !185
  %15 = tail call double @llvm.fmuladd.f64(double %12, double %14, double %10)
  ret double %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !448 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi1EEEES3_E17_S_select_on_copyERKS4_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !184 {
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE37select_on_container_copy_constructionERKS3_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !371 {
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !449 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !184 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !450 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !371 {
  %2 = load ptr, ptr %0, align 8, !tbaa !195
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !451
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE37select_on_container_copy_constructionERKS3_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !450 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !450 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !371 {
  tail call void @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !371 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
  store ptr %3, ptr %0, align 8, !tbaa !195
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !192
  %5 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !451
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !371 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !371 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !452

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !453

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi1EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !450 {
  ret i64 1152921504606846975
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !184 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !184 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br i1 %6, label %7, label %19

7:                                                ; preds = %3, %10
  %8 = phi ptr [ %12, %10 ], [ %2, %3 ]
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  invoke void @_ZSt10_ConstructIN6dealii5PointILi1EEEJRKS2_EEvPT_DpOT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #16
          to label %10 unwind label %14

10:                                               ; preds = %7
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %12 = getelementptr inbounds %"class.dealii::Point", ptr %8, i64 1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br i1 %13, label %7, label %19, !llvm.loop !454

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = call ptr @__cxa_begin_catch(ptr %16) #18
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_(ptr noundef %2, ptr noundef %8) #16
          to label %18 unwind label %21

18:                                               ; preds = %14
  invoke void @__cxa_rethrow() #23
          to label %27 unwind label %21

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %12, %10 ]
  ret ptr %20

21:                                               ; preds = %18, %14
  %22 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %23 unwind label %24

23:                                               ; preds = %21
  resume { ptr, i32 } %22

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #19
  unreachable

27:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !184 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !455
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !455
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi1EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %2 = load ptr, ptr %0, align 8, !tbaa !456
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  %2 = load ptr, ptr %0, align 8, !tbaa !456
  %3 = getelementptr inbounds %"class.dealii::Point", ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !456
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !371 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi1EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !371 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load ptr, ptr %1, align 8, !tbaa !455
  store ptr %3, ptr %0, align 8, !tbaa !456
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !371 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !452

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #16
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.2") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !369 {
  tail call void @_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator.2") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !458 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !459 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  invoke void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !460 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !461 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !462 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.111", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !463 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.111", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.2") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !464 {
  tail call void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !464 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !465 {
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !459 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
  store ptr %3, ptr %0, align 8, !tbaa !198
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !370
  %5 = getelementptr inbounds double, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !440
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !466 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !467 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !468

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !453

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !469 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !461 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !461 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %0) #16
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !461 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !455
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #17
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #17
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #17
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %0) local_unnamed_addr #1 comdat !prof !470 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !471 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !472 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #1 comdat !prof !470 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.111", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !455
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !473 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !472 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !474 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !475

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !470 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !476 {
  %3 = load ptr, ptr %1, align 8, !tbaa !455
  store ptr %3, ptr %0, align 8, !tbaa !477
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi1EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !371 {
  tail call void @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi2EEEES3_E17_S_select_on_copyERKS4_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !377 {
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE37select_on_container_copy_constructionERKS3_(ptr dead_on_unwind writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !479 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !480 {
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !481 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !377 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !377 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.112", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !377 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.112", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !482 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !378 {
  %2 = load ptr, ptr %0, align 8, !tbaa !210
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !483
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE37select_on_container_copy_constructionERKS3_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !484 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !484 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !480 {
  tail call void @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !480 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
  store ptr %3, ptr %0, align 8, !tbaa !210
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !208
  %5 = getelementptr inbounds %"class.dealii::Point.10", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !483
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !485 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !486 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !487

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !453

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 4
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi2EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !488 {
  ret i64 576460752303423487
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !377 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !377 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.112", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.112", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br i1 %6, label %7, label %19, !prof !489

7:                                                ; preds = %3, %10
  %8 = phi ptr [ %12, %10 ], [ %2, %3 ]
  %9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  invoke void @_ZSt10_ConstructIN6dealii5PointILi2EEEJRKS2_EEvPT_DpOT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(16) %9) #16
          to label %10 unwind label %14

10:                                               ; preds = %7
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %12 = getelementptr inbounds %"class.dealii::Point.10", ptr %8, i64 1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br i1 %13, label %7, label %19, !prof !490, !llvm.loop !491

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = call ptr @__cxa_begin_catch(ptr %16) #18
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_(ptr noundef %2, ptr noundef %8) #16
          to label %18 unwind label %21

18:                                               ; preds = %14
  invoke void @__cxa_rethrow() #23
          to label %27 unwind label %21

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %12, %10 ]
  ret ptr %20

21:                                               ; preds = %18, %14
  %22 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %23 unwind label %24

23:                                               ; preds = %21
  resume { ptr, i32 } %22

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #19
  unreachable

27:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !492 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !455
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !455
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi2EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !493 {
  %2 = load ptr, ptr %0, align 8, !tbaa !494
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !493 {
  %2 = load ptr, ptr %0, align 8, !tbaa !494
  %3 = getelementptr inbounds %"class.dealii::Point.10", ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !494
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !496 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !497 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !496 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !498 {
  %3 = load ptr, ptr %1, align 8, !tbaa !455
  store ptr %3, ptr %0, align 8, !tbaa !494
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !496 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !499

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #16
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !496 {
  tail call void @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi3EEEES3_E17_S_select_on_copyERKS4_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.26") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !382 {
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE37select_on_container_copy_constructionERKS3_(ptr dead_on_unwind writable sret(%"class.std::allocator.26") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !500 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !501 {
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !502 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !503 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !503 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.113", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !503 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.113", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !504 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !383 {
  %2 = load ptr, ptr %0, align 8, !tbaa !225
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !505
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE37select_on_container_copy_constructionERKS3_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.26") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !506 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !506 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !501 {
  tail call void @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  tail call void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !501 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
  store ptr %3, ptr %0, align 8, !tbaa !225
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !223
  %5 = getelementptr inbounds %"class.dealii::Point.22", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !505
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !507 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !508 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !509

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !453

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6dealii5PointILi3EEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !510 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !503 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !503 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.113", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.113", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br i1 %6, label %7, label %19, !prof !511

7:                                                ; preds = %3, %10
  %8 = phi ptr [ %12, %10 ], [ %2, %3 ]
  %9 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  invoke void @_ZSt10_ConstructIN6dealii5PointILi3EEEJRKS2_EEvPT_DpOT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #16
          to label %10 unwind label %14

10:                                               ; preds = %7
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %12 = getelementptr inbounds %"class.dealii::Point.22", ptr %8, i64 1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br i1 %13, label %7, label %19, !prof !512, !llvm.loop !513

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = call ptr @__cxa_begin_catch(ptr %16) #18
  invoke void @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_(ptr noundef %2, ptr noundef %8) #16
          to label %18 unwind label %21

18:                                               ; preds = %14
  invoke void @__cxa_rethrow() #23
          to label %27 unwind label %21

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %12, %10 ]
  ret ptr %20

21:                                               ; preds = %18, %14
  %22 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %23 unwind label %24

23:                                               ; preds = %21
  resume { ptr, i32 } %22

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #19
  unreachable

27:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !514 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !455
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !455
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6dealii5PointILi3EEEJRKS2_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
  tail call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !515 {
  %2 = load ptr, ptr %0, align 8, !tbaa !516
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !515 {
  %2 = load ptr, ptr %0, align 8, !tbaa !516
  %3 = getelementptr inbounds %"class.dealii::Point.22", ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !516
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !518 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !519 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !518 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !520 {
  %3 = load ptr, ptr %1, align 8, !tbaa !455
  store ptr %3, ptr %0, align 8, !tbaa !516
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !518 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !521

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #16
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !518 {
  tail call void @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind optsize }
attributes #21 = { noreturn optsize }
attributes #22 = { builtin optsize allocsize(0) }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!183}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182}
!35 = !{ptr @_ZNK6dealii5PointILi3EEmlEd, ptr @_ZN6dealii5PointILi3EEC2ERKS1_, i64 52047827}
!36 = !{ptr @_ZNK6dealii5PointILi3EEmlEd, ptr @_ZN6dealii6TensorILi1ELi3EEmLEd, i64 52047827}
!37 = !{ptr @_ZNK6dealii5PointILi3EEmlEd, ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, i64 52047827}
!38 = !{ptr @_ZN6dealii6TensorILi2ELi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 64833408}
!39 = !{ptr @_ZNK6dealii5PointILi2EEmlERKNS_6TensorILi1ELi2EEE, ptr @_ZNK6dealii6TensorILi1ELi2EEmlERKS1_, i64 464288}
!40 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 1356729}
!41 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 1356729}
!42 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, i64 1356729}
!43 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, i64 1356729}
!44 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 1356729}
!45 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt6vectorIdSaIdEE5beginEv, i64 1356728}
!46 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNKSt6vectorIdSaIdEE3endEv, i64 1356728}
!47 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 1356728}
!48 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, i64 1356728}
!49 = !{ptr @_ZNSt6vectorIdSaIdEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 1}
!50 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 269698}
!51 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii5PointILi1EEES2_EvT_S4_RSaIT0_E, i64 269698}
!52 = !{ptr @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev, i64 269698}
!53 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_, ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv, i64 391459}
!54 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_, ptr @_ZNKSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 391459}
!55 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi2EEEES3_E17_S_select_on_copyERKS4_, i64 391459}
!56 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_, i64 391459}
!57 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev, i64 391459}
!58 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_, ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE5beginEv, i64 391459}
!59 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_, ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE3endEv, i64 391459}
!60 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 391459}
!61 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EEC2ERKS4_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E, i64 391459}
!62 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 683366}
!63 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E, i64 683366}
!64 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, i64 683365}
!65 = !{ptr @_ZNSt6vectorIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 1}
!66 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_, ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv, i64 544007}
!67 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_, ptr @_ZNKSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 544007}
!68 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi3EEEES3_E17_S_select_on_copyERKS4_, i64 544007}
!69 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, i64 544007}
!70 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev, i64 544007}
!71 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_, ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE5beginEv, i64 544006}
!72 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_, ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE3endEv, i64 544006}
!73 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 544006}
!74 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E, i64 544006}
!75 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EEC2ERKS4_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, i64 1}
!76 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE19_M_get_Tp_allocatorEv, i64 4516033}
!77 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E, i64 4516033}
!78 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, i64 4516029}
!79 = !{ptr @_ZNSt6vectorIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 4}
!80 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 10618017}
!81 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, i64 10618017}
!82 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 10618007}
!83 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!84 = !{ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPdEvT_S1_, i64 16422537}
!85 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, i64 10618017}
!86 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 10618007}
!87 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!88 = !{ptr @_ZSt8_DestroyIPdEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, i64 16422537}
!89 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, ptr @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, i64 8354765}
!90 = !{ptr @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_, i64 464288}
!91 = !{ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_, i64 70675435}
!92 = !{ptr @_ZN6dealii5PointILi1EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi1EEC2Eb, i64 269698}
!93 = !{ptr @_ZN6dealii5PointILi2EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi2EEC2Eb, i64 202370}
!94 = !{ptr @_ZN6dealii5PointILi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 5584274}
!95 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_, i64 269698}
!96 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_M_create_storageEm, i64 269698}
!97 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE13_M_deallocateEPS2_m, i64 269698}
!98 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEED2Ev, i64 269698}
!99 = !{ptr @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEEC2ERKS3_, i64 539396}
!100 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii5PointILi1EEEEC2ERKS2_, i64 269698}
!101 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 269698}
!102 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE11_M_allocateEm, i64 269698}
!103 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE8allocateERS3_m, i64 269697}
!104 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi1EEEEEvT_S6_, i64 269698}
!105 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi1EEEEE10deallocateERS3_PS2_m, i64 269697}
!106 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, i64 1356729}
!107 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, i64 2733627}
!108 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, i64 2733627}
!109 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 3}
!110 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, i64 1356741}
!111 = !{ptr @_ZNKSt6vectorIdSaIdEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, i64 7578462}
!112 = !{ptr @_ZNKSt6vectorIdSaIdEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, i64 11572134}
!113 = !{ptr @_ZNSaIdEC2ERKS_, ptr @_ZNSt15__new_allocatorIdEC2ERKS0_, i64 4110539}
!114 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSaIdEC2ERKS_, i64 2733634}
!115 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 2733634}
!116 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, i64 2733627}
!117 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, i64 8354784}
!118 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, i64 1356741}
!119 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, i64 2713482}
!120 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, i64 1356741}
!121 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 2713482}
!122 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPdET_S1_, i64 1356741}
!123 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, i64 1356741}
!124 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_, i64 1356741}
!125 = !{ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, i64 17559028}
!126 = !{ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, i64 15156924}
!127 = !{ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, i64 17559028}
!128 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi1EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii5PointILi1EEEEvT_S4_, i64 269698}
!129 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi2EEEES3_E17_S_select_on_copyERKS4_, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE37select_on_container_copy_constructionERKS3_, i64 391459}
!130 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_, i64 504243}
!131 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm, i64 504243}
!132 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, i64 391459}
!133 = !{ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEC2ERKS5_, i64 391459}
!134 = !{ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEC2ERKS5_, i64 391459}
!135 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m, i64 683366}
!136 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEED2Ev, i64 683365}
!137 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 1}
!138 = !{ptr @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi2EEEEC2ERKS3_, i64 617027}
!139 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii5PointILi2EEEEC2ERKS2_, i64 504243}
!140 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 504243}
!141 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm, i64 504243}
!142 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE8allocateERS3_m, i64 324896}
!143 = !{ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_, ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, i64 391459}
!144 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @_ZN9__gnu_cxxneIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_, i64 953658}
!145 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEdeEv, i64 562199}
!146 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @_ZSt10_ConstructIN6dealii5PointILi2EEEJRKS2_EEvPT_DpOT0_, i64 562199}
!147 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEppEv, i64 562199}
!148 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @__cxa_begin_catch, i64 1}
!149 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_, i64 1}
!150 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @__cxa_end_catch, i64 1}
!151 = !{ptr @_ZN9__gnu_cxxneIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEE4baseEv, i64 1907318}
!152 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi2EEEEEvT_S6_, i64 772946}
!153 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi2EEEEE10deallocateERS3_PS2_m, i64 324885}
!154 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii5PointILi2EEEEvT_S4_, i64 772946}
!155 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIN6dealii5PointILi3EEEES3_E17_S_select_on_copyERKS4_, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE37select_on_container_copy_constructionERKS3_, i64 544007}
!156 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_, i64 1350593}
!157 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm, i64 1350593}
!158 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EEC2EmRKS3_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev, i64 1}
!159 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, i64 544059}
!160 = !{ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEC2ERKS5_, i64 544059}
!161 = !{ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEC2ERKS5_, i64 544059}
!162 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m, i64 4516033}
!163 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEED2Ev, i64 4516029}
!164 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EED2Ev, ptr @__clang_call_terminate, i64 4}
!165 = !{ptr @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_, ptr @_ZNSt15__new_allocatorIN6dealii5PointILi3EEEEC2ERKS3_, i64 2157179}
!166 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSaIN6dealii5PointILi3EEEEC2ERKS2_, i64 1350593}
!167 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE12_Vector_implC2ERKS3_, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataC2Ev, i64 1350593}
!168 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm, i64 1350593}
!169 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE8allocateERS3_m, i64 2338637}
!170 = !{ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS6_SaIS6_EEEEPS6_EET0_T_SF_SE_, ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, i64 544059}
!171 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @_ZN9__gnu_cxxneIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_, i64 2530346}
!172 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEdeEv, i64 1986289}
!173 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @_ZSt10_ConstructIN6dealii5PointILi3EEEJRKS2_EEvPT_DpOT0_, i64 1986289}
!174 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEppEv, i64 1986287}
!175 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @__cxa_begin_catch, i64 2}
!176 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_, i64 2}
!177 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @__cxa_rethrow, i64 1}
!178 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_, ptr @__cxa_end_catch, i64 2}
!179 = !{ptr @_ZN9__gnu_cxxneIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEEbRKNS_17__normal_iteratorIT_T0_EESE_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEE4baseEv, i64 5060712}
!180 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6dealii5PointILi3EEEEEvT_S6_, i64 5683492}
!181 = !{ptr @_ZNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIN6dealii5PointILi3EEEEE10deallocateERS3_PS2_m, i64 2338625}
!182 = !{ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPN6dealii5PointILi3EEEEvT_S4_, i64 5683492}
!183 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!184 = !{!"function_entry_count", i64 0}
!185 = !{!186, !186, i64 0}
!186 = !{!"double", !187, i64 0}
!187 = !{!"omnipotent char", !188, i64 0}
!188 = !{!"Simple C++ TBAA"}
!189 = distinct !{!189, !190}
!190 = !{!"llvm.loop.mustprogress"}
!191 = !{!"function_entry_count", i64 39}
!192 = !{!193, !194, i64 8}
!193 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!194 = !{!"any pointer", !187, i64 0}
!195 = !{!193, !194, i64 0}
!196 = !{!"function_entry_count", i64 292334}
!197 = !{!"function_entry_count", i64 580699156}
!198 = !{!199, !194, i64 0}
!199 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!200 = !{!"function_entry_count", i64 271481}
!201 = distinct !{!201, !190}
!202 = !{!203, !194, i64 0}
!203 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!204 = !{!"function_entry_count", i64 271565}
!205 = distinct !{!205, !190}
!206 = distinct !{!206, !190}
!207 = !{!"function_entry_count", i64 955498}
!208 = !{!209, !194, i64 8}
!209 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!210 = !{!209, !194, i64 0}
!211 = !{!"function_entry_count", i64 5322946}
!212 = !{!"function_entry_count", i64 4593520}
!213 = distinct !{!213, !190}
!214 = !{!215, !194, i64 0}
!215 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!216 = !{!"function_entry_count", i64 2866076}
!217 = distinct !{!217, !190}
!218 = !{!"function_entry_count", i64 691088}
!219 = !{!"branch_weights", i32 691089, i32 1382176}
!220 = distinct !{!220, !190}
!221 = distinct !{!221, !190}
!222 = !{!"function_entry_count", i64 23475661}
!223 = !{!224, !194, i64 8}
!224 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!225 = !{!224, !194, i64 0}
!226 = !{!"function_entry_count", i64 59145566}
!227 = !{!"function_entry_count", i64 52047827}
!228 = !{!"function_entry_count", i64 4316510434}
!229 = !{!"branch_weights", i32 1079127609, i32 -2136712079}
!230 = distinct !{!230, !190}
!231 = distinct !{!231, !190}
!232 = !{!"function_entry_count", i64 409051700}
!233 = !{!234, !194, i64 0}
!234 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!235 = !{!"function_entry_count", i64 98457587}
!236 = distinct !{!236, !190}
!237 = !{!"function_entry_count", i64 282053}
!238 = distinct !{!238, !190}
!239 = distinct !{!239, !190}
!240 = !{!"function_entry_count", i64 892135194}
!241 = !{!242, !194, i64 0}
!242 = !{!"_ZTSNSt12_Vector_baseIN6dealii6VectorIdEESaIS2_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!243 = !{!"function_entry_count", i64 138244457713}
!244 = !{!245, !194, i64 80}
!245 = !{!"_ZTSN6dealii6VectorIdEE", !246, i64 0, !247, i64 72, !247, i64 76, !194, i64 80}
!246 = !{!"_ZTSN6dealii11SubscriptorE", !247, i64 8, !248, i64 16, !194, i64 64}
!247 = !{!"int", !187, i64 0}
!248 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !249, i64 0}
!249 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !250, i64 0}
!250 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !251, i64 0, !253, i64 8}
!251 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !252, i64 0}
!252 = !{!"_ZTSSt4lessIPKcE"}
!253 = !{!"_ZTSSt15_Rb_tree_header", !254, i64 0, !256, i64 32}
!254 = !{!"_ZTSSt18_Rb_tree_node_base", !255, i64 0, !194, i64 8, !194, i64 16, !194, i64 24}
!255 = !{!"_ZTSSt14_Rb_tree_color", !187, i64 0}
!256 = !{!"long", !187, i64 0}
!257 = !{!"function_entry_count", i64 551544}
!258 = !{!"branch_weights", i32 551545, i32 1}
!259 = distinct !{!259, !190}
!260 = distinct !{!260, !190}
!261 = !{!262, !194, i64 0}
!262 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi1EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!263 = distinct !{!263, !190}
!264 = !{!"function_entry_count", i64 2169946}
!265 = distinct !{!265, !190}
!266 = distinct !{!266, !190}
!267 = !{!"function_entry_count", i64 1130961}
!268 = !{!"branch_weights", i32 1130962, i32 1}
!269 = !{!"function_entry_count", i64 287056}
!270 = distinct !{!270, !190}
!271 = distinct !{!271, !190}
!272 = !{!273, !194, i64 0}
!273 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!274 = distinct !{!274, !190}
!275 = !{!"function_entry_count", i64 10444102}
!276 = distinct !{!276, !190}
!277 = distinct !{!277, !190}
!278 = !{!"function_entry_count", i64 627233310}
!279 = !{!"branch_weights", i32 627233311, i32 1}
!280 = !{!"function_entry_count", i64 2121454836}
!281 = distinct !{!281, !190}
!282 = distinct !{!282, !190}
!283 = !{!"function_entry_count", i64 371948270}
!284 = !{!285, !194, i64 0}
!285 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!286 = distinct !{!286, !190}
!287 = !{!288, !288, i64 0}
!288 = !{!"vtable pointer", !188, i64 0}
!289 = !{!290, !186, i64 96}
!290 = !{!"_ZTSN6dealii9Functions14PillowFunctionILi1EEE", !291, i64 0, !186, i64 96}
!291 = !{!"_ZTSN6dealii8FunctionILi1EEE", !292, i64 0, !246, i64 16, !247, i64 88}
!292 = !{!"_ZTSN6dealii12FunctionTimeE", !186, i64 8}
!293 = distinct !{!293, !190}
!294 = distinct !{!294, !190}
!295 = distinct !{!295, !190}
!296 = !{!297, !186, i64 96}
!297 = !{!"_ZTSN6dealii9Functions14PillowFunctionILi2EEE", !298, i64 0, !186, i64 96}
!298 = !{!"_ZTSN6dealii8FunctionILi2EEE", !292, i64 0, !246, i64 16, !247, i64 88}
!299 = distinct !{!299, !190}
!300 = distinct !{!300, !190}
!301 = distinct !{!301, !190}
!302 = !{!303, !186, i64 96}
!303 = !{!"_ZTSN6dealii9Functions14PillowFunctionILi3EEE", !304, i64 0, !186, i64 96}
!304 = !{!"_ZTSN6dealii8FunctionILi3EEE", !292, i64 0, !246, i64 16, !247, i64 88}
!305 = distinct !{!305, !190}
!306 = distinct !{!306, !190}
!307 = distinct !{!307, !190}
!308 = distinct !{!308, !190}
!309 = distinct !{!309, !190}
!310 = distinct !{!310, !190}
!311 = distinct !{!311, !190}
!312 = !{!313, !194, i64 0}
!313 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!314 = distinct !{!314, !190}
!315 = distinct !{!315, !190}
!316 = distinct !{!316, !190}
!317 = distinct !{!317, !190}
!318 = !{!319, !194, i64 0}
!319 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!320 = distinct !{!320, !190}
!321 = distinct !{!321, !190}
!322 = distinct !{!322, !190}
!323 = !{!"function_entry_count", i64 2026044}
!324 = !{!"function_entry_count", i64 197652618}
!325 = distinct !{!325, !190}
!326 = !{!"function_entry_count", i64 180988500}
!327 = !{!328, !194, i64 0}
!328 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataE", !194, i64 0, !194, i64 8, !194, i64 16}
!329 = distinct !{!329, !190}
!330 = distinct !{!330, !190}
!331 = distinct !{!331, !190}
!332 = distinct !{!332, !190}
!333 = distinct !{!333, !190}
!334 = distinct !{!334, !190}
!335 = distinct !{!335, !190}
!336 = distinct !{!336, !190}
!337 = distinct !{!337, !190}
!338 = !{!339, !186, i64 104}
!339 = !{!"_ZTSN6dealii9Functions12JumpFunctionILi1EEE", !291, i64 0, !340, i64 96, !186, i64 104, !186, i64 112, !186, i64 120, !186, i64 128}
!340 = !{!"_ZTSN6dealii5PointILi1EEE", !341, i64 0}
!341 = !{!"_ZTSN6dealii6TensorILi1ELi1EEE", !187, i64 0}
!342 = !{!339, !186, i64 128}
!343 = !{!339, !186, i64 120}
!344 = distinct !{!344, !190}
!345 = distinct !{!345, !190}
!346 = distinct !{!346, !190}
!347 = !{!348, !186, i64 112}
!348 = !{!"_ZTSN6dealii9Functions12JumpFunctionILi2EEE", !298, i64 0, !349, i64 96, !186, i64 112, !186, i64 120, !186, i64 128, !186, i64 136}
!349 = !{!"_ZTSN6dealii5PointILi2EEE", !350, i64 0}
!350 = !{!"_ZTSN6dealii6TensorILi1ELi2EEE", !187, i64 0}
!351 = !{!348, !186, i64 120}
!352 = !{!348, !186, i64 128}
!353 = !{!348, !186, i64 136}
!354 = distinct !{!354, !190}
!355 = distinct !{!355, !190}
!356 = distinct !{!356, !190}
!357 = !{!358, !186, i64 120}
!358 = !{!"_ZTSN6dealii9Functions12JumpFunctionILi3EEE", !304, i64 0, !359, i64 96, !186, i64 120, !186, i64 128, !186, i64 136, !186, i64 144}
!359 = !{!"_ZTSN6dealii5PointILi3EEE", !360, i64 0}
!360 = !{!"_ZTSN6dealii6TensorILi1ELi3EEE", !187, i64 0}
!361 = !{!358, !186, i64 128}
!362 = !{!358, !186, i64 136}
!363 = !{!358, !186, i64 144}
!364 = distinct !{!364, !190}
!365 = distinct !{!365, !190}
!366 = distinct !{!366, !190}
!367 = !{!"function_entry_count", i64 464288}
!368 = distinct !{!368, !190}
!369 = !{!"function_entry_count", i64 1356729}
!370 = !{!199, !194, i64 8}
!371 = !{!"function_entry_count", i64 269698}
!372 = distinct !{!372, !190}
!373 = !{!"function_entry_count", i64 103595384}
!374 = !{!"function_entry_count", i64 1689220489}
!375 = distinct !{!375, !190}
!376 = distinct !{!376, !190}
!377 = !{!"function_entry_count", i64 391459}
!378 = !{!"function_entry_count", i64 683366}
!379 = distinct !{!379, !190}
!380 = distinct !{!380, !190}
!381 = distinct !{!381, !190}
!382 = !{!"function_entry_count", i64 544007}
!383 = !{!"function_entry_count", i64 4516033}
!384 = distinct !{!384, !190}
!385 = distinct !{!385, !190}
!386 = !{!"function_entry_count", i64 18899890}
!387 = !{!"branch_weights", i32 18899891, i32 37799780}
!388 = distinct !{!388, !190}
!389 = distinct !{!389, !190}
!390 = distinct !{!390, !190}
!391 = distinct !{!391, !190}
!392 = distinct !{!392, !190}
!393 = distinct !{!393, !190}
!394 = distinct !{!394, !190}
!395 = distinct !{!395, !190}
!396 = distinct !{!396, !190}
!397 = distinct !{!397, !190}
!398 = !{!"function_entry_count", i64 350833100}
!399 = !{!"branch_weights", i32 350833101, i32 701666200}
!400 = distinct !{!400, !190}
!401 = distinct !{!401, !190}
!402 = distinct !{!402, !190}
!403 = distinct !{!403, !190}
!404 = distinct !{!404, !190}
!405 = distinct !{!405, !190}
!406 = distinct !{!406, !190}
!407 = distinct !{!407, !190}
!408 = distinct !{!408, !190}
!409 = distinct !{!409, !190}
!410 = distinct !{!410, !190}
!411 = distinct !{!411, !190}
!412 = distinct !{!412, !190}
!413 = !{!"function_entry_count", i64 59431677}
!414 = !{!245, !247, i64 72}
!415 = distinct !{!415, !190}
!416 = distinct !{!416, !190}
!417 = distinct !{!417, !190}
!418 = distinct !{!418, !190}
!419 = distinct !{!419, !190}
!420 = distinct !{!420, !190}
!421 = distinct !{!421, !190}
!422 = !{!"function_entry_count", i64 2381058532}
!423 = distinct !{!423, !190}
!424 = distinct !{!424, !190}
!425 = distinct !{!425, !190}
!426 = distinct !{!426, !190}
!427 = distinct !{!427, !190}
!428 = distinct !{!428, !190}
!429 = distinct !{!429, !190}
!430 = distinct !{!430, !190}
!431 = distinct !{!431, !190}
!432 = distinct !{!432, !190}
!433 = distinct !{!433, !190}
!434 = distinct !{!434, !190}
!435 = distinct !{!435, !190}
!436 = distinct !{!436, !190}
!437 = !{!"function_entry_count", i64 10618017}
!438 = !{!"function_entry_count", i64 16422537}
!439 = !{!"function_entry_count", i64 42627443}
!440 = !{!199, !194, i64 16}
!441 = !{!"branch_weights", i32 8067773, i32 8354766}
!442 = !{!"function_entry_count", i64 52056499}
!443 = !{!"branch_weights", i32 52056500, i32 104112998}
!444 = distinct !{!444, !190}
!445 = !{!"function_entry_count", i64 70675435}
!446 = !{!"function_entry_count", i64 202370}
!447 = !{!"function_entry_count", i64 554658048}
!448 = !{!"function_entry_count", i64 5584274}
!449 = !{!"function_entry_count", i64 809094}
!450 = !{!"function_entry_count", i64 539396}
!451 = !{!193, !194, i64 16}
!452 = !{!"branch_weights", i32 1, i32 269699}
!453 = !{!"branch_weights", i32 1, i32 2000}
!454 = distinct !{!454, !190}
!455 = !{!194, !194, i64 0}
!456 = !{!457, !194, i64 0}
!457 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi1EEESt6vectorIS3_SaIS3_EEEE", !194, i64 0}
!458 = !{!"function_entry_count", i64 12962434}
!459 = !{!"function_entry_count", i64 2733627}
!460 = !{!"function_entry_count", i64 13389012}
!461 = !{!"function_entry_count", i64 1356741}
!462 = !{!"function_entry_count", i64 7578462}
!463 = !{!"function_entry_count", i64 11572134}
!464 = !{!"function_entry_count", i64 4110539}
!465 = !{!"function_entry_count", i64 2733634}
!466 = !{!"function_entry_count", i64 10618037}
!467 = !{!"function_entry_count", i64 8538154}
!468 = !{!"branch_weights", i32 183370, i32 8354786}
!469 = !{!"function_entry_count", i64 21337395}
!470 = !{!"function_entry_count", i64 15156924}
!471 = !{!"function_entry_count", i64 23127779}
!472 = !{!"function_entry_count", i64 17559028}
!473 = !{!"function_entry_count", i64 46393777}
!474 = !{!"function_entry_count", i64 29192013}
!475 = !{!"branch_weights", i32 16454701, i32 12737314}
!476 = !{!"function_entry_count", i64 23144268}
!477 = !{!478, !194, i64 0}
!478 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEE", !194, i64 0}
!479 = !{!"function_entry_count", i64 570619}
!480 = !{!"function_entry_count", i64 504243}
!481 = !{!"function_entry_count", i64 908934}
!482 = !{!"function_entry_count", i64 1545917}
!483 = !{!209, !194, i64 16}
!484 = !{!"function_entry_count", i64 617027}
!485 = !{!"function_entry_count", i64 683386}
!486 = !{!"function_entry_count", i64 593823}
!487 = !{!"branch_weights", i32 268928, i32 324897}
!488 = !{!"function_entry_count", i64 616840}
!489 = !{!"branch_weights", i32 391459, i32 1}
!490 = !{!"branch_weights", i32 170742, i32 391459}
!491 = distinct !{!491, !190}
!492 = !{!"function_entry_count", i64 953659}
!493 = !{!"function_entry_count", i64 562200}
!494 = !{!495, !194, i64 0}
!495 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi2EEESt6vectorIS3_SaIS3_EEEE", !194, i64 0}
!496 = !{!"function_entry_count", i64 772946}
!497 = !{!"function_entry_count", i64 1907318}
!498 = !{!"function_entry_count", i64 782918}
!499 = !{!"branch_weights", i32 448062, i32 324886}
!500 = !{!"function_entry_count", i64 2875510}
!501 = !{!"function_entry_count", i64 1350593}
!502 = !{!"function_entry_count", i64 6129205}
!503 = !{!"function_entry_count", i64 544059}
!504 = !{!"function_entry_count", i64 10529730}
!505 = !{!224, !194, i64 16}
!506 = !{!"function_entry_count", i64 2157179}
!507 = !{!"function_entry_count", i64 4516053}
!508 = !{!"function_entry_count", i64 2518052}
!509 = !{!"branch_weights", i32 179415, i32 2338639}
!510 = !{!"function_entry_count", i64 5476727}
!511 = !{!"branch_weights", i32 544059, i32 1}
!512 = !{!"branch_weights", i32 1442239, i32 544059}
!513 = distinct !{!513, !190}
!514 = !{!"function_entry_count", i64 2530356}
!515 = !{!"function_entry_count", i64 1986297}
!516 = !{!517, !194, i64 0}
!517 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKN6dealii5PointILi3EEESt6vectorIS3_SaIS3_EEEE", !194, i64 0}
!518 = !{!"function_entry_count", i64 5683492}
!519 = !{!"function_entry_count", i64 5060712}
!520 = !{!"function_entry_count", i64 1088118}
!521 = !{!"branch_weights", i32 3344868, i32 2338626}
