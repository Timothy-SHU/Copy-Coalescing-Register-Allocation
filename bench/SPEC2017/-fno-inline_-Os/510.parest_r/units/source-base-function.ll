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
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
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

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm = comdat any

$_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii5PointILi1EEC2Ev = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2ERKS1_ = comdat any

$_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE = comdat any

$_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi1EEaSERKS1_ = comdat any

$_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm = comdat any

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

$_ZSt4fillIPddEvT_S1_RKT0_ = comdat any

$_ZN6dealii6VectorIdE5beginEv = comdat any

$_ZN6dealii6VectorIdE3endEv = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_ = comdat any

$_ZNSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNSt6vectorIdSaIdEE3endEv = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2Eb = comdat any

$_ZNK6dealii12ZeroFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE = comdat any

$_ZN6dealii6TensorILi1ELi1EE5clearEv = comdat any

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

$_ZSt9make_pairIRKjjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_ = comdat any

$_ZN6dealii23ComponentSelectFunctionILi1EEC5Ejj = comdat any

$_ZN6dealii23ComponentSelectFunctionILi1EEC5ERKSt4pairIjjEj = comdat any

$_ZNK6dealii23ComponentSelectFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE = comdat any

$_ZN6dealii6VectorIdEaSEd = comdat any

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

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm = comdat any

$_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii5PointILi2EEC2Ev = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2ERKS1_ = comdat any

$_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE = comdat any

$_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi2EEaSERKS1_ = comdat any

$_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm = comdat any

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

$_ZN6dealii6TensorILi1ELi2EEC2Eb = comdat any

$_ZNK6dealii12ZeroFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE = comdat any

$_ZN6dealii6TensorILi1ELi2EE5clearEv = comdat any

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

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm = comdat any

$_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE = comdat any

$_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii5PointILi3EEC2Ev = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2ERKS1_ = comdat any

$_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE = comdat any

$_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi3EEaSERKS1_ = comdat any

$_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE = comdat any

$_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm = comdat any

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

$_ZN6dealii6TensorILi1ELi3EEC2Eb = comdat any

$_ZNK6dealii12ZeroFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE = comdat any

$_ZN6dealii6TensorILi1ELi3EE5clearEv = comdat any

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

$_ZNSt4pairIjjEC2IRKjjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS5_S6_EEEbE4typeELb1EEEOS5_OS6_ = comdat any

$_ZSt8__fill_aIPddEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_ = comdat any

$_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_ = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii8FunctionILi1EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN6dealii12FunctionTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %2) #8
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #8
          to label %5 unwind label %7

5:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 8, !tbaa !76
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi1EED5Ev) align 2 !prof !72 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #9
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi1EED5Ev) align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(92) ptr @_ZN6dealii8FunctionILi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(92) %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %18, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef double %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %3) #8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  store double %15, ptr %16, align 8, !tbaa !93
  %17 = add i32 %10, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %8, label %7, !llvm.loop !94
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<1>, std::allocator<dealii::Point<1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = load ptr, ptr %0, align 8, !tbaa !99
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !100 {
  %3 = load ptr, ptr %0, align 8, !tbaa !99
  %4 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !101 {
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %15, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #9
  %11 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %15 = add i32 %9, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %7, label %6, !llvm.loop !104
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !105 {
  %3 = load ptr, ptr %0, align 8, !tbaa !106
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !108 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !109 {
  %3 = load double, ptr %1, align 8, !tbaa !93
  store double %3, ptr %0, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Tensor", align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %4
  ret void

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %19, %9 ], [ 0, %4 ]
  %11 = phi i32 [ %18, %9 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %10) #9
  %13 = load ptr, ptr %0, align 8, !tbaa !73
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor") align 8 %5, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %3) #8
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %18 = add i32 %11, 1
  %19 = zext i32 %18 to i64
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %21 = icmp ugt i64 %20, %19
  br i1 %21, label %9, label %8, !llvm.loop !110
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !111
  %4 = getelementptr inbounds %"class.dealii::Tensor", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !113 {
  %3 = load double, ptr %1, align 8, !tbaa !93
  store double %3, ptr %0, align 8, !tbaa !93
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = alloca %"class.dealii::Tensor", align 8
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %15
  %10 = phi i64 [ 0, %7 ], [ %17, %15 ]
  %11 = phi i32 [ 0, %7 ], [ %16, %15 ]
  %12 = load i32, ptr %8, align 8, !tbaa !76
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %20

14:                                               ; preds = %15, %3
  ret void

15:                                               ; preds = %20, %9
  %16 = add i32 %11, 1
  %17 = zext i32 %16 to i64
  %18 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %9, label %14, !llvm.loop !114

20:                                               ; preds = %9, %20
  %21 = phi i64 [ %30, %20 ], [ 0, %9 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %10) #9
  %23 = load ptr, ptr %0, align 8, !tbaa !73
  %24 = getelementptr inbounds ptr, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8
  %26 = trunc i64 %21 to i32
  call void %25(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor") align 8 %4, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %26) #8
  %27 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %21) #9
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %30 = add nuw nsw i64 %21, 1
  %31 = load i32, ptr %8, align 8, !tbaa !76
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %20, label %15, !llvm.loop !115
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !116
  %4 = getelementptr inbounds %"class.std::vector.13", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %18, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef double %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %3) #8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  store double %15, ptr %16, align 8, !tbaa !93
  %17 = add i32 %10, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %8, label %7, !llvm.loop !118
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %15, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #9
  %11 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 13
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %15 = add i32 %9, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %7, label %6, !llvm.loop !119
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii8FunctionILi1EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(92) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret i32 96
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsC2Eii(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsC5Eii) align 2 !prof !72 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii8FunctionILi1EE21ExcNumberOfComponentsE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.dealii::Function<1>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !120
  %5 = getelementptr inbounds %"class.dealii::Function<1>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !124
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD5Ev) align 2 !prof !72 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD5Ev) align 2 {
  tail call void @_ZN6dealii8FunctionILi1EE21ExcNumberOfComponentsD1Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi1EE21ExcNumberOfComponents10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !72 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #8
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1) #8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2) #8
  %6 = getelementptr inbounds %"class.dealii::Function<1>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !120
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7) #8
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.3) #8
  %10 = getelementptr inbounds %"class.dealii::Function<1>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !124
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %11) #8
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.4) #8
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #0

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi1EEC2Ej(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1) unnamed_addr #0 comdat($_ZN6dealii12ZeroFunctionILi1EEC5Ej) align 2 !prof !72 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef 0.000000e+00) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii12ZeroFunctionILi1EED5Ev) align 2 !prof !72 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii12ZeroFunctionILi1EED5Ev) align 2 {
  tail call void @_ZN6dealii12ZeroFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii12ZeroFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = alloca double, align 8
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %6 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store double 0.000000e+00, ptr %4, align 8, !tbaa !93
  call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !125 {
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #3 comdat align 2 !prof !126 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #3 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !130
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds double, ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = alloca double, align 8
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %7 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double 0.000000e+00, ptr %5, align 8, !tbaa !93
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %6, ptr %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !131 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !132 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !133 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = alloca double, align 8
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %16, %8 ], [ 0, %3 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %3 ]
  %11 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  %12 = call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %13 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  %14 = call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store double 0.000000e+00, ptr %4, align 8, !tbaa !93
  call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %15 = add i32 %10, 1
  %16 = zext i32 %15 to i64
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %8, label %7, !llvm.loop !134
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !135 {
  br i1 %1, label %3, label %4, !prof !136

3:                                                ; preds = %2
  store double 0.000000e+00, ptr %0, align 8, !tbaa !93
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %11, %8 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  tail call void @_ZN6dealii6TensorILi1ELi1EE5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  %11 = add nuw nsw i64 %9, 1
  %12 = load i32, ptr %4, align 8, !tbaa !76
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %8, label %7, !llvm.loop !137
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EE5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  tail call void @_ZN6dealii6TensorILi1ELi1EE5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #8
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !138
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Function", ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %14
  %9 = phi i64 [ 0, %6 ], [ %16, %14 ]
  %10 = phi i32 [ 0, %6 ], [ %15, %14 ]
  %11 = load i32, ptr %7, align 8, !tbaa !76
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %19

13:                                               ; preds = %14, %3
  ret void

14:                                               ; preds = %19, %8
  %15 = add i32 %10, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %8, label %13, !llvm.loop !139

19:                                               ; preds = %8, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %8 ]
  %21 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi1EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %20) #9
  tail call void @_ZN6dealii6TensorILi1ELi1EE5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #8
  %23 = add nuw nsw i64 %20, 1
  %24 = load i32, ptr %7, align 8, !tbaa !76
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %19, label %14, !llvm.loop !140
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi1EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii16ConstantFunctionILi1EEC5Edj) align 2 !prof !72 {
  tail call void @_ZN6dealii12ZeroFunctionILi1EEC2Ej(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat($_ZN6dealii16ConstantFunctionILi1EED5Ev) align 2 {
  tail call void @_ZN6dealii16ConstantFunctionILi1EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii16ConstantFunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  %4 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !141
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %6 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  tail call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %7 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  tail call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %5, ptr %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  br label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %6 ], [ %16, %9 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %13 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %12) #8
  %14 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %15 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %14) #8
  tail call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %13, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  %16 = add i32 %11, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %9, label %8, !llvm.loop !144
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii16ConstantFunctionILi1EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret i32 104
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi1EEC2Ejdj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, double noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii23ComponentSelectFunctionILi1EEC5Ejdj) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, ptr %5, align 4, !tbaa !145
  tail call void @_ZN6dealii16ConstantFunctionILi1EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %2, i32 noundef %3) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %8 = add i32 %1, 1
  store i32 %8, ptr %6, align 4, !tbaa !145
  %9 = invoke i64 @_ZSt9make_pairIRKjjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #8
          to label %10 unwind label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1
  store i64 %9, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @_ZN6dealii16ConstantFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local i64 @_ZSt9make_pairIRKjjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat {
  %3 = alloca %"struct.std::pair", align 8
  call void @_ZNSt4pairIjjEC2IRKjjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS5_S6_EEEbE4typeELb1EEEOS5_OS6_(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #8
  %4 = load i64, ptr %3, align 8
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi1EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii23ComponentSelectFunctionILi1EEC5Ejj) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, ptr %4, align 4, !tbaa !145
  tail call void @_ZN6dealii16ConstantFunctionILi1EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef 1.000000e+00, i32 noundef %2) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %7 = add i32 %1, 1
  store i32 %7, ptr %5, align 4, !tbaa !145
  %8 = invoke i64 @_ZSt9make_pairIRKjjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #8
          to label %9 unwind label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1
  store i64 %8, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @_ZN6dealii16ConstantFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi1EEC2ERKSt4pairIjjEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii23ComponentSelectFunctionILi1EEC5ERKSt4pairIjjEj) align 2 !prof !72 {
  tail call void @_ZN6dealii16ConstantFunctionILi1EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef 1.000000e+00, i32 noundef %2) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi1EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %1, align 4
  store i64 %6, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef 0.000000e+00) #8
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %6 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !146
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %5, i64 %8
  %10 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %11 = getelementptr inbounds %"class.dealii::ComponentSelectFunction", ptr %0, i64 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !149
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds double, ptr %10, i64 %13
  %15 = getelementptr inbounds %"class.dealii::ConstantFunction", ptr %0, i64 0, i32 1
  tail call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %9, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 !prof !150 {
  %3 = alloca double, align 8
  store double %1, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !130
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !151

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #8
  %9 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #8
  call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %8, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br label %10

10:                                               ; preds = %7, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %13, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %12, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #9
  %11 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #9
  tail call void @_ZNK6dealii23ComponentSelectFunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %12 = add i32 %9, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %7, label %6, !llvm.loop !152
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii23ComponentSelectFunctionILi1EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret i32 112
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii8FunctionILi2EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN6dealii12FunctionTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %2) #8
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #8
          to label %5 unwind label %7

5:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %"class.dealii::Function.23", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 8, !tbaa !153
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi2EED5Ev) align 2 !prof !72 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #9
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi2EED5Ev) align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(92) ptr @_ZN6dealii8FunctionILi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(92) %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %18, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 1 ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef double %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %11, i32 noundef %3) #8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  store double %15, ptr %16, align 8, !tbaa !93
  %17 = add i32 %10, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %8, label %7, !llvm.loop !155
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !156 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<2>, std::allocator<dealii::Point<2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = load ptr, ptr %0, align 8, !tbaa !159
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !160 {
  %3 = load ptr, ptr %0, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.dealii::Point.30", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %15, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 1 ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #9
  %11 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %10, ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %15 = add i32 %9, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %7, label %6, !llvm.loop !161
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Point.30", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 !prof !162 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 !prof !163 {
  %3 = load double, ptr %1, align 8, !tbaa !93
  store double %3, ptr %0, align 8, !tbaa !93
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Tensor.31", align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %4
  ret void

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %19, %9 ], [ 0, %4 ]
  %11 = phi i32 [ %18, %9 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %10) #9
  %13 = load ptr, ptr %0, align 8, !tbaa !73
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor.31") align 8 %5, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %3) #8
  %16 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %18 = add i32 %11, 1
  %19 = zext i32 %18 to i64
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %21 = icmp ugt i64 %20, %19
  br i1 %21, label %9, label %8, !llvm.loop !164
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !165
  %4 = getelementptr inbounds %"class.dealii::Tensor.31", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 !prof !167 {
  %3 = load double, ptr %1, align 8, !tbaa !93
  store double %3, ptr %0, align 8, !tbaa !93
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !93
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = alloca %"class.dealii::Tensor.31", align 8
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Function.23", ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %15
  %10 = phi i64 [ 0, %7 ], [ %17, %15 ]
  %11 = phi i32 [ 0, %7 ], [ %16, %15 ]
  %12 = load i32, ptr %8, align 8, !tbaa !153
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %20

14:                                               ; preds = %15, %3
  ret void

15:                                               ; preds = %20, %9
  %16 = add i32 %11, 1
  %17 = zext i32 %16 to i64
  %18 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %9, label %14, !llvm.loop !168

20:                                               ; preds = %9, %20
  %21 = phi i64 [ %30, %20 ], [ 0, %9 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %22 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %10) #9
  %23 = load ptr, ptr %0, align 8, !tbaa !73
  %24 = getelementptr inbounds ptr, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8
  %26 = trunc i64 %21 to i32
  call void %25(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor.31") align 8 %4, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %22, i32 noundef %26) #8
  %27 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %21) #9
  %29 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %30 = add nuw nsw i64 %21, 1
  %31 = load i32, ptr %8, align 8, !tbaa !153
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %20, label %15, !llvm.loop !169
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !170
  %4 = getelementptr inbounds %"class.std::vector.32", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %18, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef double %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %3) #8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  store double %15, ptr %16, align 8, !tbaa !93
  %17 = add i32 %10, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %8, label %7, !llvm.loop !172
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %15, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #9
  %11 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 13
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %15 = add i32 %9, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %7, label %6, !llvm.loop !173
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii8FunctionILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(92) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret i32 96
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsC2Eii(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsC5Eii) align 2 !prof !72 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii8FunctionILi2EE21ExcNumberOfComponentsE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.dealii::Function<2>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !174
  %5 = getelementptr inbounds %"class.dealii::Function<2>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !176
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD5Ev) align 2 !prof !72 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD5Ev) align 2 {
  tail call void @_ZN6dealii8FunctionILi2EE21ExcNumberOfComponentsD1Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi2EE21ExcNumberOfComponents10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !72 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #8
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1) #8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2) #8
  %6 = getelementptr inbounds %"class.dealii::Function<2>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !174
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7) #8
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.3) #8
  %10 = getelementptr inbounds %"class.dealii::Function<2>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !176
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %11) #8
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.4) #8
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi2EEC2Ej(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1) unnamed_addr #0 comdat($_ZN6dealii12ZeroFunctionILi2EEC5Ej) align 2 !prof !72 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef 0.000000e+00) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii12ZeroFunctionILi2EED5Ev) align 2 !prof !72 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii12ZeroFunctionILi2EED5Ev) align 2 {
  tail call void @_ZN6dealii12ZeroFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii12ZeroFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = alloca double, align 8
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %6 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store double 0.000000e+00, ptr %4, align 8, !tbaa !93
  call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = alloca double, align 8
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %7 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double 0.000000e+00, ptr %5, align 8, !tbaa !93
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %6, ptr %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = alloca double, align 8
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %16, %8 ], [ 0, %3 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %3 ]
  %11 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  %12 = call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %13 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  %14 = call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store double 0.000000e+00, ptr %4, align 8, !tbaa !93
  call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %15 = add i32 %10, 1
  %16 = zext i32 %15 to i64
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %8, label %7, !llvm.loop !177
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !178 {
  br i1 %1, label %3, label %4, !prof !179

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !93
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = getelementptr inbounds %"class.dealii::Function.23", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !153
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %11, %8 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  tail call void @_ZN6dealii6TensorILi1ELi2EE5clearEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #8
  %11 = add nuw nsw i64 %9, 1
  %12 = load i32, ptr %4, align 8, !tbaa !153
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %8, label %7, !llvm.loop !180
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EE5clearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  tail call void @_ZN6dealii6TensorILi1ELi2EE5clearEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #8
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !181
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Function.23", ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %14
  %9 = phi i64 [ 0, %6 ], [ %16, %14 ]
  %10 = phi i32 [ 0, %6 ], [ %15, %14 ]
  %11 = load i32, ptr %7, align 8, !tbaa !153
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %19

13:                                               ; preds = %14, %3
  ret void

14:                                               ; preds = %19, %8
  %15 = add i32 %10, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %8, label %13, !llvm.loop !182

19:                                               ; preds = %8, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %8 ]
  %21 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi2EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  %22 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %20) #9
  tail call void @_ZN6dealii6TensorILi1ELi2EE5clearEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #8
  %23 = add nuw nsw i64 %20, 1
  %24 = load i32, ptr %7, align 8, !tbaa !153
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %19, label %14, !llvm.loop !183
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi2EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii16ConstantFunctionILi2EEC5Edj) align 2 !prof !72 {
  tail call void @_ZN6dealii12ZeroFunctionILi2EEC2Ej(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !184
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat($_ZN6dealii16ConstantFunctionILi2EED5Ev) align 2 {
  tail call void @_ZN6dealii16ConstantFunctionILi2EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii16ConstantFunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  %4 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !184
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %6 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  tail call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %7 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  tail call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %5, ptr %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  br label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %6 ], [ %16, %9 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %13 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %12) #8
  %14 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %15 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %14) #8
  tail call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %13, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  %16 = add i32 %11, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %9, label %8, !llvm.loop !187
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii16ConstantFunctionILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret i32 104
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi2EEC2Ejdj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, double noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii23ComponentSelectFunctionILi2EEC5Ejdj) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, ptr %5, align 4, !tbaa !145
  tail call void @_ZN6dealii16ConstantFunctionILi2EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %2, i32 noundef %3) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %8 = add i32 %1, 1
  store i32 %8, ptr %6, align 4, !tbaa !145
  %9 = invoke i64 @_ZSt9make_pairIRKjjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #8
          to label %10 unwind label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1
  store i64 %9, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @_ZN6dealii16ConstantFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi2EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii23ComponentSelectFunctionILi2EEC5Ejj) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, ptr %4, align 4, !tbaa !145
  tail call void @_ZN6dealii16ConstantFunctionILi2EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef 1.000000e+00, i32 noundef %2) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %7 = add i32 %1, 1
  store i32 %7, ptr %5, align 4, !tbaa !145
  %8 = invoke i64 @_ZSt9make_pairIRKjjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #8
          to label %9 unwind label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1
  store i64 %8, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @_ZN6dealii16ConstantFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi2EEC2ERKSt4pairIjjEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii23ComponentSelectFunctionILi2EEC5ERKSt4pairIjjEj) align 2 !prof !72 {
  tail call void @_ZN6dealii16ConstantFunctionILi2EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef 1.000000e+00, i32 noundef %2) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi2EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %1, align 4
  store i64 %6, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef 0.000000e+00) #8
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %6 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !188
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %5, i64 %8
  %10 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %11 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.45", ptr %0, i64 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !190
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds double, ptr %10, i64 %13
  %15 = getelementptr inbounds %"class.dealii::ConstantFunction.44", ptr %0, i64 0, i32 1
  tail call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %9, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %13, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %12, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #9
  %11 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #9
  tail call void @_ZNK6dealii23ComponentSelectFunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %12 = add i32 %9, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %7, label %6, !llvm.loop !191
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii23ComponentSelectFunctionILi2EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret i32 112
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 comdat($_ZN6dealii8FunctionILi3EEC5Ejd) align 2 personality ptr @__gxx_personality_v0 !prof !192 {
  tail call void @_ZN6dealii12FunctionTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %2) #8
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  invoke void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #8
          to label %5 unwind label %7

5:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii8FunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %"class.dealii::Function.46", ptr %0, i64 0, i32 2
  store i32 %1, ptr %6, align 8, !tbaa !193
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi3EED5Ev) align 2 !prof !195 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #9
  tail call void @_ZN6dealii12FunctionTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi3EED5Ev) align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii8FunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef nonnull align 8 dereferenceable(92) ptr @_ZN6dealii8FunctionILi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(92) %1) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !196 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !197

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %18, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 1 ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef double %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %11, i32 noundef %3) #8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  store double %15, ptr %16, align 8, !tbaa !93
  %17 = add i32 %10, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %8, label %7, !prof !198, !llvm.loop !199
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !200 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Point<3>, std::allocator<dealii::Point<3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  %4 = load ptr, ptr %0, align 8, !tbaa !203
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !204 {
  %3 = load ptr, ptr %0, align 8, !tbaa !203
  %4 = getelementptr inbounds %"class.dealii::Point.53", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !205 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7, !prof !206

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %15, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 1 ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #9
  %11 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 1 %10, ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %15 = add i32 %9, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %7, label %6, !prof !207, !llvm.loop !208
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Point.53", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !209 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 !prof !210 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !93
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  store double %7, ptr %8, align 8, !tbaa !93
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !211, !llvm.loop !212
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = alloca %"class.dealii::Tensor.54", align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %4
  ret void

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %19, %9 ], [ 0, %4 ]
  %11 = phi i32 [ %18, %9 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %12 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %10) #9
  %13 = load ptr, ptr %0, align 8, !tbaa !73
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor.54") align 8 %5, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %3) #8
  %16 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %17 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  %18 = add i32 %11, 1
  %19 = zext i32 %18 to i64
  %20 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %21 = icmp ugt i64 %20, %19
  br i1 %21, label %9, label %8, !llvm.loop !213
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !214 {
  %3 = load ptr, ptr %0, align 8, !tbaa !215
  %4 = getelementptr inbounds %"class.dealii::Tensor.54", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 !prof !217 {
  %3 = load double, ptr %1, align 8, !tbaa !93
  store double %3, ptr %0, align 8, !tbaa !93
  %4 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !93
  %7 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  store double %8, ptr %9, align 8, !tbaa !93
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = alloca %"class.dealii::Tensor.54", align 8
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.dealii::Function.46", ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %15
  %10 = phi i64 [ 0, %7 ], [ %17, %15 ]
  %11 = phi i32 [ 0, %7 ], [ %16, %15 ]
  %12 = load i32, ptr %8, align 8, !tbaa !193
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %20

14:                                               ; preds = %15, %3
  ret void

15:                                               ; preds = %20, %9
  %16 = add i32 %11, 1
  %17 = zext i32 %16 to i64
  %18 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %9, label %14, !llvm.loop !218

20:                                               ; preds = %9, %20
  %21 = phi i64 [ %30, %20 ], [ 0, %9 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %22 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %10) #9
  %23 = load ptr, ptr %0, align 8, !tbaa !73
  %24 = getelementptr inbounds ptr, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8
  %26 = trunc i64 %21 to i32
  call void %25(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Tensor.54") align 8 %4, ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef %26) #8
  %27 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %28 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %27, i64 noundef %21) #9
  %29 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  %30 = add nuw nsw i64 %21, 1
  %31 = load i32, ptr %8, align 8, !tbaa !193
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %20, label %15, !llvm.loop !219
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !220 {
  %3 = load ptr, ptr %0, align 8, !tbaa !221
  %4 = getelementptr inbounds %"class.std::vector.55", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %18, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %9) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 12
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef double %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %3) #8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  store double %15, ptr %16, align 8, !tbaa !93
  %17 = add i32 %10, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %8, label %7, !llvm.loop !223
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %15, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #9
  %11 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 13
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %15 = add i32 %9, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %7, label %6, !llvm.loop !224
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii8FunctionILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(92) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret i32 96
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsC2Eii(ptr noundef nonnull align 8 dereferenceable(68) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsC5Eii) align 2 !prof !72 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii8FunctionILi3EE21ExcNumberOfComponentsE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.dealii::Function<3>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !225
  %5 = getelementptr inbounds %"class.dealii::Function<3>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  store i32 %2, ptr %5, align 8, !tbaa !227
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD5Ev) align 2 !prof !72 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #3 comdat($_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD5Ev) align 2 {
  tail call void @_ZN6dealii8FunctionILi3EE21ExcNumberOfComponentsD1Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii8FunctionILi3EE21ExcNumberOfComponents10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !72 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #8
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1) #8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.2) #8
  %6 = getelementptr inbounds %"class.dealii::Function<3>::ExcNumberOfComponents", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !225
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %7) #8
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.3) #8
  %10 = getelementptr inbounds %"class.dealii::Function<3>::ExcNumberOfComponents", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !227
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %11) #8
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.4) #8
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi3EEC2Ej(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1) unnamed_addr #0 comdat($_ZN6dealii12ZeroFunctionILi3EEC5Ej) align 2 !prof !228 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, double noundef 0.000000e+00) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii12ZeroFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii12ZeroFunctionILi3EED5Ev) align 2 !prof !228 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii12ZeroFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #3 comdat($_ZN6dealii12ZeroFunctionILi3EED5Ev) align 2 {
  tail call void @_ZN6dealii12ZeroFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii12ZeroFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii12ZeroFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii12ZeroFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = alloca double, align 8
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %6 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store double 0.000000e+00, ptr %4, align 8, !tbaa !93
  call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = alloca double, align 8
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %7 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store double 0.000000e+00, ptr %5, align 8, !tbaa !93
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %6, ptr %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !229 {
  %4 = alloca double, align 8
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !230

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %16, %8 ], [ 0, %3 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %3 ]
  %11 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  %12 = call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %13 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  %14 = call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store double 0.000000e+00, ptr %4, align 8, !tbaa !93
  call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %15 = add i32 %10, 1
  %16 = zext i32 %15 to i64
  %17 = call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %8, label %7, !prof !231, !llvm.loop !232
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !233 {
  br i1 %1, label %3, label %4, !prof !234

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !93
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = getelementptr inbounds %"class.dealii::Function.46", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !193
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %3, %8
  %9 = phi i64 [ %11, %8 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  tail call void @_ZN6dealii6TensorILi1ELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #8
  %11 = add nuw nsw i64 %9, 1
  %12 = load i32, ptr %4, align 8, !tbaa !193
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %8, label %7, !llvm.loop !235
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !236 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !72 {
  %5 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %8, %4
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 0, %4 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  tail call void @_ZN6dealii6TensorILi1ELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #8
  %12 = add i32 %10, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %8, label %7, !llvm.loop !237
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii12ZeroFunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Function.46", ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %6, %14
  %9 = phi i64 [ 0, %6 ], [ %16, %14 ]
  %10 = phi i32 [ 0, %6 ], [ %15, %14 ]
  %11 = load i32, ptr %7, align 8, !tbaa !193
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %19

13:                                               ; preds = %14, %3
  ret void

14:                                               ; preds = %19, %8
  %15 = add i32 %10, 1
  %16 = zext i32 %15 to i64
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %18 = icmp ugt i64 %17, %16
  br i1 %18, label %8, label %13, !llvm.loop !238

19:                                               ; preds = %8, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %8 ]
  %21 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IN6dealii6TensorILi1ELi3EEESaIS2_EESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %9) #9
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %20) #9
  tail call void @_ZN6dealii6TensorILi1ELi3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %22) #8
  %23 = add nuw nsw i64 %20, 1
  %24 = load i32, ptr %7, align 8, !tbaa !193
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %19, label %14, !llvm.loop !239
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi3EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii16ConstantFunctionILi3EEC5Edj) align 2 !prof !240 {
  tail call void @_ZN6dealii12ZeroFunctionILi3EEC2Ej(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %2) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii16ConstantFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  store double %1, ptr %5, align 8, !tbaa !241
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat($_ZN6dealii16ConstantFunctionILi3EED5Ev) align 2 {
  tail call void @_ZN6dealii16ConstantFunctionILi3EED1Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZThn16_N6dealii16ConstantFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii16ConstantFunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !72 {
  %4 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  %5 = load double, ptr %4, align 8, !tbaa !241
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %6 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  tail call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !244 {
  %5 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %6 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %7 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  tail call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %5, ptr %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii16ConstantFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  br label %9

8:                                                ; preds = %9, %3
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %6 ], [ %16, %9 ]
  %12 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %13 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %12) #8
  %14 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #9
  %15 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %14) #8
  tail call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %13, ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  %16 = add i32 %11, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %19 = icmp ugt i64 %18, %17
  br i1 %19, label %9, label %8, !llvm.loop !245
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii16ConstantFunctionILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret i32 104
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi3EEC2Ejdj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, double noundef %2, i32 noundef %3) unnamed_addr #0 comdat($_ZN6dealii23ComponentSelectFunctionILi3EEC5Ejdj) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, ptr %5, align 4, !tbaa !145
  tail call void @_ZN6dealii16ConstantFunctionILi3EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef %2, i32 noundef %3) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %8 = add i32 %1, 1
  store i32 %8, ptr %6, align 4, !tbaa !145
  %9 = invoke i64 @_ZSt9make_pairIRKjjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #8
          to label %10 unwind label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1
  store i64 %9, ptr %11, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @_ZN6dealii16ConstantFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi3EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii23ComponentSelectFunctionILi3EEC5Ejj) align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, ptr %4, align 4, !tbaa !145
  tail call void @_ZN6dealii16ConstantFunctionILi3EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef 1.000000e+00, i32 noundef %2) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %7 = add i32 %1, 1
  store i32 %7, ptr %5, align 4, !tbaa !145
  %8 = invoke i64 @_ZSt9make_pairIRKjjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #8
          to label %9 unwind label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1
  store i64 %8, ptr %10, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @_ZN6dealii16ConstantFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi3EEC2ERKSt4pairIjjEj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN6dealii23ComponentSelectFunctionILi3EEC5ERKSt4pairIjjEj) align 2 !prof !72 {
  tail call void @_ZN6dealii16ConstantFunctionILi3EEC2Edj(ptr noundef nonnull align 8 dereferenceable(104) %0, double noundef 1.000000e+00, i32 noundef %2) #8
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii23ComponentSelectFunctionILi3EEE, i64 0, inrange i32 1, i64 2), ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %1, align 4
  store i64 %6, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %2, double noundef 0.000000e+00) #8
  %5 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %6 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !246
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %5, i64 %8
  %10 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %2) #8
  %11 = getelementptr inbounds %"class.dealii::ComponentSelectFunction.68", ptr %0, i64 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !248
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds double, ptr %10, i64 %13
  %15 = getelementptr inbounds %"class.dealii::ConstantFunction.67", ptr %0, i64 0, i32 1
  tail call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %9, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii23ComponentSelectFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !72 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %7, %3
  ret void

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %13, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %12, %7 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %8) #9
  %11 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %8) #9
  tail call void @_ZNK6dealii23ComponentSelectFunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(88) %11) #8
  %12 = add i32 %9, 1
  %13 = zext i32 %12 to i64
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %15 = icmp ugt i64 %14, %13
  br i1 %15, label %7, label %6, !llvm.loop !249
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii23ComponentSelectFunctionILi3EE18memory_consumptionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  ret i32 112
}

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat($_ZN6dealii16ConstantFunctionILi1EED5Ev) align 2 !prof !72 {
  tail call void @_ZN6dealii12ZeroFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN6dealii16ConstantFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi1EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi1EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii23ComponentSelectFunctionILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat($_ZN6dealii16ConstantFunctionILi2EED5Ev) align 2 !prof !72 {
  tail call void @_ZN6dealii12ZeroFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN6dealii16ConstantFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi2EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi2EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii23ComponentSelectFunctionILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local void @_ZN6dealii16ConstantFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat($_ZN6dealii16ConstantFunctionILi3EED5Ev) align 2 !prof !240 {
  tail call void @_ZN6dealii12ZeroFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii23ComponentSelectFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN6dealii16ConstantFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi3EED1Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii16ConstantFunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii23ComponentSelectFunctionILi3EED0Ev(ptr noundef %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii23ComponentSelectFunctionILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIjjEC2IRKjjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS5_S6_EEEbE4typeELb1EEEOS5_OS6_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #3 comdat align 2 {
  %4 = load i32, ptr %1, align 4, !tbaa !145
  store i32 %4, ptr %0, align 4, !tbaa !250
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %2, align 4, !tbaa !145
  store i32 %6, ptr %5, align 4, !tbaa !251
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !252 {
  tail call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat !prof !253 {
  %4 = load double, ptr %2, align 8, !tbaa !93
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !254

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store double %4, ptr %7, align 8, !tbaa !93
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !255, !llvm.loop !256

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !131 {
  tail call void @_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat !prof !131 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %7 = load ptr, ptr %6, align 8, !tbaa !257
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %9 = load ptr, ptr %8, align 8, !tbaa !257
  call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !258 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !259 {
  %3 = load ptr, ptr %1, align 8, !tbaa !257
  store ptr %3, ptr %0, align 8, !tbaa !260
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!71}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!35 = !{ptr @_ZN6dealii5PointILi1EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi1EEC2Eb, i64 269698}
!36 = !{ptr @_ZSt4fillIPddEvT_S1_RKT0_, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 4406944}
!37 = !{ptr @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_, ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_, i64 12788}
!38 = !{ptr @_ZNSt6vectorIdSaIdEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, i64 6082739}
!39 = !{ptr @_ZNSt6vectorIdSaIdEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, i64 11878526}
!40 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZN6dealii6VectorIdE5beginEv, i64 4002559}
!41 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZN6dealii6VectorIdE3endEv, i64 4002559}
!42 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZSt4fillIPddEvT_S1_RKT0_, i64 4002559}
!43 = !{ptr @_ZN6dealii5PointILi2EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi2EEC2Eb, i64 202370}
!44 = !{ptr @_ZN6dealii8FunctionILi3EEC2Ejd, ptr @_ZN6dealii12FunctionTimeC2Ed, i64 89}
!45 = !{ptr @_ZN6dealii8FunctionILi3EEC2Ejd, ptr @_ZN6dealii11SubscriptorC2Ev, i64 89}
!46 = !{ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii11SubscriptorD2Ev, i64 67}
!47 = !{ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii12FunctionTimeD2Ev, i64 67}
!48 = !{ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv, i64 410175}
!49 = !{ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm, i64 371749}
!50 = !{ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNSt6vectorIdSaIdEEixEm, i64 371749}
!51 = !{ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv, i64 1334737}
!52 = !{ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm, i64 1067789}
!53 = !{ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm, i64 1067789}
!54 = !{ptr @_ZN6dealii5PointILi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 5584274}
!55 = !{ptr @_ZN6dealii12ZeroFunctionILi3EEC2Ej, ptr @_ZN6dealii8FunctionILi3EEC2Ejd, i64 55}
!56 = !{ptr @_ZN6dealii12ZeroFunctionILi3EED2Ev, ptr @_ZN6dealii8FunctionILi3EED2Ev, i64 55}
!57 = !{ptr @_ZNK6dealii12ZeroFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EE4sizeEv, i64 454925}
!58 = !{ptr @_ZNK6dealii12ZeroFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm, i64 808754}
!59 = !{ptr @_ZNK6dealii12ZeroFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZN6dealii6VectorIdE5beginEv, i64 404377}
!60 = !{ptr @_ZNK6dealii12ZeroFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZN6dealii6VectorIdE3endEv, i64 404377}
!61 = !{ptr @_ZNK6dealii12ZeroFunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZSt4fillIPddEvT_S1_RKT0_, i64 404377}
!62 = !{ptr @_ZN6dealii16ConstantFunctionILi3EEC2Edj, ptr @_ZN6dealii12ZeroFunctionILi3EEC2Ej, i64 11}
!63 = !{ptr @_ZNK6dealii16ConstantFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNSt6vectorIdSaIdEE5beginEv, i64 12672}
!64 = !{ptr @_ZNK6dealii16ConstantFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNSt6vectorIdSaIdEE3endEv, i64 12672}
!65 = !{ptr @_ZNK6dealii16ConstantFunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_, i64 12672}
!66 = !{ptr @_ZN6dealii16ConstantFunctionILi3EED2Ev, ptr @_ZN6dealii12ZeroFunctionILi3EED2Ev, i64 11}
!67 = !{ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 25807262}
!68 = !{ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_, ptr @_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, i64 12788}
!69 = !{ptr @_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, i64 25576}
!70 = !{ptr @_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 12788}
!71 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!72 = !{!"function_entry_count", i64 0}
!73 = !{!74, !74, i64 0}
!74 = !{!"vtable pointer", !75, i64 0}
!75 = !{!"Simple C++ TBAA"}
!76 = !{!77, !82, i64 88}
!77 = !{!"_ZTSN6dealii8FunctionILi1EEE", !78, i64 0, !81, i64 16, !82, i64 88}
!78 = !{!"_ZTSN6dealii12FunctionTimeE", !79, i64 8}
!79 = !{!"double", !80, i64 0}
!80 = !{!"omnipotent char", !75, i64 0}
!81 = !{!"_ZTSN6dealii11SubscriptorE", !82, i64 8, !83, i64 16, !91, i64 64}
!82 = !{!"int", !80, i64 0}
!83 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !84, i64 0}
!84 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !85, i64 0}
!85 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !86, i64 0, !88, i64 8}
!86 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !87, i64 0}
!87 = !{!"_ZTSSt4lessIPKcE"}
!88 = !{!"_ZTSSt15_Rb_tree_header", !89, i64 0, !92, i64 32}
!89 = !{!"_ZTSSt18_Rb_tree_node_base", !90, i64 0, !91, i64 8, !91, i64 16, !91, i64 24}
!90 = !{!"_ZTSSt14_Rb_tree_color", !80, i64 0}
!91 = !{!"any pointer", !80, i64 0}
!92 = !{!"long", !80, i64 0}
!93 = !{!79, !79, i64 0}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"function_entry_count", i64 39}
!97 = !{!98, !91, i64 8}
!98 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!99 = !{!98, !91, i64 0}
!100 = !{!"function_entry_count", i64 292334}
!101 = !{!"function_entry_count", i64 580699156}
!102 = !{!103, !91, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!104 = distinct !{!104, !95}
!105 = !{!"function_entry_count", i64 892135194}
!106 = !{!107, !91, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIN6dealii6VectorIdEESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!108 = !{!"function_entry_count", i64 269698}
!109 = !{!"function_entry_count", i64 271481}
!110 = distinct !{!110, !95}
!111 = !{!112, !91, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!113 = !{!"function_entry_count", i64 271565}
!114 = distinct !{!114, !95}
!115 = distinct !{!115, !95}
!116 = !{!117, !91, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi1EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!118 = distinct !{!118, !95}
!119 = distinct !{!119, !95}
!120 = !{!121, !82, i64 60}
!121 = !{!"_ZTSN6dealii8FunctionILi1EE21ExcNumberOfComponentsE", !122, i64 0, !82, i64 60, !82, i64 64}
!122 = !{!"_ZTSN6dealii13ExceptionBaseE", !123, i64 0, !91, i64 8, !82, i64 16, !91, i64 24, !91, i64 32, !91, i64 40, !91, i64 48, !82, i64 56}
!123 = !{!"_ZTSSt9exception"}
!124 = !{!121, !82, i64 64}
!125 = !{!"function_entry_count", i64 4406944}
!126 = !{!"function_entry_count", i64 36050862}
!127 = !{!128, !91, i64 80}
!128 = !{!"_ZTSN6dealii6VectorIdEE", !81, i64 0, !82, i64 72, !82, i64 76, !91, i64 80}
!129 = !{!"function_entry_count", i64 23518070}
!130 = !{!128, !82, i64 72}
!131 = !{!"function_entry_count", i64 12788}
!132 = !{!"function_entry_count", i64 6082739}
!133 = !{!"function_entry_count", i64 11878526}
!134 = distinct !{!134, !95}
!135 = !{!"function_entry_count", i64 551544}
!136 = !{!"branch_weights", i32 551545, i32 1}
!137 = distinct !{!137, !95}
!138 = distinct !{!138, !95}
!139 = distinct !{!139, !95}
!140 = distinct !{!140, !95}
!141 = !{!142, !79, i64 96}
!142 = !{!"_ZTSN6dealii16ConstantFunctionILi1EEE", !143, i64 0, !79, i64 96}
!143 = !{!"_ZTSN6dealii12ZeroFunctionILi1EEE", !77, i64 0}
!144 = distinct !{!144, !95}
!145 = !{!82, !82, i64 0}
!146 = !{!147, !82, i64 104}
!147 = !{!"_ZTSN6dealii23ComponentSelectFunctionILi1EEE", !142, i64 0, !148, i64 104}
!148 = !{!"_ZTSSt4pairIjjE", !82, i64 0, !82, i64 4}
!149 = !{!147, !82, i64 108}
!150 = !{!"function_entry_count", i64 4002560}
!151 = !{!"branch_weights", i32 1, i32 4002561}
!152 = distinct !{!152, !95}
!153 = !{!154, !82, i64 88}
!154 = !{!"_ZTSN6dealii8FunctionILi2EEE", !78, i64 0, !81, i64 16, !82, i64 88}
!155 = distinct !{!155, !95}
!156 = !{!"function_entry_count", i64 955498}
!157 = !{!158, !91, i64 8}
!158 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!159 = !{!158, !91, i64 0}
!160 = !{!"function_entry_count", i64 5322946}
!161 = distinct !{!161, !95}
!162 = !{!"function_entry_count", i64 202370}
!163 = !{!"function_entry_count", i64 4593520}
!164 = distinct !{!164, !95}
!165 = !{!166, !91, i64 0}
!166 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!167 = !{!"function_entry_count", i64 2866076}
!168 = distinct !{!168, !95}
!169 = distinct !{!169, !95}
!170 = !{!171, !91, i64 0}
!171 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi2EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!172 = distinct !{!172, !95}
!173 = distinct !{!173, !95}
!174 = !{!175, !82, i64 60}
!175 = !{!"_ZTSN6dealii8FunctionILi2EE21ExcNumberOfComponentsE", !122, i64 0, !82, i64 60, !82, i64 64}
!176 = !{!175, !82, i64 64}
!177 = distinct !{!177, !95}
!178 = !{!"function_entry_count", i64 1130961}
!179 = !{!"branch_weights", i32 1130962, i32 1}
!180 = distinct !{!180, !95}
!181 = distinct !{!181, !95}
!182 = distinct !{!182, !95}
!183 = distinct !{!183, !95}
!184 = !{!185, !79, i64 96}
!185 = !{!"_ZTSN6dealii16ConstantFunctionILi2EEE", !186, i64 0, !79, i64 96}
!186 = !{!"_ZTSN6dealii12ZeroFunctionILi2EEE", !154, i64 0}
!187 = distinct !{!187, !95}
!188 = !{!189, !82, i64 104}
!189 = !{!"_ZTSN6dealii23ComponentSelectFunctionILi2EEE", !185, i64 0, !148, i64 104}
!190 = !{!189, !82, i64 108}
!191 = distinct !{!191, !95}
!192 = !{!"function_entry_count", i64 89}
!193 = !{!194, !82, i64 88}
!194 = !{!"_ZTSN6dealii8FunctionILi3EEE", !78, i64 0, !81, i64 16, !82, i64 88}
!195 = !{!"function_entry_count", i64 67}
!196 = !{!"function_entry_count", i64 38426}
!197 = !{!"branch_weights", i32 1, i32 38426}
!198 = !{!"branch_weights", i32 333333, i32 38426}
!199 = distinct !{!199, !95}
!200 = !{!"function_entry_count", i64 23475661}
!201 = !{!202, !91, i64 8}
!202 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!203 = !{!202, !91, i64 0}
!204 = !{!"function_entry_count", i64 59145566}
!205 = !{!"function_entry_count", i64 266948}
!206 = !{!"branch_weights", i32 1, i32 266948}
!207 = !{!"branch_weights", i32 800845, i32 266948}
!208 = distinct !{!208, !95}
!209 = !{!"function_entry_count", i64 5584274}
!210 = !{!"function_entry_count", i64 4316510434}
!211 = !{!"branch_weights", i32 1079127609, i32 -2136712079}
!212 = distinct !{!212, !95}
!213 = distinct !{!213, !95}
!214 = !{!"function_entry_count", i64 409051700}
!215 = !{!216, !91, i64 0}
!216 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!217 = !{!"function_entry_count", i64 98457587}
!218 = distinct !{!218, !95}
!219 = distinct !{!219, !95}
!220 = !{!"function_entry_count", i64 371948270}
!221 = !{!222, !91, i64 0}
!222 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6dealii6TensorILi1ELi3EEESaIS3_EESaIS5_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!223 = distinct !{!223, !95}
!224 = distinct !{!224, !95}
!225 = !{!226, !82, i64 60}
!226 = !{!"_ZTSN6dealii8FunctionILi3EE21ExcNumberOfComponentsE", !122, i64 0, !82, i64 60, !82, i64 64}
!227 = !{!226, !82, i64 64}
!228 = !{!"function_entry_count", i64 55}
!229 = !{!"function_entry_count", i64 50548}
!230 = !{!"branch_weights", i32 1, i32 50548}
!231 = !{!"branch_weights", i32 353837, i32 50548}
!232 = distinct !{!232, !95}
!233 = !{!"function_entry_count", i64 627233310}
!234 = !{!"branch_weights", i32 627233311, i32 1}
!235 = distinct !{!235, !95}
!236 = !{!"function_entry_count", i64 6467369}
!237 = distinct !{!237, !95}
!238 = distinct !{!238, !95}
!239 = distinct !{!239, !95}
!240 = !{!"function_entry_count", i64 11}
!241 = !{!242, !79, i64 96}
!242 = !{!"_ZTSN6dealii16ConstantFunctionILi3EEE", !243, i64 0, !79, i64 96}
!243 = !{!"_ZTSN6dealii12ZeroFunctionILi3EEE", !194, i64 0}
!244 = !{!"function_entry_count", i64 12672}
!245 = distinct !{!245, !95}
!246 = !{!247, !82, i64 104}
!247 = !{!"_ZTSN6dealii23ComponentSelectFunctionILi3EEE", !242, i64 0, !148, i64 104}
!248 = !{!247, !82, i64 108}
!249 = distinct !{!249, !95}
!250 = !{!148, !82, i64 0}
!251 = !{!148, !82, i64 4}
!252 = !{!"function_entry_count", i64 25807262}
!253 = !{!"function_entry_count", i64 25820050}
!254 = !{!"branch_weights", i32 1, i32 4303341}
!255 = !{!"branch_weights", i32 4303341, i32 -542009222}
!256 = distinct !{!256, !95}
!257 = !{!91, !91, i64 0}
!258 = !{!"function_entry_count", i64 17968345}
!259 = !{!"function_entry_count", i64 24036430}
!260 = !{!261, !91, i64 0}
!261 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEE", !91, i64 0}
