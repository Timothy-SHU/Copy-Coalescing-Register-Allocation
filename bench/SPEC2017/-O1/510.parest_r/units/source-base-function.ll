; ModuleID = 'source/base/function.cc'
source_filename = "source/base/function.cc"
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
%"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Vector" = type { %"class.dealii::Subscriptor", i32, i32, ptr }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Function<1>::ExcNumberOfComponents" = type { %"class.dealii::ExceptionBase.base", i32, i32, [4 x i8] }
%"class.dealii::ExceptionBase.base" = type <{ %"class.std::exception", ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32 }>
%"class.std::exception" = type { ptr }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::ConstantFunction" = type { %"class.dealii::ZeroFunction.base", double }
%"class.dealii::ZeroFunction.base" = type { %"class.dealii::Function.base" }
%"class.dealii::Function.base" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::ComponentSelectFunction" = type { %"class.dealii::ConstantFunction", %"struct.std::pair" }
%"struct.std::pair" = type { i32, i32 }
%"class.dealii::Function.23" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32, [4 x i8] }>
%"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point.30" = type { %"class.dealii::Tensor.31" }
%"class.dealii::Tensor.31" = type { [2 x double] }
%"class.std::vector.32" = type { %"struct.std::_Vector_base.33" }
%"struct.std::_Vector_base.33" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Function<2>::ExcNumberOfComponents" = type { %"class.dealii::ExceptionBase.base", i32, i32, [4 x i8] }
%"class.dealii::ConstantFunction.44" = type { %"class.dealii::ZeroFunction.base.43", double }
%"class.dealii::ZeroFunction.base.43" = type { %"class.dealii::Function.base.24" }
%"class.dealii::Function.base.24" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::ComponentSelectFunction.45" = type { %"class.dealii::ConstantFunction.44", %"struct.std::pair" }
%"class.dealii::Function.46" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32, [4 x i8] }>
%"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Point.53" = type { %"class.dealii::Tensor.54" }
%"class.dealii::Tensor.54" = type { [3 x double] }
%"class.std::vector.55" = type { %"struct.std::_Vector_base.56" }
%"struct.std::_Vector_base.56" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Function<3>::ExcNumberOfComponents" = type { %"class.dealii::ExceptionBase.base", i32, i32, [4 x i8] }
%"class.dealii::ConstantFunction.67" = type { %"class.dealii::ZeroFunction.base.66", double }
%"class.dealii::ZeroFunction.base.66" = type { %"class.dealii::Function.base.47" }
%"class.dealii::Function.base.47" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::ComponentSelectFunction.68" = type { %"class.dealii::ConstantFunction.67", %"struct.std::pair" }

$_ZN6dealii8FunctionILi1EEC5Ejd = comdat any

$_ZN6dealii8FunctionILi1EED5Ev = comdat any

$_ZThn16_N6dealii8FunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii8FunctionILi1EED0Ev = comdat any

$_ZN6dealii8FunctionILi1EEaSERKS1_ = comdat any

$_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE = comdat any

$_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj = comdat any

$_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE = comdat any

$_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii8FunctionILi1EE18memory_consumptionEv = comdat any

$_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsC5Eii = comdat any

$_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD5Ev = comdat any

$_ZNK6dealii8FunctionILi1EE21ExcNumberOfComponents10print_infoERSo = comdat any

$_ZN6dealii12ZeroFunctionILi1EEC5Ej = comdat any

$_ZN6dealii12ZeroFunctionILi1EED5Ev = comdat any

$_ZThn16_N6dealii12ZeroFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii12ZeroFunctionILi1EED0Ev = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE = comdat any

$_ZN6dealii16ConstantFunctionILi1EEC5Edj = comdat any

$_ZThn16_N6dealii16ConstantFunctionILi1EED1Ev = comdat any

$_ZN6dealii16ConstantFunctionILi1EED5Ev = comdat any

$_ZThn16_N6dealii16ConstantFunctionILi1EED0Ev = comdat any

$_ZNK6dealii16ConstantFunctionILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii16ConstantFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii16ConstantFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii16ConstantFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii16ConstantFunctionILi1EE18memory_consumptionEv = comdat any

$_ZN6dealii23ComponentSelectFunctionILi1EEC5Ejdj = comdat any

$_ZN6dealii23ComponentSelectFunctionILi1EEC5Ejj = comdat any

$_ZN6dealii23ComponentSelectFunctionILi1EEC5ERKSt4pairIjjEj = comdat any

$_ZNK6dealii23ComponentSelectFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii23ComponentSelectFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii23ComponentSelectFunctionILi1EE18memory_consumptionEv = comdat any

$_ZN6dealii8FunctionILi2EEC5Ejd = comdat any

$_ZN6dealii8FunctionILi2EED5Ev = comdat any

$_ZThn16_N6dealii8FunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii8FunctionILi2EED0Ev = comdat any

$_ZN6dealii8FunctionILi2EEaSERKS1_ = comdat any

$_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE = comdat any

$_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj = comdat any

$_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE = comdat any

$_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii8FunctionILi2EE18memory_consumptionEv = comdat any

$_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsC5Eii = comdat any

$_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD5Ev = comdat any

$_ZNK6dealii8FunctionILi2EE21ExcNumberOfComponents10print_infoERSo = comdat any

$_ZN6dealii12ZeroFunctionILi2EEC5Ej = comdat any

$_ZN6dealii12ZeroFunctionILi2EED5Ev = comdat any

$_ZThn16_N6dealii12ZeroFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii12ZeroFunctionILi2EED0Ev = comdat any

$_ZNK6dealii12ZeroFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii12ZeroFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii12ZeroFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii12ZeroFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii12ZeroFunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii12ZeroFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE = comdat any

$_ZNK6dealii12ZeroFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj = comdat any

$_ZNK6dealii12ZeroFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE = comdat any

$_ZN6dealii16ConstantFunctionILi2EEC5Edj = comdat any

$_ZThn16_N6dealii16ConstantFunctionILi2EED1Ev = comdat any

$_ZN6dealii16ConstantFunctionILi2EED5Ev = comdat any

$_ZThn16_N6dealii16ConstantFunctionILi2EED0Ev = comdat any

$_ZNK6dealii16ConstantFunctionILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii16ConstantFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii16ConstantFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii16ConstantFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii16ConstantFunctionILi2EE18memory_consumptionEv = comdat any

$_ZN6dealii23ComponentSelectFunctionILi2EEC5Ejdj = comdat any

$_ZN6dealii23ComponentSelectFunctionILi2EEC5Ejj = comdat any

$_ZN6dealii23ComponentSelectFunctionILi2EEC5ERKSt4pairIjjEj = comdat any

$_ZNK6dealii23ComponentSelectFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii23ComponentSelectFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii23ComponentSelectFunctionILi2EE18memory_consumptionEv = comdat any

$_ZN6dealii8FunctionILi3EEC5Ejd = comdat any

$_ZN6dealii8FunctionILi3EED5Ev = comdat any

$_ZThn16_N6dealii8FunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii8FunctionILi3EED0Ev = comdat any

$_ZN6dealii8FunctionILi3EEaSERKS1_ = comdat any

$_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE = comdat any

$_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj = comdat any

$_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE = comdat any

$_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii8FunctionILi3EE18memory_consumptionEv = comdat any

$_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsC5Eii = comdat any

$_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD5Ev = comdat any

$_ZNK6dealii8FunctionILi3EE21ExcNumberOfComponents10print_infoERSo = comdat any

$_ZN6dealii12ZeroFunctionILi3EEC5Ej = comdat any

$_ZN6dealii12ZeroFunctionILi3EED5Ev = comdat any

$_ZThn16_N6dealii12ZeroFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii12ZeroFunctionILi3EED0Ev = comdat any

$_ZNK6dealii12ZeroFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii12ZeroFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii12ZeroFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii12ZeroFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii12ZeroFunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii12ZeroFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE = comdat any

$_ZNK6dealii12ZeroFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj = comdat any

$_ZNK6dealii12ZeroFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE = comdat any

$_ZN6dealii16ConstantFunctionILi3EEC5Edj = comdat any

$_ZThn16_N6dealii16ConstantFunctionILi3EED1Ev = comdat any

$_ZN6dealii16ConstantFunctionILi3EED5Ev = comdat any

$_ZThn16_N6dealii16ConstantFunctionILi3EED0Ev = comdat any

$_ZNK6dealii16ConstantFunctionILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii16ConstantFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii16ConstantFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZNK6dealii16ConstantFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii16ConstantFunctionILi3EE18memory_consumptionEv = comdat any

$_ZN6dealii23ComponentSelectFunctionILi3EEC5Ejdj = comdat any

$_ZN6dealii23ComponentSelectFunctionILi3EEC5Ejj = comdat any

$_ZN6dealii23ComponentSelectFunctionILi3EEC5ERKSt4pairIjjEj = comdat any

$_ZNK6dealii23ComponentSelectFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE = comdat any

$_ZNK6dealii23ComponentSelectFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii23ComponentSelectFunctionILi3EE18memory_consumptionEv = comdat any

$_ZN6dealii23ComponentSelectFunctionILi1EED0Ev = comdat any

$_ZThn16_N6dealii23ComponentSelectFunctionILi1EED1Ev = comdat any

$_ZThn16_N6dealii23ComponentSelectFunctionILi1EED0Ev = comdat any

$_ZN6dealii23ComponentSelectFunctionILi2EED0Ev = comdat any

$_ZThn16_N6dealii23ComponentSelectFunctionILi2EED1Ev = comdat any

$_ZThn16_N6dealii23ComponentSelectFunctionILi2EED0Ev = comdat any

$_ZN6dealii23ComponentSelectFunctionILi3EED0Ev = comdat any

$_ZThn16_N6dealii23ComponentSelectFunctionILi3EED1Ev = comdat any

$_ZThn16_N6dealii23ComponentSelectFunctionILi3EED0Ev = comdat any

$_ZN6dealii8FunctionILi1EE9dimensionE = comdat any

$_ZTVN6dealii8FunctionILi1EEE = comdat any

$_ZTVN6dealii8FunctionILi1EE21ExcNumberOfComponentsE = comdat any

$_ZTVN6dealii12ZeroFunctionILi1EEE = comdat any

$_ZTVN6dealii16ConstantFunctionILi1EEE = comdat any

$_ZTVN6dealii23ComponentSelectFunctionILi1EEE = comdat any

$_ZN6dealii8FunctionILi2EE9dimensionE = comdat any

$_ZTVN6dealii8FunctionILi2EEE = comdat any

$_ZTVN6dealii8FunctionILi2EE21ExcNumberOfComponentsE = comdat any

