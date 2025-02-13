; ModuleID = 'source/base/polynomial_space.cc'
source_filename = "source/base/polynomial_space.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.dealii::PolynomialSpace" = type { %"class.std::vector.0", i32, %"class.std::vector", %"class.std::vector" }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Table" = type { %"class.dealii::TableBase.base", [4 x i8] }
%"class.dealii::TableBase.base" = type <{ %"class.dealii::Subscriptor", ptr, i32, %"class.dealii::TableIndices" }>
%"class.dealii::Subscriptor" = type { ptr, i32, %"class.std::map", ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, unsigned int>, std::_Select1st<std::pair<const char *const, unsigned int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.dealii::TableIndices" = type { %"class.dealii::TableIndicesBase" }
%"class.dealii::TableIndicesBase" = type { [2 x i32] }
%"class.dealii::internal::TableBaseAccessors::Accessor" = type { ptr, ptr }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::TableBase" = type <{ %"class.dealii::Subscriptor", ptr, i32, %"class.dealii::TableIndices", [4 x i8] }>
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"class.dealii::Polynomials::Polynomial" = type { %"class.dealii::Subscriptor", %"class.std::vector.5" }
%"class.dealii::Tensor" = type { [1 x double] }
%"class.dealii::Tensor.23" = type { [1 x %"class.dealii::Tensor"] }
%"class.std::allocator.7" = type { i8 }
%"class.dealii::PolynomialSpace.24" = type { %"class.std::vector.0", i32, %"class.std::vector", %"class.std::vector" }
%"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.36" = type { [2 x double] }
%"class.dealii::Tensor.37" = type { [2 x %"class.dealii::Tensor.36"] }
%"class.dealii::PolynomialSpace.38" = type { %"class.std::vector.0", i32, %"class.std::vector", %"class.std::vector" }
%"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.dealii::Tensor.50" = type { [3 x double] }
%"class.dealii::Tensor.51" = type { [3 x %"class.dealii::Tensor.50"] }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.52" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.53" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.54" = type { ptr }
%"struct.std::vector<double>::_Temporary_value" = type { ptr, %"union.std::vector<double>::_Temporary_value::_Storage" }
%"union.std::vector<double>::_Temporary_value::_Storage" = type { double }
%"class.std::move_iterator" = type { ptr }

$_ZN6dealii15PolynomialSpaceILi1EE13set_numberingERKSt6vectorIjSaIjEE = comdat any

$_ZNSt6vectorIjSaIjEEaSERKS1_ = comdat any

$_ZNKSt6vectorIjSaIjEE4sizeEv = comdat any

$_ZNSt6vectorIjSaIjEEixEm = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv = comdat any

$_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEC2Ejj = comdat any

$_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv = comdat any

$_ZNK6dealii16TableIndicesBaseILi2EEixEj = comdat any

$_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEclEjj = comdat any

$_ZNSt6vectorIdSaIdEE6resizeEmRKd = comdat any

$_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm = comdat any

$_ZNK6dealii5PointILi1EEclEj = comdat any

$_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj = comdat any

$_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNKSt6vectorIjSaIjEEixEm = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi1EEixEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi2ELi1EEixEj = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE13compute_valueEjRKNS_5PointILi1EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE12compute_gradEjRKNS_5PointILi1EEE = comdat any

$_ZN6dealii6TensorILi1ELi1EEC2Eb = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE17compute_grad_gradEjRKNS_5PointILi1EEE = comdat any

$_ZN6dealii6TensorILi2ELi1EEC2Ev = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE1nEv = comdat any

$_ZNK6dealii15PolynomialSpaceILi1EE6degreeEv = comdat any

$_ZN6dealii15PolynomialSpaceILi1EE14compute_n_polsEj = comdat any

$_ZN6dealii15PolynomialSpaceILi2EE13set_numberingERKSt6vectorIjSaIjEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv = comdat any

$_ZNK6dealii5PointILi2EEclEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi2EEixEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi2ELi2EEixEj = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE13compute_valueEjRKNS_5PointILi2EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE12compute_gradEjRKNS_5PointILi2EEE = comdat any

$_ZN6dealii6TensorILi1ELi2EEC2Eb = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE17compute_grad_gradEjRKNS_5PointILi2EEE = comdat any

$_ZN6dealii6TensorILi2ELi2EEC2Ev = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE1nEv = comdat any

$_ZNK6dealii15PolynomialSpaceILi2EE6degreeEv = comdat any

$_ZN6dealii15PolynomialSpaceILi2EE14compute_n_polsEj = comdat any

$_ZN6dealii15PolynomialSpaceILi3EE13set_numberingERKSt6vectorIjSaIjEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv = comdat any

$_ZNK6dealii5PointILi3EEclEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi1ELi3EEixEj = comdat any

$_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm = comdat any

$_ZN6dealii6TensorILi2ELi3EEixEj = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE13compute_valueEjRKNS_5PointILi3EEE = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE12compute_gradEjRKNS_5PointILi3EEE = comdat any

$_ZN6dealii6TensorILi1ELi3EEC2Eb = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE17compute_grad_gradEjRKNS_5PointILi3EEE = comdat any

$_ZN6dealii6TensorILi2ELi3EEC2Ev = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE1nEv = comdat any

$_ZNK6dealii15PolynomialSpaceILi3EE6degreeEv = comdat any

$_ZN6dealii15PolynomialSpaceILi3EE14compute_n_polsEj = comdat any

$_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev = comdat any

$_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED0Ev = comdat any

$_ZNSt15__new_allocatorIdEC2Ev = comdat any

$_ZNKSt6vectorIjSaIjEE8capacityEv = comdat any

$_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_ = comdat any

$_ZNKSt6vectorIjSaIjEE5beginEv = comdat any

$_ZNKSt6vectorIjSaIjEE3endEv = comdat any

$_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_ = comdat any

$_ZNSt6vectorIjSaIjEE5beginEv = comdat any

$_ZNSt6vectorIjSaIjEE3endEv = comdat any

$_ZSt4copyIPjS0_ET0_T_S2_S1_ = comdat any

$_ZSt22__uninitialized_copy_aIPjS0_jET0_T_S2_S1_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjjET0_T_SA_S9_RSaIT1_E = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16allocator_traitsISaIjEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIjE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIjE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPjET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPjET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIjEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2ERKS2_ = comdat any

$_ZSt8_DestroyIPjEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_ = comdat any

$_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm = comdat any

$_ZNSt15__new_allocatorIjE10deallocateEPjm = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEvT_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET1_T0_SB_SA_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET_S7_T0_ = comdat any

$_ZSt12__niter_baseIPjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEplEl = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv = comdat any

$_ZSt13__copy_move_aILb0EPjS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPjET_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPjS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPjS0_ET1_T0_S2_S1_ = comdat any

$_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPjS2_EET0_T_S4_S3_ = comdat any

$_ZN6dealii12TableIndicesILi2EEC2Ejj = comdat any

$_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEC2ERKNS_12TableIndicesILi2EEE = comdat any

$_ZN6dealii5TableILi2ESt6vectorIdSaIdEEED0Ev = comdat any

$_ZN6dealii12TableIndicesILi2EEC2Ev = comdat any

$_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE = comdat any

$_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE10n_elementsEv = comdat any

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE12reset_valuesEv = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev = comdat any

$_ZSt6fill_nIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerj = comdat any

$_ZSt19__iterator_categoryIPSt6vectorIdSaIdEEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZSt8__fill_aIPSt6vectorIdSaIdEES2_EvT_S4_RKT0_ = comdat any

$_ZSt9__fill_a1IPSt6vectorIdSaIdEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_ = comdat any

$_ZNSt6vectorIdSaIdEEaSERKS1_ = comdat any

$_ZNKSt6vectorIdSaIdEE8capacityEv = comdat any

$_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_ = comdat any

$_ZNKSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNKSt6vectorIdSaIdEE3endEv = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_ = comdat any

$_ZNSt6vectorIdSaIdEE5beginEv = comdat any

$_ZNSt6vectorIdSaIdEE3endEv = comdat any

$_ZSt4copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E = comdat any

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

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm = comdat any

$_ZNSt15__new_allocatorIdE10deallocateEPdm = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_ = comdat any

$_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv = comdat any

$_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPdET_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_ = comdat any

$_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd = comdat any

$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_valueC2IJRKdEEEPS1_DpOT_ = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_valEv = comdat any

$_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZSt13move_backwardIPdS0_ET0_T_S2_S1_ = comdat any

$_ZSt4fillIPddEvT_S1_RKT0_ = comdat any

$_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_valueD2Ev = comdat any

$_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageC2Ev = comdat any

$_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_ptrEv = comdat any

$_ZNSt15__new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_ = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt18make_move_iteratorIPdESt13move_iteratorIT_ES2_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_ = comdat any

$_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_ = comdat any

$_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt14__copy_move_a1ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNKSt13move_iteratorIPdE4baseEv = comdat any

$_ZNSt13move_iteratorIPdEC2ES0_ = comdat any

$_ZSt22__copy_move_backward_aILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_ = comdat any

$_ZSt8__fill_aIPddEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIdEE7destroyIdEEvRS0_PT_ = comdat any

$_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageD2Ev = comdat any

$_ZNSt15__new_allocatorIdE7destroyIdEEvPT_ = comdat any

$_ZNKSt6vectorIdSaIdEE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIdE8max_sizeEv = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_ = comdat any

$_ZNK6dealii5TableILi2ESt6vectorIdSaIdEEE6n_colsEv = comdat any

$_ZN6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEC2ERKNS_9TableBaseILi2ES5_EEPS5_ = comdat any

$_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZNSaIdEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIdEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIdED2Ev = comdat any

$_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPdmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIdJEEvPT_DpOT0_ = comdat any

$_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = comdat any

$_ZTSN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = comdat any

$_ZTIN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = comdat any

$_ZTVN6dealii5TableILi2ESt6vectorIdSaIdEEEE = comdat any

$_ZTSN6dealii5TableILi2ESt6vectorIdSaIdEEEE = comdat any

$_ZTIN6dealii5TableILi2ESt6vectorIdSaIdEEEE = comdat any

@_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev, ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local constant [43 x i8] c"N6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE\00", comdat, align 1
@_ZTIN6dealii11SubscriptorE = external constant ptr
@_ZTIN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, ptr @_ZTIN6dealii11SubscriptorE }, comdat, align 8
@_ZTVN6dealii5TableILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6dealii5TableILi2ESt6vectorIdSaIdEEEE, ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev, ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEED0Ev] }, comdat, align 8
@_ZTSN6dealii5TableILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local constant [39 x i8] c"N6dealii5TableILi2ESt6vectorIdSaIdEEEE\00", comdat, align 1
@_ZTIN6dealii5TableILi2ESt6vectorIdSaIdEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii5TableILi2ESt6vectorIdSaIdEEEE, ptr @_ZTIN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE }, comdat, align 8
@.str = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii15PolynomialSpaceILi1EE13set_numberingERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !210 {
  %3 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %5 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  br label %10

9:                                                ; preds = %10, %2
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %18, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %17, %10 ]
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %11) #13
  %14 = load i32, ptr %13, align 4, !tbaa !211
  %15 = zext i32 %14 to i64
  %16 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %15) #13
  store i32 %12, ptr %16, align 4, !tbaa !211
  %17 = add i32 %12, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %10, label %9, !llvm.loop !215
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %6 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIjSaIjEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %10 = tail call ptr @_ZNKSt6vectorIjSaIjEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %11 = tail call noundef ptr @_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #12
  %12 = load ptr, ptr %0, align 8, !tbaa !217
  %13 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !220
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  tail call void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #12
  %16 = load ptr, ptr %0, align 8, !tbaa !217
  %17 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !221
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  tail call void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #12
  store ptr %11, ptr %0, align 8, !tbaa !217
  %23 = getelementptr inbounds i32, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !221
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIjSaIjEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %29 = tail call ptr @_ZNKSt6vectorIjSaIjEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %30 = tail call ptr @_ZNSt6vectorIjSaIjEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_(ptr %28, ptr %29, ptr %30) #12
  %32 = tail call ptr @_ZNSt6vectorIjSaIjEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #12
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !217
  %36 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %37 = getelementptr inbounds i32, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !217
  %39 = tail call noundef ptr @_ZSt4copyIPjS0_ET0_T_S2_S1_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #12
  %40 = load ptr, ptr %1, align 8, !tbaa !217
  %41 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %42 = getelementptr inbounds i32, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !220
  %45 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !220
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPjS0_jET0_T_S2_S1_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #12
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !217
  %51 = getelementptr inbounds i32, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !220
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !222 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !220
  %4 = load ptr, ptr %0, align 8, !tbaa !217
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !223 {
  %3 = load ptr, ptr %0, align 8, !tbaa !217
  %4 = getelementptr inbounds i32, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi1EE7computeERKNS_5PointILi1EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi1EEESaISB_EERS6_INSA_ILi2ELi1EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %6 = alloca %"class.dealii::Table", align 8
  %7 = alloca double, align 8
  %8 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %9 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %10 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %11 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %12 = trunc i64 %11 to i32
  %13 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %14 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !224
  %16 = zext i32 %15 to i64
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %20 = load i32, ptr %14, align 8, !tbaa !224
  %21 = zext i32 %20 to i64
  %22 = icmp eq i64 %19, %21
  %23 = select i1 %22, i64 2, i64 %18
  %24 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  %25 = load i32, ptr %14, align 8, !tbaa !224
  %26 = zext i32 %25 to i64
  %27 = icmp eq i64 %24, %26
  %28 = select i1 %27, i64 3, i64 %23
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #14
  call void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEC2Ejj(ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 1, i32 noundef %12) #12
  %29 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %30 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %29, i32 noundef 0) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %5, %43
  %33 = phi i32 [ %44, %43 ], [ 0, %5 ]
  %34 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %35 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %34, i32 noundef 1) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %50

37:                                               ; preds = %43, %5
  br i1 %17, label %38, label %81

38:                                               ; preds = %37
  %39 = icmp eq i32 %12, 0
  %40 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  br i1 %39, label %103, label %41

41:                                               ; preds = %38
  %42 = and i64 %11, 4294967295
  br label %66

43:                                               ; preds = %58, %32
  %44 = add nuw i32 %33, 1
  %45 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %46 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %45, i32 noundef 0) #12
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %32, label %37, !llvm.loop !233

48:                                               ; preds = %54
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %127

50:                                               ; preds = %32, %58
  %51 = phi i64 [ %59, %58 ], [ 0, %32 ]
  %52 = trunc i64 %51 to i32
  %53 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEclEjj(ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef %33, i32 noundef %52) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store double 0.000000e+00, ptr %7, align 8, !tbaa !234
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %53, i64 noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
          to label %54 unwind label %64

54:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  %55 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %51) #13
  %56 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %33) #12
  %57 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEclEjj(ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef %33, i32 noundef %52) #12
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %55, double noundef %56, ptr noundef nonnull align 8 dereferenceable(24) %57) #12
          to label %58 unwind label %48

58:                                               ; preds = %54
  %59 = add nuw nsw i64 %51, 1
  %60 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %61 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %60, i32 noundef 1) #12
  %62 = zext i32 %61 to i64
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %50, label %43, !llvm.loop !236

64:                                               ; preds = %50
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %127

