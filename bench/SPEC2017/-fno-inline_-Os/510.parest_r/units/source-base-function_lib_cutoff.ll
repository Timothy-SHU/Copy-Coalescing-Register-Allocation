; ModuleID = 'source/base/function_lib_cutoff.cc'
source_filename = "source/base/function_lib_cutoff.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::Point" = type { %"class.dealii::Tensor" }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Functions::CutOffFunctionBase" = type <{ %"class.dealii::Function.base", [4 x i8], %"class.dealii::Point", double, i32, [4 x i8] }>
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
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Vector" = type { %"class.dealii::Subscriptor", i32, i32, ptr }
%"class.dealii::Point.13" = type { %"class.dealii::Tensor.14" }
%"class.dealii::Tensor.14" = type { [2 x double] }
%"class.dealii::Functions::CutOffFunctionBase.16" = type <{ %"class.dealii::Function.base.18", [4 x i8], %"class.dealii::Point.13", double, i32, [4 x i8] }>
%"class.dealii::Function.base.18" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>
%"class.dealii::Point.26" = type { %"class.dealii::Tensor.27" }
%"class.dealii::Tensor.27" = type { [3 x double] }
%"class.dealii::Functions::CutOffFunctionBase.29" = type <{ %"class.dealii::Function.base.31", [4 x i8], %"class.dealii::Point.26", double, i32, [4 x i8] }>
%"class.dealii::Function.base.31" = type <{ %"class.dealii::FunctionTime", %"class.dealii::Subscriptor", i32 }>

$_ZN6dealii9Functions20CutOffFunctionLinftyILi1EEC5EdNS_5PointILi1EEEjj = comdat any

$_ZN6dealii5PointILi1EEC2ERKS1_ = comdat any

$_ZN6dealii9Functions18CutOffFunctionBaseILi1EEC2EdNS_5PointILi1EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii5PointILi1EE8distanceERKS1_ = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_ = comdat any

$_ZNSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNSt6vectorIdSaIdEE3endEv = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv = comdat any

$_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm = comdat any

$_ZN6dealii6VectorIdEaSEd = comdat any

$_ZN6dealii6VectorIdEclEj = comdat any

$_ZN6dealii9Functions20CutOffFunctionLinftyILi2EEC5EdNS_5PointILi2EEEjj = comdat any

$_ZN6dealii5PointILi2EEC2ERKS1_ = comdat any

$_ZN6dealii9Functions18CutOffFunctionBaseILi2EEC2EdNS_5PointILi2EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii5PointILi2EE8distanceERKS1_ = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions20CutOffFunctionLinftyILi3EEC5EdNS_5PointILi3EEEjj = comdat any

$_ZN6dealii5PointILi3EEC2ERKS1_ = comdat any

$_ZN6dealii9Functions18CutOffFunctionBaseILi3EEC2EdNS_5PointILi3EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii5PointILi3EE8distanceERKS1_ = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm = comdat any

$_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi1EEC5EdNS_5PointILi1EEEjj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi2EEC5EdNS_5PointILi2EEEjj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi3EEC5EdNS_5PointILi3EEEjj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi1EEC5EdNS_5PointILi1EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE5valueERKNS_5PointILi1EEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE8gradientERKNS_5PointILi1EEEj = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2Eb = comdat any

$_ZN6dealii5PointILi1EEC2Ev = comdat any

$_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE = comdat any

$_ZNK6dealii5PointILi1EEdvEd = comdat any

$_ZNK6dealii5PointILi1EEmlEd = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2ERKS1_ = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi2EEC5EdNS_5PointILi2EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE5valueERKNS_5PointILi2EEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE8gradientERKNS_5PointILi2EEEj = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2Eb = comdat any

$_ZN6dealii5PointILi2EEC2Ev = comdat any

$_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE = comdat any

$_ZNK6dealii5PointILi2EEdvEd = comdat any

$_ZNK6dealii5PointILi2EEmlEd = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2ERKS1_ = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi3EEC5EdNS_5PointILi3EEEjj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE5valueERKNS_5PointILi3EEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE = comdat any

$_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE8gradientERKNS_5PointILi3EEEj = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2Eb = comdat any

$_ZN6dealii5PointILi3EEC2Ev = comdat any

$_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE = comdat any

$_ZNK6dealii5PointILi3EEdvEd = comdat any

$_ZNK6dealii5PointILi3EEmlEd = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2ERKS1_ = comdat any

$_ZN6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev = comdat any

$_ZN6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev = comdat any

$_ZN6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED0Ev = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED0Ev = comdat any

$_ZN6dealii9Functions16CutOffFunctionW1ILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED0Ev = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev = comdat any

$_ZN6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev = comdat any

$_ZN6dealii9Functions18CutOffFunctionBaseILi1EED0Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED1Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED0Ev = comdat any

$_ZNK6dealii5PointILi1EEclEj = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_ = comdat any

$_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_ = comdat any

$_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_ = comdat any

$_ZSt4fillIPddEvT_S1_RKT0_ = comdat any

$_ZN6dealii6VectorIdE5beginEv = comdat any

$_ZN6dealii6VectorIdE3endEv = comdat any

$_ZSt8__fill_aIPddEvT_S1_RKT0_ = comdat any

$_ZN6dealii9Functions18CutOffFunctionBaseILi2EED0Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED1Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED0Ev = comdat any

$_ZNK6dealii5PointILi2EEclEj = comdat any

$_ZN6dealii9Functions18CutOffFunctionBaseILi3EED0Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED1Ev = comdat any

$_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED0Ev = comdat any

$_ZNK6dealii5PointILi3EEclEj = comdat any

$_ZN6dealii6TensorILi1ELi1EEmIERKS1_ = comdat any

$_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE = comdat any

$_ZN6dealii6TensorILi1ELi1EEdVEd = comdat any

$_ZN6dealii6TensorILi1ELi1EEmLEd = comdat any

$_ZN6dealii6TensorILi1ELi2EEmIERKS1_ = comdat any

$_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE = comdat any

$_ZN6dealii6TensorILi1ELi2EEdVEd = comdat any

$_ZN6dealii6TensorILi1ELi2EEmLEd = comdat any

$_ZN6dealii6TensorILi1ELi3EEmIERKS1_ = comdat any

$_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE = comdat any

$_ZN6dealii6TensorILi1ELi3EEdVEd = comdat any

$_ZN6dealii6TensorILi1ELi3EEmLEd = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionLinftyILi1EEE = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionLinftyILi2EEE = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionLinftyILi3EEE = comdat any

$_ZTVN6dealii9Functions16CutOffFunctionW1ILi1EEE = comdat any

$_ZTVN6dealii9Functions16CutOffFunctionW1ILi2EEE = comdat any

$_ZTVN6dealii9Functions16CutOffFunctionW1ILi3EEE = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionCinftyILi1EEE = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionCinftyILi2EEE = comdat any

$_ZTVN6dealii9Functions20CutOffFunctionCinftyILi3EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionLinftyILi1EEE = comdat any

$_ZTSN6dealii9Functions18CutOffFunctionBaseILi1EEE = comdat any

$_ZTSN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii8FunctionILi1EEE = comdat any

$_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionLinftyILi1EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionLinftyILi2EEE = comdat any

$_ZTSN6dealii9Functions18CutOffFunctionBaseILi2EEE = comdat any

$_ZTSN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii8FunctionILi2EEE = comdat any

$_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionLinftyILi2EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionLinftyILi3EEE = comdat any

$_ZTSN6dealii9Functions18CutOffFunctionBaseILi3EEE = comdat any

$_ZTSN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii8FunctionILi3EEE = comdat any

$_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionLinftyILi3EEE = comdat any

$_ZTSN6dealii9Functions16CutOffFunctionW1ILi1EEE = comdat any

$_ZTIN6dealii9Functions16CutOffFunctionW1ILi1EEE = comdat any

$_ZTSN6dealii9Functions16CutOffFunctionW1ILi2EEE = comdat any

$_ZTIN6dealii9Functions16CutOffFunctionW1ILi2EEE = comdat any

$_ZTSN6dealii9Functions16CutOffFunctionW1ILi3EEE = comdat any

$_ZTIN6dealii9Functions16CutOffFunctionW1ILi3EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionCinftyILi1EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionCinftyILi1EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionCinftyILi2EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionCinftyILi2EEE = comdat any

$_ZTSN6dealii9Functions20CutOffFunctionCinftyILi3EEE = comdat any

$_ZTIN6dealii9Functions20CutOffFunctionCinftyILi3EEE = comdat any

$_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE = comdat any

$_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE = comdat any

$_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE = comdat any