$_ZTVN6dealii12ZeroFunctionILi2EEE = comdat any

$_ZTVN6dealii16ConstantFunctionILi2EEE = comdat any

$_ZTVN6dealii23ComponentSelectFunctionILi2EEE = comdat any

$_ZN6dealii8FunctionILi3EE9dimensionE = comdat any

$_ZTVN6dealii8FunctionILi3EEE = comdat any

$_ZTVN6dealii8FunctionILi3EE21ExcNumberOfComponentsE = comdat any

$_ZTVN6dealii12ZeroFunctionILi3EEE = comdat any

$_ZTVN6dealii16ConstantFunctionILi3EEE = comdat any

$_ZTVN6dealii23ComponentSelectFunctionILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii8FunctionILi1EEE = comdat any

$_ZTSN6dealii8FunctionILi1EE21ExcNumberOfComponentsE = comdat any

$_ZTIN6dealii8FunctionILi1EE21ExcNumberOfComponentsE = comdat any

$_ZTSN6dealii12ZeroFunctionILi1EEE = comdat any

$_ZTIN6dealii12ZeroFunctionILi1EEE = comdat any

$_ZTSN6dealii16ConstantFunctionILi1EEE = comdat any

$_ZTIN6dealii16ConstantFunctionILi1EEE = comdat any

$_ZTSN6dealii23ComponentSelectFunctionILi1EEE = comdat any

$_ZTIN6dealii23ComponentSelectFunctionILi1EEE = comdat any

$_ZTSN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii8FunctionILi2EEE = comdat any

$_ZTSN6dealii8FunctionILi2EE21ExcNumberOfComponentsE = comdat any

$_ZTIN6dealii8FunctionILi2EE21ExcNumberOfComponentsE = comdat any

$_ZTSN6dealii12ZeroFunctionILi2EEE = comdat any

$_ZTIN6dealii12ZeroFunctionILi2EEE = comdat any

$_ZTSN6dealii16ConstantFunctionILi2EEE = comdat any

$_ZTIN6dealii16ConstantFunctionILi2EEE = comdat any

$_ZTSN6dealii23ComponentSelectFunctionILi2EEE = comdat any

$_ZTIN6dealii23ComponentSelectFunctionILi2EEE = comdat any

$_ZTSN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii8FunctionILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi3EE21ExcNumberOfComponentsE = comdat any

$_ZTIN6dealii8FunctionILi3EE21ExcNumberOfComponentsE = comdat any

$_ZTSN6dealii12ZeroFunctionILi3EEE = comdat any

$_ZTIN6dealii12ZeroFunctionILi3EEE = comdat any

$_ZTSN6dealii16ConstantFunctionILi3EEE = comdat any

$_ZTIN6dealii16ConstantFunctionILi3EEE = comdat any

$_ZTSN6dealii23ComponentSelectFunctionILi3EEE = comdat any

$_ZTIN6dealii23ComponentSelectFunctionILi3EEE = comdat any

@_ZN6dealii8FunctionILi1EE9dimensionE = weak_odr dso_local local_unnamed_addr constant i32 1, comdat, align 4
@_ZTVN6dealii8FunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii8FunctionILi1EEE, ptr @_ZN6dealii8FunctionILi1EED1Ev, ptr @_ZN6dealii8FunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii8FunctionILi1EEE, ptr @_ZThn16_N6dealii8FunctionILi1EED1Ev, ptr @_ZThn16_N6dealii8FunctionILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii8FunctionILi1EE21ExcNumberOfComponentsE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii8FunctionILi1EE21ExcNumberOfComponentsE, ptr @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD1Ev, ptr @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii8FunctionILi1EE21ExcNumberOfComponents10print_infoERSo] }, comdat, align 8
@.str = private unnamed_addr constant [52 x i8] c"You can only assign function objects with the same \00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"number of components. However, here the left operand \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"has \00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c" components, and the right operand \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" components.\00", align 1
@_ZTVN6dealii12ZeroFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii12ZeroFunctionILi1EEE, ptr @_ZN6dealii12ZeroFunctionILi1EED1Ev, ptr @_ZN6dealii12ZeroFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii12ZeroFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii12ZeroFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii12ZeroFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii12ZeroFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii12ZeroFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii12ZeroFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii12ZeroFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii12ZeroFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii12ZeroFunctionILi1EEE, ptr @_ZThn16_N6dealii12ZeroFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii12ZeroFunctionILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii16ConstantFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii16ConstantFunctionILi1EEE, ptr @_ZN6dealii16ConstantFunctionILi1EED1Ev, ptr @_ZN6dealii16ConstantFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii16ConstantFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii16ConstantFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii16ConstantFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii16ConstantFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii12ZeroFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii12ZeroFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii12ZeroFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii12ZeroFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii16ConstantFunctionILi1EEE, ptr @_ZThn16_N6dealii16ConstantFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii16ConstantFunctionILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii23ComponentSelectFunctionILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii23ComponentSelectFunctionILi1EEE, ptr @_ZN6dealii16ConstantFunctionILi1EED2Ev, ptr @_ZN6dealii23ComponentSelectFunctionILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii16ConstantFunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii23ComponentSelectFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii16ConstantFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii23ComponentSelectFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii12ZeroFunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii12ZeroFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii12ZeroFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii12ZeroFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii23ComponentSelectFunctionILi1EEE, ptr @_ZThn16_N6dealii23ComponentSelectFunctionILi1EED1Ev, ptr @_ZThn16_N6dealii23ComponentSelectFunctionILi1EED0Ev] }, comdat, align 8
@_ZN6dealii8FunctionILi2EE9dimensionE = weak_odr dso_local local_unnamed_addr constant i32 2, comdat, align 4
@_ZTVN6dealii8FunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii8FunctionILi2EEE, ptr @_ZN6dealii8FunctionILi2EED1Ev, ptr @_ZN6dealii8FunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii8FunctionILi2EEE, ptr @_ZThn16_N6dealii8FunctionILi2EED1Ev, ptr @_ZThn16_N6dealii8FunctionILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii8FunctionILi2EE21ExcNumberOfComponentsE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii8FunctionILi2EE21ExcNumberOfComponentsE, ptr @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD1Ev, ptr @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii8FunctionILi2EE21ExcNumberOfComponents10print_infoERSo] }, comdat, align 8
@_ZTVN6dealii12ZeroFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii12ZeroFunctionILi2EEE, ptr @_ZN6dealii12ZeroFunctionILi2EED1Ev, ptr @_ZN6dealii12ZeroFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii12ZeroFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii12ZeroFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii12ZeroFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii12ZeroFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii12ZeroFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii12ZeroFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii12ZeroFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii12ZeroFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii12ZeroFunctionILi2EEE, ptr @_ZThn16_N6dealii12ZeroFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii12ZeroFunctionILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii16ConstantFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii16ConstantFunctionILi2EEE, ptr @_ZN6dealii16ConstantFunctionILi2EED1Ev, ptr @_ZN6dealii16ConstantFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii16ConstantFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii16ConstantFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii16ConstantFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii16ConstantFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii12ZeroFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii12ZeroFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii12ZeroFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii12ZeroFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii16ConstantFunctionILi2EEE, ptr @_ZThn16_N6dealii16ConstantFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii16ConstantFunctionILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii23ComponentSelectFunctionILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii23ComponentSelectFunctionILi2EEE, ptr @_ZN6dealii16ConstantFunctionILi2EED2Ev, ptr @_ZN6dealii23ComponentSelectFunctionILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii16ConstantFunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii23ComponentSelectFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii16ConstantFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii23ComponentSelectFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii12ZeroFunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii12ZeroFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii12ZeroFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii12ZeroFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii23ComponentSelectFunctionILi2EEE, ptr @_ZThn16_N6dealii23ComponentSelectFunctionILi2EED1Ev, ptr @_ZThn16_N6dealii23ComponentSelectFunctionILi2EED0Ev] }, comdat, align 8
@_ZN6dealii8FunctionILi3EE9dimensionE = weak_odr dso_local local_unnamed_addr constant i32 3, comdat, align 4
@_ZTVN6dealii8FunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii8FunctionILi3EEE, ptr @_ZN6dealii8FunctionILi3EED1Ev, ptr @_ZN6dealii8FunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii8FunctionILi3EEE, ptr @_ZThn16_N6dealii8FunctionILi3EED1Ev, ptr @_ZThn16_N6dealii8FunctionILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii8FunctionILi3EE21ExcNumberOfComponentsE = weak_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii8FunctionILi3EE21ExcNumberOfComponentsE, ptr @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD1Ev, ptr @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii8FunctionILi3EE21ExcNumberOfComponents10print_infoERSo] }, comdat, align 8
@_ZTVN6dealii12ZeroFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii12ZeroFunctionILi3EEE, ptr @_ZN6dealii12ZeroFunctionILi3EED1Ev, ptr @_ZN6dealii12ZeroFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii12ZeroFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii12ZeroFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii12ZeroFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii12ZeroFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii12ZeroFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii12ZeroFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii12ZeroFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii12ZeroFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii12ZeroFunctionILi3EEE, ptr @_ZThn16_N6dealii12ZeroFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii12ZeroFunctionILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii16ConstantFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii16ConstantFunctionILi3EEE, ptr @_ZN6dealii16ConstantFunctionILi3EED1Ev, ptr @_ZN6dealii16ConstantFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii16ConstantFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii16ConstantFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii16ConstantFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii16ConstantFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii12ZeroFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii12ZeroFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii12ZeroFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii12ZeroFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii16ConstantFunctionILi3EEE, ptr @_ZThn16_N6dealii16ConstantFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii16ConstantFunctionILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii23ComponentSelectFunctionILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii23ComponentSelectFunctionILi3EEE, ptr @_ZN6dealii16ConstantFunctionILi3EED2Ev, ptr @_ZN6dealii23ComponentSelectFunctionILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii16ConstantFunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii23ComponentSelectFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii16ConstantFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii23ComponentSelectFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii12ZeroFunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii12ZeroFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii12ZeroFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii12ZeroFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii23ComponentSelectFunctionILi3EEE, ptr @_ZThn16_N6dealii23ComponentSelectFunctionILi3EED1Ev, ptr @_ZThn16_N6dealii23ComponentSelectFunctionILi3EED0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii8FunctionILi1EEE = weak_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii12FunctionTimeE = external constant ptr
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii8FunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi1EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii8FunctionILi1EE21ExcNumberOfComponentsE = weak_odr dso_local constant [48 x i8] c"N6dealii8FunctionILi1EE21ExcNumberOfComponentsE\00", comdat, align 1
@_ZTIN6dealii13ExceptionBaseE = external constant ptr
@_ZTIN6dealii8FunctionILi1EE21ExcNumberOfComponentsE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi1EE21ExcNumberOfComponentsE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii12ZeroFunctionILi1EEE = weak_odr dso_local constant [30 x i8] c"N6dealii12ZeroFunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii12ZeroFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12ZeroFunctionILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii16ConstantFunctionILi1EEE = weak_odr dso_local constant [34 x i8] c"N6dealii16ConstantFunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii16ConstantFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii16ConstantFunctionILi1EEE, ptr @_ZTIN6dealii12ZeroFunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii23ComponentSelectFunctionILi1EEE = weak_odr dso_local constant [41 x i8] c"N6dealii23ComponentSelectFunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii23ComponentSelectFunctionILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii23ComponentSelectFunctionILi1EEE, ptr @_ZTIN6dealii16ConstantFunctionILi1EEE }, comdat, align 8
@_ZTSN6dealii8FunctionILi2EEE = weak_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi2EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTSN6dealii8FunctionILi2EE21ExcNumberOfComponentsE = weak_odr dso_local constant [48 x i8] c"N6dealii8FunctionILi2EE21ExcNumberOfComponentsE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi2EE21ExcNumberOfComponentsE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi2EE21ExcNumberOfComponentsE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii12ZeroFunctionILi2EEE = weak_odr dso_local constant [30 x i8] c"N6dealii12ZeroFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii12ZeroFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12ZeroFunctionILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii16ConstantFunctionILi2EEE = weak_odr dso_local constant [34 x i8] c"N6dealii16ConstantFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii16ConstantFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii16ConstantFunctionILi2EEE, ptr @_ZTIN6dealii12ZeroFunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii23ComponentSelectFunctionILi2EEE = weak_odr dso_local constant [41 x i8] c"N6dealii23ComponentSelectFunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii23ComponentSelectFunctionILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii23ComponentSelectFunctionILi2EEE, ptr @_ZTIN6dealii16ConstantFunctionILi2EEE }, comdat, align 8
@_ZTSN6dealii8FunctionILi3EEE = weak_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi3EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTSN6dealii8FunctionILi3EE21ExcNumberOfComponentsE = weak_odr dso_local constant [48 x i8] c"N6dealii8FunctionILi3EE21ExcNumberOfComponentsE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi3EE21ExcNumberOfComponentsE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi3EE21ExcNumberOfComponentsE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZTSN6dealii12ZeroFunctionILi3EEE = weak_odr dso_local constant [30 x i8] c"N6dealii12ZeroFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii12ZeroFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii12ZeroFunctionILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii16ConstantFunctionILi3EEE = weak_odr dso_local constant [34 x i8] c"N6dealii16ConstantFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii16ConstantFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii16ConstantFunctionILi3EEE, ptr @_ZTIN6dealii12ZeroFunctionILi3EEE }, comdat, align 8
@_ZTSN6dealii23ComponentSelectFunctionILi3EEE = weak_odr dso_local constant [41 x i8] c"N6dealii23ComponentSelectFunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii23ComponentSelectFunctionILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii23ComponentSelectFunctionILi3EEE, ptr @_ZTIN6dealii16ConstantFunctionILi3EEE }, comdat, align 8