66:                                               ; preds = %41, %68
  %67 = phi i64 [ 0, %41 ], [ %73, %68 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 0) #12
          to label %68 unwind label %79

68:                                               ; preds = %66
  %69 = trunc i64 %67 to i32
  %70 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %69) #12
  %71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %70, i64 noundef 0) #13
  %72 = load double, ptr %71, align 8, !tbaa !234
  %73 = add nuw nsw i64 %67, 1
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %40, i64 noundef %67) #13
  %75 = load i32, ptr %74, align 4, !tbaa !211
  %76 = zext i32 %75 to i64
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %76) #13
  store double %72, ptr %77, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  %78 = icmp eq i64 %73, %42
  br i1 %78, label %81, label %66, !llvm.loop !237

79:                                               ; preds = %66
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  br label %127

81:                                               ; preds = %68, %37
  br i1 %22, label %82, label %103

82:                                               ; preds = %81
  %83 = icmp eq i32 %12, 0
  %84 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  br i1 %83, label %103, label %85

85:                                               ; preds = %82
  %86 = and i64 %11, 4294967295
  br label %87

87:                                               ; preds = %85, %91
  %88 = phi i64 [ 0, %85 ], [ %93, %91 ]
  %89 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %84, i64 noundef %88) #13
  %90 = load i32, ptr %89, align 4, !tbaa !211
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %9, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 0) #12
          to label %91 unwind label %101

91:                                               ; preds = %87
  %92 = trunc i64 %88 to i32
  %93 = add nuw nsw i64 %88, 1
  %94 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %92) #12
  %95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %94, i64 noundef 1) #13
  %96 = load double, ptr %95, align 8, !tbaa !234
  %97 = zext i32 %90 to i64
  %98 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %97) #13
  %99 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %98, i32 noundef 0) #12
  store double %96, ptr %99, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  %100 = icmp eq i64 %93, %86
  br i1 %100, label %103, label %87, !llvm.loop !238

101:                                              ; preds = %87
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  br label %127

103:                                              ; preds = %91, %38, %82, %81
  br i1 %27, label %104, label %126

104:                                              ; preds = %103
  %105 = icmp eq i32 %12, 0
  %106 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 3
  br i1 %105, label %126, label %107

107:                                              ; preds = %104
  %108 = and i64 %11, 4294967295
  br label %109

109:                                              ; preds = %107, %113
  %110 = phi i64 [ 0, %107 ], [ %115, %113 ]
  %111 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %106, i64 noundef %110) #13
  %112 = load i32, ptr %111, align 4, !tbaa !211
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %10, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 0) #12
          to label %113 unwind label %124

113:                                              ; preds = %109
  %114 = trunc i64 %110 to i32
  %115 = add nuw nsw i64 %110, 1
  %116 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %114) #12
  %117 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %116, i64 noundef 2) #13
  %118 = load double, ptr %117, align 8, !tbaa !234
  %119 = zext i32 %112 to i64
  %120 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %119) #13
  %121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %120, i32 noundef 0) #12
  %122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %121, i32 noundef 0) #12
  store double %118, ptr %122, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  %123 = icmp eq i64 %115, %108
  br i1 %123, label %126, label %109, !llvm.loop !239

124:                                              ; preds = %109
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  br label %127

126:                                              ; preds = %113, %104, %103
  call void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #14
  ret void

127:                                              ; preds = %48, %64, %124, %101, %79
  %128 = phi { ptr, i32 } [ %80, %79 ], [ %102, %101 ], [ %125, %124 ], [ %49, %48 ], [ %65, %64 ]
  call void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #14
  resume { ptr, i32 } %128
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !240 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Polynomials::Polynomial<double>, std::allocator<dealii::Polynomials::Polynomial<double>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  %4 = load ptr, ptr %0, align 8, !tbaa !242
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 96
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !243 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  %4 = load ptr, ptr %0, align 8, !tbaa !246
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 1>, std::allocator<dealii::Tensor<1, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  %4 = load ptr, ptr %0, align 8, !tbaa !249
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 1>, std::allocator<dealii::Tensor<2, 1>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  %4 = load ptr, ptr %0, align 8, !tbaa !252
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEC2Ejj(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !253 {
  %4 = alloca %"class.dealii::TableIndices", align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @_ZN6dealii12TableIndicesILi2EEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %1, i32 noundef %2) #12
  call void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEC2ERKNS_12TableIndicesILi2EEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 4 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii5TableILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !254
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 3
  ret ptr %2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !256 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !211
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEclEjj(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !257 {
  %4 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !258
  %6 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 3
  %7 = tail call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef 1) #12
  %8 = mul i32 %7, %1
  %9 = add i32 %8, %2
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %"class.std::vector.5", ptr %5, i64 %10
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %8 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %9 = sub i64 %1, %8
  tail call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %7, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !246
  %15 = getelementptr inbounds double, ptr %14, i64 %1
  tail call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %15) #13
  br label %16

16:                                               ; preds = %10, %13, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !272 {
  %3 = load ptr, ptr %0, align 8, !tbaa !242
  %4 = getelementptr inbounds %"class.dealii::Polynomials::Polynomial", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96), double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !273 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !234
  ret double %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind noalias writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(92) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !210 {
  %4 = getelementptr inbounds %"class.dealii::TableBase", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !258
  %6 = tail call noundef i32 @_ZNK6dealii5TableILi2ESt6vectorIdSaIdEEE6n_colsEv(ptr noundef nonnull align 8 dereferenceable(92) %1) #12
  %7 = mul i32 %6, %2
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %"class.std::vector.5", ptr %5, i64 %8
  tail call void @_ZN6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEC2ERKNS_9TableBaseILi2ES5_EEPS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef %9) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %3 = getelementptr inbounds %"class.dealii::internal::TableBaseAccessors::Accessor", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !274
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %"class.std::vector.5", ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !276 {
  %3 = load ptr, ptr %0, align 8, !tbaa !246
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !277 {
  %3 = load ptr, ptr %0, align 8, !tbaa !217
  %4 = getelementptr inbounds i32, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %3 = load ptr, ptr %0, align 8, !tbaa !249
  %4 = getelementptr inbounds %"class.dealii::Tensor", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi1EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %3 = load ptr, ptr %0, align 8, !tbaa !252
  %4 = getelementptr inbounds %"class.dealii::Tensor.23", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [1 x %"class.dealii::Tensor"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii15PolynomialSpaceILi1EE13compute_valueEjRKNS_5PointILi1EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !210 {
  %4 = alloca [1 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @_ZNK6dealii15PolynomialSpaceILi1EE13compute_indexEjRA1_j(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %5 = load i32, ptr %4, align 4, !tbaa !211
  %6 = zext i32 %5 to i64
  %7 = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #13
  %8 = tail call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #12
  %9 = tail call noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96) %7, double noundef %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret double %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii15PolynomialSpaceILi1EE13compute_indexEjRA1_j(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 !prof !210 {
  %4 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 2
  %5 = zext i32 %1 to i64
  %6 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5) #13
  %7 = load i32, ptr %6, align 4, !tbaa !211
  store i32 %7, ptr %2, align 4, !tbaa !211
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi1EE12compute_gradEjRKNS_5PointILi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %5 = alloca [1 x i32], align 4
  %6 = alloca %"class.std::vector.5", align 8
  %7 = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @_ZNK6dealii15PolynomialSpaceILi1EE13compute_indexEjRA1_j(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #12
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #12
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  store double 1.000000e+00, ptr %8, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %7) #12
          to label %9 unwind label %14

9:                                                ; preds = %4
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  %10 = load i32, ptr %5, align 4, !tbaa !211
  %11 = zext i32 %10 to i64
  %12 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %11) #13
  %13 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #12
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %12, double noundef %13, ptr noundef nonnull align 8 dereferenceable(24) %6) #12
          to label %16 unwind label %22

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %24

16:                                               ; preds = %9
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 1) #13
  %18 = load double, ptr %17, align 8, !tbaa !234
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  %20 = load double, ptr %19, align 8, !tbaa !234
  %21 = fmul double %18, %20
  store double %21, ptr %19, align 8, !tbaa !234
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void

22:                                               ; preds = %9
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  br label %24

24:                                               ; preds = %22, %14
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !278 {
  br i1 %1, label %3, label %4, !prof !279

3:                                                ; preds = %2
  store double 0.000000e+00, ptr %0, align 8, !tbaa !234
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !280 {
  tail call void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
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
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !281 {
  %2 = load ptr, ptr %0, align 8, !tbaa !246
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi1EE17compute_grad_gradEjRKNS_5PointILi1EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %5 = alloca [1 x i32], align 4
  %6 = alloca %"class.std::vector.5", align 8
  %7 = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @_ZNK6dealii15PolynomialSpaceILi1EE13compute_indexEjRA1_j(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #12
  tail call void @_ZN6dealii6TensorILi2ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #12
  store double 1.000000e+00, ptr %9, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %7) #12
          to label %10 unwind label %15

10:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  %11 = load i32, ptr %5, align 4, !tbaa !211
  %12 = zext i32 %11 to i64
  %13 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %12) #13
  %14 = call noundef double @_ZNK6dealii5PointILi1EEclEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #12
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %13, double noundef %14, ptr noundef nonnull align 8 dereferenceable(24) %6) #12
          to label %17 unwind label %24

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %26

17:                                               ; preds = %10
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 2) #13
  %19 = load double, ptr %18, align 8, !tbaa !234
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi2ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0) #12
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi1EEixEj(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 0) #12
  %22 = load double, ptr %21, align 8, !tbaa !234
  %23 = fmul double %19, %22
  store double %23, ptr %21, align 8, !tbaa !234
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void

24:                                               ; preds = %10
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !210 {
  tail call void @_ZN6dealii6TensorILi1ELi1EEC2Eb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !224
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi1EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii15PolynomialSpaceILi1EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii15PolynomialSpaceILi2EE13set_numberingERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !210 {
  %3 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %5 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 3
  br label %10

9:                                                ; preds = %10, %2
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %18, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %17, %10 ]
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %11) #13
  %14 = load i32, ptr %13, align 4, !tbaa !211
  %15 = zext i32 %14 to i64
  %16 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %15) #13
  store i32 %12, ptr %16, align 4, !tbaa !211
  %17 = add i32 %12, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %10, label %9, !llvm.loop !282
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi2EE7computeERKNS_5PointILi2EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi2EEESaISB_EERS6_INSA_ILi2ELi2EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %6 = alloca %"class.dealii::Table", align 8
  %7 = alloca double, align 8
  %8 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %9 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %10 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %11 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %12 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %13 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %14 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %15 = trunc i64 %14 to i32
  %16 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %17 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !283
  %19 = zext i32 %18 to i64
  %20 = icmp eq i64 %16, %19
  %21 = zext i1 %20 to i64
  %22 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %23 = load i32, ptr %17, align 8, !tbaa !283
  %24 = zext i32 %23 to i64
  %25 = icmp eq i64 %22, %24
  %26 = select i1 %25, i64 2, i64 %21
  %27 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  %28 = load i32, ptr %17, align 8, !tbaa !283
  %29 = zext i32 %28 to i64
  %30 = icmp eq i64 %27, %29
  %31 = select i1 %30, i64 3, i64 %26
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #14
  call void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEC2Ejj(ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 2, i32 noundef %15) #12
  %32 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %33 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %32, i32 noundef 0) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %5, %44
  %36 = phi i32 [ %45, %44 ], [ 0, %5 ]
  %37 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %38 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef 1) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %51

40:                                               ; preds = %44, %5
  br i1 %20, label %41, label %102

41:                                               ; preds = %40
  %42 = icmp eq i32 %15, 0
  %43 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 3
  br i1 %42, label %149, label %67

44:                                               ; preds = %59, %35
  %45 = add nuw i32 %36, 1
  %46 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %47 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %46, i32 noundef 0) #12
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %35, label %40, !llvm.loop !285

49:                                               ; preds = %55
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %206

51:                                               ; preds = %35, %59
  %52 = phi i64 [ %60, %59 ], [ 0, %35 ]
  %53 = trunc i64 %52 to i32
  %54 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEclEjj(ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef %36, i32 noundef %53) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store double 0.000000e+00, ptr %7, align 8, !tbaa !234
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %54, i64 noundef %31, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
          to label %55 unwind label %65

55:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  %56 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %52) #13
  %57 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %36) #12
  %58 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEclEjj(ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef %36, i32 noundef %53) #12
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %56, double noundef %57, ptr noundef nonnull align 8 dereferenceable(24) %58) #12
          to label %59 unwind label %49

59:                                               ; preds = %55
  %60 = add nuw nsw i64 %52, 1
  %61 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %62 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %61, i32 noundef 1) #12
  %63 = zext i32 %62 to i64
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %51, label %44, !llvm.loop !286

65:                                               ; preds = %51
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %206

67:                                               ; preds = %41, %72
  %68 = phi i32 [ %74, %72 ], [ %15, %41 ]
  %69 = phi i32 [ %73, %72 ], [ 0, %41 ]
  %70 = phi i32 [ %88, %72 ], [ 0, %41 ]
  %71 = call i32 @llvm.umax.i32(i32 %68, i32 1)
  br label %76

72:                                               ; preds = %83
  %73 = add nuw i32 %69, 1
  %74 = add i32 %68, -1
  %75 = icmp eq i32 %73, %15
  br i1 %75, label %102, label %67, !llvm.loop !287

76:                                               ; preds = %67, %83
  %77 = phi i32 [ %94, %83 ], [ 0, %67 ]
  %78 = phi i32 [ %88, %83 ], [ %70, %67 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 0) #12
          to label %79 unwind label %96

79:                                               ; preds = %76
  %80 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %77) #12
  %81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %80, i64 noundef 0) #13
  %82 = load double, ptr %81, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %9, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 1) #12
          to label %83 unwind label %98

83:                                               ; preds = %79
  %84 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %69) #12
  %85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %84, i64 noundef 0) #13
  %86 = load double, ptr %85, align 8, !tbaa !234
  %87 = fmul double %82, %86
  %88 = add i32 %78, 1
  %89 = zext i32 %78 to i64
  %90 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %43, i64 noundef %89) #13
  %91 = load i32, ptr %90, align 4, !tbaa !211
  %92 = zext i32 %91 to i64
  %93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %92) #13
  store double %87, ptr %93, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  %94 = add nuw i32 %77, 1
  %95 = icmp eq i32 %94, %71
  br i1 %95, label %72, label %76, !llvm.loop !288

96:                                               ; preds = %76
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %79
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  br label %206

102:                                              ; preds = %72, %40
  br i1 %25, label %103, label %149

103:                                              ; preds = %102
  %104 = icmp eq i32 %15, 0
  %105 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 3
  br i1 %104, label %149, label %106

106:                                              ; preds = %103, %111
  %107 = phi i32 [ %113, %111 ], [ %15, %103 ]
  %108 = phi i32 [ %112, %111 ], [ 0, %103 ]
  %109 = phi i32 [ %118, %111 ], [ 0, %103 ]
  %110 = call i32 @llvm.umax.i32(i32 %107, i32 1)
  br label %115

111:                                              ; preds = %123
  %112 = add nuw i32 %108, 1
  %113 = add i32 %107, -1
  %114 = icmp eq i32 %112, %15
  br i1 %114, label %149, label %106, !llvm.loop !289

