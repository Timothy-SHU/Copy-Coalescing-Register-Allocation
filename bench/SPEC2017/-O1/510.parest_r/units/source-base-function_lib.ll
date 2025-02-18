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
%"class.dealii::Functions::FourierCosineSum.87" = type { %"class.dealii::Function.base.59", %"class.std::vector.12", %"class.std::vector.0" }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" }
%"class.dealii::Functions::FourierCosineSum.88" = type { %"class.dealii::Function.base.62", %"class.std::vector.24", %"class.std::vector.0" }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" }
%"class.dealii::Functions::FourierSineSum" = type { %"class.dealii::Function.base", %"class.std::vector", %"class.std::vector.0" }
%"class.dealii::Functions::FourierSineSum.89" = type { %"class.dealii::Function.base.59", %"class.std::vector.12", %"class.std::vector.0" }
%"class.dealii::Functions::FourierSineSum.90" = type { %"class.dealii::Function.base.62", %"class.std::vector.24", %"class.std::vector.0" }
%"class.dealii::Functions::Monomial" = type { %"class.dealii::Function.base", %"class.dealii::Tensor" }
%"class.dealii::Functions::Monomial.91" = type { %"class.dealii::Function.base.59", %"class.dealii::Tensor.11" }
%"class.dealii::Functions::Monomial.92" = type { %"class.dealii::Function.base.62", %"class.dealii::Tensor.23" }

$_ZNK6dealii9Functions14SquareFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14SquareFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi1EEESaISB_EESaISD_EE = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE = comdat any

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

$_ZNK6dealii9Functions14CosineFunctionILi1EE12hessian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi2ELi1EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE7hessianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi2EE12hessian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi2ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE7hessianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14CosineFunctionILi3EE12hessian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi2ELi3EEESaISB_EEj = comdat any

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

$_ZNK6dealii9Functions12JumpFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi1EE18memory_consumptionEv = comdat any

$_ZN6dealii9Functions12JumpFunctionILi2EEC5ERKNS_5PointILi2EEEd = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi2EE18memory_consumptionEv = comdat any

$_ZN6dealii9Functions12JumpFunctionILi3EEC5ERKNS_5PointILi3EEEd = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions12JumpFunctionILi3EE18memory_consumptionEv = comdat any

$_ZN6dealii9Functions21FourierCosineFunctionILi1EEC5ERKNS_5PointILi1EEE = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions21FourierCosineFunctionILi2EEC5ERKNS_5PointILi2EEE = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions21FourierCosineFunctionILi3EEC5ERKNS_5PointILi3EEE = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions21FourierCosineFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

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

$_ZNK6dealii9Functions16FourierCosineSumILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi2EEC5ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions16FourierCosineSumILi3EEC5ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions16FourierCosineSumILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii9Functions14FourierSineSumILi1EEC5ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions14FourierSineSumILi2EEC5ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions14FourierSineSumILi3EEC5ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions14FourierSineSumILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

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

$_ZNK6dealii9Functions8MonomialILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii9Functions8MonomialILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii9Functions8MonomialILi2EEC5ERKNS_6TensorILi1ELi2EEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii9Functions8MonomialILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii9Functions8MonomialILi3EEC5ERKNS_6TensorILi1ELi3EEEj = comdat any

$_ZNK6dealii9Functions8MonomialILi3EE5valueERKNS_5PointILi3EEEj = comdat any

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

$_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE8allocateEmPKv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = tail call double @llvm.fmuladd.f64(double %4, double %4, double 0.000000e+00)
  ret double %5
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %24, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %23, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %20, double 0.000000e+00)
  %22 = getelementptr inbounds double, ptr %14, i64 %17
  store double %21, ptr %22, align 8, !tbaa !38
  %23 = add i32 %18, 1
  %24 = zext i32 %23 to i64
  %25 = icmp ugt i64 %11, %24
  br i1 %25, label %16, label %15, !llvm.loop !48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = load double, ptr %2, align 8, !tbaa !38, !noalias !51
  %6 = fmul double %5, 2.000000e+00
  store double %6, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !54
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %24, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %23, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !38, !noalias !56
  %21 = fmul double %20, 2.000000e+00
  %22 = getelementptr inbounds %"class.dealii::Tensor", ptr %14, i64 %17
  store double %21, ptr %22, align 8, !tbaa !38
  %23 = add i32 %18, 1
  %24 = zext i32 %23 to i64
  %25 = icmp ugt i64 %11, %24
  br i1 %25, label %16, label %15, !llvm.loop !59
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !37 {
  ret double 2.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #2 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double 2.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !60
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %10, %4 ]
  %6 = phi double [ 0.000000e+00, %3 ], [ %9, %4 ]
  %7 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %5
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %8, double %6)
  %10 = add nuw nsw i64 %5, 1
  %11 = icmp eq i64 %5, 0
  br i1 %11, label %4, label %12, !llvm.loop !61

12:                                               ; preds = %4
  ret double %9
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %27, %4
  ret void

16:                                               ; preds = %13, %27
  %17 = phi i64 [ 0, %13 ], [ %29, %27 ]
  %18 = getelementptr inbounds %"class.dealii::Point.10", ptr %7, i64 %17
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 0, %16 ], [ %25, %19 ]
  %21 = phi double [ 0.000000e+00, %16 ], [ %24, %19 ]
  %22 = getelementptr inbounds [2 x double], ptr %18, i64 0, i64 %20
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %23, double %21)
  %25 = add nuw nsw i64 %20, 1
  %26 = icmp eq i64 %20, 0
  br i1 %26, label %19, label %27, !llvm.loop !61

27:                                               ; preds = %19
  %28 = getelementptr inbounds double, ptr %14, i64 %17
  store double %24, ptr %28, align 8, !tbaa !38
  %29 = add i64 %17, 1
  %30 = and i64 %29, 4294967295
  %31 = icmp ugt i64 %11, %30
  br i1 %31, label %16, label %15, !llvm.loop !65
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.10", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa !38
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %11, %6 ]
  %8 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = fmul double %9, 2.000000e+00
  store double %10, ptr %8, align 8, !tbaa !38
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %6, label %13, !llvm.loop !66

13:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.10", align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = load ptr, ptr %1, align 8, !tbaa !64
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 4
  %13 = icmp eq ptr %7, %8
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %2, align 8, !tbaa !67
  %16 = getelementptr inbounds i8, ptr %5, i64 8
  br label %18

17:                                               ; preds = %30, %4
  ret void

18:                                               ; preds = %14, %30
  %19 = phi i64 [ 0, %14 ], [ %36, %30 ]
  %20 = phi i32 [ 0, %14 ], [ %35, %30 ]
  %21 = shl nuw nsw i64 %19, 4
  %22 = getelementptr i8, ptr %8, i64 %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23, !noalias !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa !38, !noalias !69
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ 0, %18 ], [ %28, %23 ]
  %25 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %24
  %26 = load double, ptr %25, align 8, !tbaa !38, !noalias !69
  %27 = fmul double %26, 2.000000e+00
  store double %27, ptr %25, align 8, !tbaa !38, !noalias !69
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %24, 0
  br i1 %29, label %23, label %30, !llvm.loop !66

30:                                               ; preds = %23
  %31 = load double, ptr %16, align 8, !tbaa !38
  %32 = load double, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23, !noalias !69
  %33 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %15, i64 %19
  store double %32, ptr %33, align 8, !tbaa !38
  %34 = getelementptr inbounds [2 x double], ptr %33, i64 0, i64 1
  store double %31, ptr %34, align 8, !tbaa !38
  %35 = add i32 %20, 1
  %36 = zext i32 %35 to i64
  %37 = icmp ugt i64 %12, %36
  br i1 %37, label %18, label %17, !llvm.loop !72
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !37 {
  ret double 4.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #2 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double 4.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !73
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %10, %4 ]
  %6 = phi double [ 0.000000e+00, %3 ], [ %9, %4 ]
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %8, double %6)
  %10 = add nuw nsw i64 %5, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %4, !llvm.loop !74

12:                                               ; preds = %4
  ret double %9
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %27, %4
  ret void

16:                                               ; preds = %13, %27
  %17 = phi i64 [ 0, %13 ], [ %29, %27 ]
  %18 = getelementptr inbounds %"class.dealii::Point.22", ptr %7, i64 %17
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 0, %16 ], [ %25, %19 ]
  %21 = phi double [ 0.000000e+00, %16 ], [ %24, %19 ]
  %22 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 %20
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %23, double %21)
  %25 = add nuw nsw i64 %20, 1
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %27, label %19, !llvm.loop !74

27:                                               ; preds = %19
  %28 = getelementptr inbounds double, ptr %14, i64 %17
  store double %24, ptr %28, align 8, !tbaa !38
  %29 = add i64 %17, 1
  %30 = and i64 %29, 4294967295
  %31 = icmp ugt i64 %11, %30
  br i1 %31, label %16, label %15, !llvm.loop !78
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.22", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa !38
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %11, %6 ]
  %8 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = fmul double %9, 2.000000e+00
  store double %10, ptr %8, align 8, !tbaa !38
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !79

13:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.22", align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = load ptr, ptr %1, align 8, !tbaa !77
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  %13 = icmp eq ptr %7, %8
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %2, align 8, !tbaa !80
  %16 = getelementptr inbounds i8, ptr %5, i64 16
  %17 = getelementptr inbounds i8, ptr %5, i64 8
  br label %19

18:                                               ; preds = %31, %4
  ret void

19:                                               ; preds = %14, %31
  %20 = phi i64 [ 0, %14 ], [ %39, %31 ]
  %21 = phi i32 [ 0, %14 ], [ %38, %31 ]
  %22 = mul nuw nsw i64 %20, 24
  %23 = getelementptr i8, ptr %8, i64 %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23, !noalias !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false), !tbaa !38, !noalias !82
  br label %24

24:                                               ; preds = %19, %24
  %25 = phi i64 [ 0, %19 ], [ %29, %24 ]
  %26 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %25
  %27 = load double, ptr %26, align 8, !tbaa !38, !noalias !82
  %28 = fmul double %27, 2.000000e+00
  store double %28, ptr %26, align 8, !tbaa !38, !noalias !82
  %29 = add nuw nsw i64 %25, 1
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %24, !llvm.loop !79

31:                                               ; preds = %24
  %32 = load double, ptr %16, align 8, !tbaa !38
  %33 = load double, ptr %17, align 8, !tbaa !38
  %34 = load double, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23, !noalias !82
  %35 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %15, i64 %20
  store double %34, ptr %35, align 8, !tbaa !38
  %36 = getelementptr inbounds [3 x double], ptr %35, i64 0, i64 1
  store double %33, ptr %36, align 8, !tbaa !38
  %37 = getelementptr inbounds [3 x double], ptr %35, i64 0, i64 2
  store double %32, ptr %37, align 8, !tbaa !38
  %38 = add i32 %21, 1
  %39 = zext i32 %38 to i64
  %40 = icmp ugt i64 %12, %39
  br i1 %40, label %19, label %18, !llvm.loop !85
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14SquareFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !37 {
  ret double 6.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14SquareFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #2 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double 6.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !86
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds [1 x double], ptr %1, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = fmul double %4, %6
  ret double %7
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %26, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %25, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds [1 x double], ptr %19, i64 0, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = fmul double %20, %22
  %24 = getelementptr inbounds double, ptr %14, i64 %17
  store double %23, ptr %24, align 8, !tbaa !38
  %25 = add i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %11, %26
  br i1 %27, label %16, label %15, !llvm.loop !87
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !88
  br label %15

14:                                               ; preds = %15, %3
  ret void

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %26, %15 ]
  %17 = phi i32 [ 0, %12 ], [ %25, %15 ]
  %18 = getelementptr inbounds %"class.dealii::Point", ptr %6, i64 %16
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds [1 x double], ptr %18, i64 0, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = fmul double %19, %21
  %23 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %16, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  store double %22, ptr %24, align 8, !tbaa !38
  %25 = add i32 %17, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %10, %26
  br i1 %27, label %15, label %14, !llvm.loop !103
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds [1 x double], ptr %2, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  store double %6, ptr %0, align 8, !tbaa !38
  %7 = load double, ptr %2, align 8, !tbaa !38
  %8 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 1
  store double %7, ptr %8, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !54
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %26, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %25, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 %17
  %20 = getelementptr inbounds [1 x double], ptr %19, i64 0, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds %"class.dealii::Tensor", ptr %14, i64 %17
  store double %21, ptr %22, align 8, !tbaa !38
  %23 = load double, ptr %19, align 8, !tbaa !38
  %24 = getelementptr inbounds [1 x double], ptr %22, i64 0, i64 1
  store double %23, ptr %24, align 8, !tbaa !38
  %25 = add i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %11, %26
  br i1 %27, label %16, label %15, !llvm.loop !104
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi1EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = load ptr, ptr %1, align 8, !tbaa !45
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !105
  br label %15

14:                                               ; preds = %15, %3
  ret void

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %26, %15 ]
  %17 = phi i32 [ 0, %12 ], [ %25, %15 ]
  %18 = getelementptr inbounds %"class.dealii::Point", ptr %6, i64 %16
  %19 = getelementptr inbounds [1 x double], ptr %18, i64 0, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds %"class.std::vector.5", ptr %13, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  store double %20, ptr %22, align 8, !tbaa !38
  %23 = load double, ptr %18, align 8, !tbaa !38
  %24 = getelementptr inbounds [1 x double], ptr %22, i64 0, i64 1
  store double %23, ptr %24, align 8, !tbaa !38
  %25 = add i32 %17, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %10, %26
  br i1 %27, label %15, label %14, !llvm.loop !107
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !37 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #2 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double 0.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !108
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = fmul double %4, %6
  ret double %7
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %26, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %25, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point.10", ptr %7, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds [2 x double], ptr %19, i64 0, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = fmul double %20, %22
  %24 = getelementptr inbounds double, ptr %14, i64 %17
  store double %23, ptr %24, align 8, !tbaa !38
  %25 = add i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %11, %26
  br i1 %27, label %16, label %15, !llvm.loop !109
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !88
  br label %15

14:                                               ; preds = %15, %3
  ret void

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %26, %15 ]
  %17 = phi i32 [ 0, %12 ], [ %25, %15 ]
  %18 = getelementptr inbounds %"class.dealii::Point.10", ptr %6, i64 %16
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds [2 x double], ptr %18, i64 0, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = fmul double %19, %21
  %23 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %16, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  store double %22, ptr %24, align 8, !tbaa !38
  %25 = add i32 %17, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %10, %26
  br i1 %27, label %15, label %14, !llvm.loop !110
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %5 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  store double %6, ptr %0, align 8, !tbaa !38
  %7 = load double, ptr %2, align 8, !tbaa !38
  %8 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %7, ptr %8, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !67
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %26, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %25, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point.10", ptr %7, i64 %17, i32 0, i32 0, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %14, i64 %17
  store double %20, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %"class.dealii::Point.10", ptr %7, i64 %17
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %14, i64 %17, i32 0, i64 1
  store double %23, ptr %24, align 8, !tbaa !38
  %25 = add i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %11, %26
  br i1 %27, label %16, label %15, !llvm.loop !111
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !112
  br label %15

14:                                               ; preds = %15, %3
  ret void

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %26, %15 ]
  %17 = phi i32 [ 0, %12 ], [ %25, %15 ]
  %18 = getelementptr inbounds %"class.dealii::Point.10", ptr %6, i64 %16, i32 0, i32 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds %"class.std::vector.17", ptr %13, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  store double %19, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %"class.dealii::Point.10", ptr %6, i64 %16
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds [2 x double], ptr %21, i64 0, i64 1
  store double %23, ptr %24, align 8, !tbaa !38
  %25 = add i32 %17, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %10, %26
  br i1 %27, label %15, label %14, !llvm.loop !114
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !37 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #2 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double 0.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !115
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = fmul double %4, %6
  ret double %7
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %26, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %25, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point.22", ptr %7, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds [3 x double], ptr %19, i64 0, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = fmul double %20, %22
  %24 = getelementptr inbounds double, ptr %14, i64 %17
  store double %23, ptr %24, align 8, !tbaa !38
  %25 = add i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %11, %26
  br i1 %27, label %16, label %15, !llvm.loop !116
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %1, align 8, !tbaa !77
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !88
  br label %15

14:                                               ; preds = %15, %3
  ret void

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %26, %15 ]
  %17 = phi i32 [ 0, %12 ], [ %25, %15 ]
  %18 = getelementptr inbounds %"class.dealii::Point.22", ptr %6, i64 %16
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds [3 x double], ptr %18, i64 0, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = fmul double %19, %21
  %23 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %16, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  store double %22, ptr %24, align 8, !tbaa !38
  %25 = add i32 %17, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %10, %26
  br i1 %27, label %15, label %14, !llvm.loop !117
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !38
  %5 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  store double %6, ptr %0, align 8, !tbaa !38
  %7 = load double, ptr %2, align 8, !tbaa !38
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %7, ptr %8, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !80
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %26, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %25, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point.22", ptr %7, i64 %17, i32 0, i32 0, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %14, i64 %17
  store double %20, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %"class.dealii::Point.22", ptr %7, i64 %17
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %14, i64 %17, i32 0, i64 1
  store double %23, ptr %24, align 8, !tbaa !38
  %25 = add i32 %18, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %11, %26
  br i1 %27, label %16, label %15, !llvm.loop !118
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %1, align 8, !tbaa !77
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !119
  br label %15

14:                                               ; preds = %15, %3
  ret void

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %26, %15 ]
  %17 = phi i32 [ 0, %12 ], [ %25, %15 ]
  %18 = getelementptr inbounds %"class.dealii::Point.22", ptr %6, i64 %16, i32 0, i32 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds %"class.std::vector.29", ptr %13, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  store double %19, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %"class.dealii::Point.22", ptr %6, i64 %16
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds [3 x double], ptr %21, i64 0, i64 1
  store double %23, ptr %24, align 8, !tbaa !38
  %25 = add i32 %17, 1
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %10, %26
  br i1 %27, label %15, label %14, !llvm.loop !121
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !37 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions15Q1WedgeFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #2 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double 0.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !122
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi1EEC2Ed(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii9Functions14PillowFunctionILi1EEC5Ed) align 2 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.dealii::Functions::PillowFunction", ptr %0, i64 0, i32 1
  store double %1, ptr %4, align 8, !tbaa !125
  ret void
}

declare void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fneg double %4
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %4, double 1.000000e+00)
  %7 = getelementptr inbounds %"class.dealii::Functions::PillowFunction", ptr %0, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !125
  %9 = fadd double %6, %8
  ret double %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.dealii::Functions::PillowFunction", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %2, align 8, !tbaa !46
  br label %17

16:                                               ; preds = %17, %4
  ret void

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %28, %17 ]
  %19 = phi i32 [ 0, %13 ], [ %27, %17 ]
  %20 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 %18
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = fneg double %21
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %21, double 1.000000e+00)
  %24 = load double, ptr %14, align 8, !tbaa !125
  %25 = fadd double %23, %24
  %26 = getelementptr inbounds double, ptr %15, i64 %18
  store double %25, ptr %26, align 8, !tbaa !38
  %27 = add i32 %19, 1
  %28 = zext i32 %27 to i64
  %29 = icmp ugt i64 %11, %28
  br i1 %29, label %17, label %16, !llvm.loop !129
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = fmul double %5, -2.000000e+00
  store double %6, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !54
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %24, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %23, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fmul double %20, -2.000000e+00
  %22 = getelementptr inbounds %"class.dealii::Tensor", ptr %14, i64 %17
  store double %21, ptr %22, align 8, !tbaa !38
  %23 = add i32 %18, 1
  %24 = zext i32 %23 to i64
  %25 = icmp ugt i64 %11, %24
  br i1 %25, label %16, label %15, !llvm.loop !130
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !37 {
  ret double -2.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #2 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double -2.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !131
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi2EEC2Ed(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii9Functions14PillowFunctionILi2EEC5Ed) align 2 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.57", ptr %0, i64 0, i32 1
  store double %1, ptr %4, align 8, !tbaa !132
  ret void
}

declare void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fneg double %4
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %4, double 1.000000e+00)
  %7 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = fneg double %8
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %8, double 1.000000e+00)
  %11 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.57", ptr %0, i64 0, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !132
  %13 = tail call double @llvm.fmuladd.f64(double %6, double %10, double %12)
  ret double %13
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.57", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %2, align 8, !tbaa !46
  br label %17

16:                                               ; preds = %17, %4
  ret void

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %32, %17 ]
  %19 = phi i32 [ 0, %13 ], [ %31, %17 ]
  %20 = getelementptr inbounds %"class.dealii::Point.10", ptr %7, i64 %18
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = fneg double %21
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %21, double 1.000000e+00)
  %24 = getelementptr inbounds [2 x double], ptr %20, i64 0, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fneg double %25
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %25, double 1.000000e+00)
  %28 = load double, ptr %14, align 8, !tbaa !132
  %29 = tail call double @llvm.fmuladd.f64(double %23, double %27, double %28)
  %30 = getelementptr inbounds double, ptr %15, i64 %18
  store double %29, ptr %30, align 8, !tbaa !38
  %31 = add i32 %19, 1
  %32 = zext i32 %31 to i64
  %33 = icmp ugt i64 %11, %32
  br i1 %33, label %17, label %16, !llvm.loop !135
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = fmul double %5, -2.000000e+00
  %7 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = fneg double %8
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %8, double 1.000000e+00)
  %11 = fmul double %6, %10
  store double %11, ptr %0, align 8, !tbaa !38
  %12 = fmul double %8, -2.000000e+00
  %13 = fneg double %5
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %5, double 1.000000e+00)
  %15 = fmul double %14, %12
  %16 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %15, ptr %16, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !67
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %36, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %35, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point.10", ptr %7, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fmul double %20, -2.000000e+00
  %22 = getelementptr inbounds [2 x double], ptr %19, i64 0, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %23, double 1.000000e+00)
  %26 = fmul double %21, %25
  %27 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %14, i64 %17
  store double %26, ptr %27, align 8, !tbaa !38
  %28 = load double, ptr %22, align 8, !tbaa !38
  %29 = fmul double %28, -2.000000e+00
  %30 = load double, ptr %19, align 8, !tbaa !38
  %31 = fneg double %30
  %32 = tail call double @llvm.fmuladd.f64(double %31, double %30, double 1.000000e+00)
  %33 = fmul double %29, %32
  %34 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %14, i64 %17, i32 0, i64 1
  store double %33, ptr %34, align 8, !tbaa !38
  %35 = add i32 %18, 1
  %36 = zext i32 %35 to i64
  %37 = icmp ugt i64 %11, %36
  br i1 %37, label %16, label %15, !llvm.loop !136
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fneg double %4
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %4, double 1.000000e+00)
  %7 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = fneg double %8
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %8, double 1.000000e+00)
  %11 = fadd double %6, %10
  %12 = fmul double %11, -2.000000e+00
  ret double %12
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %31, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %30, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point.10", ptr %7, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fneg double %20
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double 1.000000e+00)
  %23 = getelementptr inbounds [2 x double], ptr %19, i64 0, i64 1
  %24 = load double, ptr %23, align 8, !tbaa !38
  %25 = fneg double %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %24, double 1.000000e+00)
  %27 = fadd double %22, %26
  %28 = fmul double %27, -2.000000e+00
  %29 = getelementptr inbounds double, ptr %14, i64 %17
  store double %28, ptr %29, align 8, !tbaa !38
  %30 = add i32 %18, 1
  %31 = zext i32 %30 to i64
  %32 = icmp ugt i64 %11, %31
  br i1 %32, label %16, label %15, !llvm.loop !137
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi3EEC2Ed(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1) unnamed_addr #0 comdat($_ZN6dealii9Functions14PillowFunctionILi3EEC5Ed) align 2 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14PillowFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.60", ptr %0, i64 0, i32 1
  store double %1, ptr %4, align 8, !tbaa !138
  ret void
}

declare void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fneg double %4
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %4, double 1.000000e+00)
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = fneg double %8
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %8, double 1.000000e+00)
  %11 = fmul double %6, %10
  %12 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = fneg double %13
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %13, double 1.000000e+00)
  %16 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.60", ptr %0, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !138
  %18 = tail call double @llvm.fmuladd.f64(double %11, double %15, double %17)
  ret double %18
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.dealii::Functions::PillowFunction.60", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %2, align 8, !tbaa !46
  br label %17