@_ZTVN6dealii9Functions20CutOffFunctionLinftyILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi1EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20CutOffFunctionLinftyILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi2EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20CutOffFunctionLinftyILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionLinftyILi3EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions16CutOffFunctionW1ILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi1EEE, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions16CutOffFunctionW1ILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi2EEE, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions16CutOffFunctionW1ILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions16CutOffFunctionW1ILi3EEE, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20CutOffFunctionCinftyILi1EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi1EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20CutOffFunctionCinftyILi2EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi2EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions20CutOffFunctionCinftyILi3EEE = weak_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE, ptr @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions20CutOffFunctionCinftyILi3EEE, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii9Functions20CutOffFunctionLinftyILi1EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionLinftyILi1EEE\00", comdat, align 1
@_ZTSN6dealii9Functions18CutOffFunctionBaseILi1EEE = linkonce_odr dso_local constant [46 x i8] c"N6dealii9Functions18CutOffFunctionBaseILi1EEE\00", comdat, align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi1EEE\00", comdat, align 1
@_ZTIN6dealii12FunctionTimeE = external constant ptr
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii8FunctionILi1EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi1EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions18CutOffFunctionBaseILi1EEE, ptr @_ZTIN6dealii8FunctionILi1EEE }, comdat, align 8
@_ZTIN6dealii9Functions20CutOffFunctionLinftyILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionLinftyILi1EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions20CutOffFunctionLinftyILi2EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionLinftyILi2EEE\00", comdat, align 1
@_ZTSN6dealii9Functions18CutOffFunctionBaseILi2EEE = linkonce_odr dso_local constant [46 x i8] c"N6dealii9Functions18CutOffFunctionBaseILi2EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi2EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi2EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi2EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions18CutOffFunctionBaseILi2EEE, ptr @_ZTIN6dealii8FunctionILi2EEE }, comdat, align 8
@_ZTIN6dealii9Functions20CutOffFunctionLinftyILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionLinftyILi2EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions20CutOffFunctionLinftyILi3EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionLinftyILi3EEE\00", comdat, align 1
@_ZTSN6dealii9Functions18CutOffFunctionBaseILi3EEE = linkonce_odr dso_local constant [46 x i8] c"N6dealii9Functions18CutOffFunctionBaseILi3EEE\00", comdat, align 1
@_ZTSN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii8FunctionILi3EEE\00", comdat, align 1
@_ZTIN6dealii8FunctionILi3EEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6dealii8FunctionILi3EEE, i32 0, i32 2, ptr @_ZTIN6dealii12FunctionTimeE, i64 2, ptr @_ZTIN6dealii11SubscriptorE, i64 4098 }, comdat, align 8
@_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions18CutOffFunctionBaseILi3EEE, ptr @_ZTIN6dealii8FunctionILi3EEE }, comdat, align 8
@_ZTIN6dealii9Functions20CutOffFunctionLinftyILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionLinftyILi3EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions16CutOffFunctionW1ILi1EEE = weak_odr dso_local constant [44 x i8] c"N6dealii9Functions16CutOffFunctionW1ILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions16CutOffFunctionW1ILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions16CutOffFunctionW1ILi1EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions16CutOffFunctionW1ILi2EEE = weak_odr dso_local constant [44 x i8] c"N6dealii9Functions16CutOffFunctionW1ILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions16CutOffFunctionW1ILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions16CutOffFunctionW1ILi2EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions16CutOffFunctionW1ILi3EEE = weak_odr dso_local constant [44 x i8] c"N6dealii9Functions16CutOffFunctionW1ILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions16CutOffFunctionW1ILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions16CutOffFunctionW1ILi3EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE }, comdat, align 8
@_ZTSN6dealii9Functions20CutOffFunctionCinftyILi1EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionCinftyILi1EEE\00", comdat, align 1
@_ZTIN6dealii9Functions20CutOffFunctionCinftyILi1EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionCinftyILi1EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE }, comdat, align 8
@_ZTSN6dealii9Functions20CutOffFunctionCinftyILi2EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionCinftyILi2EEE\00", comdat, align 1
@_ZTIN6dealii9Functions20CutOffFunctionCinftyILi2EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionCinftyILi2EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE }, comdat, align 8
@_ZTSN6dealii9Functions20CutOffFunctionCinftyILi3EEE = weak_odr dso_local constant [48 x i8] c"N6dealii9Functions20CutOffFunctionCinftyILi3EEE\00", comdat, align 1
@_ZTIN6dealii9Functions20CutOffFunctionCinftyILi3EEE = weak_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9Functions20CutOffFunctionCinftyILi3EEE, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE }, comdat, align 8
@_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE = linkonce_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE, ptr @_ZN6dealii8FunctionILi1EED2Ev, ptr @_ZN6dealii9Functions18CutOffFunctionBaseILi1EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj, ptr @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi1EEE, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED1Ev, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE = linkonce_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE, ptr @_ZN6dealii8FunctionILi2EED2Ev, ptr @_ZN6dealii9Functions18CutOffFunctionBaseILi2EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj, ptr @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi2EEE, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED1Ev, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED0Ev] }, comdat, align 8
@_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE = linkonce_odr dso_local unnamed_addr constant { [18 x ptr], [4 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE, ptr @_ZN6dealii8FunctionILi3EED2Ev, ptr @_ZN6dealii9Functions18CutOffFunctionBaseILi3EED0Ev, ptr @_ZN6dealii12FunctionTime8set_timeEd, ptr @_ZN6dealii12FunctionTime12advance_timeEd, ptr @_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE, ptr @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE, ptr @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj, ptr @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE, ptr @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj, ptr @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE, ptr @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj, ptr @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN6dealii9Functions18CutOffFunctionBaseILi3EEE, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED1Ev, ptr @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED0Ev] }, comdat, align 8

@_ZN6dealii9Functions20CutOffFunctionLinftyILi1EEC1EdNS_5PointILi1EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi1EEC2EdNS_5PointILi1EEEjj
@_ZN6dealii9Functions20CutOffFunctionLinftyILi2EEC1EdNS_5PointILi2EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi2EEC2EdNS_5PointILi2EEEjj
@_ZN6dealii9Functions20CutOffFunctionLinftyILi3EEC1EdNS_5PointILi3EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionLinftyILi3EEC2EdNS_5PointILi3EEEjj
@_ZN6dealii9Functions16CutOffFunctionW1ILi1EEC1EdNS_5PointILi1EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi1EEC2EdNS_5PointILi1EEEjj
@_ZN6dealii9Functions16CutOffFunctionW1ILi2EEC1EdNS_5PointILi2EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi2EEC2EdNS_5PointILi2EEEjj
@_ZN6dealii9Functions16CutOffFunctionW1ILi3EEC1EdNS_5PointILi3EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions16CutOffFunctionW1ILi3EEC2EdNS_5PointILi3EEEjj
@_ZN6dealii9Functions20CutOffFunctionCinftyILi1EEC1EdNS_5PointILi1EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi1EEC2EdNS_5PointILi1EEEjj
@_ZN6dealii9Functions20CutOffFunctionCinftyILi2EEC1EdNS_5PointILi2EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi2EEC2EdNS_5PointILi2EEEjj
@_ZN6dealii9Functions20CutOffFunctionCinftyILi3EEC1EdNS_5PointILi3EEEjj = weak_odr dso_local unnamed_addr alias void (ptr, double, ptr, i32, i32), ptr @_ZN6dealii9Functions20CutOffFunctionCinftyILi3EEC2EdNS_5PointILi3EEEjj

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi1EEC2EdNS_5PointILi1EEEjj(ptr noundef nonnull align 8 dereferenceable(116) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionLinftyILi1EEC5EdNS_5PointILi1EEEjj) align 2 !prof !65 {
  %6 = alloca %"class.dealii::Point", align 8
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @_ZN6dealii9Functions18CutOffFunctionBaseILi1EEC2EdNS_5PointILi1EEEjj(ptr noundef nonnull align 8 dereferenceable(116) %0, double noundef %1, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi1EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18CutOffFunctionBaseILi1EEC2EdNS_5PointILi1EEEjj(ptr noundef nonnull align 8 dereferenceable(116) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi1EEE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  invoke void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
          to label %8 unwind label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !69
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !89
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #11
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !89
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %11 = tail call noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %12 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %13 = load double, ptr %12, align 8, !tbaa !69
  %14 = fcmp olt double %11, %13
  %15 = select i1 %14, double 1.000000e+00, double 0.000000e+00
  br label %16

16:                                               ; preds = %3, %9
  %17 = phi double [ %15, %9 ], [ 0.000000e+00, %3 ]
  ret double %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %3 = load double, ptr %0, align 8, !tbaa !90
  %4 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0) #10
  %5 = fsub double %3, %4
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %5, double 0.000000e+00)
  %7 = tail call double @sqrt(double noundef %6) #11
  ret double %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !89
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i32 %7, %3
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %4
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %27, %17 ]
  %19 = phi i32 [ 0, %14 ], [ %26, %17 ]
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %18) #11
  %21 = tail call noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %20) #10
  %22 = load double, ptr %16, align 8, !tbaa !69
  %23 = fcmp olt double %21, %22
  %24 = select i1 %23, double 1.000000e+00, double 0.000000e+00
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %18) #11
  store double %24, ptr %25, align 8, !tbaa !90
  %26 = add i32 %19, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %29 = icmp ugt i64 %28, %27
  br i1 %29, label %17, label %33, !llvm.loop !91

30:                                               ; preds = %4
  %31 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %32 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store double 0.000000e+00, ptr %5, align 8, !tbaa !90
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %31, ptr %32, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %33