115:                                              ; preds = %106, %123
  %116 = phi i32 [ %124, %123 ], [ 0, %106 ]
  %117 = phi i32 [ %118, %123 ], [ %109, %106 ]
  %118 = add i32 %117, 1
  %119 = zext i32 %117 to i64
  %120 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %105, i64 noundef %119) #13
  %121 = load i32, ptr %120, align 4, !tbaa !211
  %122 = zext i32 %121 to i64
  br label %126

123:                                              ; preds = %136
  %124 = add nuw i32 %116, 1
  %125 = icmp eq i32 %124, %110
  br i1 %125, label %111, label %115, !llvm.loop !290

126:                                              ; preds = %115, %136
  %127 = phi i64 [ 0, %115 ], [ 1, %136 ]
  %128 = phi i1 [ true, %115 ], [ false, %136 ]
  %129 = phi i32 [ 0, %115 ], [ 1, %136 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %10, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 0) #12
          to label %130 unwind label %143

130:                                              ; preds = %126
  %131 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %116) #12
  %132 = xor i32 %129, 1
  %133 = zext nneg i32 %132 to i64
  %134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %131, i64 noundef %133) #13
  %135 = load double, ptr %134, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %11, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 1) #12
          to label %136 unwind label %145

136:                                              ; preds = %130
  %137 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %108) #12
  %138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %137, i64 noundef %127) #13
  %139 = load double, ptr %138, align 8, !tbaa !234
  %140 = fmul double %135, %139
  %141 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %122) #13
  %142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %141, i32 noundef %129) #12
  store double %140, ptr %142, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  br i1 %128, label %126, label %123, !llvm.loop !291

143:                                              ; preds = %126
  %144 = landingpad { ptr, i32 }
          cleanup
  br label %147

145:                                              ; preds = %130
  %146 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi { ptr, i32 } [ %146, %145 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  br label %206

149:                                              ; preds = %111, %41, %103, %102
  br i1 %30, label %150, label %205

150:                                              ; preds = %149
  %151 = icmp eq i32 %15, 0
  %152 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 3
  br i1 %151, label %205, label %153

153:                                              ; preds = %150, %158
  %154 = phi i32 [ %160, %158 ], [ %15, %150 ]
  %155 = phi i32 [ %159, %158 ], [ 0, %150 ]
  %156 = phi i32 [ %165, %158 ], [ 0, %150 ]
  %157 = call i32 @llvm.umax.i32(i32 %154, i32 1)
  br label %162

158:                                              ; preds = %175
  %159 = add nuw i32 %155, 1
  %160 = add i32 %154, -1
  %161 = icmp eq i32 %159, %15
  br i1 %161, label %205, label %153, !llvm.loop !292

162:                                              ; preds = %153, %175
  %163 = phi i32 [ %176, %175 ], [ 0, %153 ]
  %164 = phi i32 [ %165, %175 ], [ %156, %153 ]
  %165 = add i32 %164, 1
  %166 = zext i32 %164 to i64
  %167 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %152, i64 noundef %166) #13
  %168 = load i32, ptr %167, align 4, !tbaa !211
  %169 = zext i32 %168 to i64
  br label %170

170:                                              ; preds = %162, %178
  %171 = phi i64 [ 0, %162 ], [ 1, %178 ]
  %172 = phi i1 [ true, %162 ], [ false, %178 ]
  %173 = phi i32 [ 0, %162 ], [ 1, %178 ]
  %174 = xor i32 %173, 1
  br label %179

175:                                              ; preds = %178
  %176 = add nuw i32 %163, 1
  %177 = icmp eq i32 %176, %157
  br i1 %177, label %158, label %162, !llvm.loop !293

178:                                              ; preds = %191
  br i1 %172, label %170, label %175, !llvm.loop !294

179:                                              ; preds = %170, %191
  %180 = phi i64 [ 0, %170 ], [ 1, %191 ]
  %181 = phi i1 [ true, %170 ], [ false, %191 ]
  %182 = phi i32 [ 0, %170 ], [ 1, %191 ]
  %183 = add nuw nsw i64 %180, %171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %12, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 0) #12
          to label %184 unwind label %199

184:                                              ; preds = %179
  %185 = xor i32 %182, 1
  %186 = add nuw nsw i32 %185, %174
  %187 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %163) #12
  %188 = zext nneg i32 %186 to i64
  %189 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %187, i64 noundef %188) #13
  %190 = load double, ptr %189, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %13, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 1) #12
          to label %191 unwind label %201

191:                                              ; preds = %184
  %192 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %155) #12
  %193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %192, i64 noundef %183) #13
  %194 = load double, ptr %193, align 8, !tbaa !234
  %195 = fmul double %190, %194
  %196 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %169) #13
  %197 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %196, i32 noundef %173) #12
  %198 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %197, i32 noundef %182) #12
  store double %195, ptr %198, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  br i1 %181, label %179, label %178, !llvm.loop !295

199:                                              ; preds = %179
  %200 = landingpad { ptr, i32 }
          cleanup
  br label %203

201:                                              ; preds = %184
  %202 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #14
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi { ptr, i32 } [ %202, %201 ], [ %200, %199 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  br label %206

205:                                              ; preds = %158, %150, %149
  call void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #14
  ret void

206:                                              ; preds = %49, %65, %203, %147, %100
  %207 = phi { ptr, i32 } [ %101, %100 ], [ %148, %147 ], [ %204, %203 ], [ %50, %49 ], [ %66, %65 ]
  call void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #14
  resume { ptr, i32 } %207
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 2>, std::allocator<dealii::Tensor<1, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !296
  %4 = load ptr, ptr %0, align 8, !tbaa !298
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 2>, std::allocator<dealii::Tensor<2, 2>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !299
  %4 = load ptr, ptr %0, align 8, !tbaa !301
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !302 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !234
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %3 = load ptr, ptr %0, align 8, !tbaa !298
  %4 = getelementptr inbounds %"class.dealii::Tensor.36", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !303 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi2EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %3 = load ptr, ptr %0, align 8, !tbaa !301
  %4 = getelementptr inbounds %"class.dealii::Tensor.37", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [2 x %"class.dealii::Tensor.36"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii15PolynomialSpaceILi2EE13compute_valueEjRKNS_5PointILi2EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !prof !210 {
  %4 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @_ZNK6dealii15PolynomialSpaceILi2EE13compute_indexEjRA2_j(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %4) #12
  br label %6

5:                                                ; preds = %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret double %17

6:                                                ; preds = %3, %6
  %7 = phi i1 [ true, %3 ], [ false, %6 ]
  %8 = phi i64 [ 0, %3 ], [ 1, %6 ]
  %9 = phi double [ 1.000000e+00, %3 ], [ %17, %6 ]
  %10 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !211
  %12 = zext i32 %11 to i64
  %13 = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %12) #13
  %14 = trunc i64 %8 to i32
  %15 = tail call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %14) #12
  %16 = tail call noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96) %13, double noundef %15) #12
  %17 = fmul double %9, %16
  br i1 %7, label %6, label %5, !llvm.loop !304
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii15PolynomialSpaceILi2EE13compute_indexEjRA2_j(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(8) %2) local_unnamed_addr #2 align 2 !prof !210 {
  %4 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 2
  %5 = zext i32 %1 to i64
  %6 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5) #13
  %7 = load i32, ptr %6, align 4, !tbaa !211
  %8 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %3, %21
  %12 = phi i32 [ %23, %21 ], [ 0, %3 ]
  %13 = phi i32 [ %22, %21 ], [ 0, %3 ]
  %14 = phi i32 [ %16, %21 ], [ 0, %3 ]
  %15 = add i32 %14, %9
  %16 = add i32 %15, %12
  %17 = icmp ult i32 %7, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = sub i32 %7, %14
  store i32 %19, ptr %2, align 4, !tbaa !211
  %20 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 1
  store i32 %13, ptr %20, align 4, !tbaa !211
  br label %25

21:                                               ; preds = %11
  %22 = add nuw i32 %13, 1
  %23 = xor i32 %13, -1
  %24 = icmp eq i32 %22, %9
  br i1 %24, label %25, label %11, !llvm.loop !305

25:                                               ; preds = %21, %3, %18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi2EE12compute_gradEjRKNS_5PointILi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.36") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %5 = alloca [2 x i32], align 4
  %6 = alloca %"class.std::vector.5", align 8
  %7 = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @_ZNK6dealii15PolynomialSpaceILi2EE13compute_indexEjRA2_j(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %5) #12
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #12
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #12
  store double 1.000000e+00, ptr %8, align 8, !tbaa !234
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1) #12
  store double 1.000000e+00, ptr %9, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %7) #12
          to label %10 unwind label %12

10:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %14

11:                                               ; preds = %29
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %44

14:                                               ; preds = %10, %29
  %15 = phi i1 [ true, %10 ], [ false, %29 ]
  %16 = phi i64 [ 0, %10 ], [ 1, %29 ]
  %17 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !211
  %19 = zext i32 %18 to i64
  %20 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %19) #13
  %21 = trunc i64 %16 to i32
  %22 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %21) #12
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %20, double noundef %22, ptr noundef nonnull align 8 dereferenceable(24) %6) #12
          to label %23 unwind label %30

23:                                               ; preds = %14
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 1) #13
  %25 = load double, ptr %24, align 8, !tbaa !234
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %21) #12
  %27 = load double, ptr %26, align 8, !tbaa !234
  %28 = fmul double %25, %27
  store double %28, ptr %26, align 8, !tbaa !234
  br label %32

29:                                               ; preds = %43
  br i1 %15, label %14, label %11, !llvm.loop !306

30:                                               ; preds = %14
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  br label %44

32:                                               ; preds = %23, %43
  %33 = phi i1 [ true, %23 ], [ false, %43 ]
  %34 = phi i32 [ 0, %23 ], [ 1, %43 ]
  %35 = zext nneg i32 %34 to i64
  %36 = icmp eq i64 %16, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 0) #13
  %39 = load double, ptr %38, align 8, !tbaa !234
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %34) #12
  %41 = load double, ptr %40, align 8, !tbaa !234
  %42 = fmul double %39, %41
  store double %42, ptr %40, align 8, !tbaa !234
  br label %43

43:                                               ; preds = %32, %37
  br i1 %33, label %32, label %29, !llvm.loop !307

44:                                               ; preds = %30, %12
  %45 = phi { ptr, i32 } [ %31, %30 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  resume { ptr, i32 } %45
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !308 {
  br i1 %1, label %3, label %4, !prof !309

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !tbaa !234
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi2EE17compute_grad_gradEjRKNS_5PointILi2EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.37") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %5 = alloca [2 x i32], align 4
  %6 = alloca %"class.std::vector.5", align 8
  %7 = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @_ZNK6dealii15PolynomialSpaceILi2EE13compute_indexEjRA2_j(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %5) #12
  tail call void @_ZN6dealii6TensorILi2ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  %8 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0) #12
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0) #12
  store double 1.000000e+00, ptr %9, align 8, !tbaa !234
  %10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0) #12
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef 1) #12
  store double 1.000000e+00, ptr %11, align 8, !tbaa !234
  %12 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #12
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 0) #12
  store double 1.000000e+00, ptr %13, align 8, !tbaa !234
  %14 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #12
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef 1) #12
  store double 1.000000e+00, ptr %15, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %7) #12
          to label %16 unwind label %18

16:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %20

17:                                               ; preds = %36
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void

18:                                               ; preds = %4
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %71

20:                                               ; preds = %16, %36
  %21 = phi i1 [ true, %16 ], [ false, %36 ]
  %22 = phi i64 [ 0, %16 ], [ 1, %36 ]
  %23 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !211
  %25 = zext i32 %24 to i64
  %26 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %25) #13
  %27 = trunc i64 %22 to i32
  %28 = call noundef double @_ZNK6dealii5PointILi2EEclEj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %27) #12
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %26, double noundef %28, ptr noundef nonnull align 8 dereferenceable(24) %6) #12
          to label %29 unwind label %37

29:                                               ; preds = %20
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 2) #13
  %31 = load double, ptr %30, align 8, !tbaa !234
  %32 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %27) #12
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %32, i32 noundef %27) #12
  %34 = load double, ptr %33, align 8, !tbaa !234
  %35 = fmul double %31, %34
  store double %35, ptr %33, align 8, !tbaa !234
  br label %39

36:                                               ; preds = %70
  br i1 %21, label %20, label %17, !llvm.loop !310

37:                                               ; preds = %20
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  br label %71

39:                                               ; preds = %29, %70
  %40 = phi i1 [ true, %29 ], [ false, %70 ]
  %41 = phi i32 [ 0, %29 ], [ 1, %70 ]
  %42 = zext nneg i32 %41 to i64
  %43 = icmp eq i64 %22, %42
  br i1 %43, label %70, label %44

44:                                               ; preds = %39
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 1) #13
  %46 = load double, ptr %45, align 8, !tbaa !234
  %47 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %27) #12
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %47, i32 noundef %41) #12
  %49 = load double, ptr %48, align 8, !tbaa !234
  %50 = fmul double %46, %49
  store double %50, ptr %48, align 8, !tbaa !234
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 1) #13
  %52 = load double, ptr %51, align 8, !tbaa !234
  %53 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %41) #12
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %53, i32 noundef %27) #12
  %55 = load double, ptr %54, align 8, !tbaa !234
  %56 = fmul double %52, %55
  store double %56, ptr %54, align 8, !tbaa !234
  br label %57

57:                                               ; preds = %44, %69
  %58 = phi i1 [ true, %44 ], [ false, %69 ]
  %59 = phi i32 [ 0, %44 ], [ 1, %69 ]
  %60 = zext nneg i32 %59 to i64
  %61 = icmp eq i64 %22, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 0) #13
  %64 = load double, ptr %63, align 8, !tbaa !234
  %65 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6dealii6TensorILi2ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %41) #12
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi2EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %65, i32 noundef %59) #12
  %67 = load double, ptr %66, align 8, !tbaa !234
  %68 = fmul double %64, %67
  store double %68, ptr %66, align 8, !tbaa !234
  br label %69

69:                                               ; preds = %57, %62
  br i1 %58, label %57, label %70, !llvm.loop !311

70:                                               ; preds = %69, %39
  br i1 %40, label %39, label %36, !llvm.loop !312