16:                                               ; preds = %17, %4
  ret void

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %37, %17 ]
  %19 = phi i32 [ 0, %13 ], [ %36, %17 ]
  %20 = getelementptr inbounds %"class.dealii::Point.22", ptr %7, i64 %18
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = fneg double %21
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %21, double 1.000000e+00)
  %24 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fneg double %25
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %25, double 1.000000e+00)
  %28 = fmul double %23, %27
  %29 = getelementptr inbounds [3 x double], ptr %20, i64 0, i64 2
  %30 = load double, ptr %29, align 8, !tbaa !38
  %31 = fneg double %30
  %32 = tail call double @llvm.fmuladd.f64(double %31, double %30, double 1.000000e+00)
  %33 = load double, ptr %14, align 8, !tbaa !138
  %34 = tail call double @llvm.fmuladd.f64(double %28, double %32, double %33)
  %35 = getelementptr inbounds double, ptr %15, i64 %18
  store double %34, ptr %35, align 8, !tbaa !38
  %36 = add i32 %19, 1
  %37 = zext i32 %36 to i64
  %38 = icmp ugt i64 %11, %37
  br i1 %38, label %17, label %16, !llvm.loop !141
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = fmul double %5, -2.000000e+00
  %7 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = fneg double %8
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %8, double 1.000000e+00)
  %11 = fmul double %6, %10
  %12 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = fneg double %13
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %13, double 1.000000e+00)
  %16 = fmul double %11, %15
  store double %16, ptr %0, align 8, !tbaa !38
  %17 = fmul double %8, -2.000000e+00
  %18 = fneg double %5
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %5, double 1.000000e+00)
  %20 = fmul double %19, %17
  %21 = fmul double %20, %15
  %22 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %21, ptr %22, align 8, !tbaa !38
  %23 = fmul double %13, -2.000000e+00
  %24 = fmul double %19, %23
  %25 = fmul double %10, %24
  %26 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %25, ptr %26, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !80
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %56, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %55, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point.22", ptr %7, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fmul double %20, -2.000000e+00
  %22 = getelementptr inbounds [3 x double], ptr %19, i64 0, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = fneg double %23
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %23, double 1.000000e+00)
  %26 = fmul double %21, %25
  %27 = getelementptr inbounds [3 x double], ptr %19, i64 0, i64 2
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = fneg double %28
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %28, double 1.000000e+00)
  %31 = fmul double %26, %30
  %32 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %14, i64 %17
  store double %31, ptr %32, align 8, !tbaa !38
  %33 = load double, ptr %22, align 8, !tbaa !38
  %34 = fmul double %33, -2.000000e+00
  %35 = load double, ptr %19, align 8, !tbaa !38
  %36 = fneg double %35
  %37 = tail call double @llvm.fmuladd.f64(double %36, double %35, double 1.000000e+00)
  %38 = fmul double %34, %37
  %39 = load double, ptr %27, align 8, !tbaa !38
  %40 = fneg double %39
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %39, double 1.000000e+00)
  %42 = fmul double %38, %41
  %43 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %14, i64 %17, i32 0, i64 1
  store double %42, ptr %43, align 8, !tbaa !38
  %44 = load double, ptr %27, align 8, !tbaa !38
  %45 = fmul double %44, -2.000000e+00
  %46 = load double, ptr %19, align 8, !tbaa !38
  %47 = fneg double %46
  %48 = tail call double @llvm.fmuladd.f64(double %47, double %46, double 1.000000e+00)
  %49 = fmul double %45, %48
  %50 = load double, ptr %22, align 8, !tbaa !38
  %51 = fneg double %50
  %52 = tail call double @llvm.fmuladd.f64(double %51, double %50, double 1.000000e+00)
  %53 = fmul double %49, %52
  %54 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %14, i64 %17, i32 0, i64 2
  store double %53, ptr %54, align 8, !tbaa !38
  %55 = add i32 %18, 1
  %56 = zext i32 %55 to i64
  %57 = icmp ugt i64 %11, %56
  br i1 %57, label %16, label %15, !llvm.loop !142
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14PillowFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fneg double %4
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %4, double 1.000000e+00)
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = fneg double %8
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %8, double 1.000000e+00)
  %11 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !38
  %13 = fneg double %12
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %12, double 1.000000e+00)
  %15 = fmul double %10, %14
  %16 = tail call double @llvm.fmuladd.f64(double %6, double %10, double %15)
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %6, double %16)
  %18 = fmul double %17, -2.000000e+00
  ret double %18
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14PillowFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %37, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %36, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Point.22", ptr %7, i64 %17
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fneg double %20
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %20, double 1.000000e+00)
  %23 = getelementptr inbounds [3 x double], ptr %19, i64 0, i64 1
  %24 = load double, ptr %23, align 8, !tbaa !38
  %25 = fneg double %24
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %24, double 1.000000e+00)
  %27 = getelementptr inbounds [3 x double], ptr %19, i64 0, i64 2
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = fneg double %28
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %28, double 1.000000e+00)
  %31 = fmul double %26, %30
  %32 = tail call double @llvm.fmuladd.f64(double %22, double %26, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %30, double %22, double %32)
  %34 = fmul double %33, -2.000000e+00
  %35 = getelementptr inbounds double, ptr %14, i64 %17
  store double %34, ptr %35, align 8, !tbaa !38
  %36 = add i32 %18, 1
  %37 = zext i32 %36 to i64
  %38 = icmp ugt i64 %11, %37
  br i1 %38, label %16, label %15, !llvm.loop !143
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #23
  ret double %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %23, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %21, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %20, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = load ptr, ptr %2, align 8, !tbaa !46
  %19 = getelementptr inbounds double, ptr %18, i64 %12
  store double %17, ptr %19, align 8, !tbaa !38
  %20 = add i32 %13, 1
  %21 = zext i32 %20 to i64
  %22 = load ptr, ptr %5, align 8, !tbaa !42
  %23 = load ptr, ptr %1, align 8, !tbaa !45
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = ashr exact i64 %26, 3
  %28 = icmp ugt i64 %27, %21
  br i1 %28, label %10, label %9, !llvm.loop !144
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @sin(double noundef %6) #23
  %8 = fmul double %7, 0xBFF921FB54442D18
  store double %8, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %24, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %22, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %21, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @sin(double noundef %16) #23
  %18 = fmul double %17, 0xBFF921FB54442D18
  %19 = load ptr, ptr %2, align 8, !tbaa !54
  %20 = getelementptr inbounds %"class.dealii::Tensor", ptr %19, i64 %12
  store double %18, ptr %20, align 8, !tbaa !38
  %21 = add i32 %13, 1
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 8, !tbaa !42
  %24 = load ptr, ptr %1, align 8, !tbaa !45
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  %29 = icmp ugt i64 %28, %22
  br i1 %29, label %10, label %9, !llvm.loop !145
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #23
  %7 = fmul double %6, 0xC003BD3CC9BE45DE
  ret double %7
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %24, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %22, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %21, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = fmul double %17, 0xC003BD3CC9BE45DE
  %19 = load ptr, ptr %2, align 8, !tbaa !46
  %20 = getelementptr inbounds double, ptr %19, i64 %12
  store double %18, ptr %20, align 8, !tbaa !38
  %21 = add i32 %13, 1
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 8, !tbaa !42
  %24 = load ptr, ptr %1, align 8, !tbaa !45
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  %29 = icmp ugt i64 %28, %22
  br i1 %29, label %10, label %9, !llvm.loop !146
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE7hessianERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.63") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @cos(double noundef %6) #23
  %8 = fmul double %7, 0xC003BD3CC9BE45DE
  store double %8, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi1EE12hessian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi2ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %24, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %22, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %21, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = fmul double %17, 0xC003BD3CC9BE45DE
  %19 = load ptr, ptr %2, align 8, !tbaa !147
  %20 = getelementptr inbounds %"class.dealii::Tensor.63", ptr %19, i64 %12
  store double %18, ptr %20, align 8, !tbaa !38
  %21 = add i32 %13, 1
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 8, !tbaa !42
  %24 = load ptr, ptr %1, align 8, !tbaa !45
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  %29 = icmp ugt i64 %28, %22
  br i1 %29, label %10, label %9, !llvm.loop !149
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #23
  %7 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = fmul double %8, 0x3FF921FB54442D18
  %10 = tail call double @cos(double noundef %9) #23
  %11 = fmul double %6, %10
  ret double %11
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %28, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %26, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %25, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = fmul double %19, 0x3FF921FB54442D18
  %21 = tail call double @cos(double noundef %20) #23
  %22 = fmul double %17, %21
  %23 = load ptr, ptr %2, align 8, !tbaa !46
  %24 = getelementptr inbounds double, ptr %23, i64 %12
  store double %22, ptr %24, align 8, !tbaa !38
  %25 = add i32 %13, 1
  %26 = zext i32 %25 to i64
  %27 = load ptr, ptr %5, align 8, !tbaa !62
  %28 = load ptr, ptr %1, align 8, !tbaa !64
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = ashr exact i64 %31, 4
  %33 = icmp ugt i64 %32, %26
  br i1 %33, label %10, label %9, !llvm.loop !150
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @sin(double noundef %6) #23
  %8 = fmul double %7, 0xBFF921FB54442D18
  %9 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = fmul double %10, 0x3FF921FB54442D18
  %12 = tail call double @cos(double noundef %11) #23
  %13 = fmul double %8, %12
  store double %13, ptr %0, align 8, !tbaa !38
  %14 = load double, ptr %2, align 8, !tbaa !38
  %15 = fmul double %14, 0x3FF921FB54442D18
  %16 = tail call double @cos(double noundef %15) #23
  %17 = fmul double %16, 0xBFF921FB54442D18
  %18 = load double, ptr %9, align 8, !tbaa !38
  %19 = fmul double %18, 0x3FF921FB54442D18
  %20 = tail call double @sin(double noundef %19) #23
  %21 = fmul double %17, %20
  %22 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %21, ptr %22, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %39, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %37, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %36, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @sin(double noundef %16) #23
  %18 = fmul double %17, 0xBFF921FB54442D18
  %19 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = tail call double @cos(double noundef %21) #23
  %23 = fmul double %18, %22
  %24 = load ptr, ptr %2, align 8, !tbaa !67
  %25 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %24, i64 %12
  store double %23, ptr %25, align 8, !tbaa !38
  %26 = load double, ptr %14, align 8, !tbaa !38
  %27 = fmul double %26, 0x3FF921FB54442D18
  %28 = tail call double @cos(double noundef %27) #23
  %29 = fmul double %28, 0xBFF921FB54442D18
  %30 = load double, ptr %19, align 8, !tbaa !38
  %31 = fmul double %30, 0x3FF921FB54442D18
  %32 = tail call double @sin(double noundef %31) #23
  %33 = fmul double %29, %32
  %34 = load ptr, ptr %2, align 8, !tbaa !67
  %35 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %34, i64 %12, i32 0, i64 1
  store double %33, ptr %35, align 8, !tbaa !38
  %36 = add i32 %13, 1
  %37 = zext i32 %36 to i64
  %38 = load ptr, ptr %5, align 8, !tbaa !62
  %39 = load ptr, ptr %1, align 8, !tbaa !64
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = ashr exact i64 %42, 4
  %44 = icmp ugt i64 %43, %37
  br i1 %44, label %10, label %9, !llvm.loop !151
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #23
  %7 = fmul double %6, 0xC013BD3CC9BE45DE
  %8 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = fmul double %9, 0x3FF921FB54442D18
  %11 = tail call double @cos(double noundef %10) #23
  %12 = fmul double %7, %11
  ret double %12
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %29, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %27, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %26, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = fmul double %17, 0xC013BD3CC9BE45DE
  %19 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = tail call double @cos(double noundef %21) #23
  %23 = fmul double %18, %22
  %24 = load ptr, ptr %2, align 8, !tbaa !46
  %25 = getelementptr inbounds double, ptr %24, i64 %12
  store double %23, ptr %25, align 8, !tbaa !38
  %26 = add i32 %13, 1
  %27 = zext i32 %26 to i64
  %28 = load ptr, ptr %5, align 8, !tbaa !62
  %29 = load ptr, ptr %1, align 8, !tbaa !64
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = ashr exact i64 %32, 4
  %34 = icmp ugt i64 %33, %27
  br i1 %34, label %10, label %9, !llvm.loop !152
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE7hessianERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.69") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @cos(double noundef %6) #23
  %8 = fmul double %7, 0xC003BD3CC9BE45DE
  %9 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = fmul double %10, 0x3FF921FB54442D18
  %12 = tail call double @cos(double noundef %11) #23
  %13 = fmul double %8, %12
  %14 = load double, ptr %2, align 8, !tbaa !38
  %15 = fmul double %14, 0x3FF921FB54442D18
  %16 = tail call double @sin(double noundef %15) #23
  %17 = fmul double %16, 0x4003BD3CC9BE45DE
  %18 = load double, ptr %9, align 8, !tbaa !38
  %19 = fmul double %18, 0x3FF921FB54442D18
  %20 = tail call double @sin(double noundef %19) #23
  %21 = fmul double %17, %20
  store double %13, ptr %0, align 8, !tbaa !38
  %22 = getelementptr inbounds [2 x %"class.dealii::Tensor.11"], ptr %0, i64 0, i64 1
  %23 = getelementptr inbounds [2 x %"class.dealii::Tensor.11"], ptr %0, i64 0, i64 1, i32 0, i64 1
  store double %13, ptr %23, align 8, !tbaa !38
  %24 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %21, ptr %24, align 8, !tbaa !38
  store double %21, ptr %22, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi2EE12hessian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi2ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %40, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %38, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %37, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = fmul double %17, 0xC003BD3CC9BE45DE
  %19 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = tail call double @cos(double noundef %21) #23
  %23 = fmul double %18, %22
  %24 = load double, ptr %14, align 8, !tbaa !38
  %25 = fmul double %24, 0x3FF921FB54442D18
  %26 = tail call double @sin(double noundef %25) #23
  %27 = fmul double %26, 0x4003BD3CC9BE45DE
  %28 = load double, ptr %19, align 8, !tbaa !38
  %29 = fmul double %28, 0x3FF921FB54442D18
  %30 = tail call double @sin(double noundef %29) #23
  %31 = fmul double %27, %30
  %32 = load ptr, ptr %2, align 8, !tbaa !153
  %33 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %32, i64 %12
  store double %23, ptr %33, align 8, !tbaa !38
  %34 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %32, i64 %12, i32 0, i64 1, i32 0, i64 1
  store double %23, ptr %34, align 8, !tbaa !38
  %35 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %32, i64 %12, i32 0, i64 0, i32 0, i64 1
  store double %31, ptr %35, align 8, !tbaa !38
  %36 = getelementptr inbounds %"class.dealii::Tensor.69", ptr %32, i64 %12, i32 0, i64 1
  store double %31, ptr %36, align 8, !tbaa !38
  %37 = add i32 %13, 1
  %38 = zext i32 %37 to i64
  %39 = load ptr, ptr %5, align 8, !tbaa !62
  %40 = load ptr, ptr %1, align 8, !tbaa !64
  %41 = ptrtoint ptr %39 to i64
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %41, %42
  %44 = ashr exact i64 %43, 4
  %45 = icmp ugt i64 %44, %38
  br i1 %45, label %10, label %9, !llvm.loop !155
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #23
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = fmul double %8, 0x3FF921FB54442D18
  %10 = tail call double @cos(double noundef %9) #23
  %11 = fmul double %6, %10
  %12 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = fmul double %13, 0x3FF921FB54442D18
  %15 = tail call double @cos(double noundef %14) #23
  %16 = fmul double %11, %15
  ret double %16
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %33, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %31, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %30, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.22", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = fmul double %19, 0x3FF921FB54442D18
  %21 = tail call double @cos(double noundef %20) #23
  %22 = fmul double %17, %21
  %23 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %24 = load double, ptr %23, align 8, !tbaa !38
  %25 = fmul double %24, 0x3FF921FB54442D18
  %26 = tail call double @cos(double noundef %25) #23
  %27 = fmul double %22, %26
  %28 = load ptr, ptr %2, align 8, !tbaa !46
  %29 = getelementptr inbounds double, ptr %28, i64 %12
  store double %27, ptr %29, align 8, !tbaa !38
  %30 = add i32 %13, 1
  %31 = zext i32 %30 to i64
  %32 = load ptr, ptr %5, align 8, !tbaa !75
  %33 = load ptr, ptr %1, align 8, !tbaa !77
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 24
  %38 = icmp ugt i64 %37, %31
  br i1 %38, label %10, label %9, !llvm.loop !156
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @sin(double noundef %6) #23
  %8 = fmul double %7, 0xBFF921FB54442D18
  %9 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = fmul double %10, 0x3FF921FB54442D18
  %12 = tail call double @cos(double noundef %11) #23
  %13 = fmul double %8, %12
  %14 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = fmul double %13, %17
  store double %18, ptr %0, align 8, !tbaa !38
  %19 = load double, ptr %2, align 8, !tbaa !38
  %20 = fmul double %19, 0x3FF921FB54442D18
  %21 = tail call double @cos(double noundef %20) #23
  %22 = fmul double %21, 0xBFF921FB54442D18
  %23 = load double, ptr %9, align 8, !tbaa !38
  %24 = fmul double %23, 0x3FF921FB54442D18
  %25 = tail call double @sin(double noundef %24) #23
  %26 = fmul double %22, %25
  %27 = load double, ptr %14, align 8, !tbaa !38
  %28 = fmul double %27, 0x3FF921FB54442D18
  %29 = tail call double @cos(double noundef %28) #23
  %30 = fmul double %26, %29
  %31 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %30, ptr %31, align 8, !tbaa !38
  %32 = load double, ptr %2, align 8, !tbaa !38
  %33 = fmul double %32, 0x3FF921FB54442D18
  %34 = tail call double @cos(double noundef %33) #23
  %35 = fmul double %34, 0xBFF921FB54442D18
  %36 = load double, ptr %9, align 8, !tbaa !38
  %37 = fmul double %36, 0x3FF921FB54442D18
  %38 = tail call double @cos(double noundef %37) #23
  %39 = fmul double %35, %38
  %40 = load double, ptr %14, align 8, !tbaa !38
  %41 = fmul double %40, 0x3FF921FB54442D18
  %42 = tail call double @sin(double noundef %41) #23
  %43 = fmul double %39, %42
  %44 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %43, ptr %44, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %62, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %60, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %59, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.22", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @sin(double noundef %16) #23
  %18 = fmul double %17, 0xBFF921FB54442D18
  %19 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = tail call double @cos(double noundef %21) #23
  %23 = fmul double %18, %22
  %24 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fmul double %25, 0x3FF921FB54442D18
  %27 = tail call double @cos(double noundef %26) #23
  %28 = fmul double %23, %27
  %29 = load ptr, ptr %2, align 8, !tbaa !80
  %30 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %29, i64 %12
  store double %28, ptr %30, align 8, !tbaa !38
  %31 = load double, ptr %14, align 8, !tbaa !38
  %32 = fmul double %31, 0x3FF921FB54442D18
  %33 = tail call double @cos(double noundef %32) #23
  %34 = fmul double %33, 0xBFF921FB54442D18
  %35 = load double, ptr %19, align 8, !tbaa !38
  %36 = fmul double %35, 0x3FF921FB54442D18
  %37 = tail call double @sin(double noundef %36) #23
  %38 = fmul double %34, %37
  %39 = load double, ptr %24, align 8, !tbaa !38
  %40 = fmul double %39, 0x3FF921FB54442D18
  %41 = tail call double @cos(double noundef %40) #23
  %42 = fmul double %38, %41
  %43 = load ptr, ptr %2, align 8, !tbaa !80
  %44 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %43, i64 %12, i32 0, i64 1
  store double %42, ptr %44, align 8, !tbaa !38
  %45 = load double, ptr %14, align 8, !tbaa !38
  %46 = fmul double %45, 0x3FF921FB54442D18
  %47 = tail call double @cos(double noundef %46) #23
  %48 = fmul double %47, 0xBFF921FB54442D18
  %49 = load double, ptr %19, align 8, !tbaa !38
  %50 = fmul double %49, 0x3FF921FB54442D18
  %51 = tail call double @cos(double noundef %50) #23
  %52 = fmul double %48, %51
  %53 = load double, ptr %24, align 8, !tbaa !38
  %54 = fmul double %53, 0x3FF921FB54442D18
  %55 = tail call double @sin(double noundef %54) #23
  %56 = fmul double %52, %55
  %57 = load ptr, ptr %2, align 8, !tbaa !80
  %58 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %57, i64 %12, i32 0, i64 2
  store double %56, ptr %58, align 8, !tbaa !38
  %59 = add i32 %13, 1
  %60 = zext i32 %59 to i64
  %61 = load ptr, ptr %5, align 8, !tbaa !75
  %62 = load ptr, ptr %1, align 8, !tbaa !77
  %63 = ptrtoint ptr %61 to i64
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 24
  %67 = icmp ugt i64 %66, %60
  br i1 %67, label %10, label %9, !llvm.loop !157
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14CosineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = fmul double %4, 0x3FF921FB54442D18
  %6 = tail call double @cos(double noundef %5) #23
  %7 = fmul double %6, 0xC01D9BDB2E9D68CD
  %8 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = fmul double %9, 0x3FF921FB54442D18
  %11 = tail call double @cos(double noundef %10) #23
  %12 = fmul double %7, %11
  %13 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = fmul double %14, 0x3FF921FB54442D18
  %16 = tail call double @cos(double noundef %15) #23
  %17 = fmul double %12, %16
  ret double %17
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %34, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %32, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %31, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.22", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = fmul double %17, 0xC01D9BDB2E9D68CD
  %19 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = tail call double @cos(double noundef %21) #23
  %23 = fmul double %18, %22
  %24 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fmul double %25, 0x3FF921FB54442D18
  %27 = tail call double @cos(double noundef %26) #23
  %28 = fmul double %23, %27
  %29 = load ptr, ptr %2, align 8, !tbaa !46
  %30 = getelementptr inbounds double, ptr %29, i64 %12
  store double %28, ptr %30, align 8, !tbaa !38
  %31 = add i32 %13, 1
  %32 = zext i32 %31 to i64
  %33 = load ptr, ptr %5, align 8, !tbaa !75
  %34 = load ptr, ptr %1, align 8, !tbaa !77
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 24
  %39 = icmp ugt i64 %38, %32
  br i1 %39, label %10, label %9, !llvm.loop !158
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE7hessianERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = fmul double %5, 0x3FF921FB54442D18
  %7 = tail call double @cos(double noundef %6) #23
  %8 = fmul double %7, 0xC003BD3CC9BE45DE
  %9 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = fmul double %10, 0x3FF921FB54442D18
  %12 = tail call double @cos(double noundef %11) #23
  %13 = fmul double %8, %12
  %14 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = fmul double %13, %17
  %19 = load double, ptr %2, align 8, !tbaa !38
  %20 = fmul double %19, 0x3FF921FB54442D18
  %21 = tail call double @sin(double noundef %20) #23
  %22 = fmul double %21, 0x4003BD3CC9BE45DE
  %23 = load double, ptr %9, align 8, !tbaa !38
  %24 = fmul double %23, 0x3FF921FB54442D18
  %25 = tail call double @sin(double noundef %24) #23
  %26 = fmul double %22, %25
  %27 = load double, ptr %14, align 8, !tbaa !38
  %28 = fmul double %27, 0x3FF921FB54442D18
  %29 = tail call double @cos(double noundef %28) #23
  %30 = fmul double %26, %29
  %31 = load double, ptr %2, align 8, !tbaa !38
  %32 = fmul double %31, 0x3FF921FB54442D18
  %33 = tail call double @sin(double noundef %32) #23
  %34 = fmul double %33, 0x4003BD3CC9BE45DE
  %35 = load double, ptr %9, align 8, !tbaa !38
  %36 = fmul double %35, 0x3FF921FB54442D18
  %37 = tail call double @cos(double noundef %36) #23
  %38 = fmul double %34, %37
  %39 = load double, ptr %14, align 8, !tbaa !38
  %40 = fmul double %39, 0x3FF921FB54442D18
  %41 = tail call double @sin(double noundef %40) #23
  %42 = fmul double %38, %41
  %43 = load double, ptr %2, align 8, !tbaa !38
  %44 = fmul double %43, 0x3FF921FB54442D18
  %45 = tail call double @cos(double noundef %44) #23
  %46 = fmul double %45, 0x4003BD3CC9BE45DE
  %47 = load double, ptr %9, align 8, !tbaa !38
  %48 = fmul double %47, 0x3FF921FB54442D18
  %49 = tail call double @sin(double noundef %48) #23
  %50 = fmul double %46, %49
  %51 = load double, ptr %14, align 8, !tbaa !38
  %52 = fmul double %51, 0x3FF921FB54442D18
  %53 = tail call double @sin(double noundef %52) #23
  %54 = fmul double %50, %53
  store double %18, ptr %0, align 8, !tbaa !38
  %55 = getelementptr inbounds [3 x %"class.dealii::Tensor.23"], ptr %0, i64 0, i64 1
  %56 = getelementptr inbounds [3 x %"class.dealii::Tensor.23"], ptr %0, i64 0, i64 1, i32 0, i64 1
  store double %18, ptr %56, align 8, !tbaa !38
  %57 = getelementptr inbounds [3 x %"class.dealii::Tensor.23"], ptr %0, i64 0, i64 2
  %58 = getelementptr inbounds [3 x %"class.dealii::Tensor.23"], ptr %0, i64 0, i64 2, i32 0, i64 2
  store double %18, ptr %58, align 8, !tbaa !38
  %59 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %30, ptr %59, align 8, !tbaa !38
  store double %30, ptr %55, align 8, !tbaa !38
  %60 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %42, ptr %60, align 8, !tbaa !38
  store double %42, ptr %57, align 8, !tbaa !38
  %61 = getelementptr inbounds [3 x %"class.dealii::Tensor.23"], ptr %0, i64 0, i64 1, i32 0, i64 2
  store double %54, ptr %61, align 8, !tbaa !38
  %62 = getelementptr inbounds [3 x %"class.dealii::Tensor.23"], ptr %0, i64 0, i64 2, i32 0, i64 1
  store double %54, ptr %62, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14CosineFunctionILi3EE12hessian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi2ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %78, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %76, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %75, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.22", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = fmul double %15, 0x3FF921FB54442D18
  %17 = tail call double @cos(double noundef %16) #23
  %18 = fmul double %17, 0xC003BD3CC9BE45DE
  %19 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = fmul double %20, 0x3FF921FB54442D18
  %22 = tail call double @cos(double noundef %21) #23
  %23 = fmul double %18, %22
  %24 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fmul double %25, 0x3FF921FB54442D18
  %27 = tail call double @cos(double noundef %26) #23
  %28 = fmul double %23, %27
  %29 = load double, ptr %14, align 8, !tbaa !38
  %30 = fmul double %29, 0x3FF921FB54442D18
  %31 = tail call double @sin(double noundef %30) #23
  %32 = fmul double %31, 0x4003BD3CC9BE45DE
  %33 = load double, ptr %19, align 8, !tbaa !38
  %34 = fmul double %33, 0x3FF921FB54442D18
  %35 = tail call double @sin(double noundef %34) #23
  %36 = fmul double %32, %35
  %37 = load double, ptr %24, align 8, !tbaa !38
  %38 = fmul double %37, 0x3FF921FB54442D18
  %39 = tail call double @cos(double noundef %38) #23
  %40 = fmul double %36, %39
  %41 = load double, ptr %14, align 8, !tbaa !38
  %42 = fmul double %41, 0x3FF921FB54442D18
  %43 = tail call double @sin(double noundef %42) #23
  %44 = fmul double %43, 0x4003BD3CC9BE45DE
  %45 = load double, ptr %19, align 8, !tbaa !38
  %46 = fmul double %45, 0x3FF921FB54442D18
  %47 = tail call double @cos(double noundef %46) #23
  %48 = fmul double %44, %47
  %49 = load double, ptr %24, align 8, !tbaa !38
  %50 = fmul double %49, 0x3FF921FB54442D18
  %51 = tail call double @sin(double noundef %50) #23
  %52 = fmul double %48, %51
  %53 = load double, ptr %14, align 8, !tbaa !38
  %54 = fmul double %53, 0x3FF921FB54442D18
  %55 = tail call double @cos(double noundef %54) #23
  %56 = fmul double %55, 0x4003BD3CC9BE45DE
  %57 = load double, ptr %19, align 8, !tbaa !38
  %58 = fmul double %57, 0x3FF921FB54442D18
  %59 = tail call double @sin(double noundef %58) #23
  %60 = fmul double %56, %59
  %61 = load double, ptr %24, align 8, !tbaa !38
  %62 = fmul double %61, 0x3FF921FB54442D18
  %63 = tail call double @sin(double noundef %62) #23
  %64 = fmul double %60, %63
  %65 = load ptr, ptr %2, align 8, !tbaa !159
  %66 = getelementptr inbounds %"class.dealii::Tensor.75", ptr %65, i64 %12
  store double %28, ptr %66, align 8, !tbaa !38
  %67 = getelementptr inbounds %"class.dealii::Tensor.75", ptr %65, i64 %12, i32 0, i64 1, i32 0, i64 1
  store double %28, ptr %67, align 8, !tbaa !38
  %68 = getelementptr inbounds %"class.dealii::Tensor.75", ptr %65, i64 %12, i32 0, i64 2, i32 0, i64 2
  store double %28, ptr %68, align 8, !tbaa !38
  %69 = getelementptr inbounds %"class.dealii::Tensor.75", ptr %65, i64 %12, i32 0, i64 0, i32 0, i64 1
  store double %40, ptr %69, align 8, !tbaa !38
  %70 = getelementptr inbounds %"class.dealii::Tensor.75", ptr %65, i64 %12, i32 0, i64 1
  store double %40, ptr %70, align 8, !tbaa !38
  %71 = getelementptr inbounds %"class.dealii::Tensor.75", ptr %65, i64 %12, i32 0, i64 0, i32 0, i64 2
  store double %52, ptr %71, align 8, !tbaa !38
  %72 = getelementptr inbounds %"class.dealii::Tensor.75", ptr %65, i64 %12, i32 0, i64 2
  store double %52, ptr %72, align 8, !tbaa !38
  %73 = getelementptr inbounds %"class.dealii::Tensor.75", ptr %65, i64 %12, i32 0, i64 1, i32 0, i64 2
  store double %64, ptr %73, align 8, !tbaa !38
  %74 = getelementptr inbounds %"class.dealii::Tensor.75", ptr %65, i64 %12, i32 0, i64 2, i32 0, i64 1
  store double %64, ptr %74, align 8, !tbaa !38
  %75 = add i32 %13, 1
  %76 = zext i32 %75 to i64
  %77 = load ptr, ptr %5, align 8, !tbaa !75
  %78 = load ptr, ptr %1, align 8, !tbaa !77
  %79 = ptrtoint ptr %77 to i64
  %80 = ptrtoint ptr %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 24
  %83 = icmp ugt i64 %82, %76
  br i1 %83, label %10, label %9, !llvm.loop !161
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = tail call double @exp(double noundef %4) #23
  ret double %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %22, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %20, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %19, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = tail call double @exp(double noundef %15) #23
  %17 = load ptr, ptr %2, align 8, !tbaa !46
  %18 = getelementptr inbounds double, ptr %17, i64 %12
  store double %16, ptr %18, align 8, !tbaa !38
  %19 = add i32 %13, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %5, align 8, !tbaa !42
  %22 = load ptr, ptr %1, align 8, !tbaa !45
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = ashr exact i64 %25, 3
  %27 = icmp ugt i64 %26, %20
  br i1 %27, label %10, label %9, !llvm.loop !162
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = tail call double @exp(double noundef %5) #23
  store double %6, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %22, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %20, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %19, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = tail call double @exp(double noundef %15) #23
  %17 = load ptr, ptr %2, align 8, !tbaa !54
  %18 = getelementptr inbounds %"class.dealii::Tensor", ptr %17, i64 %12
  store double %16, ptr %18, align 8, !tbaa !38
  %19 = add i32 %13, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %5, align 8, !tbaa !42
  %22 = load ptr, ptr %1, align 8, !tbaa !45
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = ashr exact i64 %25, 3
  %27 = icmp ugt i64 %26, %20
  br i1 %27, label %10, label %9, !llvm.loop !163
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = tail call double @exp(double noundef %4) #23
  ret double %5
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %22, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %20, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %19, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = tail call double @exp(double noundef %15) #23
  %17 = load ptr, ptr %2, align 8, !tbaa !46
  %18 = getelementptr inbounds double, ptr %17, i64 %12
  store double %16, ptr %18, align 8, !tbaa !38
  %19 = add i32 %13, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %5, align 8, !tbaa !42
  %22 = load ptr, ptr %1, align 8, !tbaa !45
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = ashr exact i64 %25, 3
  %27 = icmp ugt i64 %26, %20
  br i1 %27, label %10, label %9, !llvm.loop !164
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = tail call double @exp(double noundef %4) #23
  %6 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = tail call double @exp(double noundef %7) #23
  %9 = fmul double %5, %8
  ret double %9
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %26, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %24, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %23, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = tail call double @exp(double noundef %15) #23
  %17 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %18 = load double, ptr %17, align 8, !tbaa !38
  %19 = tail call double @exp(double noundef %18) #23
  %20 = fmul double %16, %19
  %21 = load ptr, ptr %2, align 8, !tbaa !46
  %22 = getelementptr inbounds double, ptr %21, i64 %12
  store double %20, ptr %22, align 8, !tbaa !38
  %23 = add i32 %13, 1
  %24 = zext i32 %23 to i64
  %25 = load ptr, ptr %5, align 8, !tbaa !62
  %26 = load ptr, ptr %1, align 8, !tbaa !64
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 4
  %31 = icmp ugt i64 %30, %24
  br i1 %31, label %10, label %9, !llvm.loop !165
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = tail call double @exp(double noundef %5) #23
  %7 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = tail call double @exp(double noundef %8) #23
  %10 = fmul double %6, %9
  store double %10, ptr %0, align 8, !tbaa !38
  %11 = load double, ptr %2, align 8, !tbaa !38
  %12 = tail call double @exp(double noundef %11) #23
  %13 = load double, ptr %7, align 8, !tbaa !38
  %14 = tail call double @exp(double noundef %13) #23
  %15 = fmul double %12, %14
  %16 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %15, ptr %16, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %33, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %31, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %30, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = tail call double @exp(double noundef %15) #23
  %17 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %18 = load double, ptr %17, align 8, !tbaa !38
  %19 = tail call double @exp(double noundef %18) #23
  %20 = fmul double %16, %19
  %21 = load ptr, ptr %2, align 8, !tbaa !67
  %22 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %21, i64 %12
  store double %20, ptr %22, align 8, !tbaa !38
  %23 = load double, ptr %14, align 8, !tbaa !38
  %24 = tail call double @exp(double noundef %23) #23
  %25 = load double, ptr %17, align 8, !tbaa !38
  %26 = tail call double @exp(double noundef %25) #23
  %27 = fmul double %24, %26
  %28 = load ptr, ptr %2, align 8, !tbaa !67
  %29 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %28, i64 %12, i32 0, i64 1
  store double %27, ptr %29, align 8, !tbaa !38
  %30 = add i32 %13, 1
  %31 = zext i32 %30 to i64
  %32 = load ptr, ptr %5, align 8, !tbaa !62
  %33 = load ptr, ptr %1, align 8, !tbaa !64
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 4
  %38 = icmp ugt i64 %37, %31
  br i1 %38, label %10, label %9, !llvm.loop !166
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = tail call double @exp(double noundef %4) #23
  %6 = fmul double %5, 2.000000e+00
  %7 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = tail call double @exp(double noundef %8) #23
  %10 = fmul double %6, %9
  ret double %10
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %27, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %25, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %24, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = tail call double @exp(double noundef %15) #23
  %17 = fmul double %16, 2.000000e+00
  %18 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = tail call double @exp(double noundef %19) #23
  %21 = fmul double %17, %20
  %22 = load ptr, ptr %2, align 8, !tbaa !46
  %23 = getelementptr inbounds double, ptr %22, i64 %12
  store double %21, ptr %23, align 8, !tbaa !38
  %24 = add i32 %13, 1
  %25 = zext i32 %24 to i64
  %26 = load ptr, ptr %5, align 8, !tbaa !62
  %27 = load ptr, ptr %1, align 8, !tbaa !64
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 4
  %32 = icmp ugt i64 %31, %25
  br i1 %32, label %10, label %9, !llvm.loop !167
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = tail call double @exp(double noundef %4) #23
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = tail call double @exp(double noundef %7) #23
  %9 = fmul double %5, %8
  %10 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !38
  %12 = tail call double @exp(double noundef %11) #23
  %13 = fmul double %9, %12
  ret double %13
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %30, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %28, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %27, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.22", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = tail call double @exp(double noundef %15) #23
  %17 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %18 = load double, ptr %17, align 8, !tbaa !38
  %19 = tail call double @exp(double noundef %18) #23
  %20 = fmul double %16, %19
  %21 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = tail call double @exp(double noundef %22) #23
  %24 = fmul double %20, %23
  %25 = load ptr, ptr %2, align 8, !tbaa !46
  %26 = getelementptr inbounds double, ptr %25, i64 %12
  store double %24, ptr %26, align 8, !tbaa !38
  %27 = add i32 %13, 1
  %28 = zext i32 %27 to i64
  %29 = load ptr, ptr %5, align 8, !tbaa !75
  %30 = load ptr, ptr %1, align 8, !tbaa !77
  %31 = ptrtoint ptr %29 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 24
  %35 = icmp ugt i64 %34, %28
  br i1 %35, label %10, label %9, !llvm.loop !168
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !38
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = tail call double @exp(double noundef %5) #23
  %7 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = tail call double @exp(double noundef %8) #23
  %10 = fmul double %6, %9
  %11 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !38
  %13 = tail call double @exp(double noundef %12) #23
  %14 = fmul double %10, %13
  store double %14, ptr %0, align 8, !tbaa !38
  %15 = load double, ptr %2, align 8, !tbaa !38
  %16 = tail call double @exp(double noundef %15) #23
  %17 = load double, ptr %7, align 8, !tbaa !38
  %18 = tail call double @exp(double noundef %17) #23
  %19 = fmul double %16, %18
  %20 = load double, ptr %11, align 8, !tbaa !38
  %21 = tail call double @exp(double noundef %20) #23
  %22 = fmul double %19, %21
  %23 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %22, ptr %23, align 8, !tbaa !38
  %24 = load double, ptr %2, align 8, !tbaa !38
  %25 = tail call double @exp(double noundef %24) #23
  %26 = load double, ptr %7, align 8, !tbaa !38
  %27 = tail call double @exp(double noundef %26) #23
  %28 = fmul double %25, %27
  %29 = load double, ptr %11, align 8, !tbaa !38
  %30 = tail call double @exp(double noundef %29) #23
  %31 = fmul double %28, %30
  %32 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %31, ptr %32, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %50, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %48, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %47, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.22", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = tail call double @exp(double noundef %15) #23
  %17 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %18 = load double, ptr %17, align 8, !tbaa !38
  %19 = tail call double @exp(double noundef %18) #23
  %20 = fmul double %16, %19
  %21 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = tail call double @exp(double noundef %22) #23
  %24 = fmul double %20, %23
  %25 = load ptr, ptr %2, align 8, !tbaa !80
  %26 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %25, i64 %12
  store double %24, ptr %26, align 8, !tbaa !38
  %27 = load double, ptr %14, align 8, !tbaa !38
  %28 = tail call double @exp(double noundef %27) #23
  %29 = load double, ptr %17, align 8, !tbaa !38
  %30 = tail call double @exp(double noundef %29) #23
  %31 = fmul double %28, %30
  %32 = load double, ptr %21, align 8, !tbaa !38
  %33 = tail call double @exp(double noundef %32) #23
  %34 = fmul double %31, %33
  %35 = load ptr, ptr %2, align 8, !tbaa !80
  %36 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %35, i64 %12, i32 0, i64 1
  store double %34, ptr %36, align 8, !tbaa !38
  %37 = load double, ptr %14, align 8, !tbaa !38
  %38 = tail call double @exp(double noundef %37) #23
  %39 = load double, ptr %17, align 8, !tbaa !38
  %40 = tail call double @exp(double noundef %39) #23
  %41 = fmul double %38, %40
  %42 = load double, ptr %21, align 8, !tbaa !38
  %43 = tail call double @exp(double noundef %42) #23
  %44 = fmul double %41, %43
  %45 = load ptr, ptr %2, align 8, !tbaa !80
  %46 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %45, i64 %12, i32 0, i64 2
  store double %44, ptr %46, align 8, !tbaa !38
  %47 = add i32 %13, 1
  %48 = zext i32 %47 to i64
  %49 = load ptr, ptr %5, align 8, !tbaa !75
  %50 = load ptr, ptr %1, align 8, !tbaa !77
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 24
  %55 = icmp ugt i64 %54, %48
  br i1 %55, label %10, label %9, !llvm.loop !169
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions11ExpFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = tail call double @exp(double noundef %4) #23
  %6 = fmul double %5, 3.000000e+00
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = tail call double @exp(double noundef %8) #23
  %10 = fmul double %6, %9
  %11 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !38
  %13 = tail call double @exp(double noundef %12) #23
  %14 = fmul double %10, %13
  ret double %14
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions11ExpFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %31, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %29, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %28, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.22", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = tail call double @exp(double noundef %15) #23
  %17 = fmul double %16, 3.000000e+00
  %18 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = tail call double @exp(double noundef %19) #23
  %21 = fmul double %17, %20
  %22 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = tail call double @exp(double noundef %23) #23
  %25 = fmul double %21, %24
  %26 = load ptr, ptr %2, align 8, !tbaa !46
  %27 = getelementptr inbounds double, ptr %26, i64 %12
  store double %25, ptr %27, align 8, !tbaa !38
  %28 = add i32 %13, 1
  %29 = zext i32 %28 to i64
  %30 = load ptr, ptr %5, align 8, !tbaa !75
  %31 = load ptr, ptr %1, align 8, !tbaa !77
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 24
  %36 = icmp ugt i64 %35, %29
  br i1 %36, label %10, label %9, !llvm.loop !170
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi1EEC2ERKNS_5PointILi1EEEd(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions12JumpFunctionILi1EEC5ERKNS_5PointILi1EEEd) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 1
  %6 = load double, ptr %1, align 8, !tbaa !38
  store double %6, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  store double %2, ptr %7, align 8, !tbaa !171
  %8 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %9, align 8, !tbaa !175
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !175
  %8 = fneg double %7
  %9 = load double, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !176
  %12 = getelementptr inbounds [1 x double], ptr %1, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = fmul double %11, %13
  %15 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %14)
  %16 = fmul double %5, %15
  %17 = tail call double @atan(double noundef %16) #23
  %18 = fneg double %17
  ret double %18
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 4
  br label %14