@_ZN6dealii8FunctionILi1EEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii8FunctionILi1EEC2Ejd
@_ZN6dealii8FunctionILi1EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii8FunctionILi1EED2Ev
@_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsC1Eii = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsC2Eii
@_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD2Ev
@_ZN6dealii12ZeroFunctionILi1EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii12ZeroFunctionILi1EEC2Ej
@_ZN6dealii12ZeroFunctionILi1EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12ZeroFunctionILi1EED2Ev
@_ZN6dealii16ConstantFunctionILi1EEC1Edj = weak_odr dso_local unnamed_addr alias void (ptr, double, i32), ptr @_ZN6dealii16ConstantFunctionILi1EEC2Edj
@_ZN6dealii16ConstantFunctionILi1EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii16ConstantFunctionILi1EED2Ev
@_ZN6dealii23ComponentSelectFunctionILi1EEC1Ejdj = weak_odr dso_local unnamed_addr alias void (ptr, i32, double, i32), ptr @_ZN6dealii23ComponentSelectFunctionILi1EEC2Ejdj
@_ZN6dealii23ComponentSelectFunctionILi1EEC1Ejj = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6dealii23ComponentSelectFunctionILi1EEC2Ejj
@_ZN6dealii23ComponentSelectFunctionILi1EEC1ERKSt4pairIjjEj = weak_odr dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6dealii23ComponentSelectFunctionILi1EEC2ERKSt4pairIjjEj
@_ZN6dealii8FunctionILi2EEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii8FunctionILi2EEC2Ejd
@_ZN6dealii8FunctionILi2EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii8FunctionILi2EED2Ev
@_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsC1Eii = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsC2Eii
@_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD2Ev
@_ZN6dealii12ZeroFunctionILi2EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii12ZeroFunctionILi2EEC2Ej
@_ZN6dealii12ZeroFunctionILi2EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12ZeroFunctionILi2EED2Ev
@_ZN6dealii16ConstantFunctionILi2EEC1Edj = weak_odr dso_local unnamed_addr alias void (ptr, double, i32), ptr @_ZN6dealii16ConstantFunctionILi2EEC2Edj
@_ZN6dealii16ConstantFunctionILi2EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii16ConstantFunctionILi2EED2Ev
@_ZN6dealii23ComponentSelectFunctionILi2EEC1Ejdj = weak_odr dso_local unnamed_addr alias void (ptr, i32, double, i32), ptr @_ZN6dealii23ComponentSelectFunctionILi2EEC2Ejdj
@_ZN6dealii23ComponentSelectFunctionILi2EEC1Ejj = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6dealii23ComponentSelectFunctionILi2EEC2Ejj
@_ZN6dealii23ComponentSelectFunctionILi2EEC1ERKSt4pairIjjEj = weak_odr dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6dealii23ComponentSelectFunctionILi2EEC2ERKSt4pairIjjEj
@_ZN6dealii8FunctionILi3EEC1Ejd = weak_odr dso_local unnamed_addr alias void (ptr, i32, double), ptr @_ZN6dealii8FunctionILi3EEC2Ejd
@_ZN6dealii8FunctionILi3EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii8FunctionILi3EED2Ev
@_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsC1Eii = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsC2Eii
@_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD2Ev
@_ZN6dealii12ZeroFunctionILi3EEC1Ej = weak_odr dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6dealii12ZeroFunctionILi3EEC2Ej
@_ZN6dealii12ZeroFunctionILi3EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii12ZeroFunctionILi3EED2Ev
@_ZN6dealii16ConstantFunctionILi3EEC1Edj = weak_odr dso_local unnamed_addr alias void (ptr, double, i32), ptr @_ZN6dealii16ConstantFunctionILi3EEC2Edj
@_ZN6dealii16ConstantFunctionILi3EED1Ev = weak_odr dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii16ConstantFunctionILi3EED2Ev
@_ZN6dealii23ComponentSelectFunctionILi3EEC1Ejdj = weak_odr dso_local unnamed_addr alias void (ptr, i32, double, i32), ptr @_ZN6dealii23ComponentSelectFunctionILi3EEC2Ejdj
@_ZN6dealii23ComponentSelectFunctionILi3EEC1Ejj = weak_odr dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6dealii23ComponentSelectFunctionILi3EEC2Ejj
@_ZN6dealii23ComponentSelectFunctionILi3EEC1ERKSt4pairIjjEj = weak_odr dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6dealii23ComponentSelectFunctionILi3EEC2ERKSt4pairIjjEj

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii8FunctionILi1EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !annotation !42 {
  tail call void @_ZN6dealii12FunctionTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %2)
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %5 unwind label %7

5:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 8, !tbaa !46
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  resume { ptr, i32 } %8
}

declare void @_ZN6dealii12FunctionTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi1EED5Ev) align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi1EED5Ev) align 2 !annotation !42 {
  tail call void @_ZN6dealii8FunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(92) ptr @_ZN6dealii8FunctionILi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(92) %1) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret ptr %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %1, align 8, !tbaa !66
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %24, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %22, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %21, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point", ptr %11, i64 %12
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef double %17(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef %3)
  %19 = load ptr, ptr %2, align 8, !tbaa !67
  %20 = getelementptr inbounds double, ptr %19, i64 %12
  store double %18, ptr %20, align 8, !tbaa !69
  %21 = add i32 %13, 1
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 8, !tbaa !64
  %24 = load ptr, ptr %1, align 8, !tbaa !66
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  %29 = icmp ugt i64 %28, %22
  br i1 %29, label %10, label %9, !llvm.loop !70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load ptr, ptr %1, align 8, !tbaa !66
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %22, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %20, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point", ptr %10, i64 %11
  %14 = load ptr, ptr %2, align 8, !tbaa !73
  %15 = getelementptr inbounds %"class.dealii::Vector", ptr %14, i64 %11
  %16 = load ptr, ptr %0, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(88) %15)
  %19 = add i32 %12, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %4, align 8, !tbaa !64
  %22 = load ptr, ptr %1, align 8, !tbaa !66
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = ashr exact i64 %25, 3
  %27 = icmp ugt i64 %26, %20
  br i1 %27, label %9, label %8, !llvm.loop !75
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = alloca %"class.dealii::Tensor", align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = load ptr, ptr %1, align 8, !tbaa !66
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %11, %4
  ret void

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %25, %11 ], [ %8, %4 ]
  %13 = phi i64 [ %23, %11 ], [ 0, %4 ]
  %14 = phi i32 [ %22, %11 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %15 = getelementptr inbounds %"class.dealii::Point", ptr %12, i64 %13
  %16 = load ptr, ptr %0, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %3)
  %19 = load ptr, ptr %2, align 8, !tbaa !76
  %20 = getelementptr inbounds %"class.dealii::Tensor", ptr %19, i64 %13
  %21 = load double, ptr %5, align 8, !tbaa !69
  store double %21, ptr %20, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  %22 = add i32 %14, 1
  %23 = zext i32 %22 to i64
  %24 = load ptr, ptr %6, align 8, !tbaa !64
  %25 = load ptr, ptr %1, align 8, !tbaa !66
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = ashr exact i64 %28, 3
  %30 = icmp ugt i64 %29, %23
  br i1 %30, label %11, label %10, !llvm.loop !78
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = alloca %"class.dealii::Tensor", align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %1, align 8, !tbaa !66
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %17
  %12 = phi i64 [ 0, %9 ], [ %19, %17 ]
  %13 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %14 = load i32, ptr %10, align 8, !tbaa !46
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %27