33:                                               ; preds = %17, %11, %30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !93 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = load ptr, ptr %0, align 8, !tbaa !96
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !97 {
  %3 = load ptr, ptr %0, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.dealii::Point", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !100 {
  %3 = load ptr, ptr %0, align 8, !tbaa !96
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !101 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !102 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !103 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  br label %11

10:                                               ; preds = %29, %3
  ret void

11:                                               ; preds = %6, %29
  %12 = phi i64 [ 0, %6 ], [ %31, %29 ]
  %13 = phi i32 [ 0, %6 ], [ %30, %29 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #11
  %15 = tail call noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  %16 = load double, ptr %8, align 8, !tbaa !69
  %17 = fcmp olt double %15, %16
  %18 = select i1 %17, double 1.000000e+00, double 0.000000e+00
  %19 = load i32, ptr %9, align 8, !tbaa !89
  %20 = icmp eq i32 %19, -1
  %21 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  br i1 %20, label %22, label %24

22:                                               ; preds = %11
  %23 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %21, double noundef %18) #10
  br label %29

24:                                               ; preds = %11
  %25 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %21, double noundef 0.000000e+00) #10
  %26 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  %27 = load i32, ptr %9, align 8, !tbaa !89
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %26, i32 noundef %27) #10
  store double %18, ptr %28, align 8, !tbaa !90
  br label %29

29:                                               ; preds = %24, %22
  %30 = add i32 %13, 1
  %31 = zext i32 %30 to i64
  %32 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %33 = icmp ugt i64 %32, %31
  br i1 %33, label %11, label %10, !llvm.loop !104
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !105 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Vector<double>, std::allocator<dealii::Vector<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = load ptr, ptr %0, align 8, !tbaa !108
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 88
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !109 {
  %3 = load ptr, ptr %0, align 8, !tbaa !108
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1) local_unnamed_addr #0 comdat align 2 !prof !110 {
  %3 = alloca double, align 8
  store double %1, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !111
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !113

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
  %9 = tail call noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #10
  call void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %8, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  br label %10

10:                                               ; preds = %7, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !114 {
  %3 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds double, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi2EEC2EdNS_5PointILi2EEEjj(ptr noundef nonnull align 8 dereferenceable(124) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionLinftyILi2EEC5EdNS_5PointILi2EEEjj) align 2 !prof !65 {
  %6 = alloca %"class.dealii::Point.13", align 8
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @_ZN6dealii9Functions18CutOffFunctionBaseILi2EEC2EdNS_5PointILi2EEEjj(ptr noundef nonnull align 8 dereferenceable(124) %0, double noundef %1, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi2EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18CutOffFunctionBaseILi2EEC2EdNS_5PointILi2EEEjj(ptr noundef nonnull align 8 dereferenceable(124) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi2EEE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  invoke void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
          to label %8 unwind label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !116
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !121
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #11
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !121
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  %12 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %13 = load double, ptr %12, align 8, !tbaa !116
  %14 = fcmp olt double %11, %13
  %15 = select i1 %14, double 1.000000e+00, double 0.000000e+00
  br label %16

16:                                               ; preds = %3, %9
  %17 = phi double [ %15, %9 ], [ 0.000000e+00, %3 ]
  ret double %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !prof !65 {
  br label %5

3:                                                ; preds = %5
  %4 = tail call double @sqrt(double noundef %14) #11
  ret double %4

5:                                                ; preds = %2, %5
  %6 = phi i1 [ true, %2 ], [ false, %5 ]
  %7 = phi i64 [ 0, %2 ], [ 1, %5 ]
  %8 = phi double [ 0.000000e+00, %2 ], [ %14, %5 ]
  %9 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %7
  %10 = load double, ptr %9, align 8, !tbaa !90
  %11 = trunc i64 %7 to i32
  %12 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %11) #10
  %13 = fsub double %10, %12
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %8)
  br i1 %6, label %5, label %3, !llvm.loop !122
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !121
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i32 %7, %3
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %4
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %27, %17 ]
  %19 = phi i32 [ 0, %14 ], [ %26, %17 ]
  %20 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %18) #11
  %21 = tail call noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %20) #10
  %22 = load double, ptr %16, align 8, !tbaa !116
  %23 = fcmp olt double %21, %22
  %24 = select i1 %23, double 1.000000e+00, double 0.000000e+00
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %18) #11
  store double %24, ptr %25, align 8, !tbaa !90
  %26 = add i32 %19, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %29 = icmp ugt i64 %28, %27
  br i1 %29, label %17, label %33, !llvm.loop !123

30:                                               ; preds = %4
  %31 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %32 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store double 0.000000e+00, ptr %5, align 8, !tbaa !90
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %31, ptr %32, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %33

33:                                               ; preds = %17, %11, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !124 {
  %3 = load ptr, ptr %0, align 8, !tbaa !125
  %4 = getelementptr inbounds %"class.dealii::Point.13", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  br label %11

10:                                               ; preds = %29, %3
  ret void

11:                                               ; preds = %6, %29
  %12 = phi i64 [ 0, %6 ], [ %31, %29 ]
  %13 = phi i32 [ 0, %6 ], [ %30, %29 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #11
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %14) #10
  %16 = load double, ptr %8, align 8, !tbaa !116
  %17 = fcmp olt double %15, %16
  %18 = select i1 %17, double 1.000000e+00, double 0.000000e+00
  %19 = load i32, ptr %9, align 8, !tbaa !121
  %20 = icmp eq i32 %19, -1
  %21 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  br i1 %20, label %22, label %24

22:                                               ; preds = %11
  %23 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %21, double noundef %18) #10
  br label %29

24:                                               ; preds = %11
  %25 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %21, double noundef 0.000000e+00) #10
  %26 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  %27 = load i32, ptr %9, align 8, !tbaa !121
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %26, i32 noundef %27) #10
  store double %18, ptr %28, align 8, !tbaa !90
  br label %29

29:                                               ; preds = %24, %22
  %30 = add i32 %13, 1
  %31 = zext i32 %30 to i64
  %32 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %33 = icmp ugt i64 %32, %31
  br i1 %33, label %11, label %10, !llvm.loop !127
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi3EEC2EdNS_5PointILi3EEEjj(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionLinftyILi3EEC5EdNS_5PointILi3EEEjj) align 2 !prof !65 {
  %6 = alloca %"class.dealii::Point.26", align 8
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  call void @_ZN6dealii9Functions18CutOffFunctionBaseILi3EEC2EdNS_5PointILi3EEEjj(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionLinftyILi3EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18CutOffFunctionBaseILi3EEC2EdNS_5PointILi3EEEjj(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %3, double noundef 0.000000e+00) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions18CutOffFunctionBaseILi3EEE, i64 0, inrange i32 1, i64 2), ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  invoke void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
          to label %8 unwind label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  store double %1, ptr %9, align 8, !tbaa !128
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  store i32 %4, ptr %10, align 8, !tbaa !133
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #11
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !133
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %11 = tail call noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %12 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %13 = load double, ptr %12, align 8, !tbaa !128
  %14 = fcmp olt double %11, %13
  %15 = select i1 %14, double 1.000000e+00, double 0.000000e+00
  br label %16

16:                                               ; preds = %3, %9
  %17 = phi double [ %15, %9 ], [ 0.000000e+00, %3 ]
  ret double %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !134 {
  br label %5

3:                                                ; preds = %5
  %4 = tail call double @sqrt(double noundef %13) #11
  ret double %4

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %14, %5 ]
  %7 = phi double [ 0.000000e+00, %2 ], [ %13, %5 ]
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %6
  %9 = load double, ptr %8, align 8, !tbaa !90
  %10 = trunc i64 %6 to i32
  %11 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %10) #10
  %12 = fsub double %9, %11
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %7)
  %14 = add nuw nsw i64 %6, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %3, label %5, !prof !135, !llvm.loop !136
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !133
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i32 %7, %3
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %4
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %27, %17 ]
  %19 = phi i32 [ 0, %14 ], [ %26, %17 ]
  %20 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %18) #11
  %21 = tail call noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %20) #10
  %22 = load double, ptr %16, align 8, !tbaa !128
  %23 = fcmp olt double %21, %22
  %24 = select i1 %23, double 1.000000e+00, double 0.000000e+00
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %18) #11
  store double %24, ptr %25, align 8, !tbaa !90
  %26 = add i32 %19, 1
  %27 = zext i32 %26 to i64
  %28 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %29 = icmp ugt i64 %28, %27
  br i1 %29, label %17, label %33, !llvm.loop !137

30:                                               ; preds = %4
  %31 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %32 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store double 0.000000e+00, ptr %5, align 8, !tbaa !90
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %31, ptr %32, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %33

33:                                               ; preds = %17, %11, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !138 {
  %3 = load ptr, ptr %0, align 8, !tbaa !139
  %4 = getelementptr inbounds %"class.dealii::Point.26", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionLinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  br label %11

10:                                               ; preds = %29, %3
  ret void

11:                                               ; preds = %6, %29
  %12 = phi i64 [ 0, %6 ], [ %31, %29 ]
  %13 = phi i32 [ 0, %6 ], [ %30, %29 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #11
  %15 = tail call noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  %16 = load double, ptr %8, align 8, !tbaa !128
  %17 = fcmp olt double %15, %16
  %18 = select i1 %17, double 1.000000e+00, double 0.000000e+00
  %19 = load i32, ptr %9, align 8, !tbaa !133
  %20 = icmp eq i32 %19, -1
  %21 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  br i1 %20, label %22, label %24

22:                                               ; preds = %11
  %23 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %21, double noundef %18) #10
  br label %29

24:                                               ; preds = %11
  %25 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %21, double noundef 0.000000e+00) #10
  %26 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  %27 = load i32, ptr %9, align 8, !tbaa !133
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %26, i32 noundef %27) #10
  store double %18, ptr %28, align 8, !tbaa !90
  br label %29