13:                                               ; preds = %14, %4
  ret void

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %7, %9 ], [ %36, %14 ]
  %16 = phi i64 [ 0, %9 ], [ %34, %14 ]
  %17 = phi i32 [ 0, %9 ], [ %33, %14 ]
  %18 = load double, ptr %10, align 8, !tbaa !171
  %19 = load double, ptr %11, align 8, !tbaa !175
  %20 = fneg double %19
  %21 = getelementptr inbounds %"class.dealii::Point", ptr %15, i64 %16
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = load double, ptr %12, align 8, !tbaa !176
  %24 = getelementptr inbounds [1 x double], ptr %21, i64 0, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fmul double %23, %25
  %27 = tail call double @llvm.fmuladd.f64(double %20, double %22, double %26)
  %28 = fmul double %18, %27
  %29 = tail call double @atan(double noundef %28) #23
  %30 = fneg double %29
  %31 = load ptr, ptr %2, align 8, !tbaa !46
  %32 = getelementptr inbounds double, ptr %31, i64 %16
  store double %30, ptr %32, align 8, !tbaa !38
  %33 = add i32 %17, 1
  %34 = zext i32 %33 to i64
  %35 = load ptr, ptr %5, align 8, !tbaa !42
  %36 = load ptr, ptr %1, align 8, !tbaa !45
  %37 = ptrtoint ptr %35 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = ashr exact i64 %39, 3
  %41 = icmp ugt i64 %40, %34
  br i1 %41, label %14, label %13, !llvm.loop !177
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %1, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !171
  %7 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %1, i64 0, i32 5
  %8 = load double, ptr %7, align 8, !tbaa !175
  %9 = fneg double %8
  %10 = load double, ptr %2, align 8, !tbaa !38
  %11 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %1, i64 0, i32 4
  %12 = load double, ptr %11, align 8, !tbaa !176
  %13 = getelementptr inbounds [1 x double], ptr %2, i64 0, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = fmul double %12, %14
  %16 = tail call double @llvm.fmuladd.f64(double %9, double %10, double %15)
  %17 = fmul double %6, %16
  %18 = fneg double %6
  %19 = tail call double @llvm.fmuladd.f64(double %17, double %17, double 1.000000e+00)
  %20 = fmul double %19, %18
  %21 = fmul double %8, %20
  store double %21, ptr %0, align 8, !tbaa !38
  %22 = fmul double %12, %20
  %23 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 1
  store double %22, ptr %23, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6TensorILi1ELi1EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %2, align 8, !tbaa !54
  br label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %41, %19 ]
  %21 = phi i32 [ 0, %13 ], [ %40, %19 ]
  %22 = load double, ptr %14, align 8, !tbaa !171
  %23 = load double, ptr %15, align 8, !tbaa !175
  %24 = getelementptr inbounds %"class.dealii::Point", ptr %7, i64 %20
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = load double, ptr %16, align 8, !tbaa !176
  %27 = getelementptr inbounds [1 x double], ptr %24, i64 0, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = fmul double %26, %28
  %30 = tail call double @llvm.fmuladd.f64(double %23, double %25, double %29)
  %31 = fmul double %22, %30
  %32 = fneg double %22
  %33 = tail call double @llvm.fmuladd.f64(double %31, double %31, double 1.000000e+00)
  %34 = fmul double %33, %32
  %35 = fmul double %23, %34
  %36 = getelementptr inbounds %"class.dealii::Tensor", ptr %17, i64 %20
  store double %35, ptr %36, align 8, !tbaa !38
  %37 = load double, ptr %16, align 8, !tbaa !176
  %38 = fmul double %37, %34
  %39 = getelementptr inbounds [1 x double], ptr %36, i64 0, i64 1
  store double %38, ptr %39, align 8, !tbaa !38
  %40 = add i32 %21, 1
  %41 = zext i32 %40 to i64
  %42 = icmp ugt i64 %11, %41
  br i1 %42, label %19, label %18, !llvm.loop !178
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !175
  %8 = fneg double %7
  %9 = load double, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !176
  %12 = getelementptr inbounds [1 x double], ptr %1, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = fmul double %11, %13
  %15 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %14)
  %16 = fmul double %5, %15
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double 1.000000e+00)
  %18 = fmul double %5, 2.000000e+00
  %19 = fmul double %5, %18
  %20 = fmul double %19, %16
  %21 = fmul double %17, %17
  %22 = fdiv double %20, %21
  ret double %22
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !171
  %7 = fmul double %6, 2.000000e+00
  %8 = fmul double %6, %7
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = load ptr, ptr %1, align 8, !tbaa !45
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = ashr exact i64 %14, 3
  %16 = icmp eq ptr %10, %11
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %"class.dealii::Functions::JumpFunction", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %2, align 8, !tbaa !46
  br label %22

21:                                               ; preds = %22, %4
  ret void

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 0, %17 ], [ %42, %22 ]
  %24 = phi i32 [ 0, %17 ], [ %41, %22 ]
  %25 = load double, ptr %5, align 8, !tbaa !171
  %26 = load double, ptr %18, align 8, !tbaa !175
  %27 = fneg double %26
  %28 = getelementptr inbounds %"class.dealii::Point", ptr %11, i64 %23
  %29 = load double, ptr %28, align 8, !tbaa !38
  %30 = load double, ptr %19, align 8, !tbaa !176
  %31 = getelementptr inbounds [1 x double], ptr %28, i64 0, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !38
  %33 = fmul double %30, %32
  %34 = tail call double @llvm.fmuladd.f64(double %27, double %29, double %33)
  %35 = fmul double %25, %34
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %35, double 1.000000e+00)
  %37 = fmul double %8, %35
  %38 = fmul double %36, %36
  %39 = fdiv double %37, %38
  %40 = getelementptr inbounds double, ptr %20, i64 %23
  store double %39, ptr %40, align 8, !tbaa !38
  %41 = add i32 %24, 1
  %42 = zext i32 %41 to i64
  %43 = icmp ugt i64 %15, %42
  br i1 %43, label %22, label %21, !llvm.loop !179
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii9Functions12JumpFunctionILi1EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 comdat align 2 !prof !37 {
  ret i32 136
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi2EEC2ERKNS_5PointILi2EEEd(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions12JumpFunctionILi2EEC5ERKNS_5PointILi2EEEd) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ 0, %3 ], [ %11, %6 ]
  %8 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %7
  store double %9, ptr %10, align 8, !tbaa !38
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %6, label %13, !llvm.loop !180

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  store double %2, ptr %14, align 8, !tbaa !181
  %15 = load double, ptr %1, align 8, !tbaa !38
  %16 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = tail call double @atan2(double noundef %15, double noundef %17) #23
  %19 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 3
  store double %18, ptr %19, align 8, !tbaa !185
  %20 = tail call double @sin(double noundef %18) #23
  %21 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  store double %20, ptr %21, align 8, !tbaa !186
  %22 = load double, ptr %19, align 8, !tbaa !185
  %23 = tail call double @cos(double noundef %22) #23
  %24 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  store double %23, ptr %24, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !181
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !187
  %8 = fneg double %7
  %9 = load double, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !186
  %12 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = fmul double %11, %13
  %15 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %14)
  %16 = fmul double %5, %15
  %17 = tail call double @atan(double noundef %16) #23
  %18 = fneg double %17
  ret double %18
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  br label %14

13:                                               ; preds = %14, %4
  ret void

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %7, %9 ], [ %36, %14 ]
  %16 = phi i64 [ 0, %9 ], [ %34, %14 ]
  %17 = phi i32 [ 0, %9 ], [ %33, %14 ]
  %18 = load double, ptr %10, align 8, !tbaa !181
  %19 = load double, ptr %11, align 8, !tbaa !187
  %20 = fneg double %19
  %21 = getelementptr inbounds %"class.dealii::Point.10", ptr %15, i64 %16
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = load double, ptr %12, align 8, !tbaa !186
  %24 = getelementptr inbounds [2 x double], ptr %21, i64 0, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fmul double %23, %25
  %27 = tail call double @llvm.fmuladd.f64(double %20, double %22, double %26)
  %28 = fmul double %18, %27
  %29 = tail call double @atan(double noundef %28) #23
  %30 = fneg double %29
  %31 = load ptr, ptr %2, align 8, !tbaa !46
  %32 = getelementptr inbounds double, ptr %31, i64 %16
  store double %30, ptr %32, align 8, !tbaa !38
  %33 = add i32 %17, 1
  %34 = zext i32 %33 to i64
  %35 = load ptr, ptr %5, align 8, !tbaa !62
  %36 = load ptr, ptr %1, align 8, !tbaa !64
  %37 = ptrtoint ptr %35 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = ashr exact i64 %39, 4
  %41 = icmp ugt i64 %40, %34
  br i1 %41, label %14, label %13, !llvm.loop !188
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %1, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !181
  %7 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %1, i64 0, i32 5
  %8 = load double, ptr %7, align 8, !tbaa !187
  %9 = load double, ptr %2, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %1, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !186
  %12 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %14 = fneg double %8
  %15 = fmul double %11, %13
  %16 = tail call double @llvm.fmuladd.f64(double %14, double %9, double %15)
  %17 = fmul double %6, %16
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %17, double 1.000000e+00)
  %19 = fneg double %6
  %20 = fmul double %18, %19
  %21 = fmul double %8, %20
  store double %21, ptr %0, align 8, !tbaa !38
  %22 = fmul double %11, %20
  %23 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %22, ptr %23, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %2, align 8, !tbaa !67
  br label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %41, %19 ]
  %21 = phi i32 [ 0, %13 ], [ %40, %19 ]
  %22 = load double, ptr %14, align 8, !tbaa !181
  %23 = load double, ptr %15, align 8, !tbaa !187
  %24 = getelementptr inbounds %"class.dealii::Point.10", ptr %7, i64 %20
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = load double, ptr %16, align 8, !tbaa !186
  %27 = getelementptr inbounds [2 x double], ptr %24, i64 0, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = fmul double %26, %28
  %30 = tail call double @llvm.fmuladd.f64(double %23, double %25, double %29)
  %31 = fmul double %22, %30
  %32 = fneg double %22
  %33 = tail call double @llvm.fmuladd.f64(double %31, double %31, double 1.000000e+00)
  %34 = fmul double %33, %32
  %35 = fmul double %23, %34
  %36 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %17, i64 %20
  store double %35, ptr %36, align 8, !tbaa !38
  %37 = load double, ptr %16, align 8, !tbaa !186
  %38 = fmul double %37, %34
  %39 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %17, i64 %20, i32 0, i64 1
  store double %38, ptr %39, align 8, !tbaa !38
  %40 = add i32 %21, 1
  %41 = zext i32 %40 to i64
  %42 = icmp ugt i64 %11, %41
  br i1 %42, label %19, label %18, !llvm.loop !189
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !181
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !187
  %8 = fneg double %7
  %9 = load double, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !186
  %12 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = fmul double %11, %13
  %15 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %14)
  %16 = fmul double %5, %15
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double 1.000000e+00)
  %18 = fmul double %5, 2.000000e+00
  %19 = fmul double %5, %18
  %20 = fmul double %19, %16
  %21 = fmul double %17, %17
  %22 = fdiv double %20, %21
  ret double %22
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !181
  %7 = fmul double %6, 2.000000e+00
  %8 = fmul double %6, %7
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = load ptr, ptr %1, align 8, !tbaa !64
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = ashr exact i64 %14, 4
  %16 = icmp eq ptr %10, %11
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.81", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %2, align 8, !tbaa !46
  br label %22