16:                                               ; preds = %17, %3
  ret void

17:                                               ; preds = %27, %11
  %18 = add i32 %13, 1
  %19 = zext i32 %18 to i64
  %20 = load ptr, ptr %5, align 8, !tbaa !64
  %21 = load ptr, ptr %1, align 8, !tbaa !66
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = ashr exact i64 %24, 3
  %26 = icmp ugt i64 %25, %19
  br i1 %26, label %11, label %16, !llvm.loop !79

27:                                               ; preds = %11, %27
  %28 = phi i64 [ %40, %27 ], [ 0, %11 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %29 = load ptr, ptr %1, align 8, !tbaa !66
  %30 = getelementptr inbounds %"class.dealii::Point", ptr %29, i64 %12
  %31 = load ptr, ptr %0, align 8, !tbaa !43
  %32 = getelementptr inbounds ptr, ptr %31, i64 8
  %33 = load ptr, ptr %32, align 8
  %34 = trunc i64 %28 to i32
  call void %33(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor") align 8 %4, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef %34)
  %35 = load ptr, ptr %2, align 8, !tbaa !80
  %36 = getelementptr inbounds %"class.std::vector.13", ptr %35, i64 %12
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  %38 = getelementptr inbounds %"class.dealii::Tensor", ptr %37, i64 %28
  %39 = load double, ptr %4, align 8, !tbaa !69
  store double %39, ptr %38, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %40 = add nuw nsw i64 %28, 1
  %41 = load i32, ptr %10, align 8, !tbaa !46
  %42 = zext i32 %41 to i64
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %27, label %17, !llvm.loop !82
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %1, align 8, !tbaa !66
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %24, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %22, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %21, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point", ptr %11, i64 %12
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef double %17(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef %3)
  %19 = load ptr, ptr %2, align 8, !tbaa !67
  %20 = getelementptr inbounds double, ptr %19, i64 %12
  store double %18, ptr %20, align 8, !tbaa !69
  %21 = add i32 %13, 1
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 8, !tbaa !64
  %24 = load ptr, ptr %1, align 8, !tbaa !66
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  %29 = icmp ugt i64 %28, %22
  br i1 %29, label %10, label %9, !llvm.loop !83
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load ptr, ptr %1, align 8, !tbaa !66
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %22, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %20, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point", ptr %10, i64 %11
  %14 = load ptr, ptr %2, align 8, !tbaa !73
  %15 = getelementptr inbounds %"class.dealii::Vector", ptr %14, i64 %11
  %16 = load ptr, ptr %0, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 13
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(88) %15)
  %19 = add i32 %12, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %4, align 8, !tbaa !64
  %22 = load ptr, ptr %1, align 8, !tbaa !66
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = ashr exact i64 %25, 3
  %27 = icmp ugt i64 %26, %20
  br i1 %27, label %9, label %8, !llvm.loop !84
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii8FunctionILi1EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(92) %0) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret i32 96
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsC2Eii(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsC5Eii) align 2 !prof !63 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii8FunctionILi1EE21ExcNumberOfComponentsE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.dealii::Function<1>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !85
  %5 = getelementptr inbounds %"class.dealii::Function<1>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !89
  ret void
}

declare void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat($_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD5Ev) align 2 !prof !63 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat($_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD5Ev) align 2 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD1Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE21ExcNumberOfComponents10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #8 comdat align 2 !prof !63 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 51)
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 53)
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 4)
  %6 = getelementptr inbounds %"class.dealii::Function<1>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %7)
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.3, i64 noundef 35)
  %10 = getelementptr inbounds %"class.dealii::Function<1>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !89
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %11)
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.4, i64 noundef 12)
  %14 = load ptr, ptr %12, align 8, !tbaa !43
  %15 = getelementptr i8, ptr %14, i64 -24
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds i8, ptr %12, i64 %16
  %18 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %17, i8 noundef signext 10)
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext %18)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi1EEC2Ej(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1) unnamed_addr #8 comdat($_ZN6dealii12ZeroFunctionILi1EEC5Ej) align 2 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #7 comdat($_ZN6dealii12ZeroFunctionILi1EED5Ev) align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii12ZeroFunctionILi1EED5Ev) align 2 !annotation !42 {
  tail call void @_ZN6dealii12ZeroFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii12ZeroFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %11, i1 false), !tbaa !69
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = load ptr, ptr %2, align 8, !tbaa !93
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = add i64 %10, -8
  %13 = sub i64 %12, %11
  %14 = and i64 %13, -8
  %15 = add i64 %14, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %15, i1 false), !tbaa !69
  br label %16

16:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load ptr, ptr %1, align 8, !tbaa !66
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !73
  br label %15

14:                                               ; preds = %25, %3
  ret void

15:                                               ; preds = %12, %25
  %16 = phi i64 [ 0, %12 ], [ %26, %25 ]
  %17 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %16, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !90
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %16, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = shl nuw nsw i64 %21, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 %24, i1 false), !tbaa !69
  br label %25

25:                                               ; preds = %20, %15
  %26 = add i64 %16, 1
  %27 = and i64 %26, 4294967295
  %28 = icmp ugt i64 %10, %27
  br i1 %28, label %15, label %14, !llvm.loop !94
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 8, !tbaa !76
  %9 = zext i32 %5 to i64
  %10 = shl nuw nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %10, i1 false), !tbaa !69
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = load ptr, ptr %1, align 8, !tbaa !66
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !76
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %21, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %20, %16 ]
  %19 = getelementptr inbounds %"class.dealii::Tensor", ptr %14, i64 %17
  store double 0.000000e+00, ptr %19, align 8, !tbaa !69
  %20 = add i32 %18, 1
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !95
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load ptr, ptr %1, align 8, !tbaa !66
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %2, align 8
  %17 = zext i32 %14 to i64
  %18 = shl nuw nsw i64 %17, 3
  br label %19

19:                                               ; preds = %12, %26
  %20 = phi i64 [ 0, %12 ], [ %28, %26 ]
  %21 = phi i32 [ 0, %12 ], [ %27, %26 ]
  br i1 %15, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.std::vector.13", ptr %16, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %18, i1 false), !tbaa !69
  br label %26

25:                                               ; preds = %26, %3
  ret void

26:                                               ; preds = %22, %19
  %27 = add i32 %21, 1
  %28 = zext i32 %27 to i64
  %29 = icmp ugt i64 %10, %28
  br i1 %29, label %19, label %25, !llvm.loop !96
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi1EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii16ConstantFunctionILi1EEC5Edj) align 2 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !97
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat($_ZN6dealii16ConstantFunctionILi1EED5Ev) align 2 !annotation !42 {
  tail call void @_ZN6dealii16ConstantFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii16ConstantFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !97
  ret double %5
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !90
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %5, i64 %8
  %10 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !69
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %15, %13 ], [ %5, %3 ]
  store double %11, ptr %14, align 8, !tbaa !69
  %15 = getelementptr inbounds double, ptr %14, i64 1
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %13, !llvm.loop !100

17:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = load ptr, ptr %2, align 8, !tbaa !93
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %5, %7
  br i1 %10, label %15, label %11

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %13, %11 ], [ %5, %4 ]
  store double %9, ptr %12, align 8, !tbaa !69
  %13 = getelementptr inbounds double, ptr %12, i64 1
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %11, !llvm.loop !100

15:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load ptr, ptr %1, align 8, !tbaa !66
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !73
  %14 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  br label %16

15:                                               ; preds = %30, %3
  ret void

16:                                               ; preds = %12, %30
  %17 = phi i64 [ 0, %12 ], [ %31, %30 ]
  %18 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %17, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !90
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %19, i64 %22
  %24 = load double, ptr %14, align 8, !tbaa !69
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %16, %26
  %27 = phi ptr [ %28, %26 ], [ %19, %16 ]
  store double %24, ptr %27, align 8, !tbaa !69
  %28 = getelementptr inbounds double, ptr %27, i64 1
  %29 = icmp eq ptr %28, %23
  br i1 %29, label %30, label %26, !llvm.loop !100

30:                                               ; preds = %26, %16
  %31 = add i64 %17, 1
  %32 = and i64 %31, 4294967295
  %33 = icmp ugt i64 %10, %32
  br i1 %33, label %16, label %15, !llvm.loop !101
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii16ConstantFunctionILi1EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret i32 104
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi1EEC2Ejdj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, double noundef %2, i32 noundef %3) unnamed_addr #8 comdat($_ZN6dealii23ComponentSelectFunctionILi1EEC5Ejdj) align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  store double %2, ptr %6, align 8, !tbaa !97
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !43
  %7 = add i32 %1, 1
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = zext i32 %1 to i64
  %11 = or disjoint i64 %9, %10
  %12 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1
  store i64 %11, ptr %12, align 8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi1EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii23ComponentSelectFunctionILi1EEC5Ejj) align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  store double 1.000000e+00, ptr %5, align 8, !tbaa !97
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %6 = add i32 %1, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = zext i32 %1 to i64
  %10 = or disjoint i64 %8, %9
  %11 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1
  store i64 %10, ptr %11, align 8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi1EEC2ERKSt4pairIjjEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii23ComponentSelectFunctionILi1EEC5ERKSt4pairIjjEj) align 2 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  store double 1.000000e+00, ptr %5, align 8, !tbaa !97
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %1, align 4
  store i64 %7, ptr %6, align 8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %11, i1 false), !tbaa !69
  br label %12

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !102
  %17 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !105
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds double, ptr %14, i64 %19
  %21 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !69
  %23 = icmp eq i32 %16, %18
  br i1 %23, label %31, label %24

24:                                               ; preds = %12
  %25 = zext i32 %16 to i64
  %26 = getelementptr inbounds double, ptr %14, i64 %25
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %26, %24 ]
  store double %22, ptr %28, align 8, !tbaa !69
  %29 = getelementptr inbounds double, ptr %28, i64 1
  %30 = icmp eq ptr %29, %20
  br i1 %30, label %31, label %27, !llvm.loop !100

31:                                               ; preds = %27, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = load ptr, ptr %1, align 8, !tbaa !66
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !73
  %14 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !102
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !105
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  %21 = icmp eq i32 %15, %18
  br label %23

22:                                               ; preds = %44, %3
  ret void

23:                                               ; preds = %12, %44
  %24 = phi i64 [ 0, %12 ], [ %45, %44 ]
  %25 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %24, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !90
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = zext i32 %26 to i64
  %30 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %24, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  %32 = shl nuw nsw i64 %29, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 %32, i1 false), !tbaa !69
  br label %33