71:                                               ; preds = %37, %18
  %72 = phi { ptr, i32 } [ %38, %37 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  resume { ptr, i32 } %72
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi2EEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !210 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZN6dealii6TensorILi1ELi2EEC2Eb(ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true) #12
  %5 = add nuw nsw i64 %3, 16
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace.24", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !283
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi2EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii15PolynomialSpaceILi2EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = add i32 %0, 1
  %3 = mul i32 %2, %0
  %4 = lshr i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZN6dealii15PolynomialSpaceILi3EE13set_numberingERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !210 {
  %3 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  %5 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 3
  br label %10

9:                                                ; preds = %10, %2
  ret void

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %18, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %17, %10 ]
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %11) #13
  %14 = load i32, ptr %13, align 4, !tbaa !211
  %15 = zext i32 %14 to i64
  %16 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %15) #13
  store i32 %12, ptr %16, align 4, !tbaa !211
  %17 = add i32 %12, 1
  %18 = zext i32 %17 to i64
  %19 = tail call noundef i64 @_ZNKSt6vectorIjSaIjEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %20 = icmp ugt i64 %19, %18
  br i1 %20, label %10, label %9, !llvm.loop !313
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi3EE7computeERKNS_5PointILi3EEERSt6vectorIdSaIdEERS6_INS_6TensorILi1ELi3EEESaISB_EERS6_INSA_ILi2ELi3EEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %6 = alloca %"class.dealii::Table", align 8
  %7 = alloca double, align 8
  %8 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %9 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %10 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %11 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %12 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %13 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %14 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %15 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %16 = alloca %"class.dealii::internal::TableBaseAccessors::Accessor", align 8
  %17 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %18 = trunc i64 %17 to i32
  %19 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %20 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !314
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i64
  %25 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %26 = load i32, ptr %20, align 8, !tbaa !314
  %27 = zext i32 %26 to i64
  %28 = icmp eq i64 %25, %27
  %29 = select i1 %28, i64 2, i64 %24
  %30 = tail call noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  %31 = load i32, ptr %20, align 8, !tbaa !314
  %32 = zext i32 %31 to i64
  %33 = icmp eq i64 %30, %32
  %34 = select i1 %33, i64 3, i64 %29
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #14
  call void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEC2Ejj(ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 3, i32 noundef %18) #12
  %35 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %36 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %35, i32 noundef 0) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %5, %48
  %39 = phi i32 [ %49, %48 ], [ 0, %5 ]
  %40 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %41 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %40, i32 noundef 1) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %55

43:                                               ; preds = %48, %5
  %44 = icmp ne i32 %18, 0
  %45 = and i1 %23, %44
  br i1 %45, label %46, label %127

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 3
  br label %71

48:                                               ; preds = %63, %38
  %49 = add nuw i32 %39, 1
  %50 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %51 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %50, i32 noundef 0) #12
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %38, label %43, !llvm.loop !316

53:                                               ; preds = %59
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %287

55:                                               ; preds = %38, %63
  %56 = phi i64 [ %64, %63 ], [ 0, %38 ]
  %57 = trunc i64 %56 to i32
  %58 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEclEjj(ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef %39, i32 noundef %57) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store double 0.000000e+00, ptr %7, align 8, !tbaa !234
  invoke void @_ZNSt6vectorIdSaIdEE6resizeEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %58, i64 noundef %34, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
          to label %59 unwind label %69

59:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  %60 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %56) #13
  %61 = call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %39) #12
  %62 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEclEjj(ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef %39, i32 noundef %57) #12
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %60, double noundef %61, ptr noundef nonnull align 8 dereferenceable(24) %62) #12
          to label %63 unwind label %53

63:                                               ; preds = %59
  %64 = add nuw nsw i64 %56, 1
  %65 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(92) %6) #12
  %66 = call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %65, i32 noundef 1) #12
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %55, label %48, !llvm.loop !317

69:                                               ; preds = %55
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %287

71:                                               ; preds = %83, %46
  %72 = phi i32 [ %18, %46 ], [ %85, %83 ]
  %73 = phi i32 [ 0, %46 ], [ %84, %83 ]
  %74 = phi i32 [ 0, %46 ], [ %88, %83 ]
  %75 = call i32 @llvm.umax.i32(i32 %72, i32 1)
  br label %76

76:                                               ; preds = %71, %87
  %77 = phi i32 [ %72, %71 ], [ %90, %87 ]
  %78 = phi i32 [ 0, %71 ], [ %89, %87 ]
  %79 = phi i32 [ %74, %71 ], [ %88, %87 ]
  %80 = call i32 @llvm.umax.i32(i32 %77, i32 1)
  %81 = add i32 %73, %78
  %82 = icmp eq i32 %81, %18
  br i1 %82, label %87, label %92

83:                                               ; preds = %87
  %84 = add nuw i32 %73, 1
  %85 = add i32 %72, -1
  %86 = icmp eq i32 %84, %18
  br i1 %86, label %127, label %71, !llvm.loop !318

87:                                               ; preds = %103, %76
  %88 = phi i32 [ %79, %76 ], [ %109, %103 ]
  %89 = add nuw i32 %78, 1
  %90 = add i32 %77, -1
  %91 = icmp eq i32 %89, %75
  br i1 %91, label %83, label %76, !llvm.loop !319

92:                                               ; preds = %76, %103
  %93 = phi i32 [ %115, %103 ], [ 0, %76 ]
  %94 = phi i32 [ %109, %103 ], [ %79, %76 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %8, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 0) #12
          to label %95 unwind label %117

95:                                               ; preds = %92
  %96 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %93) #12
  %97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %96, i64 noundef 0) #13
  %98 = load double, ptr %97, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %9, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 1) #12
          to label %99 unwind label %119

99:                                               ; preds = %95
  %100 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %78) #12
  %101 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %100, i64 noundef 0) #13
  %102 = load double, ptr %101, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %10, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 2) #12
          to label %103 unwind label %121

103:                                              ; preds = %99
  %104 = fmul double %98, %102
  %105 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %73) #12
  %106 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %105, i64 noundef 0) #13
  %107 = load double, ptr %106, align 8, !tbaa !234
  %108 = fmul double %104, %107
  %109 = add i32 %94, 1
  %110 = zext i32 %94 to i64
  %111 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %47, i64 noundef %110) #13
  %112 = load i32, ptr %111, align 4, !tbaa !211
  %113 = zext i32 %112 to i64
  %114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %113) #13
  store double %108, ptr %114, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  %115 = add nuw i32 %93, 1
  %116 = icmp eq i32 %115, %80
  br i1 %116, label %87, label %92, !llvm.loop !320

117:                                              ; preds = %92
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %125

119:                                              ; preds = %95
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %123

121:                                              ; preds = %99
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %120, %119 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  br label %125

125:                                              ; preds = %123, %117
  %126 = phi { ptr, i32 } [ %124, %123 ], [ %118, %117 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  br label %287

127:                                              ; preds = %83, %43
  %128 = and i1 %28, %44
  br i1 %128, label %129, label %199

129:                                              ; preds = %127
  %130 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 3
  br label %131

131:                                              ; preds = %143, %129
  %132 = phi i32 [ %18, %129 ], [ %145, %143 ]
  %133 = phi i32 [ 0, %129 ], [ %144, %143 ]
  %134 = phi i32 [ 0, %129 ], [ %148, %143 ]
  %135 = call i32 @llvm.umax.i32(i32 %132, i32 1)
  br label %136

136:                                              ; preds = %131, %147
  %137 = phi i32 [ %132, %131 ], [ %150, %147 ]
  %138 = phi i32 [ 0, %131 ], [ %149, %147 ]
  %139 = phi i32 [ %134, %131 ], [ %148, %147 ]
  %140 = call i32 @llvm.umax.i32(i32 %137, i32 1)
  %141 = add i32 %133, %138
  %142 = icmp eq i32 %141, %18
  br i1 %142, label %147, label %152

143:                                              ; preds = %147
  %144 = add nuw i32 %133, 1
  %145 = add i32 %132, -1
  %146 = icmp eq i32 %144, %18
  br i1 %146, label %199, label %131, !llvm.loop !321

147:                                              ; preds = %160, %136
  %148 = phi i32 [ %139, %136 ], [ %155, %160 ]
  %149 = add nuw i32 %138, 1
  %150 = add i32 %137, -1
  %151 = icmp eq i32 %149, %135
  br i1 %151, label %143, label %136, !llvm.loop !322

152:                                              ; preds = %136, %160
  %153 = phi i32 [ %161, %160 ], [ 0, %136 ]
  %154 = phi i32 [ %155, %160 ], [ %139, %136 ]
  %155 = add i32 %154, 1
  %156 = zext i32 %154 to i64
  %157 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %130, i64 noundef %156) #13
  %158 = load i32, ptr %157, align 4, !tbaa !211
  %159 = zext i32 %158 to i64
  br label %163

160:                                              ; preds = %177
  %161 = add nuw i32 %153, 1
  %162 = icmp eq i32 %161, %140
  br i1 %162, label %147, label %152, !llvm.loop !323

163:                                              ; preds = %152, %177
  %164 = phi i32 [ 0, %152 ], [ %187, %177 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %11, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 0) #12
          to label %165 unwind label %189

165:                                              ; preds = %163
  %166 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %153) #12
  %167 = icmp eq i32 %164, 0
  %168 = zext i1 %167 to i64
  %169 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %166, i64 noundef %168) #13
  %170 = load double, ptr %169, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %12, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 1) #12
          to label %171 unwind label %191

171:                                              ; preds = %165
  %172 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %138) #12
  %173 = icmp eq i32 %164, 1
  %174 = zext i1 %173 to i64
  %175 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %172, i64 noundef %174) #13
  %176 = load double, ptr %175, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %13, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 2) #12
          to label %177 unwind label %193

177:                                              ; preds = %171
  %178 = fmul double %170, %176
  %179 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %133) #12
  %180 = icmp eq i32 %164, 2
  %181 = zext i1 %180 to i64
  %182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %179, i64 noundef %181) #13
  %183 = load double, ptr %182, align 8, !tbaa !234
  %184 = fmul double %178, %183
  %185 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %159) #13
  %186 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %185, i32 noundef %164) #12
  store double %184, ptr %186, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  %187 = add nuw nsw i32 %164, 1
  %188 = icmp eq i32 %187, 3
  br i1 %188, label %160, label %163, !llvm.loop !324

189:                                              ; preds = %163
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %197

191:                                              ; preds = %165
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %195

193:                                              ; preds = %171
  %194 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #14
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi { ptr, i32 } [ %194, %193 ], [ %192, %191 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  br label %197

197:                                              ; preds = %195, %189
  %198 = phi { ptr, i32 } [ %196, %195 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  br label %287

199:                                              ; preds = %143, %127
  %200 = and i1 %33, %44
  br i1 %200, label %201, label %286

201:                                              ; preds = %199
  %202 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 3
  br label %203

203:                                              ; preds = %215, %201
  %204 = phi i32 [ %18, %201 ], [ %217, %215 ]
  %205 = phi i32 [ 0, %201 ], [ %216, %215 ]
  %206 = phi i32 [ 0, %201 ], [ %220, %215 ]
  %207 = call i32 @llvm.umax.i32(i32 %204, i32 1)
  br label %208

208:                                              ; preds = %203, %219
  %209 = phi i32 [ %204, %203 ], [ %222, %219 ]
  %210 = phi i32 [ 0, %203 ], [ %221, %219 ]
  %211 = phi i32 [ %206, %203 ], [ %220, %219 ]
  %212 = call i32 @llvm.umax.i32(i32 %209, i32 1)
  %213 = add i32 %205, %210
  %214 = icmp eq i32 %213, %18
  br i1 %214, label %219, label %224

215:                                              ; preds = %219
  %216 = add nuw i32 %205, 1
  %217 = add i32 %204, -1
  %218 = icmp eq i32 %216, %18
  br i1 %218, label %286, label %203, !llvm.loop !325

219:                                              ; preds = %240, %208
  %220 = phi i32 [ %211, %208 ], [ %227, %240 ]
  %221 = add nuw i32 %210, 1
  %222 = add i32 %209, -1
  %223 = icmp eq i32 %221, %207
  br i1 %223, label %215, label %208, !llvm.loop !326

224:                                              ; preds = %208, %240
  %225 = phi i32 [ %241, %240 ], [ 0, %208 ]
  %226 = phi i32 [ %227, %240 ], [ %211, %208 ]
  %227 = add i32 %226, 1
  %228 = zext i32 %226 to i64
  %229 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %202, i64 noundef %228) #13
  %230 = load i32, ptr %229, align 4, !tbaa !211
  %231 = zext i32 %230 to i64
  br label %232

232:                                              ; preds = %224, %243
  %233 = phi i32 [ 0, %224 ], [ %244, %243 ]
  %234 = icmp eq i32 %233, 1
  %235 = zext i1 %234 to i64
  %236 = icmp eq i32 %233, 2
  %237 = zext i1 %236 to i64
  %238 = icmp eq i32 %233, 0
  %239 = zext i1 %238 to i64
  br label %246

240:                                              ; preds = %243
  %241 = add nuw i32 %225, 1
  %242 = icmp eq i32 %241, %212
  br i1 %242, label %219, label %224, !llvm.loop !327

243:                                              ; preds = %265
  %244 = add nuw nsw i32 %233, 1
  %245 = icmp eq i32 %244, 3
  br i1 %245, label %240, label %232, !llvm.loop !328

246:                                              ; preds = %232, %265
  %247 = phi i32 [ 0, %232 ], [ %274, %265 ]
  %248 = icmp eq i32 %247, 1
  %249 = zext i1 %248 to i64
  %250 = add nuw nsw i64 %249, %235
  %251 = icmp eq i32 %247, 2
  %252 = zext i1 %251 to i64
  %253 = add nuw nsw i64 %252, %237
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %14, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 0) #12
          to label %254 unwind label %276

254:                                              ; preds = %246
  %255 = icmp eq i32 %247, 0
  %256 = zext i1 %255 to i64
  %257 = add nuw nsw i64 %256, %239
  %258 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %225) #12
  %259 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %258, i64 noundef %257) #13
  %260 = load double, ptr %259, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %15, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 1) #12
          to label %261 unwind label %278

261:                                              ; preds = %254
  %262 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %210) #12
  %263 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %262, i64 noundef %250) #13
  %264 = load double, ptr %263, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #14
  invoke void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEixEj(ptr dead_on_unwind nonnull writable sret(%"class.dealii::internal::TableBaseAccessors::Accessor") align 8 %16, ptr noundef nonnull align 8 dereferenceable(92) %6, i32 noundef 2) #12
          to label %265 unwind label %280

265:                                              ; preds = %261
  %266 = fmul double %260, %264
  %267 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEixEj(ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef %205) #12
  %268 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %267, i64 noundef %253) #13
  %269 = load double, ptr %268, align 8, !tbaa !234
  %270 = fmul double %266, %269
  %271 = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %231) #13
  %272 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %271, i32 noundef %233) #12
  %273 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %272, i32 noundef %247) #12
  store double %270, ptr %273, align 8, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #14
  %274 = add nuw nsw i32 %247, 1
  %275 = icmp eq i32 %274, 3
  br i1 %275, label %243, label %246, !llvm.loop !329

276:                                              ; preds = %246
  %277 = landingpad { ptr, i32 }
          cleanup
  br label %284

278:                                              ; preds = %254
  %279 = landingpad { ptr, i32 }
          cleanup
  br label %282