21:                                               ; preds = %22, %4
  ret void

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 0, %17 ], [ %42, %22 ]
  %24 = phi i32 [ 0, %17 ], [ %41, %22 ]
  %25 = load double, ptr %5, align 8, !tbaa !181
  %26 = load double, ptr %18, align 8, !tbaa !187
  %27 = fneg double %26
  %28 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %23
  %29 = load double, ptr %28, align 8, !tbaa !38
  %30 = load double, ptr %19, align 8, !tbaa !186
  %31 = getelementptr inbounds [2 x double], ptr %28, i64 0, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !38
  %33 = fmul double %30, %32
  %34 = tail call double @llvm.fmuladd.f64(double %27, double %29, double %33)
  %35 = fmul double %25, %34
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %35, double 1.000000e+00)
  %37 = fmul double %8, %35
  %38 = fmul double %36, %36
  %39 = fdiv double %37, %38
  %40 = getelementptr inbounds double, ptr %20, i64 %23
  store double %39, ptr %40, align 8, !tbaa !38
  %41 = add i32 %24, 1
  %42 = zext i32 %41 to i64
  %43 = icmp ugt i64 %15, %42
  br i1 %43, label %22, label %21, !llvm.loop !190
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii9Functions12JumpFunctionILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #2 comdat align 2 !prof !37 {
  ret i32 144
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi3EEC2ERKNS_5PointILi3EEEd(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions12JumpFunctionILi3EEC5ERKNS_5PointILi3EEEd) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions12JumpFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ 0, %3 ], [ %11, %6 ]
  %8 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %7
  store double %9, ptr %10, align 8, !tbaa !38
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !191

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  store double %2, ptr %14, align 8, !tbaa !192
  %15 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 3
  %16 = load double, ptr %15, align 8, !tbaa !196
  %17 = tail call double @sin(double noundef %16) #23
  %18 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  store double %17, ptr %18, align 8, !tbaa !197
  %19 = load double, ptr %15, align 8, !tbaa !196
  %20 = tail call double @cos(double noundef %19) #23
  %21 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  store double %20, ptr %21, align 8, !tbaa !198
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !198
  %8 = fneg double %7
  %9 = load double, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !197
  %12 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = fmul double %11, %13
  %15 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %14)
  %16 = fmul double %5, %15
  %17 = tail call double @atan(double noundef %16) #23
  %18 = fneg double %17
  ret double %18
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  br label %14

13:                                               ; preds = %14, %4
  ret void

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %7, %9 ], [ %36, %14 ]
  %16 = phi i64 [ 0, %9 ], [ %34, %14 ]
  %17 = phi i32 [ 0, %9 ], [ %33, %14 ]
  %18 = load double, ptr %10, align 8, !tbaa !192
  %19 = load double, ptr %11, align 8, !tbaa !198
  %20 = fneg double %19
  %21 = getelementptr inbounds %"class.dealii::Point.22", ptr %15, i64 %16
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = load double, ptr %12, align 8, !tbaa !197
  %24 = getelementptr inbounds [3 x double], ptr %21, i64 0, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fmul double %23, %25
  %27 = tail call double @llvm.fmuladd.f64(double %20, double %22, double %26)
  %28 = fmul double %18, %27
  %29 = tail call double @atan(double noundef %28) #23
  %30 = fneg double %29
  %31 = load ptr, ptr %2, align 8, !tbaa !46
  %32 = getelementptr inbounds double, ptr %31, i64 %16
  store double %30, ptr %32, align 8, !tbaa !38
  %33 = add i32 %17, 1
  %34 = zext i32 %33 to i64
  %35 = load ptr, ptr %5, align 8, !tbaa !75
  %36 = load ptr, ptr %1, align 8, !tbaa !77
  %37 = ptrtoint ptr %35 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 24
  %41 = icmp ugt i64 %40, %34
  br i1 %41, label %14, label %13, !llvm.loop !199
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %1, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %1, i64 0, i32 5
  %8 = load double, ptr %7, align 8, !tbaa !198
  %9 = load double, ptr %2, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %1, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !197
  %12 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !38
  %14 = fneg double %8
  %15 = fmul double %11, %13
  %16 = tail call double @llvm.fmuladd.f64(double %14, double %9, double %15)
  %17 = fmul double %6, %16
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %17, double 1.000000e+00)
  %19 = fneg double %6
  %20 = fmul double %18, %19
  %21 = fmul double %8, %20
  store double %21, ptr %0, align 8, !tbaa !38
  %22 = fmul double %11, %20
  %23 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %22, ptr %23, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %2, align 8, !tbaa !80
  br label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %41, %19 ]
  %21 = phi i32 [ 0, %13 ], [ %40, %19 ]
  %22 = load double, ptr %14, align 8, !tbaa !192
  %23 = load double, ptr %15, align 8, !tbaa !198
  %24 = getelementptr inbounds %"class.dealii::Point.22", ptr %7, i64 %20
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = load double, ptr %16, align 8, !tbaa !197
  %27 = getelementptr inbounds [3 x double], ptr %24, i64 0, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = fmul double %26, %28
  %30 = tail call double @llvm.fmuladd.f64(double %23, double %25, double %29)
  %31 = fmul double %22, %30
  %32 = fneg double %22
  %33 = tail call double @llvm.fmuladd.f64(double %31, double %31, double 1.000000e+00)
  %34 = fmul double %33, %32
  %35 = fmul double %23, %34
  %36 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %17, i64 %20
  store double %35, ptr %36, align 8, !tbaa !38
  %37 = load double, ptr %16, align 8, !tbaa !197
  %38 = fmul double %37, %34
  %39 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %17, i64 %20, i32 0, i64 1
  store double %38, ptr %39, align 8, !tbaa !38
  %40 = add i32 %21, 1
  %41 = zext i32 %40 to i64
  %42 = icmp ugt i64 %11, %41
  br i1 %42, label %19, label %18, !llvm.loop !200
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions12JumpFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  %7 = load double, ptr %6, align 8, !tbaa !198
  %8 = fneg double %7
  %9 = load double, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  %11 = load double, ptr %10, align 8, !tbaa !197
  %12 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = fmul double %11, %13
  %15 = tail call double @llvm.fmuladd.f64(double %8, double %9, double %14)
  %16 = fmul double %5, %15
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double 1.000000e+00)
  %18 = fmul double %5, 2.000000e+00
  %19 = fmul double %5, %18
  %20 = fmul double %19, %16
  %21 = fmul double %17, %17
  %22 = fdiv double %20, %21
  ret double %22
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions12JumpFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !192
  %7 = fmul double %6, 2.000000e+00
  %8 = fmul double %6, %7
  %9 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = load ptr, ptr %1, align 8, !tbaa !77
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 24
  %16 = icmp eq ptr %10, %11
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %"class.dealii::Functions::JumpFunction.82", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %2, align 8, !tbaa !46
  br label %22

21:                                               ; preds = %22, %4
  ret void

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 0, %17 ], [ %42, %22 ]
  %24 = phi i32 [ 0, %17 ], [ %41, %22 ]
  %25 = load double, ptr %5, align 8, !tbaa !192
  %26 = load double, ptr %18, align 8, !tbaa !198
  %27 = fneg double %26
  %28 = getelementptr inbounds %"class.dealii::Point.22", ptr %11, i64 %23
  %29 = load double, ptr %28, align 8, !tbaa !38
  %30 = load double, ptr %19, align 8, !tbaa !197
  %31 = getelementptr inbounds [3 x double], ptr %28, i64 0, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !38
  %33 = fmul double %30, %32
  %34 = tail call double @llvm.fmuladd.f64(double %27, double %29, double %33)
  %35 = fmul double %25, %34
  %36 = tail call double @llvm.fmuladd.f64(double %35, double %35, double 1.000000e+00)
  %37 = fmul double %8, %35
  %38 = fmul double %36, %36
  %39 = fdiv double %37, %38
  %40 = getelementptr inbounds double, ptr %20, i64 %23
  store double %39, ptr %40, align 8, !tbaa !38
  %41 = add i32 %24, 1
  %42 = zext i32 %41 to i64
  %43 = icmp ugt i64 %15, %42
  br i1 %43, label %22, label %21, !llvm.loop !201
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii9Functions12JumpFunctionILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #2 comdat align 2 !prof !37 {
  ret i32 152
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi1EEC2ERKNS_5PointILi1EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions21FourierCosineFunctionILi1EEC5ERKNS_5PointILi1EEE) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction", ptr %0, i64 0, i32 1
  %5 = load double, ptr %1, align 8, !tbaa !38
  store double %5, ptr %4, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = load double, ptr %1, align 8, !tbaa !38
  %7 = fmul double %5, %6
  %8 = tail call double @cos(double noundef %7) #23
  ret double %8
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions21FourierCosineFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction", ptr %1, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = fneg double %6
  %8 = load double, ptr %2, align 8, !tbaa !38
  %9 = fmul double %6, %8
  %10 = tail call double @sin(double noundef %9) #23
  %11 = fmul double %10, %7
  store double %11, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %5, double 0.000000e+00)
  %7 = load double, ptr %1, align 8, !tbaa !38
  %8 = fmul double %5, %7
  %9 = tail call double @cos(double noundef %8) #23
  %10 = fneg double %9
  %11 = fmul double %6, %10
  ret double %11
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi2EEC2ERKNS_5PointILi2EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions21FourierCosineFunctionILi2EEC5ERKNS_5PointILi2EEE) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 %6
  store double %8, ptr %9, align 8, !tbaa !38
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %5, label %12, !llvm.loop !180

12:                                               ; preds = %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = load double, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = fmul double %8, %10
  %12 = tail call noundef double @llvm.fmuladd.f64(double %5, double %6, double %11)
  %13 = tail call double @cos(double noundef %12) #23
  ret double %13
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions21FourierCosineFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.10", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !tbaa !38, !alias.scope !202
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %13, %7 ]
  %9 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %8
  %10 = load double, ptr %9, align 8, !tbaa !38, !noalias !202
  %11 = fneg double %10
  %12 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %8
  store double %11, ptr %12, align 8, !tbaa !38, !alias.scope !202
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %8, 0
  br i1 %14, label %7, label %15, !llvm.loop !205

15:                                               ; preds = %7
  %16 = load double, ptr %6, align 8, !tbaa !38
  %17 = load double, ptr %2, align 8, !tbaa !38
  %18 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = fmul double %19, %21
  %23 = tail call noundef double @llvm.fmuladd.f64(double %16, double %17, double %22)
  %24 = tail call double @sin(double noundef %23) #23
  br label %25

25:                                               ; preds = %15, %25
  %26 = phi i64 [ 0, %15 ], [ %30, %25 ]
  %27 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = fmul double %24, %28
  store double %29, ptr %27, align 8, !tbaa !38
  %30 = add nuw nsw i64 %26, 1
  %31 = icmp eq i64 %26, 0
  br i1 %31, label %25, label %32, !llvm.loop !66

32:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %11, %5 ]
  %7 = phi double [ 0.000000e+00, %3 ], [ %10, %5 ]
  %8 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 %6
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = add nuw nsw i64 %6, 1
  %12 = icmp eq i64 %6, 0
  br i1 %12, label %5, label %13, !llvm.loop !61

13:                                               ; preds = %5
  %14 = load double, ptr %4, align 8, !tbaa !38
  %15 = load double, ptr %1, align 8, !tbaa !38
  %16 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.83", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = fmul double %17, %19
  %21 = tail call noundef double @llvm.fmuladd.f64(double %14, double %15, double %20)
  %22 = tail call double @cos(double noundef %21) #23
  %23 = fneg double %22
  %24 = fmul double %10, %23
  ret double %24
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi3EEC2ERKNS_5PointILi3EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions21FourierCosineFunctionILi3EEC5ERKNS_5PointILi3EEE) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions21FourierCosineFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %6
  store double %8, ptr %9, align 8, !tbaa !38
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !191

12:                                               ; preds = %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = load double, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = fmul double %8, %10
  %12 = tail call double @llvm.fmuladd.f64(double %5, double %6, double %11)
  %13 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = tail call noundef double @llvm.fmuladd.f64(double %14, double %16, double %12)
  %18 = tail call double @cos(double noundef %17) #23
  ret double %18
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions21FourierCosineFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.22", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !tbaa !38, !alias.scope !206
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %13, %7 ]
  %9 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %8
  %10 = load double, ptr %9, align 8, !tbaa !38, !noalias !206
  %11 = fneg double %10
  %12 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %8
  store double %11, ptr %12, align 8, !tbaa !38, !alias.scope !206
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %7, !llvm.loop !209

15:                                               ; preds = %7
  %16 = load double, ptr %6, align 8, !tbaa !38
  %17 = load double, ptr %2, align 8, !tbaa !38
  %18 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = fmul double %19, %21
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %17, double %22)
  %24 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %27 = load double, ptr %26, align 8, !tbaa !38
  %28 = tail call noundef double @llvm.fmuladd.f64(double %25, double %27, double %23)
  %29 = tail call double @sin(double noundef %28) #23
  br label %30

30:                                               ; preds = %15, %30
  %31 = phi i64 [ 0, %15 ], [ %35, %30 ]
  %32 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !38
  %34 = fmul double %29, %33
  store double %34, ptr %32, align 8, !tbaa !38
  %35 = add nuw nsw i64 %31, 1
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %37, label %30, !llvm.loop !79

37:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions21FourierCosineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %11, %5 ]
  %7 = phi double [ 0.000000e+00, %3 ], [ %10, %5 ]
  %8 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %6
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = add nuw nsw i64 %6, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %5, !llvm.loop !74

13:                                               ; preds = %5
  %14 = load double, ptr %4, align 8, !tbaa !38
  %15 = load double, ptr %1, align 8, !tbaa !38
  %16 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = fmul double %17, %19
  %21 = tail call double @llvm.fmuladd.f64(double %14, double %15, double %20)
  %22 = getelementptr inbounds %"class.dealii::Functions::FourierCosineFunction.84", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = tail call noundef double @llvm.fmuladd.f64(double %23, double %25, double %21)
  %27 = tail call double @cos(double noundef %26) #23
  %28 = fneg double %27
  %29 = fmul double %10, %28
  ret double %29
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi1EEC2ERKNS_5PointILi1EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions19FourierSineFunctionILi1EEC5ERKNS_5PointILi1EEE) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction", ptr %0, i64 0, i32 1
  %5 = load double, ptr %1, align 8, !tbaa !38
  store double %5, ptr %4, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = load double, ptr %1, align 8, !tbaa !38
  %7 = fmul double %5, %6
  %8 = tail call double @sin(double noundef %7) #23
  ret double %8
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions19FourierSineFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction", ptr %1, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = load double, ptr %2, align 8, !tbaa !38
  %8 = fmul double %6, %7
  %9 = tail call double @cos(double noundef %8) #23
  %10 = load double, ptr %5, align 8, !tbaa !38, !noalias !210
  %11 = fmul double %9, %10
  store double %11, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %5, double 0.000000e+00)
  %7 = load double, ptr %1, align 8, !tbaa !38
  %8 = fmul double %5, %7
  %9 = tail call double @sin(double noundef %8) #23
  %10 = fneg double %9
  %11 = fmul double %6, %10
  ret double %11
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi2EEC2ERKNS_5PointILi2EEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions19FourierSineFunctionILi2EEC5ERKNS_5PointILi2EEE) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 %6
  store double %8, ptr %9, align 8, !tbaa !38
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %5, label %12, !llvm.loop !180

12:                                               ; preds = %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = load double, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = fmul double %8, %10
  %12 = tail call noundef double @llvm.fmuladd.f64(double %5, double %6, double %11)
  %13 = tail call double @sin(double noundef %12) #23
  ret double %13
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions19FourierSineFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.10", align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %1, i64 0, i32 1
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = load double, ptr %2, align 8, !tbaa !38
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !38
  %13 = fmul double %10, %12
  %14 = tail call noundef double @llvm.fmuladd.f64(double %7, double %8, double %13)
  %15 = tail call double @cos(double noundef %14) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa !38
  br label %16

16:                                               ; preds = %4, %16
  %17 = phi i64 [ 0, %4 ], [ %21, %16 ]
  %18 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %17
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = fmul double %15, %19
  store double %20, ptr %18, align 8, !tbaa !38
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %17, 0
  br i1 %22, label %16, label %23, !llvm.loop !66

23:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %11, %5 ]
  %7 = phi double [ 0.000000e+00, %3 ], [ %10, %5 ]
  %8 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 %6
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = add nuw nsw i64 %6, 1
  %12 = icmp eq i64 %6, 0
  br i1 %12, label %5, label %13, !llvm.loop !61

13:                                               ; preds = %5
  %14 = load double, ptr %4, align 8, !tbaa !38
  %15 = load double, ptr %1, align 8, !tbaa !38
  %16 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.85", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = fmul double %17, %19
  %21 = tail call noundef double @llvm.fmuladd.f64(double %14, double %15, double %20)
  %22 = tail call double @sin(double noundef %21) #23
  %23 = fneg double %22
  %24 = fmul double %10, %23
  ret double %24
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi3EEC2ERKNS_5PointILi3EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat($_ZN6dealii9Functions19FourierSineFunctionILi3EEC5ERKNS_5PointILi3EEE) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions19FourierSineFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %6
  store double %8, ptr %9, align 8, !tbaa !38
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !191

12:                                               ; preds = %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = load double, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = fmul double %8, %10
  %12 = tail call double @llvm.fmuladd.f64(double %5, double %6, double %11)
  %13 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = tail call noundef double @llvm.fmuladd.f64(double %14, double %16, double %12)
  %18 = tail call double @sin(double noundef %17) #23
  ret double %18
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions19FourierSineFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.22", align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %1, i64 0, i32 1
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = load double, ptr %2, align 8, !tbaa !38
  %9 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %12 = load double, ptr %11, align 8, !tbaa !38
  %13 = fmul double %10, %12
  %14 = tail call double @llvm.fmuladd.f64(double %7, double %8, double %13)
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !38
  %19 = tail call noundef double @llvm.fmuladd.f64(double %16, double %18, double %14)
  %20 = tail call double @cos(double noundef %19) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa !38
  br label %21

21:                                               ; preds = %4, %21
  %22 = phi i64 [ 0, %4 ], [ %26, %21 ]
  %23 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !38
  %25 = fmul double %20, %24
  store double %25, ptr %23, align 8, !tbaa !38
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %21, !llvm.loop !79

28:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions19FourierSineFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %11, %5 ]
  %7 = phi double [ 0.000000e+00, %3 ], [ %10, %5 ]
  %8 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %6
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = add nuw nsw i64 %6, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %5, !llvm.loop !74

13:                                               ; preds = %5
  %14 = load double, ptr %4, align 8, !tbaa !38
  %15 = load double, ptr %1, align 8, !tbaa !38
  %16 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = fmul double %17, %19
  %21 = tail call double @llvm.fmuladd.f64(double %14, double %15, double %20)
  %22 = getelementptr inbounds %"class.dealii::Functions::FourierSineFunction.86", ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = tail call noundef double @llvm.fmuladd.f64(double %23, double %25, double %21)
  %27 = tail call double @sin(double noundef %26) #23
  %28 = fneg double %27
  %29 = fmul double %10, %28
  ret double %29
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi1EEC2ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat($_ZN6dealii9Functions16FourierCosineSumILi1EEC5ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %6 unwind label %40

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = load ptr, ptr %2, align 8, !tbaa !46
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %16 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %17 = icmp eq ptr %9, %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %17, label %28, label %18, !prof !215

18:                                               ; preds = %6
  %19 = icmp ugt i64 %14, 1152921504606846975
  br i1 %19, label %20, label %26, !prof !216

20:                                               ; preds = %18
  %21 = icmp ugt i64 %14, 2305843009213693951
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %23 unwind label %42

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %20
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %25 unwind label %42

25:                                               ; preds = %24
  unreachable

26:                                               ; preds = %18
  %27 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #25
          to label %28 unwind label %42

28:                                               ; preds = %26, %6
  %29 = phi ptr [ null, %6 ], [ %27, %26 ]
  store ptr %29, ptr %7, align 8, !tbaa !46
  store ptr %29, ptr %15, align 8, !tbaa !214
  %30 = getelementptr inbounds double, ptr %29, i64 %14
  store ptr %30, ptr %16, align 8, !tbaa !217
  %31 = load ptr, ptr %2, align 8, !tbaa !218
  %32 = load ptr, ptr %8, align 8, !tbaa !218
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %31 to i64
  %35 = sub i64 %33, %34
  %36 = icmp eq ptr %32, %31
  br i1 %36, label %38, label %37, !prof !215

37:                                               ; preds = %28
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %29, ptr align 8 %31, i64 %35, i1 false), !prof !219
  br label %38

38:                                               ; preds = %28, %37
  %39 = getelementptr inbounds i8, ptr %29, i64 %35
  store ptr %39, ptr %15, align 8, !tbaa !214
  ret void

40:                                               ; preds = %3
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %47

42:                                               ; preds = %26, %24, %22
  %43 = landingpad { ptr, i32 }
          cleanup
  %44 = load ptr, ptr %5, align 8, !tbaa !45
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @_ZdlPv(ptr noundef %44) #26
  br label %47

47:                                               ; preds = %46, %42, %40
  %48 = phi { ptr, i32 } [ %41, %40 ], [ %43, %42 ], [ %43, %46 ]
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  resume { ptr, i32 } %48
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = load ptr, ptr %1, align 8, !tbaa !45
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !45
  store ptr %16, ptr %10, align 8, !tbaa !42
  %17 = getelementptr inbounds %"class.dealii::Point", ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !220
  %18 = load ptr, ptr %1, align 8, !tbaa !218
  %19 = load ptr, ptr %3, align 8, !tbaa !218
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %15, %21
  %22 = phi ptr [ %26, %21 ], [ %16, %15 ]
  %23 = phi ptr [ %25, %21 ], [ %18, %15 ]
  %24 = load double, ptr %23, align 8, !tbaa !38
  store double %24, ptr %22, align 8, !tbaa !38
  %25 = getelementptr inbounds %"class.dealii::Point", ptr %23, i64 1
  %26 = getelementptr inbounds %"class.dealii::Point", ptr %22, i64 1
  %27 = icmp eq ptr %25, %19
  br i1 %27, label %28, label %21, !llvm.loop !221

28:                                               ; preds = %21, %15
  %29 = phi ptr [ %16, %15 ], [ %26, %21 ]
  store ptr %29, ptr %10, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 1
  %16 = and i64 %14, 4294967295
  br label %19

17:                                               ; preds = %19, %3
  %18 = phi double [ 0.000000e+00, %3 ], [ %31, %19 ]
  ret double %18

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %32, %19 ]
  %21 = phi double [ 0.000000e+00, %13 ], [ %31, %19 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !46
  %23 = getelementptr inbounds double, ptr %22, i64 %20
  %24 = load double, ptr %23, align 8, !tbaa !38
  %25 = load ptr, ptr %15, align 8, !tbaa !45
  %26 = getelementptr inbounds %"class.dealii::Point", ptr %25, i64 %20
  %27 = load double, ptr %26, align 8, !tbaa !38
  %28 = load double, ptr %1, align 8, !tbaa !38
  %29 = fmul double %27, %28
  %30 = tail call double @cos(double noundef %29) #23
  %31 = tail call double @llvm.fmuladd.f64(double %24, double %30, double %21)
  %32 = add nuw nsw i64 %20, 1
  %33 = icmp eq i64 %32, %16
  br i1 %33, label %17, label %19, !llvm.loop !222
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16FourierCosineSumILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %1, i64 0, i32 2
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !214
  %8 = load ptr, ptr %5, align 8, !tbaa !46
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  store double 0.000000e+00, ptr %0, align 8, !tbaa !38
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = lshr exact i64 %11, 3
  %16 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %1, i64 0, i32 1
  %17 = and i64 %15, 4294967295
  br label %20

18:                                               ; preds = %20, %4
  %19 = phi double [ 0.000000e+00, %4 ], [ %31, %20 ]
  store double %19, ptr %0, align 8, !tbaa !38
  ret void

20:                                               ; preds = %14, %20
  %21 = phi i64 [ 0, %14 ], [ %32, %20 ]
  %22 = phi double [ 0.000000e+00, %14 ], [ %31, %20 ]
  %23 = load ptr, ptr %16, align 8, !tbaa !45
  %24 = getelementptr inbounds %"class.dealii::Point", ptr %23, i64 %21
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = load double, ptr %2, align 8, !tbaa !38
  %27 = fmul double %25, %26
  %28 = tail call double @sin(double noundef %27) #23
  %29 = load double, ptr %24, align 8, !tbaa !38, !noalias !223
  %30 = fmul double %28, %29
  %31 = fsub double %22, %30
  %32 = add nuw nsw i64 %21, 1
  %33 = icmp eq i64 %32, %17
  br i1 %33, label %18, label %20, !llvm.loop !226
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 1
  %16 = and i64 %14, 4294967295
  br label %19

17:                                               ; preds = %19, %3
  %18 = phi double [ 0.000000e+00, %3 ], [ %30, %19 ]
  ret double %18

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %31, %19 ]
  %21 = phi double [ 0.000000e+00, %13 ], [ %30, %19 ]
  %22 = load ptr, ptr %15, align 8, !tbaa !45
  %23 = getelementptr inbounds %"class.dealii::Point", ptr %22, i64 %20
  %24 = load double, ptr %23, align 8, !tbaa !38
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %24, double 0.000000e+00)
  %26 = load double, ptr %1, align 8, !tbaa !38
  %27 = fmul double %24, %26
  %28 = tail call double @cos(double noundef %27) #23
  %29 = fneg double %25
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %28, double %21)
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, %16
  br i1 %32, label %17, label %19, !llvm.loop !227
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi2EEC2ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat($_ZN6dealii9Functions16FourierCosineSumILi2EEC5ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = load ptr, ptr %1, align 8, !tbaa !64
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 4
  %13 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %14 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %15 = icmp eq ptr %7, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %15, label %26, label %16, !prof !228

16:                                               ; preds = %3
  %17 = icmp ugt i64 %12, 576460752303423487
  br i1 %17, label %18, label %24, !prof !229

18:                                               ; preds = %16
  %19 = icmp ugt i64 %12, 1152921504606846975
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %21 unwind label %81

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %18
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %23 unwind label %81

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %16
  %25 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #25
          to label %26 unwind label %81

26:                                               ; preds = %24, %3
  %27 = phi ptr [ null, %3 ], [ %25, %24 ]
  store ptr %27, ptr %5, align 8, !tbaa !64
  store ptr %27, ptr %13, align 8, !tbaa !62
  %28 = getelementptr inbounds %"class.dealii::Point.10", ptr %27, i64 %12
  store ptr %28, ptr %14, align 8, !tbaa !230
  %29 = load ptr, ptr %1, align 8, !tbaa !218
  %30 = load ptr, ptr %6, align 8, !tbaa !218
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %46, label %32, !prof !231

32:                                               ; preds = %26, %42
  %33 = phi ptr [ %44, %42 ], [ %27, %26 ]
  %34 = phi ptr [ %43, %42 ], [ %29, %26 ]
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ 0, %32 ], [ %40, %35 ]
  %37 = getelementptr inbounds [2 x double], ptr %34, i64 0, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !38
  %39 = getelementptr inbounds [2 x double], ptr %33, i64 0, i64 %36
  store double %38, ptr %39, align 8, !tbaa !38
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %36, 0
  br i1 %41, label %35, label %42, !prof !232, !llvm.loop !180

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"class.dealii::Point.10", ptr %34, i64 1
  %44 = getelementptr inbounds %"class.dealii::Point.10", ptr %33, i64 1
  %45 = icmp eq ptr %43, %30
  br i1 %45, label %46, label %32, !prof !233, !llvm.loop !234