33:                                               ; preds = %28, %23
  %34 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %24, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds double, ptr %35, i64 %19
  %37 = load double, ptr %20, align 8, !tbaa !69
  br i1 %21, label %44, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds double, ptr %35, i64 %16
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi ptr [ %42, %40 ], [ %39, %38 ]
  store double %37, ptr %41, align 8, !tbaa !69
  %42 = getelementptr inbounds double, ptr %41, i64 1
  %43 = icmp eq ptr %42, %36
  br i1 %43, label %44, label %40, !llvm.loop !100

44:                                               ; preds = %40, %33
  %45 = add i64 %24, 1
  %46 = and i64 %45, 4294967295
  %47 = icmp ugt i64 %10, %46
  br i1 %47, label %23, label %22, !llvm.loop !106
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii23ComponentSelectFunctionILi1EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret i32 112
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii8FunctionILi2EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !annotation !42 {
  tail call void @_ZN6dealii12FunctionTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %2)
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %5 unwind label %7

5:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.dealii::Function.23", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 8, !tbaa !107
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi2EED5Ev) align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi2EED5Ev) align 2 !annotation !42 {
  tail call void @_ZN6dealii8FunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(92) ptr @_ZN6dealii8FunctionILi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(92) %1) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret ptr %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = load ptr, ptr %1, align 8, !tbaa !111
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %24, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %22, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %21, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.30", ptr %11, i64 %12
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef double %17(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %14, i32 noundef %3)
  %19 = load ptr, ptr %2, align 8, !tbaa !67
  %20 = getelementptr inbounds double, ptr %19, i64 %12
  store double %18, ptr %20, align 8, !tbaa !69
  %21 = add i32 %13, 1
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 8, !tbaa !109
  %24 = load ptr, ptr %1, align 8, !tbaa !111
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 4
  %29 = icmp ugt i64 %28, %22
  br i1 %29, label %10, label %9, !llvm.loop !112
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = load ptr, ptr %1, align 8, !tbaa !111
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %22, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %20, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.30", ptr %10, i64 %11
  %14 = load ptr, ptr %2, align 8, !tbaa !73
  %15 = getelementptr inbounds %"class.dealii::Vector", ptr %14, i64 %11
  %16 = load ptr, ptr %0, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %13, ptr noundef nonnull align 8 dereferenceable(88) %15)
  %19 = add i32 %12, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %4, align 8, !tbaa !109
  %22 = load ptr, ptr %1, align 8, !tbaa !111
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = ashr exact i64 %25, 4
  %27 = icmp ugt i64 %26, %20
  br i1 %27, label %9, label %8, !llvm.loop !113
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = alloca %"class.dealii::Tensor.31", align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = load ptr, ptr %1, align 8, !tbaa !111
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  br label %13

12:                                               ; preds = %13, %4
  ret void

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %8, %10 ], [ %29, %13 ]
  %15 = phi i64 [ 0, %10 ], [ %27, %13 ]
  %16 = phi i32 [ 0, %10 ], [ %26, %13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %17 = getelementptr inbounds %"class.dealii::Point.30", ptr %14, i64 %15
  %18 = load ptr, ptr %0, align 8, !tbaa !43
  %19 = getelementptr inbounds ptr, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor.31") align 8 %5, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %3)
  %21 = load ptr, ptr %2, align 8, !tbaa !114
  %22 = getelementptr inbounds %"class.dealii::Tensor.31", ptr %21, i64 %15
  %23 = load double, ptr %5, align 8, !tbaa !69
  store double %23, ptr %22, align 8, !tbaa !69
  %24 = load double, ptr %11, align 8, !tbaa !69
  %25 = getelementptr inbounds [2 x double], ptr %22, i64 0, i64 1
  store double %24, ptr %25, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  %26 = add i32 %16, 1
  %27 = zext i32 %26 to i64
  %28 = load ptr, ptr %6, align 8, !tbaa !109
  %29 = load ptr, ptr %1, align 8, !tbaa !111
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = ashr exact i64 %32, 4
  %34 = icmp ugt i64 %33, %27
  br i1 %34, label %13, label %12, !llvm.loop !116
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = alloca %"class.dealii::Tensor.31", align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = load ptr, ptr %1, align 8, !tbaa !111
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Function.23", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds [2 x double], ptr %4, i64 0, i64 1
  br label %12

12:                                               ; preds = %9, %18
  %13 = phi i64 [ 0, %9 ], [ %20, %18 ]
  %14 = phi i32 [ 0, %9 ], [ %19, %18 ]
  %15 = load i32, ptr %10, align 8, !tbaa !107
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %28

17:                                               ; preds = %18, %3
  ret void

18:                                               ; preds = %28, %12
  %19 = add i32 %14, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %5, align 8, !tbaa !109
  %22 = load ptr, ptr %1, align 8, !tbaa !111
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = ashr exact i64 %25, 4
  %27 = icmp ugt i64 %26, %20
  br i1 %27, label %12, label %17, !llvm.loop !117

28:                                               ; preds = %12, %28
  %29 = phi i64 [ %43, %28 ], [ 0, %12 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %30 = load ptr, ptr %1, align 8, !tbaa !111
  %31 = getelementptr inbounds %"class.dealii::Point.30", ptr %30, i64 %13
  %32 = load ptr, ptr %0, align 8, !tbaa !43
  %33 = getelementptr inbounds ptr, ptr %32, i64 8
  %34 = load ptr, ptr %33, align 8
  %35 = trunc i64 %29 to i32
  call void %34(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor.31") align 8 %4, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %31, i32 noundef %35)
  %36 = load ptr, ptr %2, align 8, !tbaa !118
  %37 = getelementptr inbounds %"class.std::vector.32", ptr %36, i64 %13
  %38 = load ptr, ptr %37, align 8, !tbaa !114
  %39 = getelementptr inbounds %"class.dealii::Tensor.31", ptr %38, i64 %29
  %40 = load double, ptr %4, align 8, !tbaa !69
  store double %40, ptr %39, align 8, !tbaa !69
  %41 = load double, ptr %11, align 8, !tbaa !69
  %42 = getelementptr inbounds [2 x double], ptr %39, i64 0, i64 1
  store double %41, ptr %42, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  %43 = add nuw nsw i64 %29, 1
  %44 = load i32, ptr %10, align 8, !tbaa !107
  %45 = zext i32 %44 to i64
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %28, label %18, !llvm.loop !120
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = load ptr, ptr %1, align 8, !tbaa !111
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %24, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %22, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %21, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.30", ptr %11, i64 %12
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef double %17(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %3)
  %19 = load ptr, ptr %2, align 8, !tbaa !67
  %20 = getelementptr inbounds double, ptr %19, i64 %12
  store double %18, ptr %20, align 8, !tbaa !69
  %21 = add i32 %13, 1
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 8, !tbaa !109
  %24 = load ptr, ptr %1, align 8, !tbaa !111
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 4
  %29 = icmp ugt i64 %28, %22
  br i1 %29, label %10, label %9, !llvm.loop !121
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = load ptr, ptr %1, align 8, !tbaa !111
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %22, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %20, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.30", ptr %10, i64 %11
  %14 = load ptr, ptr %2, align 8, !tbaa !73
  %15 = getelementptr inbounds %"class.dealii::Vector", ptr %14, i64 %11
  %16 = load ptr, ptr %0, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 13
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(88) %15)
  %19 = add i32 %12, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %4, align 8, !tbaa !109
  %22 = load ptr, ptr %1, align 8, !tbaa !111
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = ashr exact i64 %25, 4
  %27 = icmp ugt i64 %26, %20
  br i1 %27, label %9, label %8, !llvm.loop !122
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii8FunctionILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(92) %0) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret i32 96
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsC2Eii(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsC5Eii) align 2 !prof !63 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii8FunctionILi2EE21ExcNumberOfComponentsE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.dealii::Function<2>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !123
  %5 = getelementptr inbounds %"class.dealii::Function<2>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !125
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat($_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD5Ev) align 2 !prof !63 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat($_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD5Ev) align 2 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD1Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE21ExcNumberOfComponents10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #8 comdat align 2 !prof !63 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 51)
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 53)
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 4)
  %6 = getelementptr inbounds %"class.dealii::Function<2>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !123
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %7)
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.3, i64 noundef 35)
  %10 = getelementptr inbounds %"class.dealii::Function<2>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !125
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %11)
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.4, i64 noundef 12)
  %14 = load ptr, ptr %12, align 8, !tbaa !43
  %15 = getelementptr i8, ptr %14, i64 -24
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds i8, ptr %12, i64 %16
  %18 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %17, i8 noundef signext 10)
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext %18)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi2EEC2Ej(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1) unnamed_addr #8 comdat($_ZN6dealii12ZeroFunctionILi2EEC5Ej) align 2 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #7 comdat($_ZN6dealii12ZeroFunctionILi2EED5Ev) align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii12ZeroFunctionILi2EED5Ev) align 2 !annotation !42 {
  tail call void @_ZN6dealii12ZeroFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii12ZeroFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %11, i1 false), !tbaa !69
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = load ptr, ptr %2, align 8, !tbaa !93
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = add i64 %10, -8
  %13 = sub i64 %12, %11
  %14 = and i64 %13, -8
  %15 = add i64 %14, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %15, i1 false), !tbaa !69
  br label %16

16:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = load ptr, ptr %1, align 8, !tbaa !111
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !73
  br label %15

14:                                               ; preds = %25, %3
  ret void

15:                                               ; preds = %12, %25
  %16 = phi i64 [ 0, %12 ], [ %26, %25 ]
  %17 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %16, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !90
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %16, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = shl nuw nsw i64 %21, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 %24, i1 false), !tbaa !69
  br label %25

25:                                               ; preds = %20, %15
  %26 = add i64 %16, 1
  %27 = and i64 %26, 4294967295
  %28 = icmp ugt i64 %10, %27
  br i1 %28, label %15, label %14, !llvm.loop !126
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !69
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Function.23", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !107
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 8, !tbaa !114
  %9 = zext i32 %5 to i64
  %10 = shl nuw nsw i64 %9, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %10, i1 false), !tbaa !69
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = load ptr, ptr %1, align 8, !tbaa !111
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !114
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %20, %16 ]
  %18 = shl i64 %17, 4
  %19 = getelementptr i8, ptr %14, i64 %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false), !tbaa !69
  %20 = add i64 %17, 1
  %21 = and i64 %20, 4294967295
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !127
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = load ptr, ptr %1, align 8, !tbaa !111
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.dealii::Function.23", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !107
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %2, align 8
  %17 = zext i32 %14 to i64
  %18 = shl nuw nsw i64 %17, 4
  br label %19