29:                                               ; preds = %24, %22
  %30 = add i32 %13, 1
  %31 = zext i32 %30 to i64
  %32 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %33 = icmp ugt i64 %32, %31
  br i1 %33, label %11, label %10, !llvm.loop !141
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi1EEC2EdNS_5PointILi1EEEjj(ptr noundef nonnull align 8 dereferenceable(116) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions16CutOffFunctionW1ILi1EEC5EdNS_5PointILi1EEEjj) align 2 !prof !65 {
  %6 = alloca %"class.dealii::Point", align 8
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @_ZN6dealii9Functions18CutOffFunctionBaseILi1EEC2EdNS_5PointILi1EEEjj(ptr noundef nonnull align 8 dereferenceable(116) %0, double noundef %1, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi1EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !89
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %11 = tail call noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %12 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %13 = load double, ptr %12, align 8, !tbaa !69
  %14 = fcmp olt double %11, %13
  %15 = fsub double %13, %11
  %16 = select i1 %14, double %15, double 0.000000e+00
  br label %17

17:                                               ; preds = %3, %9
  %18 = phi double [ %16, %9 ], [ 0.000000e+00, %3 ]
  ret double %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !89
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i32 %7, %3
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %4
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %28, %17 ]
  %19 = phi i32 [ 0, %14 ], [ %27, %17 ]
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %18) #11
  %21 = tail call noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %20) #10
  %22 = load double, ptr %16, align 8, !tbaa !69
  %23 = fcmp olt double %21, %22
  %24 = fsub double %22, %21
  %25 = select i1 %23, double %24, double 0.000000e+00
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %18) #11
  store double %25, ptr %26, align 8, !tbaa !90
  %27 = add i32 %19, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %30 = icmp ugt i64 %29, %28
  br i1 %30, label %17, label %34, !llvm.loop !142

31:                                               ; preds = %4
  %32 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %33 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store double 0.000000e+00, ptr %5, align 8, !tbaa !90
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %32, ptr %33, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %34

34:                                               ; preds = %17, %11, %31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  br label %11

10:                                               ; preds = %30, %3
  ret void

11:                                               ; preds = %6, %30
  %12 = phi i64 [ 0, %6 ], [ %32, %30 ]
  %13 = phi i32 [ 0, %6 ], [ %31, %30 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #11
  %15 = tail call noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  %16 = load double, ptr %8, align 8, !tbaa !69
  %17 = fcmp olt double %15, %16
  %18 = fsub double %16, %15
  %19 = select i1 %17, double %18, double 0.000000e+00
  %20 = load i32, ptr %9, align 8, !tbaa !89
  %21 = icmp eq i32 %20, -1
  %22 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  br i1 %21, label %23, label %25

23:                                               ; preds = %11
  %24 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %22, double noundef %19) #10
  br label %30

25:                                               ; preds = %11
  %26 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %22, double noundef 0.000000e+00) #10
  %27 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  %28 = load i32, ptr %9, align 8, !tbaa !89
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %27, i32 noundef %28) #10
  store double %19, ptr %29, align 8, !tbaa !90
  br label %30

30:                                               ; preds = %25, %23
  %31 = add i32 %13, 1
  %32 = zext i32 %31 to i64
  %33 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %34 = icmp ugt i64 %33, %32
  br i1 %34, label %11, label %10, !llvm.loop !143
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi2EEC2EdNS_5PointILi2EEEjj(ptr noundef nonnull align 8 dereferenceable(124) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions16CutOffFunctionW1ILi2EEC5EdNS_5PointILi2EEEjj) align 2 !prof !65 {
  %6 = alloca %"class.dealii::Point.13", align 8
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @_ZN6dealii9Functions18CutOffFunctionBaseILi2EEC2EdNS_5PointILi2EEEjj(ptr noundef nonnull align 8 dereferenceable(124) %0, double noundef %1, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi2EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !121
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  %12 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %13 = load double, ptr %12, align 8, !tbaa !116
  %14 = fcmp olt double %11, %13
  %15 = fsub double %13, %11
  %16 = select i1 %14, double %15, double 0.000000e+00
  br label %17

17:                                               ; preds = %3, %9
  %18 = phi double [ %16, %9 ], [ 0.000000e+00, %3 ]
  ret double %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !121
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i32 %7, %3
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %4
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %28, %17 ]
  %19 = phi i32 [ 0, %14 ], [ %27, %17 ]
  %20 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %18) #11
  %21 = tail call noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %20) #10
  %22 = load double, ptr %16, align 8, !tbaa !116
  %23 = fcmp olt double %21, %22
  %24 = fsub double %22, %21
  %25 = select i1 %23, double %24, double 0.000000e+00
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %18) #11
  store double %25, ptr %26, align 8, !tbaa !90
  %27 = add i32 %19, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %30 = icmp ugt i64 %29, %28
  br i1 %30, label %17, label %34, !llvm.loop !144

31:                                               ; preds = %4
  %32 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %33 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store double 0.000000e+00, ptr %5, align 8, !tbaa !90
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %32, ptr %33, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %34

34:                                               ; preds = %17, %11, %31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  br label %11

10:                                               ; preds = %30, %3
  ret void

11:                                               ; preds = %6, %30
  %12 = phi i64 [ 0, %6 ], [ %32, %30 ]
  %13 = phi i32 [ 0, %6 ], [ %31, %30 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #11
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %14) #10
  %16 = load double, ptr %8, align 8, !tbaa !116
  %17 = fcmp olt double %15, %16
  %18 = fsub double %16, %15
  %19 = select i1 %17, double %18, double 0.000000e+00
  %20 = load i32, ptr %9, align 8, !tbaa !121
  %21 = icmp eq i32 %20, -1
  %22 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  br i1 %21, label %23, label %25

23:                                               ; preds = %11
  %24 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %22, double noundef %19) #10
  br label %30

25:                                               ; preds = %11
  %26 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %22, double noundef 0.000000e+00) #10
  %27 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  %28 = load i32, ptr %9, align 8, !tbaa !121
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %27, i32 noundef %28) #10
  store double %19, ptr %29, align 8, !tbaa !90
  br label %30

30:                                               ; preds = %25, %23
  %31 = add i32 %13, 1
  %32 = zext i32 %31 to i64
  %33 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %34 = icmp ugt i64 %33, %32
  br i1 %34, label %11, label %10, !llvm.loop !145
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi3EEC2EdNS_5PointILi3EEEjj(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions16CutOffFunctionW1ILi3EEC5EdNS_5PointILi3EEEjj) align 2 !prof !65 {
  %6 = alloca %"class.dealii::Point.26", align 8
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  call void @_ZN6dealii9Functions18CutOffFunctionBaseILi3EEC2EdNS_5PointILi3EEEjj(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions16CutOffFunctionW1ILi3EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !133
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %11 = tail call noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %12 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %13 = load double, ptr %12, align 8, !tbaa !128
  %14 = fcmp olt double %11, %13
  %15 = fsub double %13, %11
  %16 = select i1 %14, double %15, double 0.000000e+00
  br label %17

17:                                               ; preds = %3, %9
  %18 = phi double [ %16, %9 ], [ 0.000000e+00, %3 ]
  ret double %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !133
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i32 %7, %3
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %4
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %28, %17 ]
  %19 = phi i32 [ 0, %14 ], [ %27, %17 ]
  %20 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %18) #11
  %21 = tail call noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %20) #10
  %22 = load double, ptr %16, align 8, !tbaa !128
  %23 = fcmp olt double %21, %22
  %24 = fsub double %22, %21
  %25 = select i1 %23, double %24, double 0.000000e+00
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %18) #11
  store double %25, ptr %26, align 8, !tbaa !90
  %27 = add i32 %19, 1
  %28 = zext i32 %27 to i64
  %29 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %30 = icmp ugt i64 %29, %28
  br i1 %30, label %17, label %34, !llvm.loop !146

31:                                               ; preds = %4
  %32 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %33 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store double 0.000000e+00, ptr %5, align 8, !tbaa !90
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %32, ptr %33, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %34

34:                                               ; preds = %17, %11, %31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions16CutOffFunctionW1ILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  br label %11

10:                                               ; preds = %30, %3
  ret void

11:                                               ; preds = %6, %30
  %12 = phi i64 [ 0, %6 ], [ %32, %30 ]
  %13 = phi i32 [ 0, %6 ], [ %31, %30 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #11
  %15 = tail call noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  %16 = load double, ptr %8, align 8, !tbaa !128
  %17 = fcmp olt double %15, %16
  %18 = fsub double %16, %15
  %19 = select i1 %17, double %18, double 0.000000e+00
  %20 = load i32, ptr %9, align 8, !tbaa !133
  %21 = icmp eq i32 %20, -1
  %22 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  br i1 %21, label %23, label %25

23:                                               ; preds = %11
  %24 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %22, double noundef %19) #10
  br label %30

25:                                               ; preds = %11
  %26 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %22, double noundef 0.000000e+00) #10
  %27 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  %28 = load i32, ptr %9, align 8, !tbaa !133
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %27, i32 noundef %28) #10
  store double %19, ptr %29, align 8, !tbaa !90
  br label %30