46:                                               ; preds = %42, %26
  %47 = phi ptr [ %27, %26 ], [ %44, %42 ]
  store ptr %47, ptr %13, align 8, !tbaa !62
  %48 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2
  %49 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !214
  %51 = load ptr, ptr %2, align 8, !tbaa !46
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %57 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %58 = icmp eq ptr %50, %51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  br i1 %58, label %69, label %59, !prof !215

59:                                               ; preds = %46
  %60 = icmp ugt i64 %55, 1152921504606846975
  br i1 %60, label %61, label %67, !prof !216

61:                                               ; preds = %59
  %62 = icmp ugt i64 %55, 2305843009213693951
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %64 unwind label %83

64:                                               ; preds = %63
  unreachable

65:                                               ; preds = %61
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %66 unwind label %83

66:                                               ; preds = %65
  unreachable

67:                                               ; preds = %59
  %68 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #25
          to label %69 unwind label %83

69:                                               ; preds = %67, %46
  %70 = phi ptr [ null, %46 ], [ %68, %67 ]
  store ptr %70, ptr %48, align 8, !tbaa !46
  store ptr %70, ptr %56, align 8, !tbaa !214
  %71 = getelementptr inbounds double, ptr %70, i64 %55
  store ptr %71, ptr %57, align 8, !tbaa !217
  %72 = load ptr, ptr %2, align 8, !tbaa !218
  %73 = load ptr, ptr %49, align 8, !tbaa !218
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %72 to i64
  %76 = sub i64 %74, %75
  %77 = icmp eq ptr %73, %72
  br i1 %77, label %79, label %78, !prof !215

78:                                               ; preds = %69
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %70, ptr align 8 %72, i64 %76, i1 false), !prof !219
  br label %79

79:                                               ; preds = %69, %78
  %80 = getelementptr inbounds i8, ptr %70, i64 %76
  store ptr %80, ptr %56, align 8, !tbaa !214
  ret void

81:                                               ; preds = %24, %22, %20
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %88

83:                                               ; preds = %67, %65, %63
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load ptr, ptr %5, align 8, !tbaa !64
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @_ZdlPv(ptr noundef %85) #26
  br label %88

88:                                               ; preds = %87, %83, %81
  %89 = phi { ptr, i32 } [ %82, %81 ], [ %84, %83 ], [ %84, %87 ]
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  resume { ptr, i32 } %89
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %17 = and i64 %14, 4294967295
  br label %20

18:                                               ; preds = %20, %3
  %19 = phi double [ 0.000000e+00, %3 ], [ %36, %20 ]
  ret double %19

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 0, %13 ], [ %37, %20 ]
  %22 = phi double [ 0.000000e+00, %13 ], [ %36, %20 ]
  %23 = load ptr, ptr %4, align 8, !tbaa !46
  %24 = getelementptr inbounds double, ptr %23, i64 %21
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = load ptr, ptr %15, align 8, !tbaa !64
  %27 = getelementptr inbounds %"class.dealii::Point.10", ptr %26, i64 %21
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = load double, ptr %1, align 8, !tbaa !38
  %30 = getelementptr inbounds [2 x double], ptr %27, i64 0, i64 1
  %31 = load double, ptr %30, align 8, !tbaa !38
  %32 = load double, ptr %16, align 8, !tbaa !38
  %33 = fmul double %31, %32
  %34 = tail call noundef double @llvm.fmuladd.f64(double %28, double %29, double %33)
  %35 = tail call double @cos(double noundef %34) #23
  %36 = tail call double @llvm.fmuladd.f64(double %25, double %35, double %22)
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp eq i64 %37, %17
  br i1 %38, label %18, label %20, !llvm.loop !235
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16FourierCosineSumILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.10", align 8
  %6 = alloca %"class.dealii::Point.10", align 8
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = lshr exact i64 %13, 3
  %18 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %20 = and i64 %17, 4294967295
  br label %22

21:                                               ; preds = %51, %4
  ret void

22:                                               ; preds = %16, %51
  %23 = phi i64 [ 0, %16 ], [ %52, %51 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %24 = load ptr, ptr %18, align 8, !tbaa !64
  %25 = getelementptr inbounds %"class.dealii::Point.10", ptr %24, i64 %23
  %26 = load double, ptr %25, align 8, !tbaa !38
  %27 = load double, ptr %2, align 8, !tbaa !38
  %28 = getelementptr inbounds [2 x double], ptr %25, i64 0, i64 1
  %29 = load double, ptr %28, align 8, !tbaa !38
  %30 = load double, ptr %19, align 8, !tbaa !38
  %31 = fmul double %29, %30
  %32 = tail call noundef double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @sin(double noundef %32) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23, !noalias !236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa !38, !noalias !236
  br label %34

34:                                               ; preds = %22, %34
  %35 = phi i64 [ 0, %22 ], [ %39, %34 ]
  %36 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %35
  %37 = load double, ptr %36, align 8, !tbaa !38, !noalias !236
  %38 = fmul double %33, %37
  store double %38, ptr %36, align 8, !tbaa !38, !noalias !236
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %35, 0
  br i1 %40, label %34, label %41, !llvm.loop !66

41:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa !38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23, !noalias !236
  br label %42

42:                                               ; preds = %41, %42
  %43 = phi i64 [ 0, %41 ], [ %49, %42 ]
  %44 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !38
  %46 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %43
  %47 = load double, ptr %46, align 8, !tbaa !38
  %48 = fsub double %47, %45
  store double %48, ptr %46, align 8, !tbaa !38
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %43, 0
  br i1 %50, label %42, label %51, !llvm.loop !239

51:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  %52 = add nuw nsw i64 %23, 1
  %53 = icmp eq i64 %52, %20
  br i1 %53, label %21, label %22, !llvm.loop !240
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %17 = and i64 %14, 4294967295
  br label %20

18:                                               ; preds = %33, %3
  %19 = phi double [ 0.000000e+00, %3 ], [ %43, %33 ]
  ret double %19

20:                                               ; preds = %13, %33
  %21 = phi i64 [ 0, %13 ], [ %44, %33 ]
  %22 = phi double [ 0.000000e+00, %13 ], [ %43, %33 ]
  %23 = load ptr, ptr %15, align 8, !tbaa !64
  %24 = getelementptr inbounds %"class.dealii::Point.10", ptr %23, i64 %21
  br label %25

25:                                               ; preds = %20, %25
  %26 = phi i64 [ 0, %20 ], [ %31, %25 ]
  %27 = phi double [ 0.000000e+00, %20 ], [ %30, %25 ]
  %28 = getelementptr inbounds [2 x double], ptr %24, i64 0, i64 %26
  %29 = load double, ptr %28, align 8, !tbaa !38
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %29, double %27)
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %26, 0
  br i1 %32, label %25, label %33, !llvm.loop !61

33:                                               ; preds = %25
  %34 = load double, ptr %24, align 8, !tbaa !38
  %35 = load double, ptr %1, align 8, !tbaa !38
  %36 = getelementptr inbounds [2 x double], ptr %24, i64 0, i64 1
  %37 = load double, ptr %36, align 8, !tbaa !38
  %38 = load double, ptr %16, align 8, !tbaa !38
  %39 = fmul double %37, %38
  %40 = tail call noundef double @llvm.fmuladd.f64(double %34, double %35, double %39)
  %41 = tail call double @cos(double noundef %40) #23
  %42 = fneg double %30
  %43 = tail call double @llvm.fmuladd.f64(double %42, double %41, double %22)
  %44 = add nuw nsw i64 %21, 1
  %45 = icmp eq i64 %44, %17
  br i1 %45, label %18, label %20, !llvm.loop !241
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi3EEC2ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat($_ZN6dealii9Functions16FourierCosineSumILi3EEC5ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = load ptr, ptr %1, align 8, !tbaa !77
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  %13 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %14 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %15 = icmp eq ptr %7, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %15, label %26, label %16, !prof !242

16:                                               ; preds = %3
  %17 = icmp ugt i64 %12, 384307168202282325
  br i1 %17, label %18, label %24, !prof !243

18:                                               ; preds = %16
  %19 = icmp ugt i64 %12, 768614336404564650
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %21 unwind label %81

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %18
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %23 unwind label %81

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %16
  %25 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #25
          to label %26 unwind label %81

26:                                               ; preds = %24, %3
  %27 = phi ptr [ null, %3 ], [ %25, %24 ]
  store ptr %27, ptr %5, align 8, !tbaa !77
  store ptr %27, ptr %13, align 8, !tbaa !75
  %28 = getelementptr inbounds %"class.dealii::Point.22", ptr %27, i64 %12
  store ptr %28, ptr %14, align 8, !tbaa !244
  %29 = load ptr, ptr %1, align 8, !tbaa !218
  %30 = load ptr, ptr %6, align 8, !tbaa !218
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %46, label %32, !prof !245

32:                                               ; preds = %26, %42
  %33 = phi ptr [ %44, %42 ], [ %27, %26 ]
  %34 = phi ptr [ %43, %42 ], [ %29, %26 ]
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ 0, %32 ], [ %40, %35 ]
  %37 = getelementptr inbounds [3 x double], ptr %34, i64 0, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !38
  %39 = getelementptr inbounds [3 x double], ptr %33, i64 0, i64 %36
  store double %38, ptr %39, align 8, !tbaa !38
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %35, !prof !246, !llvm.loop !191

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"class.dealii::Point.22", ptr %34, i64 1
  %44 = getelementptr inbounds %"class.dealii::Point.22", ptr %33, i64 1
  %45 = icmp eq ptr %43, %30
  br i1 %45, label %46, label %32, !prof !247, !llvm.loop !248

46:                                               ; preds = %42, %26
  %47 = phi ptr [ %27, %26 ], [ %44, %42 ]
  store ptr %47, ptr %13, align 8, !tbaa !75
  %48 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2
  %49 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !214
  %51 = load ptr, ptr %2, align 8, !tbaa !46
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %57 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %58 = icmp eq ptr %50, %51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  br i1 %58, label %69, label %59, !prof !215

59:                                               ; preds = %46
  %60 = icmp ugt i64 %55, 1152921504606846975
  br i1 %60, label %61, label %67, !prof !216

61:                                               ; preds = %59
  %62 = icmp ugt i64 %55, 2305843009213693951
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %64 unwind label %83

64:                                               ; preds = %63
  unreachable

65:                                               ; preds = %61
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %66 unwind label %83

66:                                               ; preds = %65
  unreachable

67:                                               ; preds = %59
  %68 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #25
          to label %69 unwind label %83

69:                                               ; preds = %67, %46
  %70 = phi ptr [ null, %46 ], [ %68, %67 ]
  store ptr %70, ptr %48, align 8, !tbaa !46
  store ptr %70, ptr %56, align 8, !tbaa !214
  %71 = getelementptr inbounds double, ptr %70, i64 %55
  store ptr %71, ptr %57, align 8, !tbaa !217
  %72 = load ptr, ptr %2, align 8, !tbaa !218
  %73 = load ptr, ptr %49, align 8, !tbaa !218
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %72 to i64
  %76 = sub i64 %74, %75
  %77 = icmp eq ptr %73, %72
  br i1 %77, label %79, label %78, !prof !215

78:                                               ; preds = %69
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %70, ptr align 8 %72, i64 %76, i1 false), !prof !219
  br label %79

79:                                               ; preds = %69, %78
  %80 = getelementptr inbounds i8, ptr %70, i64 %76
  store ptr %80, ptr %56, align 8, !tbaa !214
  ret void

81:                                               ; preds = %24, %22, %20
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %88

83:                                               ; preds = %67, %65, %63
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load ptr, ptr %5, align 8, !tbaa !77
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @_ZdlPv(ptr noundef %85) #26
  br label %88

88:                                               ; preds = %87, %83, %81
  %89 = phi { ptr, i32 } [ %82, %81 ], [ %84, %83 ], [ %84, %87 ]
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  resume { ptr, i32 } %89
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %17 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %18 = and i64 %14, 4294967295
  br label %21

19:                                               ; preds = %21, %3
  %20 = phi double [ 0.000000e+00, %3 ], [ %41, %21 ]
  ret double %20

21:                                               ; preds = %13, %21
  %22 = phi i64 [ 0, %13 ], [ %42, %21 ]
  %23 = phi double [ 0.000000e+00, %13 ], [ %41, %21 ]
  %24 = load ptr, ptr %4, align 8, !tbaa !46
  %25 = getelementptr inbounds double, ptr %24, i64 %22
  %26 = load double, ptr %25, align 8, !tbaa !38
  %27 = load ptr, ptr %15, align 8, !tbaa !77
  %28 = getelementptr inbounds %"class.dealii::Point.22", ptr %27, i64 %22
  %29 = load double, ptr %28, align 8, !tbaa !38
  %30 = load double, ptr %1, align 8, !tbaa !38
  %31 = getelementptr inbounds [3 x double], ptr %28, i64 0, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !38
  %33 = load double, ptr %16, align 8, !tbaa !38
  %34 = fmul double %32, %33
  %35 = tail call double @llvm.fmuladd.f64(double %29, double %30, double %34)
  %36 = getelementptr inbounds [3 x double], ptr %28, i64 0, i64 2
  %37 = load double, ptr %36, align 8, !tbaa !38
  %38 = load double, ptr %17, align 8, !tbaa !38
  %39 = tail call noundef double @llvm.fmuladd.f64(double %37, double %38, double %35)
  %40 = tail call double @cos(double noundef %39) #23
  %41 = tail call double @llvm.fmuladd.f64(double %26, double %40, double %23)
  %42 = add nuw nsw i64 %22, 1
  %43 = icmp eq i64 %42, %18
  br i1 %43, label %19, label %21, !llvm.loop !249
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16FourierCosineSumILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.22", align 8
  %6 = alloca %"class.dealii::Point.22", align 8
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !38
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = lshr exact i64 %13, 3
  %18 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %20 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %21 = and i64 %17, 4294967295
  br label %23

22:                                               ; preds = %56, %4
  ret void

23:                                               ; preds = %16, %56
  %24 = phi i64 [ 0, %16 ], [ %57, %56 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %25 = load ptr, ptr %18, align 8, !tbaa !77
  %26 = getelementptr inbounds %"class.dealii::Point.22", ptr %25, i64 %24
  %27 = load double, ptr %26, align 8, !tbaa !38
  %28 = load double, ptr %2, align 8, !tbaa !38
  %29 = getelementptr inbounds [3 x double], ptr %26, i64 0, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !38
  %31 = load double, ptr %19, align 8, !tbaa !38
  %32 = fmul double %30, %31
  %33 = tail call double @llvm.fmuladd.f64(double %27, double %28, double %32)
  %34 = getelementptr inbounds [3 x double], ptr %26, i64 0, i64 2
  %35 = load double, ptr %34, align 8, !tbaa !38
  %36 = load double, ptr %20, align 8, !tbaa !38
  %37 = tail call noundef double @llvm.fmuladd.f64(double %35, double %36, double %33)
  %38 = tail call double @sin(double noundef %37) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23, !noalias !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 24, i1 false), !tbaa !38, !noalias !250
  br label %39

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %44, %39 ]
  %41 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %40
  %42 = load double, ptr %41, align 8, !tbaa !38, !noalias !250
  %43 = fmul double %38, %42
  store double %43, ptr %41, align 8, !tbaa !38, !noalias !250
  %44 = add nuw nsw i64 %40, 1
  %45 = icmp eq i64 %44, 3
  br i1 %45, label %46, label %39, !llvm.loop !79

46:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa !38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23, !noalias !250
  br label %47

47:                                               ; preds = %46, %47
  %48 = phi i64 [ 0, %46 ], [ %54, %47 ]
  %49 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !38
  %51 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %48
  %52 = load double, ptr %51, align 8, !tbaa !38
  %53 = fsub double %52, %50
  store double %53, ptr %51, align 8, !tbaa !38
  %54 = add nuw nsw i64 %48, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %56, label %47, !llvm.loop !253

56:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  %57 = add nuw nsw i64 %24, 1
  %58 = icmp eq i64 %57, %21
  br i1 %58, label %22, label %23, !llvm.loop !254
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16FourierCosineSumILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %17 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %18 = and i64 %14, 4294967295
  br label %21

19:                                               ; preds = %34, %3
  %20 = phi double [ 0.000000e+00, %3 ], [ %48, %34 ]
  ret double %20

21:                                               ; preds = %13, %34
  %22 = phi i64 [ 0, %13 ], [ %49, %34 ]
  %23 = phi double [ 0.000000e+00, %13 ], [ %48, %34 ]
  %24 = load ptr, ptr %15, align 8, !tbaa !77
  %25 = getelementptr inbounds %"class.dealii::Point.22", ptr %24, i64 %22
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ 0, %21 ], [ %32, %26 ]
  %28 = phi double [ 0.000000e+00, %21 ], [ %31, %26 ]
  %29 = getelementptr inbounds [3 x double], ptr %25, i64 0, i64 %27
  %30 = load double, ptr %29, align 8, !tbaa !38
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %28)
  %32 = add nuw nsw i64 %27, 1
  %33 = icmp eq i64 %32, 3
  br i1 %33, label %34, label %26, !llvm.loop !74

34:                                               ; preds = %26
  %35 = load double, ptr %25, align 8, !tbaa !38
  %36 = load double, ptr %1, align 8, !tbaa !38
  %37 = getelementptr inbounds [3 x double], ptr %25, i64 0, i64 1
  %38 = load double, ptr %37, align 8, !tbaa !38
  %39 = load double, ptr %16, align 8, !tbaa !38
  %40 = fmul double %38, %39
  %41 = tail call double @llvm.fmuladd.f64(double %35, double %36, double %40)
  %42 = getelementptr inbounds [3 x double], ptr %25, i64 0, i64 2
  %43 = load double, ptr %42, align 8, !tbaa !38
  %44 = load double, ptr %17, align 8, !tbaa !38
  %45 = tail call noundef double @llvm.fmuladd.f64(double %43, double %44, double %41)
  %46 = tail call double @cos(double noundef %45) #23
  %47 = fneg double %31
  %48 = tail call double @llvm.fmuladd.f64(double %47, double %46, double %23)
  %49 = add nuw nsw i64 %22, 1
  %50 = icmp eq i64 %49, %18
  br i1 %50, label %19, label %21, !llvm.loop !255
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi1EEC2ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat($_ZN6dealii9Functions14FourierSineSumILi1EEC5ERKSt6vectorINS_5PointILi1EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIN6dealii5PointILi1EEESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %6 unwind label %40

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = load ptr, ptr %2, align 8, !tbaa !46
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %16 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %17 = icmp eq ptr %9, %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %17, label %28, label %18, !prof !215

18:                                               ; preds = %6
  %19 = icmp ugt i64 %14, 1152921504606846975
  br i1 %19, label %20, label %26, !prof !216

20:                                               ; preds = %18
  %21 = icmp ugt i64 %14, 2305843009213693951
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %23 unwind label %42

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %20
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %25 unwind label %42

25:                                               ; preds = %24
  unreachable

26:                                               ; preds = %18
  %27 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #25
          to label %28 unwind label %42

28:                                               ; preds = %26, %6
  %29 = phi ptr [ null, %6 ], [ %27, %26 ]
  store ptr %29, ptr %7, align 8, !tbaa !46
  store ptr %29, ptr %15, align 8, !tbaa !214
  %30 = getelementptr inbounds double, ptr %29, i64 %14
  store ptr %30, ptr %16, align 8, !tbaa !217
  %31 = load ptr, ptr %2, align 8, !tbaa !218
  %32 = load ptr, ptr %8, align 8, !tbaa !218
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %31 to i64
  %35 = sub i64 %33, %34
  %36 = icmp eq ptr %32, %31
  br i1 %36, label %38, label %37, !prof !215

37:                                               ; preds = %28
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %29, ptr align 8 %31, i64 %35, i1 false), !prof !219
  br label %38

38:                                               ; preds = %28, %37
  %39 = getelementptr inbounds i8, ptr %29, i64 %35
  store ptr %39, ptr %15, align 8, !tbaa !214
  ret void

40:                                               ; preds = %3
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %47

42:                                               ; preds = %26, %24, %22
  %43 = landingpad { ptr, i32 }
          cleanup
  %44 = load ptr, ptr %5, align 8, !tbaa !45
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @_ZdlPv(ptr noundef %44) #26
  br label %47

47:                                               ; preds = %46, %42, %40
  %48 = phi { ptr, i32 } [ %41, %40 ], [ %43, %42 ], [ %43, %46 ]
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  resume { ptr, i32 } %48
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 1
  %16 = and i64 %14, 4294967295
  br label %19

17:                                               ; preds = %19, %3
  %18 = phi double [ 0.000000e+00, %3 ], [ %31, %19 ]
  ret double %18

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %32, %19 ]
  %21 = phi double [ 0.000000e+00, %13 ], [ %31, %19 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !46
  %23 = getelementptr inbounds double, ptr %22, i64 %20
  %24 = load double, ptr %23, align 8, !tbaa !38
  %25 = load ptr, ptr %15, align 8, !tbaa !45
  %26 = getelementptr inbounds %"class.dealii::Point", ptr %25, i64 %20
  %27 = load double, ptr %26, align 8, !tbaa !38
  %28 = load double, ptr %1, align 8, !tbaa !38
  %29 = fmul double %27, %28
  %30 = tail call double @sin(double noundef %29) #23
  %31 = tail call double @llvm.fmuladd.f64(double %24, double %30, double %21)
  %32 = add nuw nsw i64 %20, 1
  %33 = icmp eq i64 %32, %16
  br i1 %33, label %17, label %19, !llvm.loop !256
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14FourierSineSumILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %1, i64 0, i32 2
  %6 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !214
  %8 = load ptr, ptr %5, align 8, !tbaa !46
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  store double 0.000000e+00, ptr %0, align 8, !tbaa !38
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = lshr exact i64 %11, 3
  %16 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %1, i64 0, i32 1
  %17 = and i64 %15, 4294967295
  br label %20

18:                                               ; preds = %20, %4
  %19 = phi double [ 0.000000e+00, %4 ], [ %31, %20 ]
  store double %19, ptr %0, align 8, !tbaa !38
  ret void

20:                                               ; preds = %14, %20
  %21 = phi i64 [ 0, %14 ], [ %32, %20 ]
  %22 = phi double [ 0.000000e+00, %14 ], [ %31, %20 ]
  %23 = load ptr, ptr %16, align 8, !tbaa !45
  %24 = getelementptr inbounds %"class.dealii::Point", ptr %23, i64 %21
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = load double, ptr %2, align 8, !tbaa !38
  %27 = fmul double %25, %26
  %28 = tail call double @cos(double noundef %27) #23
  %29 = load double, ptr %24, align 8, !tbaa !38, !noalias !257
  %30 = fmul double %28, %29
  %31 = fadd double %22, %30
  %32 = add nuw nsw i64 %21, 1
  %33 = icmp eq i64 %32, %17
  br i1 %33, label %18, label %20, !llvm.loop !260
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 1
  %16 = and i64 %14, 4294967295
  br label %19

17:                                               ; preds = %19, %3
  %18 = phi double [ 0.000000e+00, %3 ], [ %30, %19 ]
  ret double %18

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %31, %19 ]
  %21 = phi double [ 0.000000e+00, %13 ], [ %30, %19 ]
  %22 = load ptr, ptr %15, align 8, !tbaa !45
  %23 = getelementptr inbounds %"class.dealii::Point", ptr %22, i64 %20
  %24 = load double, ptr %23, align 8, !tbaa !38
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %24, double 0.000000e+00)
  %26 = load double, ptr %1, align 8, !tbaa !38
  %27 = fmul double %24, %26
  %28 = tail call double @sin(double noundef %27) #23
  %29 = fneg double %25
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %28, double %21)
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, %16
  br i1 %32, label %17, label %19, !llvm.loop !261
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi2EEC2ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat($_ZN6dealii9Functions14FourierSineSumILi2EEC5ERKSt6vectorINS_5PointILi2EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = load ptr, ptr %1, align 8, !tbaa !64
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 4
  %13 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %14 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %15 = icmp eq ptr %7, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %15, label %26, label %16, !prof !228

16:                                               ; preds = %3
  %17 = icmp ugt i64 %12, 576460752303423487
  br i1 %17, label %18, label %24, !prof !229

18:                                               ; preds = %16
  %19 = icmp ugt i64 %12, 1152921504606846975
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %21 unwind label %81

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %18
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %23 unwind label %81

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %16
  %25 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #25
          to label %26 unwind label %81

26:                                               ; preds = %24, %3
  %27 = phi ptr [ null, %3 ], [ %25, %24 ]
  store ptr %27, ptr %5, align 8, !tbaa !64
  store ptr %27, ptr %13, align 8, !tbaa !62
  %28 = getelementptr inbounds %"class.dealii::Point.10", ptr %27, i64 %12
  store ptr %28, ptr %14, align 8, !tbaa !230
  %29 = load ptr, ptr %1, align 8, !tbaa !218
  %30 = load ptr, ptr %6, align 8, !tbaa !218
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %46, label %32, !prof !231

32:                                               ; preds = %26, %42
  %33 = phi ptr [ %44, %42 ], [ %27, %26 ]
  %34 = phi ptr [ %43, %42 ], [ %29, %26 ]
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ 0, %32 ], [ %40, %35 ]
  %37 = getelementptr inbounds [2 x double], ptr %34, i64 0, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !38
  %39 = getelementptr inbounds [2 x double], ptr %33, i64 0, i64 %36
  store double %38, ptr %39, align 8, !tbaa !38
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %36, 0
  br i1 %41, label %35, label %42, !prof !232, !llvm.loop !180

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"class.dealii::Point.10", ptr %34, i64 1
  %44 = getelementptr inbounds %"class.dealii::Point.10", ptr %33, i64 1
  %45 = icmp eq ptr %43, %30
  br i1 %45, label %46, label %32, !prof !233, !llvm.loop !234