19:                                               ; preds = %12, %26
  %20 = phi i64 [ 0, %12 ], [ %28, %26 ]
  %21 = phi i32 [ 0, %12 ], [ %27, %26 ]
  br i1 %15, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.std::vector.32", ptr %16, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %18, i1 false), !tbaa !69
  br label %26

25:                                               ; preds = %26, %3
  ret void

26:                                               ; preds = %22, %19
  %27 = add i32 %21, 1
  %28 = zext i32 %27 to i64
  %29 = icmp ugt i64 %10, %28
  br i1 %29, label %19, label %25, !llvm.loop !128
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi2EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii16ConstantFunctionILi2EEC5Edj) align 2 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !129
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat($_ZN6dealii16ConstantFunctionILi2EED5Ev) align 2 !annotation !42 {
  tail call void @_ZN6dealii16ConstantFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii16ConstantFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !129
  ret double %5
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !90
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %5, i64 %8
  %10 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !69
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %15, %13 ], [ %5, %3 ]
  store double %11, ptr %14, align 8, !tbaa !69
  %15 = getelementptr inbounds double, ptr %14, i64 1
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %13, !llvm.loop !100

17:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = load ptr, ptr %2, align 8, !tbaa !93
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %5, %7
  br i1 %10, label %15, label %11

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %13, %11 ], [ %5, %4 ]
  store double %9, ptr %12, align 8, !tbaa !69
  %13 = getelementptr inbounds double, ptr %12, i64 1
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %11, !llvm.loop !100

15:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = load ptr, ptr %1, align 8, !tbaa !111
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !73
  %14 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  br label %16

15:                                               ; preds = %30, %3
  ret void

16:                                               ; preds = %12, %30
  %17 = phi i64 [ 0, %12 ], [ %31, %30 ]
  %18 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %17, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !90
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %19, i64 %22
  %24 = load double, ptr %14, align 8, !tbaa !69
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %16, %26
  %27 = phi ptr [ %28, %26 ], [ %19, %16 ]
  store double %24, ptr %27, align 8, !tbaa !69
  %28 = getelementptr inbounds double, ptr %27, i64 1
  %29 = icmp eq ptr %28, %23
  br i1 %29, label %30, label %26, !llvm.loop !100

30:                                               ; preds = %26, %16
  %31 = add i64 %17, 1
  %32 = and i64 %31, 4294967295
  %33 = icmp ugt i64 %10, %32
  br i1 %33, label %16, label %15, !llvm.loop !132
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii16ConstantFunctionILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret i32 104
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi2EEC2Ejdj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, double noundef %2, i32 noundef %3) unnamed_addr #8 comdat($_ZN6dealii23ComponentSelectFunctionILi2EEC5Ejdj) align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  store double %2, ptr %6, align 8, !tbaa !129
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !43
  %7 = add i32 %1, 1
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = zext i32 %1 to i64
  %11 = or disjoint i64 %9, %10
  %12 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1
  store i64 %11, ptr %12, align 8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi2EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii23ComponentSelectFunctionILi2EEC5Ejj) align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  store double 1.000000e+00, ptr %5, align 8, !tbaa !129
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %6 = add i32 %1, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = zext i32 %1 to i64
  %10 = or disjoint i64 %8, %9
  %11 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1
  store i64 %10, ptr %11, align 8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi2EEC2ERKSt4pairIjjEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii23ComponentSelectFunctionILi2EEC5ERKSt4pairIjjEj) align 2 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  store double 1.000000e+00, ptr %5, align 8, !tbaa !129
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %1, align 4
  store i64 %7, ptr %6, align 8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %11, i1 false), !tbaa !69
  br label %12

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !133
  %17 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !135
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds double, ptr %14, i64 %19
  %21 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !69
  %23 = icmp eq i32 %16, %18
  br i1 %23, label %31, label %24

24:                                               ; preds = %12
  %25 = zext i32 %16 to i64
  %26 = getelementptr inbounds double, ptr %14, i64 %25
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %26, %24 ]
  store double %22, ptr %28, align 8, !tbaa !69
  %29 = getelementptr inbounds double, ptr %28, i64 1
  %30 = icmp eq ptr %29, %20
  br i1 %30, label %31, label %27, !llvm.loop !100

31:                                               ; preds = %27, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = load ptr, ptr %1, align 8, !tbaa !111
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !73
  %14 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !133
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !135
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  %21 = icmp eq i32 %15, %18
  br label %23

22:                                               ; preds = %44, %3
  ret void

23:                                               ; preds = %12, %44
  %24 = phi i64 [ 0, %12 ], [ %45, %44 ]
  %25 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %24, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !90
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = zext i32 %26 to i64
  %30 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %24, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  %32 = shl nuw nsw i64 %29, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 %32, i1 false), !tbaa !69
  br label %33

33:                                               ; preds = %28, %23
  %34 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %24, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds double, ptr %35, i64 %19
  %37 = load double, ptr %20, align 8, !tbaa !69
  br i1 %21, label %44, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds double, ptr %35, i64 %16
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi ptr [ %42, %40 ], [ %39, %38 ]
  store double %37, ptr %41, align 8, !tbaa !69
  %42 = getelementptr inbounds double, ptr %41, i64 1
  %43 = icmp eq ptr %42, %36
  br i1 %43, label %44, label %40, !llvm.loop !100

44:                                               ; preds = %40, %33
  %45 = add i64 %24, 1
  %46 = and i64 %45, 4294967295
  %47 = icmp ugt i64 %10, %46
  br i1 %47, label %23, label %22, !llvm.loop !136
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii23ComponentSelectFunctionILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret i32 112
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii8FunctionILi3EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !annotation !42 {
  tail call void @_ZN6dealii12FunctionTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %2)
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %5 unwind label %7

5:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.dealii::Function.46", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 8, !tbaa !137
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi3EED5Ev) align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi3EED5Ev) align 2 !annotation !42 {
  tail call void @_ZN6dealii8FunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(92) ptr @_ZN6dealii8FunctionILi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(92) %1) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret ptr %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !139 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = load ptr, ptr %1, align 8, !tbaa !142
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10, !prof !143

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %24, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %22, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %21, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.53", ptr %11, i64 %12
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef double %17(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %14, i32 noundef %3), !prof !144
  %19 = load ptr, ptr %2, align 8, !tbaa !67
  %20 = getelementptr inbounds double, ptr %19, i64 %12
  store double %18, ptr %20, align 8, !tbaa !69
  %21 = add i32 %13, 1
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 8, !tbaa !140
  %24 = load ptr, ptr %1, align 8, !tbaa !142
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 24
  %29 = icmp ugt i64 %28, %22
  br i1 %29, label %10, label %9, !prof !145, !llvm.loop !146
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !147 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = load ptr, ptr %1, align 8, !tbaa !142
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9, !prof !148

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %22, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %20, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.53", ptr %10, i64 %11
  %14 = load ptr, ptr %2, align 8, !tbaa !73
  %15 = getelementptr inbounds %"class.dealii::Vector", ptr %14, i64 %11
  %16 = load ptr, ptr %0, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %13, ptr noundef nonnull align 8 dereferenceable(88) %15), !prof !149
  %19 = add i32 %12, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %4, align 8, !tbaa !140
  %22 = load ptr, ptr %1, align 8, !tbaa !142
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 24
  %27 = icmp ugt i64 %26, %20
  br i1 %27, label %9, label %8, !prof !150, !llvm.loop !151
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = alloca %"class.dealii::Tensor.54", align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = load ptr, ptr %1, align 8, !tbaa !142
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %12 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  br label %14