280:                                              ; preds = %261
  %281 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #14
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi { ptr, i32 } [ %281, %280 ], [ %279, %278 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #14
  br label %284

284:                                              ; preds = %282, %276
  %285 = phi { ptr, i32 } [ %283, %282 ], [ %277, %276 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #14
  br label %287

286:                                              ; preds = %215, %199
  call void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #14
  ret void

287:                                              ; preds = %53, %69, %284, %197, %125
  %288 = phi { ptr, i32 } [ %126, %125 ], [ %198, %197 ], [ %285, %284 ], [ %54, %53 ], [ %70, %69 ]
  call void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #14
  resume { ptr, i32 } %288
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !330 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<1, 3>, std::allocator<dealii::Tensor<1, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !331
  %4 = load ptr, ptr %0, align 8, !tbaa !333
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !334 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::Tensor<2, 3>, std::allocator<dealii::Tensor<2, 3>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  %4 = load ptr, ptr %0, align 8, !tbaa !337
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 72
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !338 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !234
  ret double %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6dealii6TensorILi1ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !339 {
  %3 = load ptr, ptr %0, align 8, !tbaa !333
  %4 = getelementptr inbounds %"class.dealii::Tensor.50", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !340 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZNSt6vectorIN6dealii6TensorILi2ELi3EEESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !341 {
  %3 = load ptr, ptr %0, align 8, !tbaa !337
  %4 = getelementptr inbounds %"class.dealii::Tensor.51", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !342 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x %"class.dealii::Tensor.50"], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local noundef double @_ZNK6dealii15PolynomialSpaceILi3EE13compute_valueEjRKNS_5PointILi3EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !210 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @_ZNK6dealii15PolynomialSpaceILi3EE13compute_indexEjRA3_j(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %4) #12
  br label %6

5:                                                ; preds = %6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  ret double %16

6:                                                ; preds = %3, %6
  %7 = phi i64 [ 0, %3 ], [ %17, %6 ]
  %8 = phi double [ 1.000000e+00, %3 ], [ %16, %6 ]
  %9 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %7
  %10 = load i32, ptr %9, align 4, !tbaa !211
  %11 = zext i32 %10 to i64
  %12 = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %11) #13
  %13 = trunc i64 %7 to i32
  %14 = tail call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %13) #12
  %15 = tail call noundef double @_ZNK6dealii11Polynomials10PolynomialIdE5valueEd(ptr noundef nonnull align 8 dereferenceable(96) %12, double noundef %14) #12
  %16 = fmul double %8, %15
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %5, label %6, !llvm.loop !343
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK6dealii15PolynomialSpaceILi3EE13compute_indexEjRA3_j(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(12) %2) local_unnamed_addr #2 align 2 !prof !210 {
  %4 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 2
  %5 = zext i32 %1 to i64
  %6 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt6vectorIjSaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5) #13
  %7 = load i32, ptr %6, align 4, !tbaa !211
  %8 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %3, %30
  %12 = phi i32 [ %32, %30 ], [ %9, %3 ]
  %13 = phi i32 [ %31, %30 ], [ 0, %3 ]
  %14 = phi i32 [ %21, %30 ], [ 0, %3 ]
  %15 = tail call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %16

16:                                               ; preds = %11, %27
  %17 = phi i32 [ %28, %27 ], [ 0, %11 ]
  %18 = phi i32 [ %21, %27 ], [ %14, %11 ]
  %19 = add i32 %18, %9
  %20 = add i32 %17, %13
  %21 = sub i32 %19, %20
  %22 = icmp ult i32 %7, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = sub i32 %7, %18
  store i32 %24, ptr %2, align 4, !tbaa !211
  %25 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 1
  store i32 %17, ptr %25, align 4, !tbaa !211
  %26 = getelementptr inbounds [3 x i32], ptr %2, i64 0, i64 2
  store i32 %13, ptr %26, align 4, !tbaa !211
  br label %34

27:                                               ; preds = %16
  %28 = add nuw i32 %17, 1
  %29 = icmp eq i32 %28, %15
  br i1 %29, label %30, label %16, !llvm.loop !344

30:                                               ; preds = %27
  %31 = add nuw i32 %13, 1
  %32 = add i32 %12, -1
  %33 = icmp eq i32 %31, %9
  br i1 %33, label %34, label %11, !llvm.loop !345

34:                                               ; preds = %30, %3, %23
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi3EE12compute_gradEjRKNS_5PointILi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %5 = alloca [3 x i32], align 4
  %6 = alloca %"class.std::vector.5", align 8
  %7 = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @_ZNK6dealii15PolynomialSpaceILi3EE13compute_indexEjRA3_j(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %5) #12
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true) #12
  br label %9

8:                                                ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %7) #12
          to label %14 unwind label %16

9:                                                ; preds = %4, %9
  %10 = phi i32 [ 0, %4 ], [ %12, %9 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %10) #12
  store double 1.000000e+00, ptr %11, align 8, !tbaa !234
  %12 = add nuw nsw i32 %10, 1
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %8, label %9, !llvm.loop !346

14:                                               ; preds = %8
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %18

15:                                               ; preds = %32
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  ret void

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %50

18:                                               ; preds = %14, %32
  %19 = phi i64 [ 0, %14 ], [ %33, %32 ]
  %20 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !211
  %22 = zext i32 %21 to i64
  %23 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %22) #13
  %24 = trunc i64 %19 to i32
  %25 = call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %24) #12
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %23, double noundef %25, ptr noundef nonnull align 8 dereferenceable(24) %6) #12
          to label %26 unwind label %35

26:                                               ; preds = %18
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 1) #13
  %28 = load double, ptr %27, align 8, !tbaa !234
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %24) #12
  %30 = load double, ptr %29, align 8, !tbaa !234
  %31 = fmul double %28, %30
  store double %31, ptr %29, align 8, !tbaa !234
  br label %37

32:                                               ; preds = %47
  %33 = add nuw nsw i64 %19, 1
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %15, label %18, !llvm.loop !347

35:                                               ; preds = %18
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  br label %50

37:                                               ; preds = %26, %47
  %38 = phi i32 [ 0, %26 ], [ %48, %47 ]
  %39 = zext nneg i32 %38 to i64
  %40 = icmp eq i64 %19, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 0) #13
  %43 = load double, ptr %42, align 8, !tbaa !234
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %38) #12
  %45 = load double, ptr %44, align 8, !tbaa !234
  %46 = fmul double %43, %45
  store double %46, ptr %44, align 8, !tbaa !234
  br label %47

47:                                               ; preds = %37, %41
  %48 = add nuw nsw i32 %38, 1
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %32, label %37, !llvm.loop !348

50:                                               ; preds = %35, %16
  %51 = phi { ptr, i32 } [ %36, %35 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !349 {
  br i1 %1, label %3, label %4, !prof !350

3:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !234
  br label %4

4:                                                ; preds = %3, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define weak_odr dso_local void @_ZNK6dealii15PolynomialSpaceILi3EE17compute_grad_gradEjRKNS_5PointILi3EEE(ptr dead_on_unwind noalias writable sret(%"class.dealii::Tensor.51") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %5 = alloca [3 x i32], align 4
  %6 = alloca %"class.std::vector.5", align 8
  %7 = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @_ZNK6dealii15PolynomialSpaceILi3EE13compute_indexEjRA3_j(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %5) #12
  tail call void @_ZN6dealii6TensorILi2ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  br label %8

8:                                                ; preds = %4, %11
  %9 = phi i32 [ 0, %4 ], [ %12, %11 ]
  br label %14

10:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %7) #12
          to label %20 unwind label %22

11:                                               ; preds = %14
  %12 = add nuw nsw i32 %9, 1
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %10, label %8, !llvm.loop !351

14:                                               ; preds = %8, %14
  %15 = phi i32 [ 0, %8 ], [ %18, %14 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %9) #12
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %15) #12
  store double 1.000000e+00, ptr %17, align 8, !tbaa !234
  %18 = add nuw nsw i32 %15, 1
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %11, label %14, !llvm.loop !352

20:                                               ; preds = %10
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %24

21:                                               ; preds = %39
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  ret void

22:                                               ; preds = %10
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  br label %78

24:                                               ; preds = %20, %39
  %25 = phi i64 [ 0, %20 ], [ %40, %39 ]
  %26 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !211
  %28 = zext i32 %27 to i64
  %29 = call noundef nonnull align 8 dereferenceable(96) ptr @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %28) #13
  %30 = trunc i64 %25 to i32
  %31 = call noundef double @_ZNK6dealii5PointILi3EEclEj(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %30) #12
  invoke void @_ZNK6dealii11Polynomials10PolynomialIdE5valueEdRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %29, double noundef %31, ptr noundef nonnull align 8 dereferenceable(24) %6) #12
          to label %32 unwind label %42

32:                                               ; preds = %24
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 2) #13
  %34 = load double, ptr %33, align 8, !tbaa !234
  %35 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %30) #12
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %35, i32 noundef %30) #12
  %37 = load double, ptr %36, align 8, !tbaa !234
  %38 = fmul double %34, %37
  store double %38, ptr %36, align 8, !tbaa !234
  br label %44

39:                                               ; preds = %75
  %40 = add nuw nsw i64 %25, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %21, label %24, !llvm.loop !353

42:                                               ; preds = %24
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  br label %78

44:                                               ; preds = %32, %75
  %45 = phi i32 [ 0, %32 ], [ %76, %75 ]
  %46 = zext nneg i32 %45 to i64
  %47 = icmp eq i64 %25, %46
  br i1 %47, label %75, label %48

48:                                               ; preds = %44
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 1) #13
  %50 = load double, ptr %49, align 8, !tbaa !234
  %51 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %30) #12
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %51, i32 noundef %45) #12
  %53 = load double, ptr %52, align 8, !tbaa !234
  %54 = fmul double %50, %53
  store double %54, ptr %52, align 8, !tbaa !234
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 1) #13
  %56 = load double, ptr %55, align 8, !tbaa !234
  %57 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %45) #12
  %58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %57, i32 noundef %30) #12
  %59 = load double, ptr %58, align 8, !tbaa !234
  %60 = fmul double %56, %59
  store double %60, ptr %58, align 8, !tbaa !234
  br label %61

61:                                               ; preds = %48, %72
  %62 = phi i32 [ 0, %48 ], [ %73, %72 ]
  %63 = zext nneg i32 %62 to i64
  %64 = icmp eq i64 %25, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 0) #13
  %67 = load double, ptr %66, align 8, !tbaa !234
  %68 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6dealii6TensorILi2ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %45) #12
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii6TensorILi1ELi3EEixEj(ptr noundef nonnull align 8 dereferenceable(24) %68, i32 noundef %62) #12
  %70 = load double, ptr %69, align 8, !tbaa !234
  %71 = fmul double %67, %70
  store double %71, ptr %69, align 8, !tbaa !234
  br label %72

72:                                               ; preds = %61, %65
  %73 = add nuw nsw i32 %62, 1
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %61, !llvm.loop !354

75:                                               ; preds = %72, %44
  %76 = add nuw nsw i32 %45, 1
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %39, label %44, !llvm.loop !355