46:                                               ; preds = %42, %26
  %47 = phi ptr [ %27, %26 ], [ %44, %42 ]
  store ptr %47, ptr %13, align 8, !tbaa !62
  %48 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2
  %49 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !214
  %51 = load ptr, ptr %2, align 8, !tbaa !46
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %57 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %58 = icmp eq ptr %50, %51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  br i1 %58, label %69, label %59, !prof !215

59:                                               ; preds = %46
  %60 = icmp ugt i64 %55, 1152921504606846975
  br i1 %60, label %61, label %67, !prof !216

61:                                               ; preds = %59
  %62 = icmp ugt i64 %55, 2305843009213693951
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %64 unwind label %83

64:                                               ; preds = %63
  unreachable

65:                                               ; preds = %61
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %66 unwind label %83

66:                                               ; preds = %65
  unreachable

67:                                               ; preds = %59
  %68 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #25
          to label %69 unwind label %83

69:                                               ; preds = %67, %46
  %70 = phi ptr [ null, %46 ], [ %68, %67 ]
  store ptr %70, ptr %48, align 8, !tbaa !46
  store ptr %70, ptr %56, align 8, !tbaa !214
  %71 = getelementptr inbounds double, ptr %70, i64 %55
  store ptr %71, ptr %57, align 8, !tbaa !217
  %72 = load ptr, ptr %2, align 8, !tbaa !218
  %73 = load ptr, ptr %49, align 8, !tbaa !218
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %72 to i64
  %76 = sub i64 %74, %75
  %77 = icmp eq ptr %73, %72
  br i1 %77, label %79, label %78, !prof !215

78:                                               ; preds = %69
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %70, ptr align 8 %72, i64 %76, i1 false), !prof !219
  br label %79

79:                                               ; preds = %69, %78
  %80 = getelementptr inbounds i8, ptr %70, i64 %76
  store ptr %80, ptr %56, align 8, !tbaa !214
  ret void

81:                                               ; preds = %24, %22, %20
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %88

83:                                               ; preds = %67, %65, %63
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load ptr, ptr %5, align 8, !tbaa !64
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @_ZdlPv(ptr noundef %85) #26
  br label %88

88:                                               ; preds = %87, %83, %81
  %89 = phi { ptr, i32 } [ %82, %81 ], [ %84, %83 ], [ %84, %87 ]
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  resume { ptr, i32 } %89
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %17 = and i64 %14, 4294967295
  br label %20

18:                                               ; preds = %20, %3
  %19 = phi double [ 0.000000e+00, %3 ], [ %36, %20 ]
  ret double %19

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 0, %13 ], [ %37, %20 ]
  %22 = phi double [ 0.000000e+00, %13 ], [ %36, %20 ]
  %23 = load ptr, ptr %4, align 8, !tbaa !46
  %24 = getelementptr inbounds double, ptr %23, i64 %21
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = load ptr, ptr %15, align 8, !tbaa !64
  %27 = getelementptr inbounds %"class.dealii::Point.10", ptr %26, i64 %21
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = load double, ptr %1, align 8, !tbaa !38
  %30 = getelementptr inbounds [2 x double], ptr %27, i64 0, i64 1
  %31 = load double, ptr %30, align 8, !tbaa !38
  %32 = load double, ptr %16, align 8, !tbaa !38
  %33 = fmul double %31, %32
  %34 = tail call noundef double @llvm.fmuladd.f64(double %28, double %29, double %33)
  %35 = tail call double @sin(double noundef %34) #23
  %36 = tail call double @llvm.fmuladd.f64(double %25, double %35, double %22)
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp eq i64 %37, %17
  br i1 %38, label %18, label %20, !llvm.loop !262
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14FourierSineSumILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.10", align 8
  %6 = alloca %"class.dealii::Point.10", align 8
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = lshr exact i64 %13, 3
  %18 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %20 = and i64 %17, 4294967295
  br label %22

21:                                               ; preds = %51, %4
  ret void

22:                                               ; preds = %16, %51
  %23 = phi i64 [ 0, %16 ], [ %52, %51 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %24 = load ptr, ptr %18, align 8, !tbaa !64
  %25 = getelementptr inbounds %"class.dealii::Point.10", ptr %24, i64 %23
  %26 = load double, ptr %25, align 8, !tbaa !38
  %27 = load double, ptr %2, align 8, !tbaa !38
  %28 = getelementptr inbounds [2 x double], ptr %25, i64 0, i64 1
  %29 = load double, ptr %28, align 8, !tbaa !38
  %30 = load double, ptr %19, align 8, !tbaa !38
  %31 = fmul double %29, %30
  %32 = tail call noundef double @llvm.fmuladd.f64(double %26, double %27, double %31)
  %33 = tail call double @cos(double noundef %32) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23, !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa !38, !noalias !263
  br label %34

34:                                               ; preds = %22, %34
  %35 = phi i64 [ 0, %22 ], [ %39, %34 ]
  %36 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %35
  %37 = load double, ptr %36, align 8, !tbaa !38, !noalias !263
  %38 = fmul double %33, %37
  store double %38, ptr %36, align 8, !tbaa !38, !noalias !263
  %39 = add nuw nsw i64 %35, 1
  %40 = icmp eq i64 %35, 0
  br i1 %40, label %34, label %41, !llvm.loop !66

41:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa !38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23, !noalias !263
  br label %42

42:                                               ; preds = %41, %42
  %43 = phi i64 [ 0, %41 ], [ %49, %42 ]
  %44 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !38
  %46 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %43
  %47 = load double, ptr %46, align 8, !tbaa !38
  %48 = fadd double %45, %47
  store double %48, ptr %46, align 8, !tbaa !38
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %43, 0
  br i1 %50, label %42, label %51, !llvm.loop !266

51:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  %52 = add nuw nsw i64 %23, 1
  %53 = icmp eq i64 %52, %20
  br i1 %53, label %21, label %22, !llvm.loop !267
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %17 = and i64 %14, 4294967295
  br label %20

18:                                               ; preds = %33, %3
  %19 = phi double [ 0.000000e+00, %3 ], [ %43, %33 ]
  ret double %19

20:                                               ; preds = %13, %33
  %21 = phi i64 [ 0, %13 ], [ %44, %33 ]
  %22 = phi double [ 0.000000e+00, %13 ], [ %43, %33 ]
  %23 = load ptr, ptr %15, align 8, !tbaa !64
  %24 = getelementptr inbounds %"class.dealii::Point.10", ptr %23, i64 %21
  br label %25

25:                                               ; preds = %20, %25
  %26 = phi i64 [ 0, %20 ], [ %31, %25 ]
  %27 = phi double [ 0.000000e+00, %20 ], [ %30, %25 ]
  %28 = getelementptr inbounds [2 x double], ptr %24, i64 0, i64 %26
  %29 = load double, ptr %28, align 8, !tbaa !38
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %29, double %27)
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %26, 0
  br i1 %32, label %25, label %33, !llvm.loop !61

33:                                               ; preds = %25
  %34 = load double, ptr %24, align 8, !tbaa !38
  %35 = load double, ptr %1, align 8, !tbaa !38
  %36 = getelementptr inbounds [2 x double], ptr %24, i64 0, i64 1
  %37 = load double, ptr %36, align 8, !tbaa !38
  %38 = load double, ptr %16, align 8, !tbaa !38
  %39 = fmul double %37, %38
  %40 = tail call noundef double @llvm.fmuladd.f64(double %34, double %35, double %39)
  %41 = tail call double @sin(double noundef %40) #23
  %42 = fneg double %30
  %43 = tail call double @llvm.fmuladd.f64(double %42, double %41, double %22)
  %44 = add nuw nsw i64 %21, 1
  %45 = icmp eq i64 %44, %17
  br i1 %45, label %18, label %20, !llvm.loop !268
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi3EEC2ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 comdat($_ZN6dealii9Functions14FourierSineSumILi3EEC5ERKSt6vectorINS_5PointILi3EEESaIS5_EERKS3_IdSaIdEE) align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef 1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = load ptr, ptr %1, align 8, !tbaa !77
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  %13 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %14 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %15 = icmp eq ptr %7, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %15, label %26, label %16, !prof !242

16:                                               ; preds = %3
  %17 = icmp ugt i64 %12, 384307168202282325
  br i1 %17, label %18, label %24, !prof !243

18:                                               ; preds = %16
  %19 = icmp ugt i64 %12, 768614336404564650
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %21 unwind label %81

21:                                               ; preds = %20
  unreachable

22:                                               ; preds = %18
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %23 unwind label %81

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %16
  %25 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #25
          to label %26 unwind label %81

26:                                               ; preds = %24, %3
  %27 = phi ptr [ null, %3 ], [ %25, %24 ]
  store ptr %27, ptr %5, align 8, !tbaa !77
  store ptr %27, ptr %13, align 8, !tbaa !75
  %28 = getelementptr inbounds %"class.dealii::Point.22", ptr %27, i64 %12
  store ptr %28, ptr %14, align 8, !tbaa !244
  %29 = load ptr, ptr %1, align 8, !tbaa !218
  %30 = load ptr, ptr %6, align 8, !tbaa !218
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %46, label %32, !prof !245

32:                                               ; preds = %26, %42
  %33 = phi ptr [ %44, %42 ], [ %27, %26 ]
  %34 = phi ptr [ %43, %42 ], [ %29, %26 ]
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ 0, %32 ], [ %40, %35 ]
  %37 = getelementptr inbounds [3 x double], ptr %34, i64 0, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !38
  %39 = getelementptr inbounds [3 x double], ptr %33, i64 0, i64 %36
  store double %38, ptr %39, align 8, !tbaa !38
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %35, !prof !246, !llvm.loop !191

42:                                               ; preds = %35
  %43 = getelementptr inbounds %"class.dealii::Point.22", ptr %34, i64 1
  %44 = getelementptr inbounds %"class.dealii::Point.22", ptr %33, i64 1
  %45 = icmp eq ptr %43, %30
  br i1 %45, label %46, label %32, !prof !247, !llvm.loop !248

46:                                               ; preds = %42, %26
  %47 = phi ptr [ %27, %26 ], [ %44, %42 ]
  store ptr %47, ptr %13, align 8, !tbaa !75
  %48 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2
  %49 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !214
  %51 = load ptr, ptr %2, align 8, !tbaa !46
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = ashr exact i64 %54, 3
  %56 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %57 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %58 = icmp eq ptr %50, %51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  br i1 %58, label %69, label %59, !prof !215

59:                                               ; preds = %46
  %60 = icmp ugt i64 %55, 1152921504606846975
  br i1 %60, label %61, label %67, !prof !216

61:                                               ; preds = %59
  %62 = icmp ugt i64 %55, 2305843009213693951
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %64 unwind label %83

64:                                               ; preds = %63
  unreachable

65:                                               ; preds = %61
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %66 unwind label %83

66:                                               ; preds = %65
  unreachable

67:                                               ; preds = %59
  %68 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %54) #25
          to label %69 unwind label %83

69:                                               ; preds = %67, %46
  %70 = phi ptr [ null, %46 ], [ %68, %67 ]
  store ptr %70, ptr %48, align 8, !tbaa !46
  store ptr %70, ptr %56, align 8, !tbaa !214
  %71 = getelementptr inbounds double, ptr %70, i64 %55
  store ptr %71, ptr %57, align 8, !tbaa !217
  %72 = load ptr, ptr %2, align 8, !tbaa !218
  %73 = load ptr, ptr %49, align 8, !tbaa !218
  %74 = ptrtoint ptr %73 to i64
  %75 = ptrtoint ptr %72 to i64
  %76 = sub i64 %74, %75
  %77 = icmp eq ptr %73, %72
  br i1 %77, label %79, label %78, !prof !215

78:                                               ; preds = %69
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %70, ptr align 8 %72, i64 %76, i1 false), !prof !219
  br label %79

79:                                               ; preds = %69, %78
  %80 = getelementptr inbounds i8, ptr %70, i64 %76
  store ptr %80, ptr %56, align 8, !tbaa !214
  ret void

81:                                               ; preds = %24, %22, %20
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %88

83:                                               ; preds = %67, %65, %63
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load ptr, ptr %5, align 8, !tbaa !77
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @_ZdlPv(ptr noundef %85) #26
  br label %88

88:                                               ; preds = %87, %83, %81
  %89 = phi { ptr, i32 } [ %82, %81 ], [ %84, %83 ], [ %84, %87 ]
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  resume { ptr, i32 } %89
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %17 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %18 = and i64 %14, 4294967295
  br label %21

19:                                               ; preds = %21, %3
  %20 = phi double [ 0.000000e+00, %3 ], [ %41, %21 ]
  ret double %20

21:                                               ; preds = %13, %21
  %22 = phi i64 [ 0, %13 ], [ %42, %21 ]
  %23 = phi double [ 0.000000e+00, %13 ], [ %41, %21 ]
  %24 = load ptr, ptr %4, align 8, !tbaa !46
  %25 = getelementptr inbounds double, ptr %24, i64 %22
  %26 = load double, ptr %25, align 8, !tbaa !38
  %27 = load ptr, ptr %15, align 8, !tbaa !77
  %28 = getelementptr inbounds %"class.dealii::Point.22", ptr %27, i64 %22
  %29 = load double, ptr %28, align 8, !tbaa !38
  %30 = load double, ptr %1, align 8, !tbaa !38
  %31 = getelementptr inbounds [3 x double], ptr %28, i64 0, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !38
  %33 = load double, ptr %16, align 8, !tbaa !38
  %34 = fmul double %32, %33
  %35 = tail call double @llvm.fmuladd.f64(double %29, double %30, double %34)
  %36 = getelementptr inbounds [3 x double], ptr %28, i64 0, i64 2
  %37 = load double, ptr %36, align 8, !tbaa !38
  %38 = load double, ptr %17, align 8, !tbaa !38
  %39 = tail call noundef double @llvm.fmuladd.f64(double %37, double %38, double %35)
  %40 = tail call double @sin(double noundef %39) #23
  %41 = tail call double @llvm.fmuladd.f64(double %26, double %40, double %23)
  %42 = add nuw nsw i64 %22, 1
  %43 = icmp eq i64 %42, %18
  br i1 %43, label %19, label %21, !llvm.loop !269
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions14FourierSineSumILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = alloca %"class.dealii::Point.22", align 8
  %6 = alloca %"class.dealii::Point.22", align 8
  %7 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !38
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = lshr exact i64 %13, 3
  %18 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %20 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %21 = and i64 %17, 4294967295
  br label %23

22:                                               ; preds = %56, %4
  ret void

23:                                               ; preds = %16, %56
  %24 = phi i64 [ 0, %16 ], [ %57, %56 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %25 = load ptr, ptr %18, align 8, !tbaa !77
  %26 = getelementptr inbounds %"class.dealii::Point.22", ptr %25, i64 %24
  %27 = load double, ptr %26, align 8, !tbaa !38
  %28 = load double, ptr %2, align 8, !tbaa !38
  %29 = getelementptr inbounds [3 x double], ptr %26, i64 0, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !38
  %31 = load double, ptr %19, align 8, !tbaa !38
  %32 = fmul double %30, %31
  %33 = tail call double @llvm.fmuladd.f64(double %27, double %28, double %32)
  %34 = getelementptr inbounds [3 x double], ptr %26, i64 0, i64 2
  %35 = load double, ptr %34, align 8, !tbaa !38
  %36 = load double, ptr %20, align 8, !tbaa !38
  %37 = tail call noundef double @llvm.fmuladd.f64(double %35, double %36, double %33)
  %38 = tail call double @cos(double noundef %37) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23, !noalias !270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 24, i1 false), !tbaa !38, !noalias !270
  br label %39

39:                                               ; preds = %23, %39
  %40 = phi i64 [ 0, %23 ], [ %44, %39 ]
  %41 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %40
  %42 = load double, ptr %41, align 8, !tbaa !38, !noalias !270
  %43 = fmul double %38, %42
  store double %43, ptr %41, align 8, !tbaa !38, !noalias !270
  %44 = add nuw nsw i64 %40, 1
  %45 = icmp eq i64 %44, 3
  br i1 %45, label %46, label %39, !llvm.loop !79

46:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa !38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23, !noalias !270
  br label %47

47:                                               ; preds = %46, %47
  %48 = phi i64 [ 0, %46 ], [ %54, %47 ]
  %49 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !38
  %51 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %48
  %52 = load double, ptr %51, align 8, !tbaa !38
  %53 = fadd double %50, %52
  store double %53, ptr %51, align 8, !tbaa !38
  %54 = add nuw nsw i64 %48, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %56, label %47, !llvm.loop !273

56:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  %57 = add nuw nsw i64 %24, 1
  %58 = icmp eq i64 %57, %21
  br i1 %58, label %22, label %23, !llvm.loop !274
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions14FourierSineSumILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = and i64 %10, 34359738360
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = lshr exact i64 %10, 3
  %15 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %17 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %18 = and i64 %14, 4294967295
  br label %21

19:                                               ; preds = %34, %3
  %20 = phi double [ 0.000000e+00, %3 ], [ %48, %34 ]
  ret double %20

21:                                               ; preds = %13, %34
  %22 = phi i64 [ 0, %13 ], [ %49, %34 ]
  %23 = phi double [ 0.000000e+00, %13 ], [ %48, %34 ]
  %24 = load ptr, ptr %15, align 8, !tbaa !77
  %25 = getelementptr inbounds %"class.dealii::Point.22", ptr %24, i64 %22
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ 0, %21 ], [ %32, %26 ]
  %28 = phi double [ 0.000000e+00, %21 ], [ %31, %26 ]
  %29 = getelementptr inbounds [3 x double], ptr %25, i64 0, i64 %27
  %30 = load double, ptr %29, align 8, !tbaa !38
  %31 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %28)
  %32 = add nuw nsw i64 %27, 1
  %33 = icmp eq i64 %32, 3
  br i1 %33, label %34, label %26, !llvm.loop !74

34:                                               ; preds = %26
  %35 = load double, ptr %25, align 8, !tbaa !38
  %36 = load double, ptr %1, align 8, !tbaa !38
  %37 = getelementptr inbounds [3 x double], ptr %25, i64 0, i64 1
  %38 = load double, ptr %37, align 8, !tbaa !38
  %39 = load double, ptr %16, align 8, !tbaa !38
  %40 = fmul double %38, %39
  %41 = tail call double @llvm.fmuladd.f64(double %35, double %36, double %40)
  %42 = getelementptr inbounds [3 x double], ptr %25, i64 0, i64 2
  %43 = load double, ptr %42, align 8, !tbaa !38
  %44 = load double, ptr %17, align 8, !tbaa !38
  %45 = tail call noundef double @llvm.fmuladd.f64(double %43, double %44, double %41)
  %46 = tail call double @sin(double noundef %45) #23
  %47 = fneg double %31
  %48 = tail call double @llvm.fmuladd.f64(double %47, double %46, double %23)
  %49 = add nuw nsw i64 %22, 1
  %50 = icmp eq i64 %49, %18
  br i1 %50, label %19, label %21, !llvm.loop !275
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = tail call double @atan2(double noundef %4, double noundef %6) #23
  %8 = fadd double %7, 0x400921FB54442D18
  %9 = fmul double %6, %6
  %10 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %9)
  %11 = tail call double @pow(double noundef %10, double noundef 2.500000e-01) #23
  %12 = fmul double %8, 5.000000e-01
  %13 = tail call double @sin(double noundef %12) #23
  %14 = fmul double %11, %13
  ret double %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %31, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %29, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %28, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = tail call double @atan2(double noundef %15, double noundef %17) #23
  %19 = fadd double %18, 0x400921FB54442D18
  %20 = fmul double %17, %17
  %21 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %20)
  %22 = tail call double @pow(double noundef %21, double noundef 2.500000e-01) #23
  %23 = fmul double %19, 5.000000e-01
  %24 = tail call double @sin(double noundef %23) #23
  %25 = fmul double %22, %24
  %26 = load ptr, ptr %2, align 8, !tbaa !46
  %27 = getelementptr inbounds double, ptr %26, i64 %12
  store double %25, ptr %27, align 8, !tbaa !38
  %28 = add i32 %13, 1
  %29 = zext i32 %28 to i64
  %30 = load ptr, ptr %5, align 8, !tbaa !62
  %31 = load ptr, ptr %1, align 8, !tbaa !64
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 4
  %36 = icmp ugt i64 %35, %29
  br i1 %36, label %10, label %9, !llvm.loop !276
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %31, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %29, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %28, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.10", ptr %10, i64 %11
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds [2 x double], ptr %13, i64 0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = tail call double @atan2(double noundef %14, double noundef %16) #23
  %18 = fadd double %17, 0x400921FB54442D18
  %19 = fmul double %16, %16
  %20 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %19)
  %21 = tail call double @pow(double noundef %20, double noundef 2.500000e-01) #23
  %22 = fmul double %18, 5.000000e-01
  %23 = tail call double @sin(double noundef %22) #23
  %24 = fmul double %21, %23
  %25 = load ptr, ptr %2, align 8, !tbaa !88
  %26 = getelementptr inbounds %"class.dealii::Vector", ptr %25, i64 %11, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !90
  store double %24, ptr %27, align 8, !tbaa !38
  %28 = add i32 %12, 1
  %29 = zext i32 %28 to i64
  %30 = load ptr, ptr %4, align 8, !tbaa !62
  %31 = load ptr, ptr %1, align 8, !tbaa !64
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 4
  %36 = icmp ugt i64 %35, %29
  br i1 %36, label %9, label %8, !llvm.loop !277
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = tail call double @atan2(double noundef %5, double noundef %7) #23
  %9 = fmul double %7, %7
  %10 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %9)
  %11 = tail call double @pow(double noundef %10, double noundef 7.500000e-01) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %12 = fadd double %8, 0x400921FB54442D18
  %13 = fmul double %12, 5.000000e-01
  %14 = tail call double @sin(double noundef %13) #23
  %15 = tail call double @cos(double noundef %13) #23
  %16 = fmul double %7, %15
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %5, double %16)
  %18 = fmul double %17, 5.000000e-01
  %19 = fdiv double %18, %11
  store double %19, ptr %0, align 8, !tbaa !38
  %20 = tail call double @sin(double noundef %13) #23
  %21 = tail call double @cos(double noundef %13) #23
  %22 = fneg double %21
  %23 = fmul double %5, %22
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %7, double %23)
  %25 = fmul double %24, 5.000000e-01
  %26 = fdiv double %25, %11
  %27 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %26, ptr %27, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6TensorILi1ELi2EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %44, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %42, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %41, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = tail call double @atan2(double noundef %15, double noundef %17) #23
  %19 = fadd double %18, 0x400921FB54442D18
  %20 = fmul double %17, %17
  %21 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %20)
  %22 = tail call double @pow(double noundef %21, double noundef 7.500000e-01) #23
  %23 = fmul double %19, 5.000000e-01
  %24 = tail call double @sin(double noundef %23) #23
  %25 = tail call double @cos(double noundef %23) #23
  %26 = fmul double %17, %25
  %27 = tail call double @llvm.fmuladd.f64(double %24, double %15, double %26)
  %28 = fmul double %27, 5.000000e-01
  %29 = fdiv double %28, %22
  %30 = load ptr, ptr %2, align 8, !tbaa !67
  %31 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %30, i64 %12
  store double %29, ptr %31, align 8, !tbaa !38
  %32 = tail call double @sin(double noundef %23) #23
  %33 = tail call double @cos(double noundef %23) #23
  %34 = fneg double %33
  %35 = fmul double %15, %34
  %36 = tail call double @llvm.fmuladd.f64(double %32, double %17, double %35)
  %37 = fmul double %36, 5.000000e-01
  %38 = fdiv double %37, %22
  %39 = load ptr, ptr %2, align 8, !tbaa !67
  %40 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %39, i64 %12, i32 0, i64 1
  store double %38, ptr %40, align 8, !tbaa !38
  %41 = add i32 %13, 1
  %42 = zext i32 %41 to i64
  %43 = load ptr, ptr %5, align 8, !tbaa !62
  %44 = load ptr, ptr %1, align 8, !tbaa !64
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 4
  %49 = icmp ugt i64 %48, %42
  br i1 %49, label %10, label %9, !llvm.loop !278
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi2EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %46, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %44, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %43, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.10", ptr %10, i64 %11
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds [2 x double], ptr %13, i64 0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = tail call double @atan2(double noundef %14, double noundef %16) #23
  %18 = fadd double %17, 0x400921FB54442D18
  %19 = fmul double %16, %16
  %20 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %19)
  %21 = tail call double @pow(double noundef %20, double noundef 7.500000e-01) #23
  %22 = fmul double %18, 5.000000e-01
  %23 = tail call double @sin(double noundef %22) #23
  %24 = tail call double @cos(double noundef %22) #23
  %25 = fmul double %16, %24
  %26 = tail call double @llvm.fmuladd.f64(double %23, double %14, double %25)
  %27 = fmul double %26, 5.000000e-01
  %28 = fdiv double %27, %21
  %29 = load ptr, ptr %2, align 8, !tbaa !112
  %30 = getelementptr inbounds %"class.std::vector.17", ptr %29, i64 %11
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  store double %28, ptr %31, align 8, !tbaa !38
  %32 = tail call double @sin(double noundef %22) #23
  %33 = tail call double @cos(double noundef %22) #23
  %34 = fneg double %33
  %35 = fmul double %14, %34
  %36 = tail call double @llvm.fmuladd.f64(double %32, double %16, double %35)
  %37 = fmul double %36, 5.000000e-01
  %38 = fdiv double %37, %21
  %39 = load ptr, ptr %2, align 8, !tbaa !112
  %40 = getelementptr inbounds %"class.std::vector.17", ptr %39, i64 %11
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  %42 = getelementptr inbounds [2 x double], ptr %41, i64 0, i64 1
  store double %38, ptr %42, align 8, !tbaa !38
  %43 = add i32 %12, 1
  %44 = zext i32 %43 to i64
  %45 = load ptr, ptr %4, align 8, !tbaa !62
  %46 = load ptr, ptr %1, align 8, !tbaa !64
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = ashr exact i64 %49, 4
  %51 = icmp ugt i64 %50, %44
  br i1 %51, label %9, label %8, !llvm.loop !279
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !37 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #2 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double 0.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !280
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = tail call double @atan2(double noundef %4, double noundef %6) #23
  %8 = fadd double %7, 0x400921FB54442D18
  %9 = fmul double %6, %6
  %10 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %9)
  %11 = tail call double @pow(double noundef %10, double noundef 2.500000e-01) #23
  %12 = fmul double %8, 5.000000e-01
  %13 = tail call double @sin(double noundef %12) #23
  %14 = fmul double %11, %13
  ret double %14
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %31, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %29, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %28, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.22", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = tail call double @atan2(double noundef %15, double noundef %17) #23
  %19 = fadd double %18, 0x400921FB54442D18
  %20 = fmul double %17, %17
  %21 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %20)
  %22 = tail call double @pow(double noundef %21, double noundef 2.500000e-01) #23
  %23 = fmul double %19, 5.000000e-01
  %24 = tail call double @sin(double noundef %23) #23
  %25 = fmul double %22, %24
  %26 = load ptr, ptr %2, align 8, !tbaa !46
  %27 = getelementptr inbounds double, ptr %26, i64 %12
  store double %25, ptr %27, align 8, !tbaa !38
  %28 = add i32 %13, 1
  %29 = zext i32 %28 to i64
  %30 = load ptr, ptr %5, align 8, !tbaa !75
  %31 = load ptr, ptr %1, align 8, !tbaa !77
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 24
  %36 = icmp ugt i64 %35, %29
  br i1 %36, label %10, label %9, !llvm.loop !281
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %1, align 8, !tbaa !77
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %31, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %29, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %28, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.22", ptr %10, i64 %11
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = tail call double @atan2(double noundef %14, double noundef %16) #23
  %18 = fadd double %17, 0x400921FB54442D18
  %19 = fmul double %16, %16
  %20 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %19)
  %21 = tail call double @pow(double noundef %20, double noundef 2.500000e-01) #23
  %22 = fmul double %18, 5.000000e-01
  %23 = tail call double @sin(double noundef %22) #23
  %24 = fmul double %21, %23
  %25 = load ptr, ptr %2, align 8, !tbaa !88
  %26 = getelementptr inbounds %"class.dealii::Vector", ptr %25, i64 %11, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !90
  store double %24, ptr %27, align 8, !tbaa !38
  %28 = add i32 %12, 1
  %29 = zext i32 %28 to i64
  %30 = load ptr, ptr %4, align 8, !tbaa !75
  %31 = load ptr, ptr %1, align 8, !tbaa !77
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 24
  %36 = icmp ugt i64 %35, %29
  br i1 %36, label %9, label %8, !llvm.loop !282
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = tail call double @atan2(double noundef %5, double noundef %7) #23
  %9 = fmul double %7, %7
  %10 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %9)
  %11 = tail call double @pow(double noundef %10, double noundef 7.500000e-01) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !38
  %12 = fadd double %8, 0x400921FB54442D18
  %13 = fmul double %12, 5.000000e-01
  %14 = tail call double @sin(double noundef %13) #23
  %15 = tail call double @cos(double noundef %13) #23
  %16 = fmul double %7, %15
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %5, double %16)
  %18 = fmul double %17, 5.000000e-01
  %19 = fdiv double %18, %11
  store double %19, ptr %0, align 8, !tbaa !38
  %20 = tail call double @sin(double noundef %13) #23
  %21 = tail call double @cos(double noundef %13) #23
  %22 = fneg double %21
  %23 = fmul double %5, %22
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %7, double %23)
  %25 = fmul double %24, 5.000000e-01
  %26 = fdiv double %25, %11
  %27 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %26, ptr %27, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6TensorILi1ELi3EEESaISB_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %45, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %43, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %42, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.22", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = tail call double @atan2(double noundef %15, double noundef %17) #23
  %19 = fadd double %18, 0x400921FB54442D18
  %20 = fmul double %17, %17
  %21 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %20)
  %22 = tail call double @pow(double noundef %21, double noundef 7.500000e-01) #23
  %23 = fmul double %19, 5.000000e-01
  %24 = tail call double @sin(double noundef %23) #23
  %25 = tail call double @cos(double noundef %23) #23
  %26 = fmul double %17, %25
  %27 = tail call double @llvm.fmuladd.f64(double %24, double %15, double %26)
  %28 = fmul double %27, 5.000000e-01
  %29 = fdiv double %28, %22
  %30 = load ptr, ptr %2, align 8, !tbaa !80
  %31 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %30, i64 %12
  store double %29, ptr %31, align 8, !tbaa !38
  %32 = tail call double @sin(double noundef %23) #23
  %33 = tail call double @cos(double noundef %23) #23
  %34 = fneg double %33
  %35 = fmul double %15, %34
  %36 = tail call double @llvm.fmuladd.f64(double %32, double %17, double %35)
  %37 = fmul double %36, 5.000000e-01
  %38 = fdiv double %37, %22
  %39 = load ptr, ptr %2, align 8, !tbaa !80
  %40 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %39, i64 %12, i32 0, i64 1
  store double %38, ptr %40, align 8, !tbaa !38
  %41 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %39, i64 %12, i32 0, i64 2
  store double 0.000000e+00, ptr %41, align 8, !tbaa !38
  %42 = add i32 %13, 1
  %43 = zext i32 %42 to i64
  %44 = load ptr, ptr %5, align 8, !tbaa !75
  %45 = load ptr, ptr %1, align 8, !tbaa !77
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 24
  %50 = icmp ugt i64 %49, %43
  br i1 %50, label %10, label %9, !llvm.loop !283
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IS3_INS_6TensorILi1ELi3EEESaISB_EESaISD_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %1, align 8, !tbaa !77
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %47, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %45, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %44, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.22", ptr %10, i64 %11
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = tail call double @atan2(double noundef %14, double noundef %16) #23
  %18 = fadd double %17, 0x400921FB54442D18
  %19 = fmul double %16, %16
  %20 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %19)
  %21 = tail call double @pow(double noundef %20, double noundef 7.500000e-01) #23
  %22 = fmul double %18, 5.000000e-01
  %23 = tail call double @sin(double noundef %22) #23
  %24 = tail call double @cos(double noundef %22) #23
  %25 = fmul double %16, %24
  %26 = tail call double @llvm.fmuladd.f64(double %23, double %14, double %25)
  %27 = fmul double %26, 5.000000e-01
  %28 = fdiv double %27, %21
  %29 = load ptr, ptr %2, align 8, !tbaa !119
  %30 = getelementptr inbounds %"class.std::vector.29", ptr %29, i64 %11
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  store double %28, ptr %31, align 8, !tbaa !38
  %32 = tail call double @sin(double noundef %22) #23
  %33 = tail call double @cos(double noundef %22) #23
  %34 = fneg double %33
  %35 = fmul double %14, %34
  %36 = tail call double @llvm.fmuladd.f64(double %32, double %16, double %35)
  %37 = fmul double %36, 5.000000e-01
  %38 = fdiv double %37, %21
  %39 = load ptr, ptr %2, align 8, !tbaa !119
  %40 = getelementptr inbounds %"class.std::vector.29", ptr %39, i64 %11
  %41 = load ptr, ptr %40, align 8, !tbaa !80
  %42 = getelementptr inbounds [3 x double], ptr %41, i64 0, i64 1
  store double %38, ptr %42, align 8, !tbaa !38
  %43 = getelementptr inbounds [3 x double], ptr %41, i64 0, i64 2
  store double 0.000000e+00, ptr %43, align 8, !tbaa !38
  %44 = add i32 %12, 1
  %45 = zext i32 %44 to i64
  %46 = load ptr, ptr %4, align 8, !tbaa !75
  %47 = load ptr, ptr %1, align 8, !tbaa !77
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 24
  %52 = icmp ugt i64 %51, %45
  br i1 %52, label %9, label %8, !llvm.loop !284
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !37 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions23SlitSingularityFunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #2 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double 0.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !285
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions8MonomialILi1EEC2ERKNS_6TensorILi1ELi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions8MonomialILi1EEC5ERKNS_6TensorILi1ELi1EEEj) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial", ptr %0, i64 0, i32 1
  %6 = load double, ptr %1, align 8, !tbaa !38
  store double %6, ptr %5, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions8MonomialILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::Monomial", ptr %0, i64 0, i32 1
  %5 = load double, ptr %1, align 8, !tbaa !38
  %6 = load double, ptr %4, align 8, !tbaa !38
  %7 = tail call double @pow(double noundef %5, double noundef %6) #23
  ret double %7
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !286
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Functions::Monomial", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %12 = load double, ptr %1, align 8, !tbaa !38
  %13 = load double, ptr %8, align 8, !tbaa !38
  %14 = tail call double @pow(double noundef %12, double noundef %13) #23
  %15 = load ptr, ptr %9, align 8, !tbaa !90
  %16 = getelementptr inbounds double, ptr %15, i64 %11
  store double %14, ptr %16, align 8, !tbaa !38
  %17 = add nuw nsw i64 %11, 1
  %18 = load i32, ptr %4, align 8, !tbaa !286
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %10, label %21, !llvm.loop !287

21:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !45
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.dealii::Functions::Monomial", ptr %0, i64 0, i32 1
  br label %12

11:                                               ; preds = %12, %4
  ret void

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %7, %9 ], [ %25, %12 ]
  %14 = phi i64 [ 0, %9 ], [ %23, %12 ]
  %15 = phi i32 [ 0, %9 ], [ %22, %12 ]
  %16 = getelementptr inbounds %"class.dealii::Point", ptr %13, i64 %14
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = load double, ptr %10, align 8, !tbaa !38
  %19 = tail call double @pow(double noundef %17, double noundef %18) #23
  %20 = load ptr, ptr %2, align 8, !tbaa !46
  %21 = getelementptr inbounds double, ptr %20, i64 %14
  store double %19, ptr %21, align 8, !tbaa !38
  %22 = add i32 %15, 1
  %23 = zext i32 %22 to i64
  %24 = load ptr, ptr %5, align 8, !tbaa !42
  %25 = load ptr, ptr %1, align 8, !tbaa !45
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = ashr exact i64 %28, 3
  %30 = icmp ugt i64 %29, %23
  br i1 %30, label %12, label %11, !llvm.loop !288
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial", ptr %1, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = load double, ptr %2, align 8, !tbaa !38
  %8 = fadd double %6, -1.000000e+00
  %9 = tail call double @pow(double noundef %7, double noundef %8) #23
  %10 = fmul double %6, %9
  store double %10, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions8MonomialILi2EEC2ERKNS_6TensorILi1ELi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions8MonomialILi2EEC5ERKNS_6TensorILi1ELi2EEEj) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial.91", ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ 0, %3 ], [ %11, %6 ]
  %8 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %7
  store double %9, ptr %10, align 8, !tbaa !38
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %6, label %13, !llvm.loop !180

13:                                               ; preds = %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions8MonomialILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::Monomial.91", ptr %0, i64 0, i32 1
  br label %6

5:                                                ; preds = %6
  ret double %14

6:                                                ; preds = %3, %6
  %7 = phi i64 [ 0, %3 ], [ %15, %6 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %14, %6 ]
  %9 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %7
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 %7
  %12 = load double, ptr %11, align 8, !tbaa !38
  %13 = tail call double @pow(double noundef %10, double noundef %12) #23
  %14 = fmul double %8, %13
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %7, 0
  br i1 %16, label %6, label %5, !llvm.loop !289
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !286
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Functions::Monomial.91", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  br label %10

10:                                               ; preds = %7, %24
  %11 = phi i64 [ 0, %7 ], [ %27, %24 ]
  br label %13

12:                                               ; preds = %24, %3
  ret void

13:                                               ; preds = %10, %13
  %14 = phi i64 [ 0, %10 ], [ %22, %13 ]
  %15 = phi double [ 1.000000e+00, %10 ], [ %21, %13 ]
  %16 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 %14
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 %14
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = tail call double @pow(double noundef %17, double noundef %19) #23
  %21 = fmul double %15, %20
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %14, 0
  br i1 %23, label %13, label %24, !llvm.loop !289

24:                                               ; preds = %13
  %25 = load ptr, ptr %9, align 8, !tbaa !90
  %26 = getelementptr inbounds double, ptr %25, i64 %11
  store double %21, ptr %26, align 8, !tbaa !38
  %27 = add nuw nsw i64 %11, 1
  %28 = load i32, ptr %4, align 8, !tbaa !286
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %10, label %12, !llvm.loop !290
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.dealii::Functions::Monomial.91", ptr %0, i64 0, i32 1
  br label %12

11:                                               ; preds = %28, %4
  ret void

12:                                               ; preds = %9, %28
  %13 = phi ptr [ %7, %9 ], [ %34, %28 ]
  %14 = phi i64 [ 0, %9 ], [ %32, %28 ]
  %15 = phi i32 [ 0, %9 ], [ %31, %28 ]
  %16 = getelementptr inbounds %"class.dealii::Point.10", ptr %13, i64 %14
  br label %17

17:                                               ; preds = %12, %17
  %18 = phi i64 [ 0, %12 ], [ %26, %17 ]
  %19 = phi double [ 1.000000e+00, %12 ], [ %25, %17 ]
  %20 = getelementptr inbounds [2 x double], ptr %16, i64 0, i64 %18
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds [2 x double], ptr %10, i64 0, i64 %18
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = tail call double @pow(double noundef %21, double noundef %23) #23
  %25 = fmul double %19, %24
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %18, 0
  br i1 %27, label %17, label %28, !llvm.loop !289

28:                                               ; preds = %17
  %29 = load ptr, ptr %2, align 8, !tbaa !46
  %30 = getelementptr inbounds double, ptr %29, i64 %14
  store double %25, ptr %30, align 8, !tbaa !38
  %31 = add i32 %15, 1
  %32 = zext i32 %31 to i64
  %33 = load ptr, ptr %5, align 8, !tbaa !62
  %34 = load ptr, ptr %1, align 8, !tbaa !64
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = ashr exact i64 %37, 4
  %39 = icmp ugt i64 %38, %32
  br i1 %39, label %12, label %11, !llvm.loop !291
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial.91", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"class.dealii::Functions::Monomial.91", ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %4, %10
  %8 = phi i64 [ 0, %4 ], [ %12, %10 ]
  br label %14

9:                                                ; preds = %10
  ret void

10:                                               ; preds = %32
  %11 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %8
  store double %34, ptr %11, align 8, !tbaa !38
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %8, 0
  br i1 %13, label %7, label %9, !llvm.loop !292

14:                                               ; preds = %7, %32
  %15 = phi i64 [ 0, %7 ], [ %35, %32 ]
  %16 = phi double [ 1.000000e+00, %7 ], [ %34, %32 ]
  %17 = icmp eq i64 %15, %8
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 %15
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 %15
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = fadd double %20, -1.000000e+00
  %24 = tail call double @pow(double noundef %22, double noundef %23) #23
  %25 = fmul double %20, %24
  br label %32

26:                                               ; preds = %14
  %27 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 %15
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 %15
  %30 = load double, ptr %29, align 8, !tbaa !38
  %31 = tail call double @pow(double noundef %28, double noundef %30) #23
  br label %32

32:                                               ; preds = %26, %18
  %33 = phi double [ %25, %18 ], [ %31, %26 ]
  %34 = fmul double %16, %33
  %35 = add nuw nsw i64 %15, 1
  %36 = icmp eq i64 %15, 0
  br i1 %36, label %14, label %10, !llvm.loop !293
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii9Functions8MonomialILi3EEC2ERKNS_6TensorILi1ELi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii9Functions8MonomialILi3EEC5ERKNS_6TensorILi1ELi3EEEj) align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions8MonomialILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial.92", ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ 0, %3 ], [ %11, %6 ]
  %8 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %7
  store double %9, ptr %10, align 8, !tbaa !38
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !191

13:                                               ; preds = %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions8MonomialILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Functions::Monomial.92", ptr %0, i64 0, i32 1
  br label %6

5:                                                ; preds = %6
  ret double %14

6:                                                ; preds = %3, %6
  %7 = phi i64 [ 0, %3 ], [ %15, %6 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %14, %6 ]
  %9 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %7
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %7
  %12 = load double, ptr %11, align 8, !tbaa !38
  %13 = tail call double @pow(double noundef %10, double noundef %12) #23
  %14 = fmul double %8, %13
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, 3
  br i1 %16, label %5, label %6, !llvm.loop !294
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !286
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Functions::Monomial.92", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  br label %10

10:                                               ; preds = %7, %24
  %11 = phi i64 [ 0, %7 ], [ %27, %24 ]
  br label %13

12:                                               ; preds = %24, %3
  ret void

13:                                               ; preds = %10, %13
  %14 = phi i64 [ 0, %10 ], [ %22, %13 ]
  %15 = phi double [ 1.000000e+00, %10 ], [ %21, %13 ]
  %16 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %14
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 %14
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = tail call double @pow(double noundef %17, double noundef %19) #23
  %21 = fmul double %15, %20
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %24, label %13, !llvm.loop !294

24:                                               ; preds = %13
  %25 = load ptr, ptr %9, align 8, !tbaa !90
  %26 = getelementptr inbounds double, ptr %25, i64 %11
  store double %21, ptr %26, align 8, !tbaa !38
  %27 = add nuw nsw i64 %11, 1
  %28 = load i32, ptr %4, align 8, !tbaa !286
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %10, label %12, !llvm.loop !295
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = load ptr, ptr %1, align 8, !tbaa !77
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.dealii::Functions::Monomial.92", ptr %0, i64 0, i32 1
  br label %12

11:                                               ; preds = %28, %4
  ret void

12:                                               ; preds = %9, %28
  %13 = phi ptr [ %7, %9 ], [ %34, %28 ]
  %14 = phi i64 [ 0, %9 ], [ %32, %28 ]
  %15 = phi i32 [ 0, %9 ], [ %31, %28 ]
  %16 = getelementptr inbounds %"class.dealii::Point.22", ptr %13, i64 %14
  br label %17

17:                                               ; preds = %12, %17
  %18 = phi i64 [ 0, %12 ], [ %26, %17 ]
  %19 = phi double [ 1.000000e+00, %12 ], [ %25, %17 ]
  %20 = getelementptr inbounds [3 x double], ptr %16, i64 0, i64 %18
  %21 = load double, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %18
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = tail call double @pow(double noundef %21, double noundef %23) #23
  %25 = fmul double %19, %24
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %17, !llvm.loop !294

28:                                               ; preds = %17
  %29 = load ptr, ptr %2, align 8, !tbaa !46
  %30 = getelementptr inbounds double, ptr %29, i64 %14
  store double %25, ptr %30, align 8, !tbaa !38
  %31 = add i32 %15, 1
  %32 = zext i32 %31 to i64
  %33 = load ptr, ptr %5, align 8, !tbaa !75
  %34 = load ptr, ptr %1, align 8, !tbaa !77
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 24
  %39 = icmp ugt i64 %38, %32
  br i1 %39, label %12, label %11, !llvm.loop !296
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions8MonomialILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !37 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !38
  %5 = getelementptr inbounds %"class.dealii::Functions::Monomial.92", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"class.dealii::Functions::Monomial.92", ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %4, %10
  %8 = phi i64 [ 0, %4 ], [ %12, %10 ]
  br label %14

9:                                                ; preds = %10
  ret void

10:                                               ; preds = %32
  %11 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %8
  store double %34, ptr %11, align 8, !tbaa !38
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, 3
  br i1 %13, label %9, label %7, !llvm.loop !297

14:                                               ; preds = %7, %32
  %15 = phi i64 [ 0, %7 ], [ %35, %32 ]
  %16 = phi double [ 1.000000e+00, %7 ], [ %34, %32 ]
  %17 = icmp eq i64 %15, %8
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 %15
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 %15
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = fadd double %20, -1.000000e+00
  %24 = tail call double @pow(double noundef %22, double noundef %23) #23
  %25 = fmul double %20, %24
  br label %32

26:                                               ; preds = %14
  %27 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 %15
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 %15
  %30 = load double, ptr %29, align 8, !tbaa !38
  %31 = tail call double @pow(double noundef %28, double noundef %30) #23
  br label %32

32:                                               ; preds = %26, %18
  %33 = phi double [ %25, %18 ], [ %31, %26 ]
  %34 = fmul double %16, %33
  %35 = add nuw nsw i64 %15, 1
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %10, label %14, !llvm.loop !298
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZNK6dealii9Functions20LSingularityFunction5valueERKNS_5PointILi2EEEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1, i32 %2) unnamed_addr #7 align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = fcmp oge double %4, 0.000000e+00
  %8 = fcmp oge double %6, 0.000000e+00
  %9 = and i1 %7, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = fneg double %4
  %12 = tail call double @atan2(double noundef %6, double noundef %11) #23
  %13 = fadd double %12, 0x400921FB54442D18
  %14 = fmul double %6, %6
  %15 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %14)
  %16 = tail call double @pow(double noundef %15, double noundef 0x3FD5555555555555) #23
  %17 = fmul double %13, 0x3FE5555555555555
  %18 = tail call double @sin(double noundef %17) #23
  %19 = fmul double %16, %18
  br label %20

20:                                               ; preds = %3, %10
  %21 = phi double [ %19, %10 ], [ 0.000000e+00, %3 ]
  ret double %21
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #8 align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %31, %4
  ret void

10:                                               ; preds = %4, %31
  %11 = phi ptr [ %38, %31 ], [ %7, %4 ]
  %12 = phi i64 [ %36, %31 ], [ 0, %4 ]
  %13 = phi i32 [ %35, %31 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = fcmp oge double %15, 0.000000e+00
  %19 = fcmp oge double %17, 0.000000e+00
  %20 = and i1 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %10
  %22 = fneg double %15
  %23 = tail call double @atan2(double noundef %17, double noundef %22) #23
  %24 = fadd double %23, 0x400921FB54442D18
  %25 = fmul double %17, %17
  %26 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %25)
  %27 = tail call double @pow(double noundef %26, double noundef 0x3FD5555555555555) #23
  %28 = fmul double %24, 0x3FE5555555555555
  %29 = tail call double @sin(double noundef %28) #23
  %30 = fmul double %27, %29
  br label %31

31:                                               ; preds = %10, %21
  %32 = phi double [ %30, %21 ], [ 0.000000e+00, %10 ]
  %33 = load ptr, ptr %2, align 8, !tbaa !46
  %34 = getelementptr inbounds double, ptr %33, i64 %12
  store double %32, ptr %34, align 8, !tbaa !38
  %35 = add i32 %13, 1
  %36 = zext i32 %35 to i64
  %37 = load ptr, ptr %5, align 8, !tbaa !62
  %38 = load ptr, ptr %1, align 8, !tbaa !64
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = ashr exact i64 %41, 4
  %43 = icmp ugt i64 %42, %36
  br i1 %43, label %10, label %9, !llvm.loop !299
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #8 align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %30, %3
  ret void

9:                                                ; preds = %3, %30
  %10 = phi ptr [ %38, %30 ], [ %6, %3 ]
  %11 = phi i64 [ %36, %30 ], [ 0, %3 ]
  %12 = phi i32 [ %35, %30 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.10", ptr %10, i64 %11
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds [2 x double], ptr %13, i64 0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = fcmp oge double %14, 0.000000e+00
  %18 = fcmp oge double %16, 0.000000e+00
  %19 = and i1 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %9
  %21 = fneg double %14
  %22 = tail call double @atan2(double noundef %16, double noundef %21) #23
  %23 = fadd double %22, 0x400921FB54442D18
  %24 = fmul double %16, %16
  %25 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %24)
  %26 = tail call double @pow(double noundef %25, double noundef 0x3FD5555555555555) #23
  %27 = fmul double %23, 0x3FE5555555555555
  %28 = tail call double @sin(double noundef %27) #23
  %29 = fmul double %26, %28
  br label %30