13:                                               ; preds = %14, %4
  ret void

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %8, %10 ], [ %32, %14 ]
  %16 = phi i64 [ 0, %10 ], [ %30, %14 ]
  %17 = phi i32 [ 0, %10 ], [ %29, %14 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %18 = getelementptr inbounds %"class.dealii::Point.53", ptr %15, i64 %16
  %19 = load ptr, ptr %0, align 8, !tbaa !43
  %20 = getelementptr inbounds ptr, ptr %19, i64 8
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor.54") align 8 %5, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %3)
  %22 = load ptr, ptr %2, align 8, !tbaa !152
  %23 = getelementptr inbounds %"class.dealii::Tensor.54", ptr %22, i64 %16
  %24 = load double, ptr %5, align 8, !tbaa !69
  store double %24, ptr %23, align 8, !tbaa !69
  %25 = load double, ptr %11, align 8, !tbaa !69
  %26 = getelementptr inbounds [3 x double], ptr %23, i64 0, i64 1
  store double %25, ptr %26, align 8, !tbaa !69
  %27 = load double, ptr %12, align 8, !tbaa !69
  %28 = getelementptr inbounds [3 x double], ptr %23, i64 0, i64 2
  store double %27, ptr %28, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %29 = add i32 %17, 1
  %30 = zext i32 %29 to i64
  %31 = load ptr, ptr %6, align 8, !tbaa !140
  %32 = load ptr, ptr %1, align 8, !tbaa !142
  %33 = ptrtoint ptr %31 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 24
  %37 = icmp ugt i64 %36, %30
  br i1 %37, label %14, label %13, !llvm.loop !154
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = alloca %"class.dealii::Tensor.54", align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = load ptr, ptr %1, align 8, !tbaa !142
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Function.46", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %12 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  br label %13

13:                                               ; preds = %9, %19
  %14 = phi i64 [ 0, %9 ], [ %21, %19 ]
  %15 = phi i32 [ 0, %9 ], [ %20, %19 ]
  %16 = load i32, ptr %10, align 8, !tbaa !137
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %29

18:                                               ; preds = %19, %3
  ret void

19:                                               ; preds = %29, %13
  %20 = add i32 %15, 1
  %21 = zext i32 %20 to i64
  %22 = load ptr, ptr %5, align 8, !tbaa !140
  %23 = load ptr, ptr %1, align 8, !tbaa !142
  %24 = ptrtoint ptr %22 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 24
  %28 = icmp ugt i64 %27, %21
  br i1 %28, label %13, label %18, !llvm.loop !155

29:                                               ; preds = %13, %29
  %30 = phi i64 [ %46, %29 ], [ 0, %13 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %31 = load ptr, ptr %1, align 8, !tbaa !142
  %32 = getelementptr inbounds %"class.dealii::Point.53", ptr %31, i64 %14
  %33 = load ptr, ptr %0, align 8, !tbaa !43
  %34 = getelementptr inbounds ptr, ptr %33, i64 8
  %35 = load ptr, ptr %34, align 8
  %36 = trunc i64 %30 to i32
  call void %35(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor.54") align 8 %4, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %32, i32 noundef %36)
  %37 = load ptr, ptr %2, align 8, !tbaa !156
  %38 = getelementptr inbounds %"class.std::vector.55", ptr %37, i64 %14
  %39 = load ptr, ptr %38, align 8, !tbaa !152
  %40 = getelementptr inbounds %"class.dealii::Tensor.54", ptr %39, i64 %30
  %41 = load double, ptr %4, align 8, !tbaa !69
  store double %41, ptr %40, align 8, !tbaa !69
  %42 = load double, ptr %11, align 8, !tbaa !69
  %43 = getelementptr inbounds [3 x double], ptr %40, i64 0, i64 1
  store double %42, ptr %43, align 8, !tbaa !69
  %44 = load double, ptr %12, align 8, !tbaa !69
  %45 = getelementptr inbounds [3 x double], ptr %40, i64 0, i64 2
  store double %44, ptr %45, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %46 = add nuw nsw i64 %30, 1
  %47 = load i32, ptr %10, align 8, !tbaa !137
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %29, label %19, !llvm.loop !158
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = load ptr, ptr %1, align 8, !tbaa !142
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %10, %4
  ret void

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %24, %10 ], [ %7, %4 ]
  %12 = phi i64 [ %22, %10 ], [ 0, %4 ]
  %13 = phi i32 [ %21, %10 ], [ 0, %4 ]
  %14 = getelementptr inbounds %"class.dealii::Point.53", ptr %11, i64 %12
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef double %17(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %3)
  %19 = load ptr, ptr %2, align 8, !tbaa !67
  %20 = getelementptr inbounds double, ptr %19, i64 %12
  store double %18, ptr %20, align 8, !tbaa !69
  %21 = add i32 %13, 1
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 8, !tbaa !140
  %24 = load ptr, ptr %1, align 8, !tbaa !142
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 24
  %29 = icmp ugt i64 %28, %22
  br i1 %29, label %10, label %9, !llvm.loop !159
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = load ptr, ptr %1, align 8, !tbaa !142
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %22, %9 ], [ %6, %3 ]
  %11 = phi i64 [ %20, %9 ], [ 0, %3 ]
  %12 = phi i32 [ %19, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %"class.dealii::Point.53", ptr %10, i64 %11
  %14 = load ptr, ptr %2, align 8, !tbaa !73
  %15 = getelementptr inbounds %"class.dealii::Vector", ptr %14, i64 %11
  %16 = load ptr, ptr %0, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 13
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(88) %15)
  %19 = add i32 %12, 1
  %20 = zext i32 %19 to i64
  %21 = load ptr, ptr %4, align 8, !tbaa !140
  %22 = load ptr, ptr %1, align 8, !tbaa !142
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 24
  %27 = icmp ugt i64 %26, %20
  br i1 %27, label %9, label %8, !llvm.loop !160
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii8FunctionILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(92) %0) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret i32 96
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsC2Eii(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsC5Eii) align 2 !prof !63 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii8FunctionILi3EE21ExcNumberOfComponentsE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.dealii::Function<3>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !161
  %5 = getelementptr inbounds %"class.dealii::Function<3>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !163
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat($_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD5Ev) align 2 !prof !63 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat($_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD5Ev) align 2 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD1Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE21ExcNumberOfComponents10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #8 comdat align 2 !prof !63 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 51)
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 53)
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 4)
  %6 = getelementptr inbounds %"class.dealii::Function<3>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !161
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %7)
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.3, i64 noundef 35)
  %10 = getelementptr inbounds %"class.dealii::Function<3>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !163
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %11)
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.4, i64 noundef 12)
  %14 = load ptr, ptr %12, align 8, !tbaa !43
  %15 = getelementptr i8, ptr %14, i64 -24
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds i8, ptr %12, i64 %16
  %18 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %17, i8 noundef signext 10)
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext %18)
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi3EEC2Ej(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1) unnamed_addr #8 comdat($_ZN6dealii12ZeroFunctionILi3EEC5Ej) align 2 !prof !164 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #7 comdat($_ZN6dealii12ZeroFunctionILi3EED5Ev) align 2 !prof !164 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii12ZeroFunctionILi3EED5Ev) align 2 !annotation !42 {
  tail call void @_ZN6dealii12ZeroFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii12ZeroFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  ret double 0.000000e+00
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %11, i1 false), !tbaa !69
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = load ptr, ptr %2, align 8, !tbaa !93
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = add i64 %10, -8
  %13 = sub i64 %12, %11
  %14 = and i64 %13, -8
  %15 = add i64 %14, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %15, i1 false), !tbaa !69
  br label %16

16:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !165 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = load ptr, ptr %1, align 8, !tbaa !142
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %14, label %12, !prof !166

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !73
  br label %15

14:                                               ; preds = %25, %3
  ret void

15:                                               ; preds = %12, %25
  %16 = phi i64 [ 0, %12 ], [ %26, %25 ]
  %17 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %16, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !90
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20, !prof !167

20:                                               ; preds = %15
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %16, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = shl nuw nsw i64 %21, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 %24, i1 false), !tbaa !69
  br label %25

25:                                               ; preds = %20, %15
  %26 = add i64 %16, 1
  %27 = and i64 %26, 4294967295
  %28 = icmp ugt i64 %10, %27
  br i1 %28, label %15, label %14, !prof !168, !llvm.loop !169
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !69
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Function.46", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !137
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 8, !tbaa !152
  %9 = zext i32 %5 to i64
  %10 = mul nuw nsw i64 %9, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %10, i1 false), !tbaa !69
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #8 comdat align 2 !prof !63 {
  %5 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = load ptr, ptr %1, align 8, !tbaa !142
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = icmp eq ptr %6, %7
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !152
  br label %16

15:                                               ; preds = %16, %4
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %20, %16 ]
  %18 = mul i64 %17, 24
  %19 = getelementptr i8, ptr %14, i64 %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !tbaa !69
  %20 = add i64 %17, 1
  %21 = and i64 %20, 4294967295
  %22 = icmp ugt i64 %11, %21
  br i1 %22, label %16, label %15, !llvm.loop !170
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = load ptr, ptr %1, align 8, !tbaa !142
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.dealii::Function.46", ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !137
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %2, align 8
  %17 = zext i32 %14 to i64
  %18 = mul nuw nsw i64 %17, 24
  br label %19

19:                                               ; preds = %12, %26
  %20 = phi i64 [ 0, %12 ], [ %28, %26 ]
  %21 = phi i32 [ 0, %12 ], [ %27, %26 ]
  br i1 %15, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.std::vector.55", ptr %16, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !152
  tail call void @llvm.memset.p0.i64(ptr align 8 %24, i8 0, i64 %18, i1 false), !tbaa !69
  br label %26

25:                                               ; preds = %26, %3
  ret void

26:                                               ; preds = %22, %19
  %27 = add i32 %21, 1
  %28 = zext i32 %27 to i64
  %29 = icmp ugt i64 %10, %28
  br i1 %29, label %19, label %25, !llvm.loop !171
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi3EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii16ConstantFunctionILi3EEC5Edj) align 2 !prof !172 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !173
  ret void
}

; Function Attrs: cold nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat($_ZN6dealii16ConstantFunctionILi3EED5Ev) align 2 !annotation !42 {
  tail call void @_ZN6dealii16ConstantFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZNK6dealii16ConstantFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !173
  ret double %5
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !90
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %5, i64 %8
  %10 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !69
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %15, %13 ], [ %5, %3 ]
  store double %11, ptr %14, align 8, !tbaa !69
  %15 = getelementptr inbounds double, ptr %14, i64 1
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %13, !llvm.loop !100

17:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !176 {
  %5 = load ptr, ptr %2, align 8, !tbaa !93
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %5, %7
  br i1 %10, label %15, label %11, !prof !177

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %13, %11 ], [ %5, %4 ]
  store double %9, ptr %12, align 8, !tbaa !69
  %13 = getelementptr inbounds double, ptr %12, i64 1
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %11, !prof !178, !llvm.loop !100

15:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = load ptr, ptr %1, align 8, !tbaa !142
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !73
  %14 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  br label %16

15:                                               ; preds = %30, %3
  ret void

16:                                               ; preds = %12, %30
  %17 = phi i64 [ 0, %12 ], [ %31, %30 ]
  %18 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %17, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !90
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %19, i64 %22
  %24 = load double, ptr %14, align 8, !tbaa !69
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %16, %26
  %27 = phi ptr [ %28, %26 ], [ %19, %16 ]
  store double %24, ptr %27, align 8, !tbaa !69
  %28 = getelementptr inbounds double, ptr %27, i64 1
  %29 = icmp eq ptr %28, %23
  br i1 %29, label %30, label %26, !llvm.loop !100

30:                                               ; preds = %26, %16
  %31 = add i64 %17, 1
  %32 = and i64 %31, 4294967295
  %33 = icmp ugt i64 %10, %32
  br i1 %33, label %16, label %15, !llvm.loop !179
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii16ConstantFunctionILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret i32 104
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi3EEC2Ejdj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, double noundef %2, i32 noundef %3) unnamed_addr #8 comdat($_ZN6dealii23ComponentSelectFunctionILi3EEC5Ejdj) align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  store double %2, ptr %6, align 8, !tbaa !173
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !43
  %7 = add i32 %1, 1
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = zext i32 %1 to i64
  %11 = or disjoint i64 %9, %10
  %12 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1
  store i64 %11, ptr %12, align 8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi3EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii23ComponentSelectFunctionILi3EEC5Ejj) align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  store double 1.000000e+00, ptr %5, align 8, !tbaa !173
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %6 = add i32 %1, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = zext i32 %1 to i64
  %10 = or disjoint i64 %8, %9
  %11 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1
  store i64 %10, ptr %11, align 8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi3EEC2ERKSt4pairIjjEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #8 comdat($_ZN6dealii23ComponentSelectFunctionILi3EEC5ERKSt4pairIjjEj) align 2 !prof !63 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2, double noundef 0.000000e+00)
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  store double 1.000000e+00, ptr %5, align 8, !tbaa !173
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %1, align 4
  store i64 %7, ptr %6, align 8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = shl nuw nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 %11, i1 false), !tbaa !69
  br label %12

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %"class.dealii::Vector", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !180
  %17 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !182
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds double, ptr %14, i64 %19
  %21 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !69
  %23 = icmp eq i32 %16, %18
  br i1 %23, label %31, label %24

24:                                               ; preds = %12
  %25 = zext i32 %16 to i64
  %26 = getelementptr inbounds double, ptr %14, i64 %25
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %26, %24 ]
  store double %22, ptr %28, align 8, !tbaa !69
  %29 = getelementptr inbounds double, ptr %28, i64 1
  %30 = icmp eq ptr %29, %20
  br i1 %30, label %31, label %27, !llvm.loop !100