30:                                               ; preds = %25, %23
  %31 = add i32 %13, 1
  %32 = zext i32 %31 to i64
  %33 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %34 = icmp ugt i64 %33, %32
  br i1 %34, label %11, label %10, !llvm.loop !147
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi1EEC2EdNS_5PointILi1EEEjj(ptr noundef nonnull align 8 dereferenceable(116) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionCinftyILi1EEC5EdNS_5PointILi1EEEjj) align 2 !prof !65 {
  %6 = alloca %"class.dealii::Point", align 8
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @_ZN6dealii9Functions18CutOffFunctionBaseILi1EEC2EdNS_5PointILi1EEEjj(ptr noundef nonnull align 8 dereferenceable(116) %0, double noundef %1, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi1EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi1EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !89
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %11 = tail call noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %12 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %13 = load double, ptr %12, align 8, !tbaa !69
  %14 = fcmp ult double %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = fneg double %13
  %17 = fmul double %13, %16
  %18 = fneg double %11
  %19 = fmul double %11, %18
  %20 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %19)
  %21 = fdiv double %17, %20
  %22 = fcmp olt double %21, -5.000000e+01
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = tail call double @exp(double noundef %21) #11
  %25 = fmul double %24, 0x4005BF0A8B145769
  br label %26

26:                                               ; preds = %3, %9, %15, %23
  %27 = phi double [ 0.000000e+00, %9 ], [ %25, %23 ], [ 0.000000e+00, %15 ], [ 0.000000e+00, %3 ]
  ret double %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %7 = load double, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !89
  %10 = icmp eq i32 %9, -1
  %11 = icmp eq i32 %9, %3
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %4
  %14 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %18 = fneg double %7
  %19 = fmul double %7, %18
  br label %20

20:                                               ; preds = %16, %35
  %21 = phi i64 [ 0, %16 ], [ %39, %35 ]
  %22 = phi i32 [ 0, %16 ], [ %38, %35 ]
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %21) #11
  %24 = tail call noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %23) #10
  %25 = fcmp ult double %24, %7
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = fneg double %24
  %28 = fmul double %24, %27
  %29 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %28)
  %30 = fdiv double %19, %29
  %31 = fcmp olt double %30, -5.000000e+01
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = tail call double @exp(double noundef %30) #11
  %34 = fmul double %33, 0x4005BF0A8B145769
  br label %35

35:                                               ; preds = %32, %26, %20
  %36 = phi double [ 0.000000e+00, %20 ], [ %34, %32 ], [ 0.000000e+00, %26 ]
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %21) #11
  store double %36, ptr %37, align 8, !tbaa !90
  %38 = add i32 %22, 1
  %39 = zext i32 %38 to i64
  %40 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %41 = icmp ugt i64 %40, %39
  br i1 %41, label %20, label %45, !llvm.loop !148

42:                                               ; preds = %4
  %43 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %44 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store double 0.000000e+00, ptr %5, align 8, !tbaa !90
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %43, ptr %44, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %45

45:                                               ; preds = %35, %13, %42
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %0, i64 0, i32 4
  br label %11

10:                                               ; preds = %41, %3
  ret void

11:                                               ; preds = %6, %41
  %12 = phi i64 [ 0, %6 ], [ %43, %41 ]
  %13 = phi i32 [ 0, %6 ], [ %42, %41 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorIN6dealii5PointILi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #11
  %15 = tail call noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %14) #10
  %16 = load double, ptr %8, align 8, !tbaa !69
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = fneg double %16
  %20 = fmul double %16, %19
  %21 = fneg double %15
  %22 = fmul double %15, %21
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %22)
  %24 = fdiv double %20, %23
  %25 = fcmp ogt double %24, -5.000000e+01
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = tail call double @exp(double noundef %24) #11
  %28 = fmul double %27, 0x4005BF0A8B145769
  br label %29

29:                                               ; preds = %18, %26, %11
  %30 = phi double [ %28, %26 ], [ 0.000000e+00, %18 ], [ 0.000000e+00, %11 ]
  %31 = load i32, ptr %9, align 8, !tbaa !89
  %32 = icmp eq i32 %31, -1
  %33 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  br i1 %32, label %34, label %36

34:                                               ; preds = %29
  %35 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %33, double noundef %30) #10
  br label %41

36:                                               ; preds = %29
  %37 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %33, double noundef 0.000000e+00) #10
  %38 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  %39 = load i32, ptr %9, align 8, !tbaa !89
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %38, i32 noundef %39) #10
  store double %30, ptr %40, align 8, !tbaa !90
  br label %41

41:                                               ; preds = %36, %34
  %42 = add i32 %13, 1
  %43 = zext i32 %42 to i64
  %44 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %45 = icmp ugt i64 %44, %43
  br i1 %45, label %11, label %10, !llvm.loop !149
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca %"class.dealii::Point", align 8
  %6 = alloca %"class.dealii::Point", align 8
  %7 = alloca %"class.dealii::Point", align 8
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %1, i64 0, i32 2
  %9 = tail call noundef double @_ZNK6dealii5PointILi1EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase", ptr %1, i64 0, i32 3
  %11 = load double, ptr %10, align 8, !tbaa !69
  %12 = fcmp ult double %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #10
  br label %35

14:                                               ; preds = %4
  %15 = fneg double %9
  %16 = fmul double %9, %15
  %17 = fsub double %11, %9
  %18 = fdiv double %16, %17
  %19 = fadd double %9, %11
  %20 = fdiv double %18, %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %21 = fcmp olt double %20, -5.000000e+01
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  call void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  br label %34

23:                                               ; preds = %14
  call void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %8) #10
  call void @_ZNK6dealii5PointILi1EEdvEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef %9) #10
  %24 = fmul double %11, -2.000000e+00
  %25 = fmul double %11, %24
  %26 = fneg double %11
  %27 = fmul double %9, %9
  %28 = call double @llvm.fmuladd.f64(double %26, double %11, double %27)
  %29 = fmul double %28, %28
  %30 = fdiv double %25, %29
  %31 = fmul double %9, %30
  %32 = call double @exp(double noundef %20) #11
  %33 = fmul double %31, %32
  call void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef %33) #10
  br label %34

34:                                               ; preds = %23, %22
  call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %35

35:                                               ; preds = %34, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !150 {
  br i1 %1, label %3, label %4, !prof !151

3:                                                ; preds = %2
  store double 0.000000e+00, ptr %0, align 8, !tbaa !90
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !152 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi1EEmiERKNS_6TensorILi1ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi1EEdvEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEdVEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %2) #10
  call void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi1EEmlEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = alloca %"class.dealii::Point", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @_ZN6dealii5PointILi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmLEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %2) #10
  call void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !153 {
  %3 = load double, ptr %1, align 8, !tbaa !90
  store double %3, ptr %0, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi2EEC2EdNS_5PointILi2EEEjj(ptr noundef nonnull align 8 dereferenceable(124) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionCinftyILi2EEC5EdNS_5PointILi2EEEjj) align 2 !prof !65 {
  %6 = alloca %"class.dealii::Point.13", align 8
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @_ZN6dealii9Functions18CutOffFunctionBaseILi2EEC2EdNS_5PointILi2EEEjj(ptr noundef nonnull align 8 dereferenceable(124) %0, double noundef %1, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi2EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi2EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !121
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %11 = tail call noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  %12 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %13 = load double, ptr %12, align 8, !tbaa !116
  %14 = fcmp ult double %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = fneg double %13
  %17 = fmul double %13, %16
  %18 = fneg double %11
  %19 = fmul double %11, %18
  %20 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %19)
  %21 = fdiv double %17, %20
  %22 = fcmp olt double %21, -5.000000e+01
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = tail call double @exp(double noundef %21) #11
  %25 = fmul double %24, 0x4005BF0A8B145769
  br label %26

26:                                               ; preds = %3, %9, %15, %23
  %27 = phi double [ 0.000000e+00, %9 ], [ %25, %23 ], [ 0.000000e+00, %15 ], [ 0.000000e+00, %3 ]
  ret double %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %7 = load double, ptr %6, align 8, !tbaa !116
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !121
  %10 = icmp eq i32 %9, -1
  %11 = icmp eq i32 %9, %3
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %4
  %14 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %18 = fneg double %7
  %19 = fmul double %7, %18
  br label %20

20:                                               ; preds = %16, %35
  %21 = phi i64 [ 0, %16 ], [ %39, %35 ]
  %22 = phi i32 [ 0, %16 ], [ %38, %35 ]
  %23 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %21) #11
  %24 = tail call noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %23) #10
  %25 = fcmp ult double %24, %7
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = fneg double %24
  %28 = fmul double %24, %27
  %29 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %28)
  %30 = fdiv double %19, %29
  %31 = fcmp olt double %30, -5.000000e+01
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = tail call double @exp(double noundef %30) #11
  %34 = fmul double %33, 0x4005BF0A8B145769
  br label %35

35:                                               ; preds = %32, %26, %20
  %36 = phi double [ 0.000000e+00, %20 ], [ %34, %32 ], [ 0.000000e+00, %26 ]
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %21) #11
  store double %36, ptr %37, align 8, !tbaa !90
  %38 = add i32 %22, 1
  %39 = zext i32 %38 to i64
  %40 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %41 = icmp ugt i64 %40, %39
  br i1 %41, label %20, label %45, !llvm.loop !154

42:                                               ; preds = %4
  %43 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %44 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store double 0.000000e+00, ptr %5, align 8, !tbaa !90
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %43, ptr %44, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %45

45:                                               ; preds = %35, %13, %42
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %0, i64 0, i32 4
  br label %11

10:                                               ; preds = %41, %3
  ret void

11:                                               ; preds = %6, %41
  %12 = phi i64 [ 0, %6 ], [ %43, %41 ]
  %13 = phi i32 [ 0, %6 ], [ %42, %41 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt6vectorIN6dealii5PointILi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #11
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %14) #10
  %16 = load double, ptr %8, align 8, !tbaa !116
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = fneg double %16
  %20 = fmul double %16, %19
  %21 = fneg double %15
  %22 = fmul double %15, %21
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %22)
  %24 = fdiv double %20, %23
  %25 = fcmp ogt double %24, -5.000000e+01
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = tail call double @exp(double noundef %24) #11
  %28 = fmul double %27, 0x4005BF0A8B145769
  br label %29