30:                                               ; preds = %9, %20
  %31 = phi double [ %29, %20 ], [ 0.000000e+00, %9 ]
  %32 = load ptr, ptr %2, align 8, !tbaa !88
  %33 = getelementptr inbounds %"class.dealii::Vector", ptr %32, i64 %11, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !90
  store double %31, ptr %34, align 8, !tbaa !38
  %35 = add i32 %12, 1
  %36 = zext i32 %35 to i64
  %37 = load ptr, ptr %4, align 8, !tbaa !62
  %38 = load ptr, ptr %1, align 8, !tbaa !64
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = ashr exact i64 %41, 4
  %43 = icmp ugt i64 %42, %36
  br i1 %43, label %9, label %8, !llvm.loop !300
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZNK6dealii9Functions20LSingularityFunction9laplacianERKNS_5PointILi2EEEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 %2) unnamed_addr #9 align 2 !prof !37 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #10 align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double 0.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !301
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.dealii::Tensor.11") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %2, i32 %3) unnamed_addr #7 align 2 !prof !37 {
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = fneg double %5
  %9 = tail call double @atan2(double noundef %7, double noundef %8) #23
  %10 = fmul double %7, %7
  %11 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %10)
  %12 = tail call double @pow(double noundef %11, double noundef 0x3FE5555555555555) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %13 = fadd double %9, 0x400921FB54442D18
  %14 = fmul double %13, 0x3FE5555555555555
  %15 = tail call double @sin(double noundef %14) #23
  %16 = tail call double @cos(double noundef %14) #23
  %17 = fmul double %7, %16
  %18 = tail call double @llvm.fmuladd.f64(double %15, double %5, double %17)
  %19 = fmul double %18, 0x3FE5555555555555
  %20 = fdiv double %19, %12
  store double %20, ptr %0, align 8, !tbaa !38
  %21 = tail call double @sin(double noundef %14) #23
  %22 = tail call double @cos(double noundef %14) #23
  %23 = fneg double %22
  %24 = fmul double %5, %23
  %25 = tail call double @llvm.fmuladd.f64(double %21, double %7, double %24)
  %26 = fmul double %25, 0x3FE5555555555555
  %27 = fdiv double %26, %12
  %28 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %27, ptr %28, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #8 align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %45, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %43, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %42, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = fneg double %15
  %19 = tail call double @atan2(double noundef %17, double noundef %18) #23
  %20 = fadd double %19, 0x400921FB54442D18
  %21 = fmul double %17, %17
  %22 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %21)
  %23 = tail call double @pow(double noundef %22, double noundef 0x3FE5555555555555) #23
  %24 = fmul double %20, 0x3FE5555555555555
  %25 = tail call double @sin(double noundef %24) #23
  %26 = tail call double @cos(double noundef %24) #23
  %27 = fmul double %17, %26
  %28 = tail call double @llvm.fmuladd.f64(double %25, double %15, double %27)
  %29 = fmul double %28, 0x3FE5555555555555
  %30 = fdiv double %29, %23
  %31 = load ptr, ptr %2, align 8, !tbaa !67
  %32 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %31, i64 %12
  store double %30, ptr %32, align 8, !tbaa !38
  %33 = tail call double @sin(double noundef %24) #23
  %34 = tail call double @cos(double noundef %24) #23
  %35 = fneg double %34
  %36 = fmul double %15, %35
  %37 = tail call double @llvm.fmuladd.f64(double %33, double %17, double %36)
  %38 = fmul double %37, 0x3FE5555555555555
  %39 = fdiv double %38, %23
  %40 = load ptr, ptr %2, align 8, !tbaa !67
  %41 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %40, i64 %12, i32 0, i64 1
  store double %39, ptr %41, align 8, !tbaa !38
  %42 = add i32 %13, 1
  %43 = zext i32 %42 to i64
  %44 = load ptr, ptr %5, align 8, !tbaa !62
  %45 = load ptr, ptr %1, align 8, !tbaa !64
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 4
  %50 = icmp ugt i64 %49, %43
  br i1 %50, label %10, label %9, !llvm.loop !302
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions20LSingularityFunction20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #8 align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %47, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %45, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %44, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.10", ptr %10, i64 %11
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds [2 x double], ptr %13, i64 0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = fneg double %14
  %18 = tail call double @atan2(double noundef %16, double noundef %17) #23
  %19 = fadd double %18, 0x400921FB54442D18
  %20 = fmul double %16, %16
  %21 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %20)
  %22 = tail call double @pow(double noundef %21, double noundef 0x3FE5555555555555) #23
  %23 = fmul double %19, 0x3FE5555555555555
  %24 = tail call double @sin(double noundef %23) #23
  %25 = tail call double @cos(double noundef %23) #23
  %26 = fmul double %16, %25
  %27 = tail call double @llvm.fmuladd.f64(double %24, double %14, double %26)
  %28 = fmul double %27, 0x3FE5555555555555
  %29 = fdiv double %28, %22
  %30 = load ptr, ptr %2, align 8, !tbaa !112
  %31 = getelementptr inbounds %"class.std::vector.17", ptr %30, i64 %11
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  store double %29, ptr %32, align 8, !tbaa !38
  %33 = tail call double @sin(double noundef %23) #23
  %34 = tail call double @cos(double noundef %23) #23
  %35 = fneg double %34
  %36 = fmul double %14, %35
  %37 = tail call double @llvm.fmuladd.f64(double %33, double %16, double %36)
  %38 = fmul double %37, 0x3FE5555555555555
  %39 = fdiv double %38, %22
  %40 = load ptr, ptr %2, align 8, !tbaa !112
  %41 = getelementptr inbounds %"class.std::vector.17", ptr %40, i64 %11
  %42 = load ptr, ptr %41, align 8, !tbaa !67
  %43 = getelementptr inbounds [2 x double], ptr %42, i64 0, i64 1
  store double %39, ptr %43, align 8, !tbaa !38
  %44 = add i32 %12, 1
  %45 = zext i32 %44 to i64
  %46 = load ptr, ptr %4, align 8, !tbaa !62
  %47 = load ptr, ptr %1, align 8, !tbaa !64
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = ashr exact i64 %50, 4
  %52 = icmp ugt i64 %51, %45
  br i1 %52, label %9, label %8, !llvm.loop !303
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local noundef double @_ZNK6dealii9Functions28SlitHyperSingularityFunction5valueERKNS_5PointILi2EEEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1, i32 %2) unnamed_addr #7 align 2 !prof !37 {
  %4 = load double, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !38
  %7 = tail call double @atan2(double noundef %4, double noundef %6) #23
  %8 = fadd double %7, 0x400921FB54442D18
  %9 = fmul double %6, %6
  %10 = tail call double @llvm.fmuladd.f64(double %4, double %4, double %9)
  %11 = tail call double @pow(double noundef %10, double noundef 1.250000e-01) #23
  %12 = fmul double %8, 2.500000e-01
  %13 = tail call double @sin(double noundef %12) #23
  %14 = fmul double %11, %13
  ret double %14
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #8 align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %31, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %29, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %28, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = tail call double @atan2(double noundef %15, double noundef %17) #23
  %19 = fadd double %18, 0x400921FB54442D18
  %20 = fmul double %17, %17
  %21 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %20)
  %22 = tail call double @pow(double noundef %21, double noundef 1.250000e-01) #23
  %23 = fmul double %19, 2.500000e-01
  %24 = tail call double @sin(double noundef %23) #23
  %25 = fmul double %22, %24
  %26 = load ptr, ptr %2, align 8, !tbaa !46
  %27 = getelementptr inbounds double, ptr %26, i64 %12
  store double %25, ptr %27, align 8, !tbaa !38
  %28 = add i32 %13, 1
  %29 = zext i32 %28 to i64
  %30 = load ptr, ptr %5, align 8, !tbaa !62
  %31 = load ptr, ptr %1, align 8, !tbaa !64
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 4
  %36 = icmp ugt i64 %35, %29
  br i1 %36, label %10, label %9, !llvm.loop !304
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #8 align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %31, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %29, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %28, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.10", ptr %10, i64 %11
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds [2 x double], ptr %13, i64 0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = tail call double @atan2(double noundef %14, double noundef %16) #23
  %18 = fadd double %17, 0x400921FB54442D18
  %19 = fmul double %16, %16
  %20 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %19)
  %21 = tail call double @pow(double noundef %20, double noundef 1.250000e-01) #23
  %22 = fmul double %18, 2.500000e-01
  %23 = tail call double @sin(double noundef %22) #23
  %24 = fmul double %21, %23
  %25 = load ptr, ptr %2, align 8, !tbaa !88
  %26 = getelementptr inbounds %"class.dealii::Vector", ptr %25, i64 %11, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !90
  store double %24, ptr %27, align 8, !tbaa !38
  %28 = add i32 %12, 1
  %29 = zext i32 %28 to i64
  %30 = load ptr, ptr %4, align 8, !tbaa !62
  %31 = load ptr, ptr %1, align 8, !tbaa !64
  %32 = ptrtoint ptr %30 to i64
  %33 = ptrtoint ptr %31 to i64
  %34 = sub i64 %32, %33
  %35 = ashr exact i64 %34, 4
  %36 = icmp ugt i64 %35, %29
  br i1 %36, label %9, label %8, !llvm.loop !305
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZNK6dealii9Functions28SlitHyperSingularityFunction9laplacianERKNS_5PointILi2EEEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 %2) unnamed_addr #9 align 2 !prof !37 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #10 align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !46
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds double, ptr %14, i64 %17
  store double 0.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !306
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.dealii::Tensor.11") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %2, i32 %3) unnamed_addr #7 align 2 !prof !37 {
  %5 = load double, ptr %2, align 8, !tbaa !38
  %6 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = tail call double @atan2(double noundef %5, double noundef %7) #23
  %9 = fmul double %7, %7
  %10 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %9)
  %11 = tail call double @pow(double noundef %10, double noundef 8.750000e-01) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !38
  %12 = fadd double %8, 0x400921FB54442D18
  %13 = fmul double %12, 2.500000e-01
  %14 = tail call double @sin(double noundef %13) #23
  %15 = tail call double @cos(double noundef %13) #23
  %16 = fmul double %7, %15
  %17 = tail call double @llvm.fmuladd.f64(double %14, double %5, double %16)
  %18 = fmul double %17, 2.500000e-01
  %19 = fdiv double %18, %11
  store double %19, ptr %0, align 8, !tbaa !38
  %20 = tail call double @sin(double noundef %13) #23
  %21 = tail call double @cos(double noundef %13) #23
  %22 = fneg double %21
  %23 = fmul double %5, %22
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %7, double %23)
  %25 = fmul double %24, 2.500000e-01
  %26 = fdiv double %25, %11
  %27 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %26, ptr %27, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2, i32 %3) unnamed_addr #8 align 2 !prof !37 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %44, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %42, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %41, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.10", ptr %11, i64 %12
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = tail call double @atan2(double noundef %15, double noundef %17) #23
  %19 = fadd double %18, 0x400921FB54442D18
  %20 = fmul double %17, %17
  %21 = tail call double @llvm.fmuladd.f64(double %15, double %15, double %20)
  %22 = tail call double @pow(double noundef %21, double noundef 8.750000e-01) #23
  %23 = fmul double %19, 2.500000e-01
  %24 = tail call double @sin(double noundef %23) #23
  %25 = tail call double @cos(double noundef %23) #23
  %26 = fmul double %17, %25
  %27 = tail call double @llvm.fmuladd.f64(double %24, double %15, double %26)
  %28 = fmul double %27, 2.500000e-01
  %29 = fdiv double %28, %22
  %30 = load ptr, ptr %2, align 8, !tbaa !67
  %31 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %30, i64 %12
  store double %29, ptr %31, align 8, !tbaa !38
  %32 = tail call double @sin(double noundef %23) #23
  %33 = tail call double @cos(double noundef %23) #23
  %34 = fneg double %33
  %35 = fmul double %15, %34
  %36 = tail call double @llvm.fmuladd.f64(double %32, double %17, double %35)
  %37 = fmul double %36, 2.500000e-01
  %38 = fdiv double %37, %22
  %39 = load ptr, ptr %2, align 8, !tbaa !67
  %40 = getelementptr inbounds %"class.dealii::Tensor.11", ptr %39, i64 %12, i32 0, i64 1
  store double %38, ptr %40, align 8, !tbaa !38
  %41 = add i32 %13, 1
  %42 = zext i32 %41 to i64
  %43 = load ptr, ptr %5, align 8, !tbaa !62
  %44 = load ptr, ptr %1, align 8, !tbaa !64
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 4
  %49 = icmp ugt i64 %48, %42
  br i1 %49, label %10, label %9, !llvm.loop !307
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZNK6dealii9Functions28SlitHyperSingularityFunction20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) unnamed_addr #8 align 2 !prof !37 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %46, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %44, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %43, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.10", ptr %10, i64 %11
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds [2 x double], ptr %13, i64 0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = tail call double @atan2(double noundef %14, double noundef %16) #23
  %18 = fadd double %17, 0x400921FB54442D18
  %19 = fmul double %16, %16
  %20 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %19)
  %21 = tail call double @pow(double noundef %20, double noundef 8.750000e-01) #23
  %22 = fmul double %18, 2.500000e-01
  %23 = tail call double @sin(double noundef %22) #23
  %24 = tail call double @cos(double noundef %22) #23
  %25 = fmul double %16, %24
  %26 = tail call double @llvm.fmuladd.f64(double %23, double %14, double %25)
  %27 = fmul double %26, 2.500000e-01
  %28 = fdiv double %27, %21
  %29 = load ptr, ptr %2, align 8, !tbaa !112
  %30 = getelementptr inbounds %"class.std::vector.17", ptr %29, i64 %11
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  store double %28, ptr %31, align 8, !tbaa !38
  %32 = tail call double @sin(double noundef %22) #23
  %33 = tail call double @cos(double noundef %22) #23
  %34 = fneg double %33
  %35 = fmul double %14, %34
  %36 = tail call double @llvm.fmuladd.f64(double %32, double %16, double %35)
  %37 = fmul double %36, 2.500000e-01
  %38 = fdiv double %37, %21
  %39 = load ptr, ptr %2, align 8, !tbaa !112
  %40 = getelementptr inbounds %"class.std::vector.17", ptr %39, i64 %11
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  %42 = getelementptr inbounds [2 x double], ptr %41, i64 0, i64 1
  store double %38, ptr %42, align 8, !tbaa !38
  %43 = add i32 %12, 1
  %44 = zext i32 %43 to i64
  %45 = load ptr, ptr %4, align 8, !tbaa !62
  %46 = load ptr, ptr %1, align 8, !tbaa !64
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = ashr exact i64 %49, 4
  %51 = icmp ugt i64 %50, %44
  br i1 %51, label %9, label %8, !llvm.loop !308
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20LSingularityFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #3

declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20LSingularityFunctionD1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20LSingularityFunctionD0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions28SlitHyperSingularityFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions28SlitHyperSingularityFunctionD1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions28SlitHyperSingularityFunctionD0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14SquareFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare void @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14SquareFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14SquareFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare void @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14SquareFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions15Q1WedgeFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions15Q1WedgeFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions15Q1WedgeFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions15Q1WedgeFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14PillowFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14PillowFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14CosineFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14CosineFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14CosineFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14CosineFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions11ExpFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions11ExpFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions11ExpFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions11ExpFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions12JumpFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions12JumpFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare void @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions21FourierCosineFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions21FourierCosineFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions19FourierSineFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions19FourierSineFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.87", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16FourierCosineSumILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierCosineSum.88", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16FourierCosineSumILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16FourierCosineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi1EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.89", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi2EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions14FourierSineSumILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %"class.dealii::Functions::FourierSineSum.90", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions14FourierSineSumILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !123
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions14FourierSineSumILi3EEE, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds i8, ptr %0, i64 104
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %4) #26
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 80
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %12

12:                                               ; preds = %7, %11
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions23SlitSingularityFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions23SlitSingularityFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions23SlitSingularityFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions8MonomialILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi1EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi1EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions8MonomialILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi2EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi2EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions8MonomialILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #11 comdat align 2 !annotation !213 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi3EED1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions8MonomialILi3EED0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 !annotation !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #23
  tail call void @_ZdlPv(ptr noundef %2) #26
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !309 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !310

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #25
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZNSt15__new_allocatorIN6dealii5PointILi1EEEE8allocateEmPKv, ptr @_Znwm, i64 269698}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"double", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !44, i64 8}
!43 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"any pointer", !40, i64 0}
!45 = !{!43, !44, i64 0}
!46 = !{!47, !44, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!53 = distinct !{!53, !"_ZNK6dealii5PointILi1EEmlEd"}
!54 = !{!55, !44, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!58 = distinct !{!58, !"_ZNK6dealii5PointILi1EEmlEd"}
!59 = distinct !{!59, !49, !50}
!60 = distinct !{!60, !49, !50}
!61 = distinct !{!61, !49, !50}
!62 = !{!63, !44, i64 8}
!63 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!64 = !{!63, !44, i64 0}
!65 = distinct !{!65, !49, !50}
!66 = distinct !{!66, !49, !50}
!67 = !{!68, !44, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNK6dealii5PointILi2EEmlEd: argument 0"}
!71 = distinct !{!71, !"_ZNK6dealii5PointILi2EEmlEd"}
!72 = distinct !{!72, !49, !50}
!73 = distinct !{!73, !49, !50}
!74 = distinct !{!74, !49, !50}
!75 = !{!76, !44, i64 8}
!76 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!77 = !{!76, !44, i64 0}
!78 = distinct !{!78, !49, !50}
!79 = distinct !{!79, !49, !50}
!80 = !{!81, !44, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNK6dealii5PointILi3EEmlEd: argument 0"}
!84 = distinct !{!84, !"_ZNK6dealii5PointILi3EEmlEd"}
!85 = distinct !{!85, !49, !50}
!86 = distinct !{!86, !49, !50}
!87 = distinct !{!87, !49, !50}
!88 = !{!89, !44, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN6dealii6VectorIdEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!90 = !{!91, !44, i64 80}
!91 = !{!"_ZTSN6dealii6VectorIdEE", !92, i64 0, !93, i64 72, !93, i64 76, !44, i64 80}
!92 = !{!"_ZTSN6dealii11SubscriptorE", !93, i64 8, !94, i64 16, !44, i64 64}
!93 = !{!"int", !40, i64 0}
!94 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !95, i64 0}
!95 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !96, i64 0}
!96 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !97, i64 0, !99, i64 8}
!97 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !98, i64 0}
!98 = !{!"_ZTSSt4lessIPKcE"}
!99 = !{!"_ZTSSt15_Rb_tree_header", !100, i64 0, !102, i64 32}
!100 = !{!"_ZTSSt18_Rb_tree_node_base", !101, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!101 = !{!"_ZTSSt14_Rb_tree_color", !40, i64 0}
!102 = !{!"long", !40, i64 0}
!103 = distinct !{!103, !49, !50}
!104 = distinct !{!104, !49, !50}
!105 = !{!106, !44, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi1EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!107 = distinct !{!107, !49, !50}
!108 = distinct !{!108, !49, !50}
!109 = distinct !{!109, !49, !50}
!110 = distinct !{!110, !49, !50}
!111 = distinct !{!111, !49, !50}
!112 = !{!113, !44, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!114 = distinct !{!114, !49, !50}
!115 = distinct !{!115, !49, !50}
!116 = distinct !{!116, !49, !50}
!117 = distinct !{!117, !49, !50}
!118 = distinct !{!118, !49, !50}
!119 = !{!120, !44, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!121 = distinct !{!121, !49, !50}
!122 = distinct !{!122, !49, !50}
!123 = !{!124, !124, i64 0}
!124 = !{!"vtable pointer", !41, i64 0}
!125 = !{!126, !39, i64 96}
!126 = !{!"_ZTSN6dealii9Functions14PillowFunctionILi1EEE", !127, i64 0, !39, i64 96}
!127 = !{!"_ZTSN6dealii8FunctionILi1EEE", !128, i64 0, !92, i64 16, !93, i64 88}
!128 = !{!"_ZTSN6dealii12FunctionTimeE", !39, i64 8}
!129 = distinct !{!129, !49, !50}
!130 = distinct !{!130, !49, !50}
!131 = distinct !{!131, !49, !50}
!132 = !{!133, !39, i64 96}
!133 = !{!"_ZTSN6dealii9Functions14PillowFunctionILi2EEE", !134, i64 0, !39, i64 96}
!134 = !{!"_ZTSN6dealii8FunctionILi2EEE", !128, i64 0, !92, i64 16, !93, i64 88}
!135 = distinct !{!135, !49, !50}
!136 = distinct !{!136, !49, !50}
!137 = distinct !{!137, !49, !50}
!138 = !{!139, !39, i64 96}
!139 = !{!"_ZTSN6dealii9Functions14PillowFunctionILi3EEE", !140, i64 0, !39, i64 96}
!140 = !{!"_ZTSN6dealii8FunctionILi3EEE", !128, i64 0, !92, i64 16, !93, i64 88}
!141 = distinct !{!141, !49, !50}
!142 = distinct !{!142, !49, !50}
!143 = distinct !{!143, !49, !50}
!144 = distinct !{!144, !49, !50}
!145 = distinct !{!145, !49, !50}
!146 = distinct !{!146, !49, !50}
!147 = !{!148, !44, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!149 = distinct !{!149, !49, !50}
!150 = distinct !{!150, !49, !50}
!151 = distinct !{!151, !49, !50}
!152 = distinct !{!152, !49, !50}
!153 = !{!154, !44, i64 0}
!154 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!155 = distinct !{!155, !49, !50}
!156 = distinct !{!156, !49, !50}
!157 = distinct !{!157, !49, !50}
!158 = distinct !{!158, !49, !50}
!159 = !{!160, !44, i64 0}
!160 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!161 = distinct !{!161, !49, !50}
!162 = distinct !{!162, !49, !50}
!163 = distinct !{!163, !49, !50}
!164 = distinct !{!164, !49, !50}
!165 = distinct !{!165, !49, !50}
!166 = distinct !{!166, !49, !50}
!167 = distinct !{!167, !49, !50}
!168 = distinct !{!168, !49, !50}
!169 = distinct !{!169, !49, !50}
!170 = distinct !{!170, !49, !50}
!171 = !{!172, !39, i64 104}
!172 = !{!"_ZTSN6dealii9Functions12JumpFunctionILi1EEE", !127, i64 0, !173, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128}
!173 = !{!"_ZTSN6dealii5PointILi1EEE", !174, i64 0}
!174 = !{!"_ZTSN6dealii6TensorILi1ELi1EEE", !40, i64 0}
!175 = !{!172, !39, i64 128}
!176 = !{!172, !39, i64 120}
!177 = distinct !{!177, !49, !50}
!178 = distinct !{!178, !49, !50}
!179 = distinct !{!179, !49, !50}
!180 = distinct !{!180, !49, !50}
!181 = !{!182, !39, i64 112}
!182 = !{!"_ZTSN6dealii9Functions12JumpFunctionILi2EEE", !134, i64 0, !183, i64 96, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136}
!183 = !{!"_ZTSN6dealii5PointILi2EEE", !184, i64 0}
!184 = !{!"_ZTSN6dealii6TensorILi1ELi2EEE", !40, i64 0}
!185 = !{!182, !39, i64 120}
!186 = !{!182, !39, i64 128}
!187 = !{!182, !39, i64 136}
!188 = distinct !{!188, !49, !50}
!189 = distinct !{!189, !49, !50}
!190 = distinct !{!190, !49, !50}
!191 = distinct !{!191, !49, !50}
!192 = !{!193, !39, i64 120}
!193 = !{!"_ZTSN6dealii9Functions12JumpFunctionILi3EEE", !140, i64 0, !194, i64 96, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144}
!194 = !{!"_ZTSN6dealii5PointILi3EEE", !195, i64 0}
!195 = !{!"_ZTSN6dealii6TensorILi1ELi3EEE", !40, i64 0}
!196 = !{!193, !39, i64 128}
!197 = !{!193, !39, i64 136}
!198 = !{!193, !39, i64 144}
!199 = distinct !{!199, !49, !50}
!200 = distinct !{!200, !49, !50}
!201 = distinct !{!201, !49, !50}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZNK6dealii5PointILi2EEngEv: argument 0"}
!204 = distinct !{!204, !"_ZNK6dealii5PointILi2EEngEv"}
!205 = distinct !{!205, !49, !50}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZNK6dealii5PointILi3EEngEv: argument 0"}
!208 = distinct !{!208, !"_ZNK6dealii5PointILi3EEngEv"}
!209 = distinct !{!209, !49, !50}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!212 = distinct !{!212, !"_ZNK6dealii5PointILi1EEmlEd"}
!213 = !{!"instr_prof_hash_mismatch"}
!214 = !{!47, !44, i64 8}
!215 = !{!"branch_weights", i32 90, i32 1356639}
!216 = !{!"branch_weights", i32 0, i32 7642479}
!217 = !{!47, !44, i64 16}
!218 = !{!44, !44, i64 0}
!219 = !{!"VP", i32 1, i64 0, i64 16, i64 0, i64 8, i64 0, i64 32, i64 0, i64 513, i64 0}
!220 = !{!43, !44, i64 16}
!221 = distinct !{!221, !49, !50}
!222 = distinct !{!222, !49, !50}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!225 = distinct !{!225, !"_ZNK6dealii5PointILi1EEmlEd"}
!226 = distinct !{!226, !49, !50}
!227 = distinct !{!227, !49, !50}
!228 = !{!"branch_weights", i32 268927, i32 122532}
!229 = !{!"branch_weights", i32 0, i32 324896}
!230 = !{!63, !44, i64 16}
!231 = !{!"branch_weights", i32 1, i32 391458}
!232 = !{!"branch_weights", i32 562200, i32 562200}
!233 = !{!"branch_weights", i32 391458, i32 170742}
!234 = distinct !{!234, !49, !50}
!235 = distinct !{!235, !49, !50}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZNK6dealii5PointILi2EEmlEd: argument 0"}
!238 = distinct !{!238, !"_ZNK6dealii5PointILi2EEmlEd"}
!239 = distinct !{!239, !49, !50}
!240 = distinct !{!240, !49, !50}
!241 = distinct !{!241, !49, !50}
!242 = !{!"branch_weights", i32 179414, i32 364593}
!243 = !{!"branch_weights", i32 0, i32 1626834}
!244 = !{!76, !44, i64 16}
!245 = !{!"branch_weights", i32 1, i32 544006}
!246 = !{!"branch_weights", i32 1985641, i32 3971282}
!247 = !{!"branch_weights", i32 544006, i32 1441635}
!248 = distinct !{!248, !49, !50}
!249 = distinct !{!249, !49, !50}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZNK6dealii5PointILi3EEmlEd: argument 0"}
!252 = distinct !{!252, !"_ZNK6dealii5PointILi3EEmlEd"}
!253 = distinct !{!253, !49, !50}
!254 = distinct !{!254, !49, !50}
!255 = distinct !{!255, !49, !50}
!256 = distinct !{!256, !49, !50}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZNK6dealii5PointILi1EEmlEd: argument 0"}
!259 = distinct !{!259, !"_ZNK6dealii5PointILi1EEmlEd"}
!260 = distinct !{!260, !49, !50}
!261 = distinct !{!261, !49, !50}
!262 = distinct !{!262, !49, !50}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZNK6dealii5PointILi2EEmlEd: argument 0"}
!265 = distinct !{!265, !"_ZNK6dealii5PointILi2EEmlEd"}
!266 = distinct !{!266, !49, !50}
!267 = distinct !{!267, !49, !50}
!268 = distinct !{!268, !49, !50}
!269 = distinct !{!269, !49, !50}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZNK6dealii5PointILi3EEmlEd: argument 0"}
!272 = distinct !{!272, !"_ZNK6dealii5PointILi3EEmlEd"}
!273 = distinct !{!273, !49, !50}
!274 = distinct !{!274, !49, !50}
!275 = distinct !{!275, !49, !50}
!276 = distinct !{!276, !49, !50}
!277 = distinct !{!277, !49, !50}
!278 = distinct !{!278, !49, !50}
!279 = distinct !{!279, !49, !50}
!280 = distinct !{!280, !49, !50}
!281 = distinct !{!281, !49, !50}
!282 = distinct !{!282, !49, !50}
!283 = distinct !{!283, !49, !50}
!284 = distinct !{!284, !49, !50}
!285 = distinct !{!285, !49, !50}
!286 = !{!91, !93, i64 72}
!287 = distinct !{!287, !49, !50}
!288 = distinct !{!288, !49, !50}
!289 = distinct !{!289, !49, !50}
!290 = distinct !{!290, !49, !50}
!291 = distinct !{!291, !49, !50}
!292 = distinct !{!292, !49, !50}
!293 = distinct !{!293, !49, !50}
!294 = distinct !{!294, !49, !50}
!295 = distinct !{!295, !49, !50}
!296 = distinct !{!296, !49, !50}
!297 = distinct !{!297, !49, !50}
!298 = distinct !{!298, !49, !50}
!299 = distinct !{!299, !49, !50}
!300 = distinct !{!300, !49, !50}
!301 = distinct !{!301, !49, !50}
!302 = distinct !{!302, !49, !50}
!303 = distinct !{!303, !49, !50}
!304 = distinct !{!304, !49, !50}
!305 = distinct !{!305, !49, !50}
!306 = distinct !{!306, !49, !50}
!307 = distinct !{!307, !49, !50}
!308 = distinct !{!308, !49, !50}
!309 = !{!"function_entry_count", i64 269698}
!310 = !{!"branch_weights", i32 0, i32 269698}