31:                                               ; preds = %27, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #8 comdat align 2 !prof !63 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = load ptr, ptr %1, align 8, !tbaa !142
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = icmp eq ptr %5, %6
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !73
  %14 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !180
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !182
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  %21 = icmp eq i32 %15, %18
  br label %23

22:                                               ; preds = %44, %3
  ret void

23:                                               ; preds = %12, %44
  %24 = phi i64 [ 0, %12 ], [ %45, %44 ]
  %25 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %24, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !90
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = zext i32 %26 to i64
  %30 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %24, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  %32 = shl nuw nsw i64 %29, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 %32, i1 false), !tbaa !69
  br label %33

33:                                               ; preds = %28, %23
  %34 = getelementptr inbounds %"class.dealii::Vector", ptr %13, i64 %24, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds double, ptr %35, i64 %19
  %37 = load double, ptr %20, align 8, !tbaa !69
  br i1 %21, label %44, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds double, ptr %35, i64 %16
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi ptr [ %42, %40 ], [ %39, %38 ]
  store double %37, ptr %41, align 8, !tbaa !69
  %42 = getelementptr inbounds double, ptr %41, i64 1
  %43 = icmp eq ptr %42, %36
  br i1 %43, label %44, label %40, !llvm.loop !100

44:                                               ; preds = %40, %33
  %45 = add i64 %24, 1
  %46 = and i64 %45, 4294967295
  %47 = icmp ugt i64 %10, %46
  br i1 %47, label %23, label %22, !llvm.loop !183
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii23ComponentSelectFunctionILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #7 comdat align 2 !prof !63 {
  ret i32 112
}

declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 comdat($_ZN6dealii16ConstantFunctionILi1EED5Ev) align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 comdat($_ZN6dealii16ConstantFunctionILi2EED5Ev) align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 comdat($_ZN6dealii16ConstantFunctionILi3EED5Ev) align 2 !prof !172 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 !annotation !42 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  tail call void @_ZdlPv(ptr noundef %2) #15
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN6dealii12ZeroFunctionILi3EEC2Ej, ptr @_ZN6dealii8FunctionILi3EEC2Ejd, i64 44}
!36 = !{ptr @_ZN6dealii12ZeroFunctionILi3EED2Ev, ptr @_ZN6dealii11SubscriptorD2Ev, i64 44}
!37 = !{ptr @_ZN6dealii12ZeroFunctionILi3EED2Ev, ptr @_ZN6dealii12FunctionTimeD2Ev, i64 44}
!38 = !{ptr @_ZN6dealii16ConstantFunctionILi3EEC2Edj, ptr @_ZN6dealii8FunctionILi3EEC2Ejd, i64 11}
!39 = !{ptr @_ZN6dealii16ConstantFunctionILi3EED2Ev, ptr @_ZN6dealii11SubscriptorD2Ev, i64 11}
!40 = !{ptr @_ZN6dealii16ConstantFunctionILi3EED2Ev, ptr @_ZN6dealii12FunctionTimeD2Ev, i64 11}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"instr_prof_hash_mismatch"}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !52, i64 88}
!47 = !{!"_ZTSN6dealii8FunctionILi1EEE", !48, i64 0, !51, i64 16, !52, i64 88}
!48 = !{!"_ZTSN6dealii12FunctionTimeE", !49, i64 8}
!49 = !{!"double", !50, i64 0}
!50 = !{!"omnipotent char", !45, i64 0}
!51 = !{!"_ZTSN6dealii11SubscriptorE", !52, i64 8, !53, i64 16, !61, i64 64}
!52 = !{!"int", !50, i64 0}
!53 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !54, i64 0}
!54 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !55, i64 0}
!55 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !56, i64 0, !58, i64 8}
!56 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !57, i64 0}
!57 = !{!"_ZTSSt4lessIPKcE"}
!58 = !{!"_ZTSSt15_Rb_tree_header", !59, i64 0, !62, i64 32}
!59 = !{!"_ZTSSt18_Rb_tree_node_base", !60, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!60 = !{!"_ZTSSt14_Rb_tree_color", !50, i64 0}
!61 = !{!"any pointer", !50, i64 0}
!62 = !{!"long", !50, i64 0}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!65, !61, i64 8}
!65 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!66 = !{!65, !61, i64 0}
!67 = !{!68, !61, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!69 = !{!49, !49, i64 0}
!70 = distinct !{!70, !71, !72}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !{!74, !61, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN6dealii6VectorIdEESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!75 = distinct !{!75, !71, !72}
!76 = !{!77, !61, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!78 = distinct !{!78, !71, !72}
!79 = distinct !{!79, !71, !72}
!80 = !{!81, !61, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi1EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!82 = distinct !{!82, !71, !72}
!83 = distinct !{!83, !71, !72}
!84 = distinct !{!84, !71, !72}
!85 = !{!86, !52, i64 60}
!86 = !{!"_ZTSN6dealii8FunctionILi1EE21ExcNumberOfComponentsE", !87, i64 0, !52, i64 60, !52, i64 64}
!87 = !{!"_ZTSN6dealii13ExceptionBaseE", !88, i64 0, !61, i64 8, !52, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !52, i64 56}
!88 = !{!"_ZTSSt9exception"}
!89 = !{!86, !52, i64 64}
!90 = !{!91, !52, i64 72}
!91 = !{!"_ZTSN6dealii6VectorIdEE", !51, i64 0, !52, i64 72, !52, i64 76, !61, i64 80}
!92 = !{!91, !61, i64 80}
!93 = !{!61, !61, i64 0}
!94 = distinct !{!94, !71, !72}
!95 = distinct !{!95, !71, !72}
!96 = distinct !{!96, !71, !72}
!97 = !{!98, !49, i64 96}
!98 = !{!"_ZTSN6dealii16ConstantFunctionILi1EEE", !99, i64 0, !49, i64 96}
!99 = !{!"_ZTSN6dealii12ZeroFunctionILi1EEE", !47, i64 0}
!100 = distinct !{!100, !71, !72}
!101 = distinct !{!101, !71, !72}
!102 = !{!103, !52, i64 104}
!103 = !{!"_ZTSN6dealii23ComponentSelectFunctionILi1EEE", !98, i64 0, !104, i64 104}
!104 = !{!"_ZTSSt4pairIjjE", !52, i64 0, !52, i64 4}
!105 = !{!103, !52, i64 108}
!106 = distinct !{!106, !71, !72}
!107 = !{!108, !52, i64 88}
!108 = !{!"_ZTSN6dealii8FunctionILi2EEE", !48, i64 0, !51, i64 16, !52, i64 88}
!109 = !{!110, !61, i64 8}
!110 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!111 = !{!110, !61, i64 0}
!112 = distinct !{!112, !71, !72}
!113 = distinct !{!113, !71, !72}
!114 = !{!115, !61, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!116 = distinct !{!116, !71, !72}
!117 = distinct !{!117, !71, !72}
!118 = !{!119, !61, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!120 = distinct !{!120, !71, !72}
!121 = distinct !{!121, !71, !72}
!122 = distinct !{!122, !71, !72}
!123 = !{!124, !52, i64 60}
!124 = !{!"_ZTSN6dealii8FunctionILi2EE21ExcNumberOfComponentsE", !87, i64 0, !52, i64 60, !52, i64 64}
!125 = !{!124, !52, i64 64}
!126 = distinct !{!126, !71, !72}
!127 = distinct !{!127, !71, !72}
!128 = distinct !{!128, !71, !72}
!129 = !{!130, !49, i64 96}
!130 = !{!"_ZTSN6dealii16ConstantFunctionILi2EEE", !131, i64 0, !49, i64 96}
!131 = !{!"_ZTSN6dealii12ZeroFunctionILi2EEE", !108, i64 0}
!132 = distinct !{!132, !71, !72}
!133 = !{!134, !52, i64 104}
!134 = !{!"_ZTSN6dealii23ComponentSelectFunctionILi2EEE", !130, i64 0, !104, i64 104}
!135 = !{!134, !52, i64 108}
!136 = distinct !{!136, !71, !72}
!137 = !{!138, !52, i64 88}
!138 = !{!"_ZTSN6dealii8FunctionILi3EEE", !48, i64 0, !51, i64 16, !52, i64 88}
!139 = !{!"function_entry_count", i64 38426}
!140 = !{!141, !61, i64 8}
!141 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!142 = !{!141, !61, i64 0}
!143 = !{!"branch_weights", i32 1, i32 38425}
!144 = !{!"VP", i32 0, i64 371758, i64 6239521724658171322, i64 371758}
!145 = !{!"branch_weights", i32 333333, i32 38425}
!146 = distinct !{!146, !71, !72}
!147 = !{!"function_entry_count", i64 266948}
!148 = !{!"branch_weights", i32 1, i32 266947}
!149 = !{!"VP", i32 0, i64 1067792, i64 5491148478368375735, i64 1067792}
!150 = !{!"branch_weights", i32 800845, i32 266947}
!151 = distinct !{!151, !71, !72}
!152 = !{!153, !61, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!154 = distinct !{!154, !71, !72}
!155 = distinct !{!155, !71, !72}
!156 = !{!157, !61, i64 0}
!157 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!158 = distinct !{!158, !71, !72}
!159 = distinct !{!159, !71, !72}
!160 = distinct !{!160, !71, !72}
!161 = !{!162, !52, i64 60}
!162 = !{!"_ZTSN6dealii8FunctionILi3EE21ExcNumberOfComponentsE", !87, i64 0, !52, i64 60, !52, i64 64}
!163 = !{!162, !52, i64 64}
!164 = !{!"function_entry_count", i64 44}
!165 = !{!"function_entry_count", i64 50548}
!166 = !{!"branch_weights", i32 1, i32 50547}
!167 = !{!"branch_weights", i32 1, i32 404383}
!168 = !{!"branch_weights", i32 353837, i32 50547}
!169 = distinct !{!169, !71, !72}
!170 = distinct !{!170, !71, !72}
!171 = distinct !{!171, !71, !72}
!172 = !{!"function_entry_count", i64 11}
!173 = !{!174, !49, i64 96}
!174 = !{!"_ZTSN6dealii16ConstantFunctionILi3EEE", !175, i64 0, !49, i64 96}
!175 = !{!"_ZTSN6dealii12ZeroFunctionILi3EEE", !138, i64 0}
!176 = !{!"function_entry_count", i64 12672}
!177 = !{!"branch_weights", i32 1, i32 12671}
!178 = !{!"branch_weights", i32 12671, i32 88705}
!179 = distinct !{!179, !71, !72}
!180 = !{!181, !52, i64 104}
!181 = !{!"_ZTSN6dealii23ComponentSelectFunctionILi3EEE", !174, i64 0, !104, i64 104}
!182 = !{!181, !52, i64 108}
!183 = distinct !{!183, !71, !72}