29:                                               ; preds = %18, %26, %11
  %30 = phi double [ %28, %26 ], [ 0.000000e+00, %18 ], [ 0.000000e+00, %11 ]
  %31 = load i32, ptr %9, align 8, !tbaa !121
  %32 = icmp eq i32 %31, -1
  %33 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  br i1 %32, label %34, label %36

34:                                               ; preds = %29
  %35 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %33, double noundef %30) #10
  br label %41

36:                                               ; preds = %29
  %37 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %33, double noundef 0.000000e+00) #10
  %38 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  %39 = load i32, ptr %9, align 8, !tbaa !121
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %38, i32 noundef %39) #10
  store double %30, ptr %40, align 8, !tbaa !90
  br label %41

41:                                               ; preds = %36, %34
  %42 = add i32 %13, 1
  %43 = zext i32 %42 to i64
  %44 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %45 = icmp ugt i64 %44, %43
  br i1 %45, label %11, label %10, !llvm.loop !155
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca %"class.dealii::Point.13", align 8
  %6 = alloca %"class.dealii::Point.13", align 8
  %7 = alloca %"class.dealii::Point.13", align 8
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %1, i64 0, i32 2
  %9 = tail call noundef double @_ZNK6dealii5PointILi2EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.16", ptr %1, i64 0, i32 3
  %11 = load double, ptr %10, align 8, !tbaa !116
  %12 = fcmp ult double %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #10
  br label %35

14:                                               ; preds = %4
  %15 = fneg double %9
  %16 = fmul double %9, %15
  %17 = fsub double %11, %9
  %18 = fdiv double %16, %17
  %19 = fadd double %9, %11
  %20 = fdiv double %18, %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %21 = fcmp olt double %20, -5.000000e+01
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  call void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  br label %34

23:                                               ; preds = %14
  call void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.13") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %8) #10
  call void @_ZNK6dealii5PointILi2EEdvEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.13") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %7, double noundef %9) #10
  %24 = fmul double %11, -2.000000e+00
  %25 = fmul double %11, %24
  %26 = fneg double %11
  %27 = fmul double %9, %9
  %28 = call double @llvm.fmuladd.f64(double %26, double %11, double %27)
  %29 = fmul double %28, %28
  %30 = fdiv double %25, %29
  %31 = fmul double %9, %30
  %32 = call double @exp(double noundef %20) #11
  %33 = fmul double %31, %32
  call void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.13") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, double noundef %33) #10
  br label %34

34:                                               ; preds = %23, %22
  call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %35

35:                                               ; preds = %34, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !156 {
  br i1 %1, label %3, label %4, !prof !157

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !90
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 !prof !158 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !prof !159 {
  %4 = alloca %"class.dealii::Point.13", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2) #10
  call void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi2EEdvEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = alloca %"class.dealii::Point.13", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEdVEd(ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %2) #10
  call void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi2EEmlEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = alloca %"class.dealii::Point.13", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @_ZN6dealii5PointILi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmLEd(ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %2) #10
  call void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 !prof !160 {
  %3 = load double, ptr %1, align 8, !tbaa !90
  store double %3, ptr %0, align 8, !tbaa !90
  %4 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  store double %5, ptr %6, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi3EEC2EdNS_5PointILi3EEEjj(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat($_ZN6dealii9Functions20CutOffFunctionCinftyILi3EEC5EdNS_5PointILi3EEEjj) align 2 !prof !65 {
  %6 = alloca %"class.dealii::Point.26", align 8
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  call void @_ZN6dealii9Functions18CutOffFunctionBaseILi3EEC2EdNS_5PointILi3EEEjj(ptr noundef nonnull align 8 dereferenceable(132) %0, double noundef %1, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4) #10
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi3EEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [18 x ptr], [4 x ptr] }, ptr @_ZTVN6dealii9Functions20CutOffFunctionCinftyILi3EEE, i64 0, inrange i32 1, i64 2), ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !133
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %11 = tail call noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %12 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %13 = load double, ptr %12, align 8, !tbaa !128
  %14 = fcmp ult double %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = fneg double %13
  %17 = fmul double %13, %16
  %18 = fneg double %11
  %19 = fmul double %11, %18
  %20 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %19)
  %21 = fdiv double %17, %20
  %22 = fcmp olt double %21, -5.000000e+01
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = tail call double @exp(double noundef %21) #11
  %25 = fmul double %24, 0x4005BF0A8B145769
  br label %26

26:                                               ; preds = %3, %9, %15, %23
  %27 = phi double [ 0.000000e+00, %9 ], [ %25, %23 ], [ 0.000000e+00, %15 ], [ 0.000000e+00, %3 ]
  ret double %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca double, align 8
  %6 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %7 = load double, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !133
  %10 = icmp eq i32 %9, -1
  %11 = icmp eq i32 %9, %3
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %4
  %14 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %18 = fneg double %7
  %19 = fmul double %7, %18
  br label %20

20:                                               ; preds = %16, %35
  %21 = phi i64 [ 0, %16 ], [ %39, %35 ]
  %22 = phi i32 [ 0, %16 ], [ %38, %35 ]
  %23 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %21) #11
  %24 = tail call noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %23) #10
  %25 = fcmp ult double %24, %7
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = fneg double %24
  %28 = fmul double %24, %27
  %29 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %28)
  %30 = fdiv double %19, %29
  %31 = fcmp olt double %30, -5.000000e+01
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = tail call double @exp(double noundef %30) #11
  %34 = fmul double %33, 0x4005BF0A8B145769
  br label %35

35:                                               ; preds = %32, %26, %20
  %36 = phi double [ 0.000000e+00, %20 ], [ %34, %32 ], [ 0.000000e+00, %26 ]
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %21) #11
  store double %36, ptr %37, align 8, !tbaa !90
  %38 = add i32 %22, 1
  %39 = zext i32 %38 to i64
  %40 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %41 = icmp ugt i64 %40, %39
  br i1 %41, label %20, label %45, !llvm.loop !161

42:                                               ; preds = %4
  %43 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %44 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store double 0.000000e+00, ptr %5, align 8, !tbaa !90
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %43, ptr %44, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %45

45:                                               ; preds = %35, %13, %42
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS5_EERS3_INS_6VectorIdEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 !prof !65 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %0, i64 0, i32 4
  br label %11

10:                                               ; preds = %41, %3
  ret void

11:                                               ; preds = %6, %41
  %12 = phi i64 [ 0, %6 ], [ %43, %41 ]
  %13 = phi i32 [ 0, %6 ], [ %42, %41 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt6vectorIN6dealii5PointILi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #11
  %15 = tail call noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  %16 = load double, ptr %8, align 8, !tbaa !128
  %17 = fcmp olt double %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = fneg double %16
  %20 = fmul double %16, %19
  %21 = fneg double %15
  %22 = fmul double %15, %21
  %23 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %22)
  %24 = fdiv double %20, %23
  %25 = fcmp ogt double %24, -5.000000e+01
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = tail call double @exp(double noundef %24) #11
  %28 = fmul double %27, 0x4005BF0A8B145769
  br label %29

29:                                               ; preds = %18, %26, %11
  %30 = phi double [ %28, %26 ], [ 0.000000e+00, %18 ], [ 0.000000e+00, %11 ]
  %31 = load i32, ptr %9, align 8, !tbaa !133
  %32 = icmp eq i32 %31, -1
  %33 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  br i1 %32, label %34, label %36

34:                                               ; preds = %29
  %35 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %33, double noundef %30) #10
  br label %41

36:                                               ; preds = %29
  %37 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6dealii6VectorIdEaSEd(ptr noundef nonnull align 8 dereferenceable(88) %33, double noundef 0.000000e+00) #10
  %38 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN6dealii6VectorIdEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %12) #11
  %39 = load i32, ptr %9, align 8, !tbaa !133
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6VectorIdEclEj(ptr noundef nonnull align 8 dereferenceable(88) %38, i32 noundef %39) #10
  store double %30, ptr %40, align 8, !tbaa !90
  br label %41

41:                                               ; preds = %36, %34
  %42 = add i32 %13, 1
  %43 = zext i32 %42 to i64
  %44 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6VectorIdEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %45 = icmp ugt i64 %44, %43
  br i1 %45, label %11, label %10, !llvm.loop !162
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii9Functions20CutOffFunctionCinftyILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !65 {
  %5 = alloca %"class.dealii::Point.26", align 8
  %6 = alloca %"class.dealii::Point.26", align 8
  %7 = alloca %"class.dealii::Point.26", align 8
  %8 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %1, i64 0, i32 2
  %9 = tail call noundef double @_ZNK6dealii5PointILi3EE8distanceERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  %10 = getelementptr inbounds %"class.dealii::Functions::CutOffFunctionBase.29", ptr %1, i64 0, i32 3
  %11 = load double, ptr %10, align 8, !tbaa !128
  %12 = fcmp ult double %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #10
  br label %35

14:                                               ; preds = %4
  %15 = fneg double %9
  %16 = fmul double %9, %15
  %17 = fsub double %11, %9
  %18 = fdiv double %16, %17
  %19 = fadd double %9, %11
  %20 = fdiv double %18, %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %21 = fcmp olt double %20, -5.000000e+01
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  call void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  br label %34

23:                                               ; preds = %14
  call void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.26") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8) #10
  call void @_ZNK6dealii5PointILi3EEdvEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.26") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %7, double noundef %9) #10
  %24 = fmul double %11, -2.000000e+00
  %25 = fmul double %11, %24
  %26 = fneg double %11
  %27 = fmul double %9, %9
  %28 = call double @llvm.fmuladd.f64(double %26, double %11, double %27)
  %29 = fmul double %28, %28
  %30 = fdiv double %25, %29
  %31 = fmul double %9, %30
  %32 = call double @exp(double noundef %20) #11
  %33 = fmul double %31, %32
  call void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind nonnull writable sret(%"class.dealii::Point.26") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %33) #10
  br label %34