78:                                               ; preds = %42, %22
  %79 = phi { ptr, i32 } [ %43, %42 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  resume { ptr, i32 } %79
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii6TensorILi2ELi3EEC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 !prof !356 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZN6dealii6TensorILi1ELi3EEC2Eb(ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true) #12
  %5 = add nuw nsw i64 %3, 24
  %6 = icmp eq i64 %5, 72
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE1nEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"class.dealii::PolynomialSpace.38", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !314
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZNK6dealii15PolynomialSpaceILi3EE6degreeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = tail call noundef i64 @_ZNKSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define weak_odr dso_local noundef i32 @_ZN6dealii15PolynomialSpaceILi3EE14compute_n_polsEj(i32 noundef %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  br label %3

2:                                                ; preds = %3
  ret i32 %9

3:                                                ; preds = %1, %3
  %4 = phi i32 [ 1, %1 ], [ %8, %3 ]
  %5 = phi i32 [ %0, %1 ], [ %9, %3 ]
  %6 = add i32 %4, %0
  %7 = mul i32 %6, %5
  %8 = add nuw nsw i32 %4, 1
  %9 = udiv i32 %7, %8
  %10 = icmp eq i32 %8, 3
  br i1 %10, label %2, label %3, !llvm.loop !357
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #2 comdat align 2 !prof !253 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !254
  %2 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !258
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !358

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 -8
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.std::vector.5", ptr %3, i64 %7
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %13, %11 ], [ %10, %9 ]
  %13 = getelementptr inbounds %"class.std::vector.5", ptr %12, i64 -1
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #13
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %5
  tail call void @_ZdaPv(ptr noundef nonnull %6) #16
  br label %16

16:                                               ; preds = %15, %1
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !359 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIjSaIjEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !360 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  %4 = load ptr, ptr %0, align 8, !tbaa !217
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !361 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjjET0_T_SA_S9_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #14
  invoke void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #12
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #17
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #15
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIjSaIjEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !362 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIjSaIjEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !363 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !364 {
  tail call void @_ZSt8_DestroyIPjEvT_S1_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !365 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !366 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !367

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !368 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_(ptr %0, ptr %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !368 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_(ptr %0) #12
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_(ptr %1) #12
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET1_T0_SB_SA_(ptr %4, ptr %5, ptr %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIjSaIjEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !369 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.52", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIjSaIjEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !370 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.52", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPjS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !371 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPjET_S1_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPjET_S1_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPjS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPjS0_jET0_T_S2_S1_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !372 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !373 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !374

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIjEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjjET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !375 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %5
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIjEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIjE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIjE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIjE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !376

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 4611686018427387903
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #19
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIjE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !377 {
  ret i64 2305843009213693951
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !375 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !375 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_(ptr %0) #12
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_(ptr %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !375 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !378
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPjET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPjET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_(ptr %0) local_unnamed_addr #2 comdat !prof !379 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPjET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !380 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !381 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !379 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPjET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !382 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !381 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIjEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIjEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !383 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !384

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !385 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !386 {
  %3 = load ptr, ptr %1, align 8, !tbaa !378
  store ptr %3, ptr %0, align 8, !tbaa !387
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPjEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !364 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !364 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIjE10deallocateEPjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIjE10deallocateEPjm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !368 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEvT_S9_(ptr %0, ptr %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #2 comdat align 2 !prof !368 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET1_T0_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !368 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #13
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #13
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #12
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET_S7_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !389 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.52", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #13
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !390 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.52", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !391 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.52", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = load ptr, ptr %0, align 8, !tbaa !392
  %6 = getelementptr inbounds i32, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !378
  call void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !394 {
  %3 = load ptr, ptr %1, align 8, !tbaa !378
  store ptr %3, ptr %0, align 8, !tbaa !392
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !395 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPjS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !371 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !378
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPjET_S1_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPjET_S1_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPjET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPjS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPjET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPjET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !396 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPjS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !397 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPjS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPjS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !397 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIjEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPjS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPjS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !372 {
  %4 = tail call noundef ptr @_ZSt4copyIPjS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii12TableIndicesILi2EEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !398 {
  store i32 %1, ptr %0, align 4, !tbaa !211
  %4 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 1
  store i32 %2, ptr %4, align 4, !tbaa !211
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEC2ERKNS_12TableIndicesILi2EEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !253 {
  tail call void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #12
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !254
  %3 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !258
  %4 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !399
  %5 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 3
  tail call void @_ZN6dealii12TableIndicesILi2EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %5) #12
  invoke void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #12
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6dealii11SubscriptorD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEED0Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii11SubscriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii12TableIndicesILi2EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !400 {
  %2 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 1
  store i32 0, ptr %2, align 4, !tbaa !211
  store i32 0, ptr %0, align 4, !tbaa !211
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !253 {
  %3 = alloca %"class.dealii::TableIndices", align 8
  %4 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 3
  %5 = load i64, ptr %1, align 4
  store i64 %5, ptr %4, align 4
  %6 = tail call noundef i32 @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE10n_elementsEv(ptr noundef nonnull align 8 dereferenceable(92) %0) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26, !prof !358

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !258
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %10, i64 -8
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.std::vector.5", ptr %10, i64 %14
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %20, %18 ], [ %17, %16 ]
  %20 = getelementptr inbounds %"class.std::vector.5", ptr %19, i64 -1
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %20) #13
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %22, label %18

22:                                               ; preds = %18, %12
  tail call void @_ZdaPv(ptr noundef nonnull %13) #16
  br label %23

23:                                               ; preds = %22, %8
  store ptr null, ptr %9, align 8, !tbaa !258
  %24 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 2
  store i32 0, ptr %24, align 8, !tbaa !399
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @_ZN6dealii12TableIndicesILi2EEC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %3) #12
  %25 = load i64, ptr %3, align 8
  store i64 %25, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %58

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !399
  %29 = icmp ult i32 %28, %6
  br i1 %29, label %30, label %57, !prof !401

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !258
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34, !prof !401

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %32, i64 -8
  %36 = load i64, ptr %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.std::vector.5", ptr %32, i64 %36
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi ptr [ %42, %40 ], [ %39, %38 ]
  %42 = getelementptr inbounds %"class.std::vector.5", ptr %41, i64 -1
  tail call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %42) #13
  %43 = icmp eq ptr %42, %32
  br i1 %43, label %44, label %40

44:                                               ; preds = %40, %34
  tail call void @_ZdaPv(ptr noundef nonnull %35) #16
  br label %45

45:                                               ; preds = %44, %30
  store i32 %6, ptr %27, align 8, !tbaa !399
  %46 = zext i32 %6 to i64
  %47 = mul nuw nsw i64 %46, 24
  %48 = add nuw nsw i64 %47, 8
  %49 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %48) #19
  store i64 %46, ptr %49, align 16
  %50 = getelementptr inbounds i8, ptr %49, i64 8
  %51 = getelementptr inbounds %"class.std::vector.5", ptr %50, i64 %46
  br label %52

52:                                               ; preds = %52, %45
  %53 = phi ptr [ %50, %45 ], [ %54, %52 ]
  tail call void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %53) #13
  %54 = getelementptr inbounds %"class.std::vector.5", ptr %53, i64 1
  %55 = icmp eq ptr %54, %51
  br i1 %55, label %56, label %52

56:                                               ; preds = %52
  store ptr %50, ptr %31, align 8, !tbaa !258
  br label %57

57:                                               ; preds = %56, %26
  tail call void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE12reset_valuesEv(ptr noundef nonnull align 8 dereferenceable(92) %0) #12
  br label %58

58:                                               ; preds = %57, %23
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE10n_elementsEv(ptr noundef nonnull align 8 dereferenceable(92) %0) local_unnamed_addr #0 comdat align 2 !prof !402 {
  %2 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 3
  br label %4

3:                                                ; preds = %4
  ret i32 %9

4:                                                ; preds = %1, %4
  %5 = phi i1 [ true, %1 ], [ false, %4 ]
  %6 = phi i32 [ 0, %1 ], [ 1, %4 ]
  %7 = phi i32 [ 1, %1 ], [ %9, %4 ]
  %8 = tail call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %6) #12
  %9 = mul i32 %8, %7
  br i1 %5, label %4, label %3, !prof !403, !llvm.loop !404
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !405 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE12reset_valuesEv(ptr noundef nonnull align 8 dereferenceable(92) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !253 {
  %2 = alloca %"class.std::vector.5", align 8
  %3 = tail call noundef i32 @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE10n_elementsEv(ptr noundef nonnull align 8 dereferenceable(92) %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5, !prof !358

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !258
  %8 = tail call noundef i32 @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE10n_elementsEv(ptr noundef nonnull align 8 dereferenceable(92) %0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %9 = invoke noundef ptr @_ZSt6fill_nIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_(ptr noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
          to label %10 unwind label %11

10:                                               ; preds = %5
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  br label %13

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !405 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !405 {
  tail call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !406 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat !prof !253 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !378
  %5 = tail call noundef i32 @_ZSt17__size_to_integerj(i32 noundef %1) #12
  call void @_ZSt19__iterator_categoryIPSt6vectorIdSaIdEEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %6 = call noundef ptr @_ZSt10__fill_n_aIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat !prof !253 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %8, label %5, !prof !358

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %"class.std::vector.5", ptr %0, i64 %6
  tail call void @_ZSt8__fill_aIPSt6vectorIdSaIdEES2_EvT_S4_RKT0_(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  br label %8

8:                                                ; preds = %3, %5
  %9 = phi ptr [ %7, %5 ], [ %0, %3 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZSt17__size_to_integerj(i32 noundef %0) local_unnamed_addr #2 comdat !prof !407 {
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPSt6vectorIdSaIdEEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !253 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPSt6vectorIdSaIdEES2_EvT_S4_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat !prof !253 {
  tail call void @_ZSt9__fill_a1IPSt6vectorIdSaIdEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPSt6vectorIdSaIdEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat !prof !253 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !408

5:                                                ; preds = %3, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %3 ]
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  %8 = getelementptr inbounds %"class.std::vector.5", ptr %6, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %5, !prof !409, !llvm.loop !410

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %6 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %10 = tail call ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %11 = tail call noundef ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #12
  %12 = load ptr, ptr %0, align 8, !tbaa !246
  %13 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !244
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  tail call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #12
  %16 = load ptr, ptr %0, align 8, !tbaa !246
  %17 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !411
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  tail call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #12
  store ptr %11, ptr %0, align 8, !tbaa !246
  %23 = getelementptr inbounds double, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !411
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %29 = tail call ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %30 = tail call ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_(ptr %28, ptr %29, ptr %30) #12
  %32 = tail call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #12
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !246
  %36 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !246
  %39 = tail call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #12
  %40 = load ptr, ptr %1, align 8, !tbaa !246
  %41 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %42 = getelementptr inbounds double, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !244
  %45 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !244
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #12
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !246
  %51 = getelementptr inbounds double, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !244
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !412 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !411
  %4 = load ptr, ptr %0, align 8, !tbaa !246
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !413 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #14
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #12
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #17
          to label %20 unwind label %14

14:                                               ; preds = %13, %9
  %15 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %17

16:                                               ; preds = %14
  resume { ptr, i32 } %15

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #15
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !414 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.53", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !415 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.53", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !416 {
  tail call void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !417 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !416 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !418

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !419 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_(ptr %0, ptr %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !419 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %0) #12
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %1) #12
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_(ptr %4, ptr %5, ptr %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIdSaIdEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !420 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !421 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !422 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !423 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !424 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !425

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !426 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !376

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #19
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !427 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !426 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !426 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %0) #12
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !426 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !378
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_(ptr %0) local_unnamed_addr #2 comdat !prof !428 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !429 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !430 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !428 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.53", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !431 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !430 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !432 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !433

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !428 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !434 {
  %3 = load ptr, ptr %1, align 8, !tbaa !378
  store ptr %3, ptr %0, align 8, !tbaa !435
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !416 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !416 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !419 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_(ptr %0, ptr %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #2 comdat align 2 !prof !419 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !419 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #13
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #13
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #12
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !419 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #13
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !437 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !438 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = load ptr, ptr %0, align 8, !tbaa !439
  %6 = getelementptr inbounds double, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !378
  call void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !441 {
  %3 = load ptr, ptr %1, align 8, !tbaa !378
  store ptr %3, ptr %0, align 8, !tbaa !439
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !442 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !422 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !378
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !443 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !422 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !422 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !423 {
  %4 = tail call noundef ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !444 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  %6 = alloca %"struct.std::vector<double>::_Temporary_value", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.54", align 8
  store ptr %1, ptr %5, align 8
  %8 = icmp eq i64 %2, 0
  br i1 %8, label %106, label %9, !prof !445

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !411
  %12 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !244
  %14 = ptrtoint ptr %11 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  %18 = icmp ult i64 %17, %2
  br i1 %18, label %60, label %19, !prof !446

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @_ZNSt6vectorIdSaIdEE16_Temporary_valueC2IJRKdEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_valEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %21 = call ptr @_ZNSt6vectorIdSaIdEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  store ptr %21, ptr %7, align 8
  %22 = call noundef i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  %23 = load ptr, ptr %12, align 8, !tbaa !244
  %24 = icmp ugt i64 %22, %2
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = sub i64 0, %2
  %27 = getelementptr inbounds double, ptr %23, i64 %26
  %28 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %29 = invoke noundef ptr @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef nonnull %27, ptr noundef %23, ptr noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %28) #12
          to label %30 unwind label %42

30:                                               ; preds = %25
  %31 = load ptr, ptr %12, align 8, !tbaa !244
  %32 = getelementptr inbounds double, ptr %31, i64 %2
  store ptr %32, ptr %12, align 8, !tbaa !244
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %34 = load ptr, ptr %33, align 8, !tbaa !378
  %35 = invoke noundef ptr @_ZSt13move_backwardIPdS0_ET0_T_S2_S1_(ptr noundef %34, ptr noundef nonnull %27, ptr noundef %23) #12
          to label %36 unwind label %42

36:                                               ; preds = %30
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %38 = load ptr, ptr %37, align 8, !tbaa !378
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %40 = load ptr, ptr %39, align 8, !tbaa !378
  %41 = getelementptr inbounds double, ptr %40, i64 %2
  invoke void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %38, ptr noundef nonnull %41, ptr noundef nonnull align 8 dereferenceable(8) %20) #12
          to label %59 unwind label %42

42:                                               ; preds = %54, %48, %44, %36, %30, %25
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIdSaIdEE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %107

44:                                               ; preds = %19
  %45 = sub i64 %2, %22
  %46 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %47 = invoke noundef ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(ptr noundef %23, i64 noundef %45, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 1 dereferenceable(1) %46) #12
          to label %48 unwind label %42

48:                                               ; preds = %44
  store ptr %47, ptr %12, align 8, !tbaa !244
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %50 = load ptr, ptr %49, align 8, !tbaa !378
  %51 = load ptr, ptr %12, align 8, !tbaa !244
  %52 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %53 = invoke noundef ptr @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %50, ptr noundef %23, ptr noundef %51, ptr noundef nonnull align 1 dereferenceable(1) %52) #12
          to label %54 unwind label %42

54:                                               ; preds = %48
  %55 = load ptr, ptr %12, align 8, !tbaa !244
  %56 = getelementptr inbounds double, ptr %55, i64 %22
  store ptr %56, ptr %12, align 8, !tbaa !244
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %58 = load ptr, ptr %57, align 8, !tbaa !378
  invoke void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %58, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %20) #12
          to label %59 unwind label %42

59:                                               ; preds = %54, %36
  call void @_ZNSt6vectorIdSaIdEE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %106

60:                                               ; preds = %9
  %61 = load ptr, ptr %0, align 8, !tbaa !246
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %63 = load ptr, ptr %62, align 8, !tbaa !378
  %64 = call noundef i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, ptr noundef nonnull @.str) #12
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %61 to i64
  %67 = sub i64 %65, %66
  %68 = call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %64) #12
  %69 = getelementptr inbounds i8, ptr %68, i64 %67
  %70 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %71 = invoke noundef ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(ptr noundef %69, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %70) #12
          to label %72 unwind label %90

72:                                               ; preds = %60
  %73 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %74 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %61, ptr noundef %63, ptr noundef %68, ptr noundef nonnull align 1 dereferenceable(1) %73) #12
          to label %79 unwind label %75

75:                                               ; preds = %72
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  %78 = call ptr @__cxa_begin_catch(ptr %77) #14
  br label %96

79:                                               ; preds = %72
  %80 = getelementptr inbounds double, ptr %74, i64 %2
  %81 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %82 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %63, ptr noundef %13, ptr noundef nonnull %80, ptr noundef nonnull align 1 dereferenceable(1) %81) #12
          to label %83 unwind label %90

83:                                               ; preds = %79
  %84 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %61, ptr noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %84) #12
  %85 = load ptr, ptr %10, align 8, !tbaa !411
  %86 = ptrtoint ptr %85 to i64
  %87 = sub i64 %86, %66
  %88 = ashr exact i64 %87, 3
  call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %61, i64 noundef %88) #12
  store ptr %68, ptr %0, align 8, !tbaa !246
  store ptr %82, ptr %12, align 8, !tbaa !244
  %89 = getelementptr inbounds double, ptr %68, i64 %64
  store ptr %89, ptr %10, align 8, !tbaa !411
  br label %106

90:                                               ; preds = %79, %60
  %91 = phi ptr [ %80, %79 ], [ %68, %60 ]
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  %94 = call ptr @__cxa_begin_catch(ptr %93) #14
  %95 = icmp eq ptr %91, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %75, %90
  %97 = getelementptr inbounds double, ptr %69, i64 %2
  br label %100

98:                                               ; preds = %100, %105, %104
  %99 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %107 unwind label %109

100:                                              ; preds = %90, %96
  %101 = phi ptr [ %69, %96 ], [ %68, %90 ]
  %102 = phi ptr [ %97, %96 ], [ %91, %90 ]
  %103 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %101, ptr noundef nonnull %102, ptr noundef nonnull align 1 dereferenceable(1) %103) #12
          to label %104 unwind label %98

104:                                              ; preds = %100
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %68, i64 noundef %64) #12
          to label %105 unwind label %98

105:                                              ; preds = %104
  invoke void @__cxa_rethrow() #17
          to label %112 unwind label %98

106:                                              ; preds = %59, %83, %4
  ret void

107:                                              ; preds = %98, %42
  %108 = phi { ptr, i32 } [ %43, %42 ], [ %99, %98 ]
  resume { ptr, i32 } %108

109:                                              ; preds = %98
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #15
  unreachable

112:                                              ; preds = %105
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #12
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !244
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE16_Temporary_valueC2IJRKdEEEPS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !447
  %4 = getelementptr inbounds %"struct.std::vector<double>::_Temporary_value", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !447
  %6 = tail call noundef ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  tail call void @_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_valEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::vector<double>::_Temporary_value", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !449 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !378
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !378
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !210 {
  %5 = tail call ptr @_ZSt18make_move_iteratorIPdESt13move_iteratorIT_ES2_(ptr noundef %0) #12
  %6 = tail call ptr @_ZSt18make_move_iteratorIPdESt13move_iteratorIT_ES2_(ptr noundef %1) #12
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E(ptr %5, ptr %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13move_backwardIPdS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %1) #12
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !450 {
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !451 {
  %5 = tail call noundef ptr @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !447
  %3 = tail call noundef ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  tail call void @_ZNSt16allocator_traitsISaIdEE7destroyIdEEvRS0_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) #13
  %4 = getelementptr inbounds %"struct.std::vector<double>::_Temporary_value", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !452 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !453
  %6 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %7 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !454

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #18
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %13 = tail call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  store i64 %13, ptr %5, align 8, !tbaa !453
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %15 = load i64, ptr %14, align 8, !tbaa !453
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  %17 = call noundef i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !454

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !454

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !455 {
  %5 = tail call ptr @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(ptr noundef %0) #12
  %6 = tail call ptr @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(ptr noundef %1) #12
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E(ptr %5, ptr %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  store i8 0, ptr %0, align 8, !tbaa !456
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::vector<double>::_Temporary_value", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
  %4 = load double, ptr %2, align 8, !tbaa !234
  store double %4, ptr %1, align 8, !tbaa !234
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt18make_move_iteratorIPdESt13move_iteratorIT_ES2_(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = alloca %"class.std::move_iterator", align 8
  call void @_ZNSt13move_iteratorIPdEC2ES0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #12
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef ptr @_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %0) #12
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %1) #12
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !378
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(ptr %0) local_unnamed_addr #0 comdat {
  %2 = alloca %"class.std::move_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef ptr @_ZNKSt13move_iteratorIPdE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %4 = call noundef ptr @_ZSt12__miter_baseIPdET_S1_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13move_iteratorIPdE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !457
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPdEC2ES0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !457
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !378
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPdET_S1_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
  %9 = call noundef ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPdS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds double, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %11, ptr align 8 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds double, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !459 {
  tail call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !460 {
  %4 = load double, ptr %2, align 8, !tbaa !234
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !461

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store double %4, ptr %7, align 8, !tbaa !234
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !462, !llvm.loop !463

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !451 {
  %4 = tail call noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !451 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !378
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #12
  call void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %6 = call noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !451 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !464

5:                                                ; preds = %3
  %6 = getelementptr inbounds double, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #2 comdat !prof !465 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !466 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE7destroyIdEEvRS0_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE7destroyIdEEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE7destroyIdEEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !423 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %3 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  ret i64 %3
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !467 {
  %3 = load i64, ptr %0, align 8, !tbaa !453
  %4 = load i64, ptr %1, align 8, !tbaa !453
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !468
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !469 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i64 %4, ptr %3, align 8, !tbaa !453
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %6 = load i64, ptr %5, align 8, !tbaa !453
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !470 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !471 {
  %3 = load i64, ptr %1, align 8, !tbaa !453
  %4 = load i64, ptr %0, align 8, !tbaa !453
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !472
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !469 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = alloca %"class.std::move_iterator", align 8
  call void @_ZNSt13move_iteratorIPdEC2ES0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #12
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6dealii5TableILi2ESt6vectorIdSaIdEEE6n_colsEv(ptr noundef nonnull align 8 dereferenceable(92) %0) local_unnamed_addr #2 comdat align 2 !prof !210 {
  %2 = getelementptr inbounds %"class.dealii::TableBase", ptr %0, i64 0, i32 3
  %3 = tail call noundef i32 @_ZNK6dealii16TableIndicesBaseILi2EEixEj(ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef 1) #12
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEC2ERKNS_9TableBaseILi2ES5_EEPS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !210 {
  store ptr %1, ptr %0, align 8, !tbaa !378
  %4 = getelementptr inbounds %"class.dealii::internal::TableBaseAccessors::Accessor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !274
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !473 {
  %3 = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  %4 = call noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  br i1 %5, label %6, label %7, !prof !474

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !475 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  invoke void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !246
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #12
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !281 {
  %2 = load ptr, ptr %0, align 8, !tbaa !246
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !411
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !476 {
  tail call void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !476 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !477 {
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !475 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
  store ptr %3, ptr %0, align 8, !tbaa !246
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !244
  %5 = getelementptr inbounds double, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !411
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !478 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) #12
  ret ptr %4
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
define linkonce_odr dso_local void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #2 comdat {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !234
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind optsize }
attributes #17 = { noreturn }
attributes #18 = { noreturn optsize }
attributes #19 = { builtin optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!209}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!35 = !{ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEC2Ejj, ptr @_ZN6dealii12TableIndicesILi2EEC2Ejj, i64 986572}
!36 = !{ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEC2Ejj, ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEC2ERKNS_12TableIndicesILi2EEE, i64 986572}
!37 = !{ptr @_ZN6dealii5TableILi2ESt6vectorIdSaIdEEEclEjj, ptr @_ZNK6dealii16TableIndicesBaseILi2EEixEj, i64 29963952}
!38 = !{ptr @_ZNSaIdEC2Ev, ptr @_ZNSt15__new_allocatorIdEC2Ev, i64 9261343}
!39 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 10618017}
!40 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, i64 10618017}
!41 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 10618007}
!42 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!43 = !{ptr @_ZN6dealii6TensorILi2ELi3EEC2Ev, ptr @_ZN6dealii6TensorILi1ELi3EEC2Eb, i64 64833408}
!44 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev, ptr @_ZNSt6vectorIdSaIdEED2Ev, i64 19731420}
!45 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev, ptr @_ZdaPv, i64 986571}
!46 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEED2Ev, ptr @_ZN6dealii11SubscriptorD2Ev, i64 986572}
!47 = !{ptr @_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_, ptr @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm, i64 364986}
!48 = !{ptr @_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_, ptr @_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv, i64 364986}
!49 = !{ptr @_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjjET0_T_SA_S9_RSaIT1_E, i64 364986}
!50 = !{ptr @_ZNKSt6vectorIjSaIjEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2ERKS2_, i64 1723391}
!51 = !{ptr @_ZNKSt6vectorIjSaIjEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEC2ERKS2_, i64 1811413}
!52 = !{ptr @_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPjEvT_S1_, i64 6310738}
!53 = !{ptr @_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm, ptr @_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjm, i64 4810518}
!54 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_, i64 1248}
!55 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_, i64 2496}
!56 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET1_T0_SB_SA_, i64 1248}
!57 = !{ptr @_ZNSt6vectorIjSaIjEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_, i64 31277553}
!58 = !{ptr @_ZNSt6vectorIjSaIjEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_, i64 45622161}
!59 = !{ptr @_ZSt4copyIPjS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPjET_S1_, i64 7211550}
!60 = !{ptr @_ZSt4copyIPjS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPjS0_ET1_T0_S2_S1_, i64 3605775}
!61 = !{ptr @_ZSt22__uninitialized_copy_aIPjS0_jET0_T_S2_S1_RSaIT1_E, ptr @_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_, i64 3605753}
!62 = !{ptr @_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIjEE8allocateERS0_m, i64 4810546}
!63 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjjET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_, i64 1410409}
!64 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_, i64 1410409}
!65 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEET_S8_, i64 2820818}
!66 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET1_T0_SA_S9_, i64 1410409}
!67 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 2820818}
!68 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPjET_S1_, i64 1410409}
!69 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_, i64 1410409}
!70 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEPjET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPjET_RKS1_S1_, i64 1410409}
!71 = !{ptr @_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_, i64 2435537}
!72 = !{ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEE4baseEv, i64 2823314}
!73 = !{ptr @_ZSt14__copy_move_a2ILb0EPKjPjET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIjEEPT_PKS3_S6_S4_, i64 2435537}
!74 = !{ptr @_ZSt8_DestroyIPjEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_, i64 6310738}
!75 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEEvT_S9_, i64 1248}
!76 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPKjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 2496}
!77 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 1248}
!78 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET1_T0_SB_SA_, ptr @_ZSt14__copy_move_a1ILb0EPKjPjET1_T0_S4_S3_, i64 1248}
!79 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET_S7_T0_, i64 1248}
!80 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET_S7_T0_, ptr @_ZSt12__niter_baseIPjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 1906460}
!81 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEES2_ET_S7_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEplEl, i64 1906460}
!82 = !{ptr @_ZSt12__niter_baseIPjSt6vectorIjSaIjEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEE4baseEv, i64 9816040}
!83 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEplEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEC2ERKS1_, i64 32838049}
!84 = !{ptr @_ZSt13__copy_move_aILb0EPjS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPjET_S1_, i64 10817325}
!85 = !{ptr @_ZSt13__copy_move_aILb0EPjS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPjS0_ET1_T0_S2_S1_, i64 3605775}
!86 = !{ptr @_ZSt13__copy_move_aILb0EPjS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPjET_RKS1_S1_, i64 3605775}
!87 = !{ptr @_ZSt14__copy_move_a1ILb0EPjS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPjS0_ET1_T0_S2_S1_, i64 5569448}
!88 = !{ptr @_ZSt14__copy_move_a2ILb0EPjS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIjEEPT_PKS3_S6_S4_, i64 5569448}
!89 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPjS2_EET0_T_S4_S3_, ptr @_ZSt4copyIPjS0_ET0_T_S2_S1_, i64 3605753}
!90 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEC2ERKNS_12TableIndicesILi2EEE, ptr @_ZN6dealii11SubscriptorC2Ev, i64 986572}
!91 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEC2ERKNS_12TableIndicesILi2EEE, ptr @_ZN6dealii12TableIndicesILi2EEC2Ev, i64 986572}
!92 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEC2ERKNS_12TableIndicesILi2EEE, ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE, i64 986572}
!93 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEC2ERKNS_12TableIndicesILi2EEE, ptr @_ZN6dealii11SubscriptorD2Ev, i64 1}
!94 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE, ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE10n_elementsEv, i64 986572}
!95 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE, ptr @_ZNSt6vectorIdSaIdEED2Ev, i64 33}
!96 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE, ptr @_ZdaPv, i64 2}
!97 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE, ptr @_ZN6dealii12TableIndicesILi2EEC2Ev, i64 1}
!98 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE, ptr @_Znam, i64 986570}
!99 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE, ptr @_ZNSt6vectorIdSaIdEEC2Ev, i64 31570240}
!100 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE6reinitERKNS_12TableIndicesILi2EEE, ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE12reset_valuesEv, i64 986571}
!101 = !{ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE10n_elementsEv, ptr @_ZNK6dealii16TableIndicesBaseILi2EEixEj, i64 5919431}
!102 = !{ptr @_ZNSt6vectorIdSaIdEEC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEEC2Ev, i64 7884403}
!103 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE12reset_valuesEv, ptr @_ZNK6dealii9TableBaseILi2ESt6vectorIdSaIdEEE10n_elementsEv, i64 1973143}
!104 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE12reset_valuesEv, ptr @_ZNSt6vectorIdSaIdEEC2Ev, i64 986571}
!105 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE12reset_valuesEv, ptr @_ZSt6fill_nIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_, i64 986571}
!106 = !{ptr @_ZN6dealii9TableBaseILi2ESt6vectorIdSaIdEEE12reset_valuesEv, ptr @_ZNSt6vectorIdSaIdEED2Ev, i64 986571}
!107 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, i64 7884403}
!108 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, ptr @_ZNSaIdEC2Ev, i64 7884403}
!109 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 7884403}
!110 = !{ptr @_ZSt6fill_nIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_, ptr @_ZSt17__size_to_integerj, i64 986572}
!111 = !{ptr @_ZSt6fill_nIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPSt6vectorIdSaIdEEENSt15iterator_traitsIT_E17iterator_categoryERKS5_, i64 986572}
!112 = !{ptr @_ZSt6fill_nIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_, ptr @_ZSt10__fill_n_aIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_St26random_access_iterator_tag, i64 986572}
!113 = !{ptr @_ZSt10__fill_n_aIPSt6vectorIdSaIdEEjS2_ET_S4_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPSt6vectorIdSaIdEES2_EvT_S4_RKT0_, i64 986571}
!114 = !{ptr @_ZSt8__fill_aIPSt6vectorIdSaIdEES2_EvT_S4_RKT0_, ptr @_ZSt9__fill_a1IPSt6vectorIdSaIdEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_, i64 986572}
!115 = !{ptr @_ZSt9__fill_a1IPSt6vectorIdSaIdEES2_EN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S9_RKS6_, ptr @_ZNSt6vectorIdSaIdEEaSERKS1_, i64 4721156}
!116 = !{ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_, ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, i64 12}
!117 = !{ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 12}
!118 = !{ptr @_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, i64 12}
!119 = !{ptr @_ZNKSt6vectorIdSaIdEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, i64 7578462}
!120 = !{ptr @_ZNKSt6vectorIdSaIdEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, i64 11572134}
!121 = !{ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPdEvT_S1_, i64 16422537}
!122 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, ptr @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, i64 8354765}
!123 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_, i64 6064377}
!124 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, i64 12128754}
!125 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, i64 6064377}
!126 = !{ptr @_ZNSt6vectorIdSaIdEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, i64 6082739}
!127 = !{ptr @_ZNSt6vectorIdSaIdEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, i64 11878526}
!128 = !{ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPdET_S1_, i64 23265970}
!129 = !{ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, i64 11632985}
!130 = !{ptr @_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E, ptr @_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_, i64 11605705}
!131 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, i64 8354784}
!132 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, i64 1356741}
!133 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, i64 1356741}
!134 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, i64 2713482}
!135 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, i64 1356741}
!136 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 2713482}
!137 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPdET_S1_, i64 1356741}
!138 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, i64 1356741}
!139 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_, i64 1356741}
!140 = !{ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, i64 17559028}
!141 = !{ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, i64 15156924}
!142 = !{ptr @_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, i64 17559028}
!143 = !{ptr @_ZSt8_DestroyIPdEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, i64 16422537}
!144 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_, i64 6064377}
!145 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 12128754}
!146 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 6064377}
!147 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, ptr @_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, i64 6064377}
!148 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_, i64 6064377}
!149 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_, ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 6064377}
!150 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl, i64 6064377}
!151 = !{ptr @_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, i64 12128754}
!152 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, i64 6075145}
!153 = !{ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPdET_S1_, i64 34898955}
!154 = !{ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_, i64 11632985}
!155 = !{ptr @_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPdET_RKS1_S1_, i64 11632985}
!156 = !{ptr @_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_, i64 11632985}
!157 = !{ptr @_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, i64 11632985}
!158 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_, ptr @_ZSt4copyIPdS0_ET0_T_S2_S1_, i64 11605705}
!159 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt6vectorIdSaIdEE16_Temporary_valueC2IJRKdEEEPS1_DpOT_, i64 1}
!160 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt6vectorIdSaIdEE16_Temporary_value6_M_valEv, i64 1}
!161 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt6vectorIdSaIdEE3endEv, i64 1}
!162 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 1}
!163 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt6vectorIdSaIdEE16_Temporary_valueD2Ev, i64 1}
!164 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, i64 5801169}
!165 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, i64 5801169}
!166 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, i64 5801169}
!167 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 23204659}
!168 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E, i64 5801169}
!169 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_, i64 11602321}
!170 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @__cxa_begin_catch, i64 17}
!171 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, i64 5801169}
!172 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, i64 5801160}
!173 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @__cxa_end_catch, i64 17}
!174 = !{ptr @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd, ptr @__cxa_rethrow, i64 4}
!175 = !{ptr @_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, i64 80}
!176 = !{ptr @_ZSt4fillIPddEvT_S1_RKT0_, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 4406944}
!177 = !{ptr @_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E, ptr @_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_, i64 7178069}
!178 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, i64 11602394}
!179 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIdSaIdEE4sizeEv, i64 23204785}
!180 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!181 = !{ptr @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 5801196}
!182 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_, ptr @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_, i64 23204788}
!183 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_, ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E, i64 11602394}
!184 = !{ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 25807262}
!185 = !{ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_, ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, i64 7178069}
!186 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 7178069}
!187 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 7178069}
!188 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, i64 7178069}
!189 = !{ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 6994789}
!190 = !{ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 11605705}
!191 = !{ptr @_ZNKSt6vectorIdSaIdEE8max_sizeEv, ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, i64 11605705}
!192 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, i64 12982610}
!193 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 12982610}
!194 = !{ptr @_ZNKSt15__new_allocatorIdE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv, i64 12982610}
!195 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSaIdEC2ERKS_, i64 1376905}
!196 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, i64 1376905}
!197 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 1376905}
!198 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!199 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, i64 2733627}
!200 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, i64 2733627}
!201 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 3}
!202 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, i64 10618017}
!203 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 10618007}
!204 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!205 = !{ptr @_ZNSaIdEC2ERKS_, ptr @_ZNSt15__new_allocatorIdEC2ERKS0_, i64 4110539}
!206 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSaIdEC2ERKS_, i64 2733634}
!207 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 2733634}
!208 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, i64 2733627}
!209 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!210 = !{!"function_entry_count", i64 0}
!211 = !{!212, !212, i64 0}
!212 = !{!"int", !213, i64 0}
!213 = !{!"omnipotent char", !214, i64 0}
!214 = !{!"Simple C++ TBAA"}
!215 = distinct !{!215, !216}
!216 = !{!"llvm.loop.mustprogress"}
!217 = !{!218, !219, i64 0}
!218 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!219 = !{!"any pointer", !213, i64 0}
!220 = !{!218, !219, i64 8}
!221 = !{!218, !219, i64 16}
!222 = !{!"function_entry_count", i64 16366895}
!223 = !{!"function_entry_count", i64 2386828070}
!224 = !{!225, !212, i64 24}
!225 = !{!"_ZTSN6dealii15PolynomialSpaceILi1EEE", !226, i64 0, !212, i64 24, !230, i64 32, !230, i64 56}
!226 = !{!"_ZTSSt6vectorIN6dealii11Polynomials10PolynomialIdEESaIS3_EE", !227, i64 0}
!227 = !{!"_ZTSSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE", !228, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE12_Vector_implE", !229, i64 0}
!229 = !{!"_ZTSNSt12_Vector_baseIN6dealii11Polynomials10PolynomialIdEESaIS3_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!230 = !{!"_ZTSSt6vectorIjSaIjEE", !231, i64 0}
!231 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !232, i64 0}
!232 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !218, i64 0}
!233 = distinct !{!233, !216}
!234 = !{!235, !235, i64 0}
!235 = !{!"double", !213, i64 0}
!236 = distinct !{!236, !216}
!237 = distinct !{!237, !216}
!238 = distinct !{!238, !216}
!239 = distinct !{!239, !216}
!240 = !{!"function_entry_count", i64 13983833}
!241 = !{!229, !219, i64 8}
!242 = !{!229, !219, i64 0}
!243 = !{!"function_entry_count", i64 103595384}
!244 = !{!245, !219, i64 8}
!245 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!246 = !{!245, !219, i64 0}
!247 = !{!248, !219, i64 8}
!248 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi1EEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!249 = !{!248, !219, i64 0}
!250 = !{!251, !219, i64 8}
!251 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi1EEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!252 = !{!251, !219, i64 0}
!253 = !{!"function_entry_count", i64 986572}
!254 = !{!255, !255, i64 0}
!255 = !{!"vtable pointer", !214, i64 0}
!256 = !{!"function_entry_count", i64 13237325922}
!257 = !{!"function_entry_count", i64 29963952}
!258 = !{!259, !219, i64 72}
!259 = !{!"_ZTSN6dealii9TableBaseILi2ESt6vectorIdSaIdEEEE", !260, i64 0, !219, i64 72, !212, i64 80, !270, i64 84}
!260 = !{!"_ZTSN6dealii11SubscriptorE", !212, i64 8, !261, i64 16, !219, i64 64}
!261 = !{!"_ZTSSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE", !262, i64 0}
!262 = !{!"_ZTSSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE", !263, i64 0}
!263 = !{!"_ZTSNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !264, i64 0, !266, i64 8}
!264 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKcEE", !265, i64 0}
!265 = !{!"_ZTSSt4lessIPKcE"}
!266 = !{!"_ZTSSt15_Rb_tree_header", !267, i64 0, !269, i64 32}
!267 = !{!"_ZTSSt18_Rb_tree_node_base", !268, i64 0, !219, i64 8, !219, i64 16, !219, i64 24}
!268 = !{!"_ZTSSt14_Rb_tree_color", !213, i64 0}
!269 = !{!"long", !213, i64 0}
!270 = !{!"_ZTSN6dealii12TableIndicesILi2EEE", !271, i64 0}
!271 = !{!"_ZTSN6dealii16TableIndicesBaseILi2EEE", !213, i64 0}
!272 = !{!"function_entry_count", i64 4842528}
!273 = !{!"function_entry_count", i64 282053}
!274 = !{!275, !219, i64 8}
!275 = !{!"_ZTSN6dealii8internal18TableBaseAccessors8AccessorILi2ESt6vectorIdSaIdEELb0ELj1EEE", !219, i64 0, !219, i64 8}
!276 = !{!"function_entry_count", i64 580699156}
!277 = !{!"function_entry_count", i64 5830093556}
!278 = !{!"function_entry_count", i64 551544}
!279 = !{!"branch_weights", i32 551545, i32 1}
!280 = !{!"function_entry_count", i64 9261343}
!281 = !{!"function_entry_count", i64 10618017}
!282 = distinct !{!282, !216}
!283 = !{!284, !212, i64 24}
!284 = !{!"_ZTSN6dealii15PolynomialSpaceILi2EEE", !226, i64 0, !212, i64 24, !230, i64 32, !230, i64 56}
!285 = distinct !{!285, !216}
!286 = distinct !{!286, !216}
!287 = distinct !{!287, !216}
!288 = distinct !{!288, !216}
!289 = distinct !{!289, !216}
!290 = distinct !{!290, !216}
!291 = distinct !{!291, !216}
!292 = distinct !{!292, !216}
!293 = distinct !{!293, !216}
!294 = distinct !{!294, !216}
!295 = distinct !{!295, !216}
!296 = !{!297, !219, i64 8}
!297 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi2EEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!298 = !{!297, !219, i64 0}
!299 = !{!300, !219, i64 8}
!300 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi2EEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!301 = !{!300, !219, i64 0}
!302 = !{!"function_entry_count", i64 2169946}
!303 = !{!"function_entry_count", i64 287056}
!304 = distinct !{!304, !216}
!305 = distinct !{!305, !216}
!306 = distinct !{!306, !216}
!307 = distinct !{!307, !216}
!308 = !{!"function_entry_count", i64 1130961}
!309 = !{!"branch_weights", i32 1130962, i32 1}
!310 = distinct !{!310, !216}
!311 = distinct !{!311, !216}
!312 = distinct !{!312, !216}
!313 = distinct !{!313, !216}
!314 = !{!315, !212, i64 24}
!315 = !{!"_ZTSN6dealii15PolynomialSpaceILi3EEE", !226, i64 0, !212, i64 24, !230, i64 32, !230, i64 56}
!316 = distinct !{!316, !216}
!317 = distinct !{!317, !216}
!318 = distinct !{!318, !216}
!319 = distinct !{!319, !216}
!320 = distinct !{!320, !216}
!321 = distinct !{!321, !216}
!322 = distinct !{!322, !216}
!323 = distinct !{!323, !216}
!324 = distinct !{!324, !216}
!325 = distinct !{!325, !216}
!326 = distinct !{!326, !216}
!327 = distinct !{!327, !216}
!328 = distinct !{!328, !216}
!329 = distinct !{!329, !216}
!330 = !{!"function_entry_count", i64 26112830}
!331 = !{!332, !219, i64 8}
!332 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi1ELi3EEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!333 = !{!332, !219, i64 0}
!334 = !{!"function_entry_count", i64 3381240}
!335 = !{!336, !219, i64 8}
!336 = !{!"_ZTSNSt12_Vector_baseIN6dealii6TensorILi2ELi3EEESaIS2_EE17_Vector_impl_dataE", !219, i64 0, !219, i64 8, !219, i64 16}
!337 = !{!336, !219, i64 0}
!338 = !{!"function_entry_count", i64 10444102}
!339 = !{!"function_entry_count", i64 409051700}
!340 = !{!"function_entry_count", i64 2121454836}
!341 = !{!"function_entry_count", i64 180988500}
!342 = !{!"function_entry_count", i64 197652618}
!343 = distinct !{!343, !216}
!344 = distinct !{!344, !216}
!345 = distinct !{!345, !216}
!346 = distinct !{!346, !216}
!347 = distinct !{!347, !216}
!348 = distinct !{!348, !216}
!349 = !{!"function_entry_count", i64 627233310}
!350 = !{!"branch_weights", i32 627233311, i32 1}
!351 = distinct !{!351, !216}
!352 = distinct !{!352, !216}
!353 = distinct !{!353, !216}
!354 = distinct !{!354, !216}
!355 = distinct !{!355, !216}
!356 = !{!"function_entry_count", i64 2026044}
!357 = distinct !{!357, !216}
!358 = !{!"branch_weights", i32 1, i32 986573}
!359 = !{!"function_entry_count", i64 9278493}
!360 = !{!"function_entry_count", i64 366604}
!361 = !{!"function_entry_count", i64 364986}
!362 = !{!"function_entry_count", i64 1723391}
!363 = !{!"function_entry_count", i64 1811413}
!364 = !{!"function_entry_count", i64 6310738}
!365 = !{!"function_entry_count", i64 14721697}
!366 = !{!"function_entry_count", i64 5778001}
!367 = !{!"branch_weights", i32 967483, i32 4810520}
!368 = !{!"function_entry_count", i64 1248}
!369 = !{!"function_entry_count", i64 31277553}
!370 = !{!"function_entry_count", i64 45622161}
!371 = !{!"function_entry_count", i64 3605775}
!372 = !{!"function_entry_count", i64 3605753}
!373 = !{!"function_entry_count", i64 5050952}
!374 = !{!"branch_weights", i32 240406, i32 4810548}
!375 = !{!"function_entry_count", i64 1410409}
!376 = !{!"branch_weights", i32 1, i32 2000}
!377 = !{!"function_entry_count", i64 9999928}
!378 = !{!219, !219, i64 0}
!379 = !{!"function_entry_count", i64 2823314}
!380 = !{!"function_entry_count", i64 7252096}
!381 = !{!"function_entry_count", i64 2435537}
!382 = !{!"function_entry_count", i64 14695014}
!383 = !{!"function_entry_count", i64 8004985}
!384 = !{!"branch_weights", i32 2735572, i32 5269415}
!385 = !{!"function_entry_count", i64 11879854}
!386 = !{!"function_entry_count", i64 3537126}
!387 = !{!388, !219, i64 0}
!388 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEE", !219, i64 0}
!389 = !{!"function_entry_count", i64 1906460}
!390 = !{!"function_entry_count", i64 9816040}
!391 = !{!"function_entry_count", i64 32838049}
!392 = !{!393, !219, i64 0}
!393 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEE", !219, i64 0}
!394 = !{!"function_entry_count", i64 286235506}
!395 = !{!"function_entry_count", i64 883785212}
!396 = !{!"function_entry_count", i64 7442918}
!397 = !{!"function_entry_count", i64 5569448}
!398 = !{!"function_entry_count", i64 7246060}
!399 = !{!259, !212, i64 80}
!400 = !{!"function_entry_count", i64 23538784}
!401 = !{!"branch_weights", i32 986573, i32 1}
!402 = !{!"function_entry_count", i64 2959716}
!403 = !{!"branch_weights", i32 2959716, i32 2959717}
!404 = distinct !{!404, !216}
!405 = !{!"function_entry_count", i64 7884403}
!406 = !{!"function_entry_count", i64 10618037}
!407 = !{!"function_entry_count", i64 26602045}
!408 = !{!"branch_weights", i32 1, i32 986572}
!409 = !{!"branch_weights", i32 986572, i32 3734589}
!410 = distinct !{!410, !216}
!411 = !{!245, !219, i64 16}
!412 = !{!"function_entry_count", i64 6067700}
!413 = !{!"function_entry_count", i64 12}
!414 = !{!"function_entry_count", i64 7578462}
!415 = !{!"function_entry_count", i64 11572134}
!416 = !{!"function_entry_count", i64 16422537}
!417 = !{!"function_entry_count", i64 42627443}
!418 = !{!"branch_weights", i32 8067773, i32 8354766}
!419 = !{!"function_entry_count", i64 6064377}
!420 = !{!"function_entry_count", i64 6082739}
!421 = !{!"function_entry_count", i64 11878526}
!422 = !{!"function_entry_count", i64 11632985}
!423 = !{!"function_entry_count", i64 11605705}
!424 = !{!"function_entry_count", i64 8538154}
!425 = !{!"branch_weights", i32 183370, i32 8354786}
!426 = !{!"function_entry_count", i64 1356741}
!427 = !{!"function_entry_count", i64 21337395}
!428 = !{!"function_entry_count", i64 15156924}
!429 = !{!"function_entry_count", i64 23127779}
!430 = !{!"function_entry_count", i64 17559028}
!431 = !{!"function_entry_count", i64 46393777}
!432 = !{!"function_entry_count", i64 29192013}
!433 = !{!"branch_weights", i32 16454701, i32 12737314}
!434 = !{!"function_entry_count", i64 23144268}
!435 = !{!436, !219, i64 0}
!436 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEE", !219, i64 0}
!437 = !{!"function_entry_count", i64 12128754}
!438 = !{!"function_entry_count", i64 6075145}
!439 = !{!440, !219, i64 0}
!440 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEE", !219, i64 0}
!441 = !{!"function_entry_count", i64 24036430}
!442 = !{!"function_entry_count", i64 17968345}
!443 = !{!"function_entry_count", i64 23265998}
!444 = !{!"function_entry_count", i64 5801171}
!445 = !{!"branch_weights", i32 1, i32 5801172}
!446 = !{!"branch_weights", i32 5801172, i32 1}
!447 = !{!448, !219, i64 0}
!448 = !{!"_ZTSNSt6vectorIdSaIdEE16_Temporary_valueE", !219, i64 0, !213, i64 8}
!449 = !{!"function_entry_count", i64 40}
!450 = !{!"function_entry_count", i64 4406944}
!451 = !{!"function_entry_count", i64 7178069}
!452 = !{!"function_entry_count", i64 5801197}
!453 = !{!269, !269, i64 0}
!454 = !{!"branch_weights", i32 1, i32 5801198}
!455 = !{!"function_entry_count", i64 11602394}
!456 = !{!213, !213, i64 0}
!457 = !{!458, !219, i64 0}
!458 = !{!"_ZTSSt13move_iteratorIPdE", !219, i64 0}
!459 = !{!"function_entry_count", i64 25807262}
!460 = !{!"function_entry_count", i64 25820050}
!461 = !{!"branch_weights", i32 1, i32 4303341}
!462 = !{!"branch_weights", i32 4303341, i32 -542009222}
!463 = distinct !{!463, !216}
!464 = !{!"branch_weights", i32 183280, i32 6994791}
!465 = !{!"function_entry_count", i64 16082259}
!466 = !{!"function_entry_count", i64 32608285}
!467 = !{!"function_entry_count", i64 12588445}
!468 = !{!"branch_weights", i32 11254134, i32 1334313}
!469 = !{!"function_entry_count", i64 12982610}
!470 = !{!"function_entry_count", i64 12962434}
!471 = !{!"function_entry_count", i64 34204152}
!472 = !{!"branch_weights", i32 1, i32 34204153}
!473 = !{!"function_entry_count", i64 1376905}
!474 = !{!"branch_weights", i32 1, i32 1376906}
!475 = !{!"function_entry_count", i64 2733627}
!476 = !{!"function_entry_count", i64 4110539}
!477 = !{!"function_entry_count", i64 2733634}
!478 = !{!"function_entry_count", i64 13389012}