34:                                               ; preds = %23, %22
  call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %35

35:                                               ; preds = %34, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !163 {
  br i1 %1, label %3, label %4, !prof !164

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !90
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !165 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !166 {
  %4 = alloca %"class.dealii::Point.26", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  call void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi3EEdvEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %4 = alloca %"class.dealii::Point.26", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEdVEd(ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %2) #10
  call void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK6dealii5PointILi3EEmlEd(ptr dead_on_unwind noalias writable sret(%"class.dealii::Point.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2) local_unnamed_addr #0 comdat align 2 !prof !168 {
  %4 = alloca %"class.dealii::Point.26", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @_ZN6dealii5PointILi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmLEd(ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %2) #10
  call void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !169 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  store double %7, ptr %8, align 8, !tbaa !90
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !170, !llvm.loop !171
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime8set_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN6dealii12FunctionTime12advance_timeEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE12vector_valueERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE8gradientERKNS_5PointILi1EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE15vector_gradientERKNS_5PointILi1EEERSt6vectorINS_6TensorILi1ELi1EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE13gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6TensorILi1ELi1EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE20vector_gradient_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi1EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #5

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi1EE9laplacianERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE16vector_laplacianERKNS_5PointILi1EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE14laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE21vector_laplacian_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions20CutOffFunctionLinftyILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE12vector_valueERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE8gradientERKNS_5PointILi2EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.14") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE15vector_gradientERKNS_5PointILi2EEERSt6vectorINS_6TensorILi1ELi2EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE13gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6TensorILi1ELi2EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE20vector_gradient_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi2EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #5

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi2EE9laplacianERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE16vector_laplacianERKNS_5PointILi2EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE14laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE21vector_laplacian_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions20CutOffFunctionLinftyILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE12vector_valueERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE8gradientERKNS_5PointILi3EEEj(ptr dead_on_unwind writable sret(%"class.dealii::Tensor.27") align 8, ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE15vector_gradientERKNS_5PointILi3EEERSt6vectorINS_6TensorILi1ELi3EEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE13gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6TensorILi1ELi3EEESaISA_EEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE20vector_gradient_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IS2_INS_6TensorILi1ELi3EEESaISA_EESaISC_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 1) unnamed_addr #5

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi3EE9laplacianERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE16vector_laplacianERKNS_5PointILi3EEERNS_6VectorIdEE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE14laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE21vector_laplacian_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions20CutOffFunctionLinftyILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions16CutOffFunctionW1ILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions16CutOffFunctionW1ILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions16CutOffFunctionW1ILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions16CutOffFunctionW1ILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions16CutOffFunctionW1ILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions20CutOffFunctionCinftyILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions20CutOffFunctionCinftyILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions20CutOffFunctionCinftyILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi1EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18CutOffFunctionBaseILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi1EE5valueERKNS_5PointILi1EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE10value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi1EE17vector_value_listERKSt6vectorINS_5PointILi1EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi1EED2Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi1EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions18CutOffFunctionBaseILi1EED0Ev(ptr noundef nonnull align 8 dereferenceable(116) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !172 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !90
  ret double %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !101 {
  tail call void @_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !101 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  %9 = load ptr, ptr %8, align 8, !tbaa !173
  call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !174 {
  %4 = load double, ptr %2, align 8, !tbaa !90
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !175

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store double %4, ptr %7, align 8, !tbaa !90
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !176, !llvm.loop !177

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !178 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !179 {
  %3 = load ptr, ptr %1, align 8, !tbaa !173
  store ptr %3, ptr %0, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !182 {
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN6dealii6VectorIdE5beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 !prof !183 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN6dealii6VectorIdE3endEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 comdat align 2 !prof !184 {
  %2 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = getelementptr inbounds %"class.dealii::Vector", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !111
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds double, ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !185 {
  tail call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi2EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18CutOffFunctionBaseILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi2EE5valueERKNS_5PointILi2EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE10value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi2EE17vector_value_listERKSt6vectorINS_5PointILi2EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi2EED2Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi2EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions18CutOffFunctionBaseILi2EED0Ev(ptr noundef nonnull align 8 dereferenceable(124) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !186 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !90
  ret double %5
}

; Function Attrs: optsize
declare void @_ZN6dealii8FunctionILi3EEC2Ejd(ptr noundef nonnull align 8 dereferenceable(92), i32 noundef, double noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9Functions18CutOffFunctionBaseILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZNK6dealii8FunctionILi3EE5valueERKNS_5PointILi3EEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE10value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_IdSaIdEEj(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK6dealii8FunctionILi3EE17vector_value_listERKSt6vectorINS_5PointILi3EEESaIS4_EERS2_INS_6VectorIdEESaISA_EE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii8FunctionILi3EED2Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N6dealii9Functions18CutOffFunctionBaseILi3EED0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6dealii9Functions18CutOffFunctionBaseILi3EED0Ev(ptr noundef nonnull align 8 dereferenceable(132) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !187 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !90
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !65 {
  %3 = load double, ptr %1, align 8, !tbaa !90
  %4 = load double, ptr %0, align 8, !tbaa !90
  %5 = fsub double %4, %3
  store double %5, ptr %0, align 8, !tbaa !90
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi1EEC2ERKNS_6TensorILi1ELi1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !65 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEdVEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !65 {
  %3 = load double, ptr %0, align 8, !tbaa !90
  %4 = fdiv double %3, %1
  store double %4, ptr %0, align 8, !tbaa !90
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEmLEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !65 {
  %3 = load double, ptr %0, align 8, !tbaa !90
  %4 = fmul double %3, %1
  store double %4, ptr %0, align 8, !tbaa !90
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 !prof !159 {
  %3 = load double, ptr %1, align 8, !tbaa !90
  %4 = load double, ptr %0, align 8, !tbaa !90
  %5 = fsub double %4, %3
  store double %5, ptr %0, align 8, !tbaa !90
  %6 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !90
  %10 = fsub double %9, %7
  store double %10, ptr %8, align 8, !tbaa !90
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 !prof !159 {
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEdVEd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !65 {
  %3 = load <2 x double>, ptr %0, align 8, !tbaa !90
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fdiv <2 x double> %3, %5
  store <2 x double> %6, ptr %0, align 8, !tbaa !90
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi1ELi2EEmLEd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !65 {
  %3 = load <2 x double>, ptr %0, align 8, !tbaa !90
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x double> %3, %5
  store <2 x double> %6, ptr %0, align 8, !tbaa !90
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 !prof !188 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %11, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %9 = load double, ptr %8, align 8, !tbaa !90
  %10 = fsub double %9, %7
  store double %10, ptr %8, align 8, !tbaa !90
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %3, label %4, !prof !189, !llvm.loop !190
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !191 {
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEdVEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !192 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !90
  %8 = fdiv double %7, %1
  store double %8, ptr %6, align 8, !tbaa !90
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !193, !llvm.loop !194
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi1ELi3EEmLEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !195 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !90
  %8 = fmul double %7, %1
  store double %8, ptr %6, align 8, !tbaa !90
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 3
  br i1 %10, label %3, label %4, !prof !196, !llvm.loop !197
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!64}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!35 = !{ptr @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_, ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_, i64 12788}
!36 = !{ptr @_ZNSt6vectorIdSaIdEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, i64 6082739}
!37 = !{ptr @_ZNSt6vectorIdSaIdEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, i64 11878526}
!38 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZN6dealii6VectorIdE5beginEv, i64 4002559}
!39 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZN6dealii6VectorIdE3endEv, i64 4002559}
!40 = !{ptr @_ZN6dealii6VectorIdEaSEd, ptr @_ZSt4fillIPddEvT_S1_RKT0_, i64 4002559}
!41 = !{ptr @_ZNK6dealii5PointILi3EE8distanceERKS1_, ptr @_ZNK6dealii5PointILi3EEclEj, i64 1115272}
!42 = !{ptr @_ZN6dealii5PointILi1EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi1EEC2Eb, i64 269698}
!43 = !{ptr @_ZN6dealii5PointILi2EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi2EEC2Eb, i64 202370}
!44 = !{ptr @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii5PointILi2EEC2ERKS1_, i64 464288}
!45 = !{ptr @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii6TensorILi1ELi2EEmIERKS1_, i64 464288}
!46 = !{ptr @_ZNK6dealii5PointILi2EEmiERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE, i64 464288}
!47 = !{ptr @_ZN6dealii5PointILi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 5584274}
!48 = !{ptr @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii5PointILi3EEC2ERKS1_, i64 18388994}
!49 = !{ptr @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii6TensorILi1ELi3EEmIERKS1_, i64 18388994}
!50 = !{ptr @_ZNK6dealii5PointILi3EEmiERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, i64 18388994}
!51 = !{ptr @_ZNK6dealii5PointILi3EEdvEd, ptr @_ZN6dealii5PointILi3EEC2ERKS1_, i64 112464}
!52 = !{ptr @_ZNK6dealii5PointILi3EEdvEd, ptr @_ZN6dealii6TensorILi1ELi3EEdVEd, i64 112464}
!53 = !{ptr @_ZNK6dealii5PointILi3EEdvEd, ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, i64 112464}
!54 = !{ptr @_ZNK6dealii5PointILi3EEmlEd, ptr @_ZN6dealii5PointILi3EEC2ERKS1_, i64 52047827}
!55 = !{ptr @_ZNK6dealii5PointILi3EEmlEd, ptr @_ZN6dealii6TensorILi1ELi3EEmLEd, i64 52047827}
!56 = !{ptr @_ZNK6dealii5PointILi3EEmlEd, ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, i64 52047827}
!57 = !{ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RKT0_, ptr @_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, i64 12788}
!58 = !{ptr @_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, i64 25576}
!59 = !{ptr @_ZSt9__fill_a1IPdSt6vectorIdSaIdEEdEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 12788}
!60 = !{ptr @_ZSt4fillIPddEvT_S1_RKT0_, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 4406944}
!61 = !{ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 25807262}
!62 = !{ptr @_ZN6dealii5PointILi2EEC2ERKNS_6TensorILi1ELi2EEE, ptr @_ZN6dealii6TensorILi1ELi2EEC2ERKS1_, i64 464288}
!63 = !{ptr @_ZN6dealii5PointILi3EEC2ERKNS_6TensorILi1ELi3EEE, ptr @_ZN6dealii6TensorILi1ELi3EEC2ERKS1_, i64 70675435}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"vtable pointer", !68, i64 0}
!68 = !{!"Simple C++ TBAA"}
!69 = !{!70, !73, i64 104}
!70 = !{!"_ZTSN6dealii9Functions18CutOffFunctionBaseILi1EEE", !71, i64 0, !87, i64 96, !73, i64 104, !76, i64 112}
!71 = !{!"_ZTSN6dealii8FunctionILi1EEE", !72, i64 0, !75, i64 16, !76, i64 88}
!72 = !{!"_ZTSN6dealii12FunctionTimeE", !73, i64 8}
!73 = !{!"double", !74, i64 0}
!74 = !{!"omnipotent char", !68, i64 0}
!75 = !{!"_ZTSN6dealii11SubscriptorE", !76, i64 8, !77, i64 16, !85, i64 64}
!76 = !{!"int", !74, i64 0}
!77 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !78, i64 0}
!78 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !79, i64 0}
!79 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !80, i64 0, !82, i64 8}
!80 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !81, i64 0}
!81 = !{!"_ZTSSt4lessIPKcE"}
!82 = !{!"_ZTSSt15_Rb_tree_header", !83, i64 0, !86, i64 32}
!83 = !{!"_ZTSSt18_Rb_tree_node_base", !84, i64 0, !85, i64 8, !85, i64 16, !85, i64 24}
!84 = !{!"_ZTSSt14_Rb_tree_color", !74, i64 0}
!85 = !{!"any pointer", !74, i64 0}
!86 = !{!"long", !74, i64 0}
!87 = !{!"_ZTSN6dealii5PointILi1EEE", !88, i64 0}
!88 = !{!"_ZTSN6dealii6TensorILi1ELi1EEE", !74, i64 0}
!89 = !{!70, !76, i64 112}
!90 = !{!73, !73, i64 0}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"function_entry_count", i64 103595384}
!94 = !{!95, !85, i64 8}
!95 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!96 = !{!95, !85, i64 0}
!97 = !{!"function_entry_count", i64 292334}
!98 = !{!99, !85, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi1EEESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!100 = !{!"function_entry_count", i64 580699156}
!101 = !{!"function_entry_count", i64 12788}
!102 = !{!"function_entry_count", i64 6082739}
!103 = !{!"function_entry_count", i64 11878526}
!104 = distinct !{!104, !92}
!105 = !{!"function_entry_count", i64 28323192}
!106 = !{!107, !85, i64 8}
!107 = !{!"_ZTSNSt12_Vector_baseIN6dealii6VectorIdEESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!108 = !{!107, !85, i64 0}
!109 = !{!"function_entry_count", i64 892135194}
!110 = !{!"function_entry_count", i64 4002560}
!111 = !{!112, !76, i64 72}
!112 = !{!"_ZTSN6dealii6VectorIdEE", !75, i64 0, !76, i64 72, !76, i64 76, !85, i64 80}
!113 = !{!"branch_weights", i32 1, i32 4002561}
!114 = !{!"function_entry_count", i64 138244457713}
!115 = !{!112, !85, i64 80}
!116 = !{!117, !73, i64 112}
!117 = !{!"_ZTSN6dealii9Functions18CutOffFunctionBaseILi2EEE", !118, i64 0, !119, i64 96, !73, i64 112, !76, i64 120}
!118 = !{!"_ZTSN6dealii8FunctionILi2EEE", !72, i64 0, !75, i64 16, !76, i64 88}
!119 = !{!"_ZTSN6dealii5PointILi2EEE", !120, i64 0}
!120 = !{!"_ZTSN6dealii6TensorILi1ELi2EEE", !74, i64 0}
!121 = !{!117, !76, i64 120}
!122 = distinct !{!122, !92}
!123 = distinct !{!123, !92}
!124 = !{!"function_entry_count", i64 5322946}
!125 = !{!126, !85, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi2EEESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!127 = distinct !{!127, !92}
!128 = !{!129, !73, i64 120}
!129 = !{!"_ZTSN6dealii9Functions18CutOffFunctionBaseILi3EEE", !130, i64 0, !131, i64 96, !73, i64 120, !76, i64 128}
!130 = !{!"_ZTSN6dealii8FunctionILi3EEE", !72, i64 0, !75, i64 16, !76, i64 88}
!131 = !{!"_ZTSN6dealii5PointILi3EEE", !132, i64 0}
!132 = !{!"_ZTSN6dealii6TensorILi1ELi3EEE", !74, i64 0}
!133 = !{!129, !76, i64 128}
!134 = !{!"function_entry_count", i64 371758}
!135 = !{!"branch_weights", i32 371759, i32 743516}
!136 = distinct !{!136, !92}
!137 = distinct !{!137, !92}
!138 = !{!"function_entry_count", i64 59145566}
!139 = !{!140, !85, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIN6dealii5PointILi3EEESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!141 = distinct !{!141, !92}
!142 = distinct !{!142, !92}
!143 = distinct !{!143, !92}
!144 = distinct !{!144, !92}
!145 = distinct !{!145, !92}
!146 = distinct !{!146, !92}
!147 = distinct !{!147, !92}
!148 = distinct !{!148, !92}
!149 = distinct !{!149, !92}
!150 = !{!"function_entry_count", i64 551544}
!151 = !{!"branch_weights", i32 551545, i32 1}
!152 = !{!"function_entry_count", i64 269698}
!153 = !{!"function_entry_count", i64 271481}
!154 = distinct !{!154, !92}
!155 = distinct !{!155, !92}
!156 = !{!"function_entry_count", i64 1130961}
!157 = !{!"branch_weights", i32 1130962, i32 1}
!158 = !{!"function_entry_count", i64 202370}
!159 = !{!"function_entry_count", i64 464288}
!160 = !{!"function_entry_count", i64 4593520}
!161 = distinct !{!161, !92}
!162 = distinct !{!162, !92}
!163 = !{!"function_entry_count", i64 627233310}
!164 = !{!"branch_weights", i32 627233311, i32 1}
!165 = !{!"function_entry_count", i64 5584274}
!166 = !{!"function_entry_count", i64 18388994}
!167 = !{!"function_entry_count", i64 112464}
!168 = !{!"function_entry_count", i64 52047827}
!169 = !{!"function_entry_count", i64 4316510434}
!170 = !{!"branch_weights", i32 1079127609, i32 -2136712079}
!171 = distinct !{!171, !92}
!172 = !{!"function_entry_count", i64 282053}
!173 = !{!85, !85, i64 0}
!174 = !{!"function_entry_count", i64 25820050}
!175 = !{!"branch_weights", i32 1, i32 4303341}
!176 = !{!"branch_weights", i32 4303341, i32 -542009222}
!177 = distinct !{!177, !92}
!178 = !{!"function_entry_count", i64 17968345}
!179 = !{!"function_entry_count", i64 24036430}
!180 = !{!181, !85, i64 0}
!181 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEE", !85, i64 0}
!182 = !{!"function_entry_count", i64 4406944}
!183 = !{!"function_entry_count", i64 36050862}
!184 = !{!"function_entry_count", i64 23518070}
!185 = !{!"function_entry_count", i64 25807262}
!186 = !{!"function_entry_count", i64 2169946}
!187 = !{!"function_entry_count", i64 10444102}
!188 = !{!"function_entry_count", i64 18899890}
!189 = !{!"branch_weights", i32 18899891, i32 37799780}
!190 = distinct !{!190, !92}
!191 = !{!"function_entry_count", i64 70675435}
!192 = !{!"function_entry_count", i64 1134152}
!193 = !{!"branch_weights", i32 1134153, i32 2268304}
!194 = distinct !{!194, !92}
!195 = !{!"function_entry_count", i64 52056499}
!196 = !{!"branch_weights", i32 52056500, i32 104112998}
!197 = distinct !{!197, !92}
