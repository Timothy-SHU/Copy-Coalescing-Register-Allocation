; ModuleID = 'UCTNode.cpp'
source_filename = "UCTNode.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }
%class.UCTNode = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i32, %"class.SMP::Mutex" }
%"class.SMP::Mutex" = type { i64 }
%"class.SMP::Lock" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.7" = type { ptr }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%"class.boost::array.0" = type { [441 x i32] }
%"class.boost::array.1" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.2" = type { [4 x i32] }
%"class.boost::array.3" = type { [8 x i32] }
%"class.boost::array.4" = type { [2 x i32] }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6", [4 x i8] }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32 }>
%"class.boost::array.5" = type { [24 x i32] }
%"class.boost::array.6" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%class.KoState = type { %class.FastState.base, %"class.std::vector.8", %"class.std::vector.8" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6" }>
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.14" = type { %"struct.std::_Vector_base.15" }
%"struct.std::_Vector_base.15" = type { %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl" }
%"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::tuples::tuple" = type { %"struct.boost::tuples::cons" }
%"struct.boost::tuples::cons" = type { i32, %"struct.boost::tuples::cons.19" }
%"struct.boost::tuples::cons.19" = type { i32, %"struct.boost::tuples::cons.20" }
%"struct.boost::tuples::cons.20" = type { ptr }
%class.NodeComp = type { i32 }
%"class.__gnu_cxx::__normal_iterator.21" = type { ptr }
%"class.std::allocator.10" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.22" = type { ptr }
%"struct.boost::tuples::null_type" = type { i8 }
%"class.std::_Temporary_buffer" = type { i64, i64, ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { %class.NodeComp }
%"struct.std::pair.23" = type { ptr, i64 }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { %class.NodeComp }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { %class.NodeComp }

$__clang_call_terminate = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZN5boost5arrayItLm441EEixEm = comdat any

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZNSt6vectorIiSaIiEE9push_backEOi = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE = comdat any

$_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEppEv = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZN7KoStateC2ERKS_ = comdat any

$_ZN7KoStateD2Ev = comdat any

$_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev = comdat any

$_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE9push_backEOS6_ = comdat any

$_ZN5boost6tuples10make_tupleIiiP7UCTNodeEENS0_6detail17make_tuple_mapperIT_T0_T1_NS0_9null_typeES9_S9_S9_S9_S9_S9_E4typeERKS6_RKS7_RKS8_ = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEE8NodeCompEvT_SF_T0_ = comdat any

$_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv = comdat any

$_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv = comdat any

$_ZN8NodeCompC2Ei = comdat any

$_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2Ev = comdat any

$_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEptEv = comdat any

$_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi2EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE14non_const_typeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv = comdat any

$_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIiEC2Ev = comdat any

$_ZN9FastStateC2ERKS_ = comdat any

$_ZNSt6vectorIySaIyEEC2ERKS1_ = comdat any

$_ZNSt6vectorIySaIyEED2Ev = comdat any

$_ZN9FastStateD2Ev = comdat any

$_ZN9FullBoardC2ERKS_ = comdat any

$_ZN9FastBoardC2ERKS_ = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIiED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNKSt6vectorIiSaIiEE3endEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIiEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIiE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPiET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZNKSt6vectorIySaIyEE4sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIyED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIySaIyEE5beginEv = comdat any

$_ZNKSt6vectorIySaIyEE3endEv = comdat any

$_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIySaIyEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIyEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIyEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIyEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIyE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIyE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPyET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPyET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym = comdat any

$_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym = comdat any

$_ZNSt15__new_allocatorIyE10deallocateEPym = comdat any

$_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPyEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_ = comdat any

$_ZN9FastBoardD2Ev = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEC2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_ = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIiE8max_sizeEv = comdat any

$_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_ = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE4backEv = comdat any

$_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_EvT_S8_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev = comdat any

$_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEEEvT_SA_ = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m = comdat any

$_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE10deallocateERS7_PS6_m = comdat any

$_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE10deallocateEPS6_m = comdat any

$_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_ = comdat any

$_ZN5boost6tuples6detail5cnullEv = comdat any

$_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_ = comdat any

$_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_ = comdat any

$_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEC2IKS3_EERT_RKS4_SB_SB_SB_SB_SB_SB_SB_SB_ = comdat any

$_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_ = comdat any

$_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_ = comdat any

$_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv = comdat any

$_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE9constructIS6_JS6_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_ = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv = comdat any

$_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv = comdat any

$_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_ = comdat any

$_ZNKSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8max_sizeERKS7_ = comdat any

$_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8allocateERS7_m = comdat any

$_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_ = comdat any

$_ZSt14__relocate_a_1IPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_ = comdat any

$_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_ = comdat any

$_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE7destroyIS6_EEvRS7_PT_ = comdat any

$_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE7destroyIS6_EEvPT_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_ = comdat any

$_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterI8NodeCompEENS0_15_Iter_comp_iterIT_EES4_ = comdat any

$_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_ = comdat any

$_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l = comdat any

$_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E5beginEv = comdat any

$_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_ = comdat any

$_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_ = comdat any

$_ZNKSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E4sizeEv = comdat any

$_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev = comdat any

$_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl = comdat any

$_ZSt29__uninitialized_construct_bufIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_ = comdat any

$_ZNSt8__detail25__return_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EEEEvPT_m = comdat any

$_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IRS7_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_ = comdat any

$_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IS7_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_ = comdat any

$_ZSt10_ConstructIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEJS6_EEvPT_DpOT0_ = comdat any

$_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_ = comdat any

$_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEaSERKS7_ = comdat any

$_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEaSERKS6_ = comdat any

$_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEaSERKS5_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl = comdat any

$_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_ = comdat any

$_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_ = comdat any

$_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv = comdat any

$_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv = comdat any

$_ZN5boost6tuples3getILi1EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_ = comdat any

$_ZN5boost6tuples6detail9get_classILi1EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE = comdat any

$_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIP7UCTNodeNS0_9null_typeEEEEET_RKNS7_IT0_T1_EE = comdat any

$_ZN5boost6tuples3getILi0EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_ = comdat any

$_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE = comdat any

$_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_ = comdat any

$_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE = comdat any

$_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_ = comdat any

$_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_ = comdat any

$_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valI8NodeCompEEET_SI_SI_RKT0_T1_ = comdat any

$_ZN9__gnu_cxx5__ops15__iter_comp_valI8NodeCompEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_ = comdat any

$_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterI8NodeCompEEET_SI_SI_RKT0_T1_ = comdat any

$_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_ = comdat any

$_ZSt4swapIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_ = comdat any

$_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE = comdat any

$_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIKN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_ = comdat any

$_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag = comdat any

$_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_ = comdat any

$_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_ = comdat any

$_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_ = comdat any

$_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_ = comdat any

$_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_ = comdat any

$_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_ = comdat any

$_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_ = comdat any

$_ZSt3minIlERKT_S2_S2_ = comdat any

$_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_ = comdat any

$_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_ = comdat any

$_ZSt12__niter_wrapIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_RKS8_S8_ = comdat any

$_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_ = comdat any

$_ZSt14__copy_move_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_ = comdat any

$_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_ = comdat any

$_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EESC_EEbT_T0_ = comdat any

$_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_ = comdat any

$_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_ = comdat any

$_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_ = comdat any

$_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_ = comdat any

$_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_ = comdat any

$_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_ = comdat any

$_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_ = comdat any

$_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_ = comdat any

$_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_ = comdat any

$_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEC2ES2_ = comdat any

$_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_ = comdat any

$_ZN5boost6tuples3getILi2EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE14non_const_typeERSC_ = comdat any

$_ZN5boost6tuples6detail9get_classILi2EE3getIRP7UCTNodeiNS0_4consIiNS8_IS6_NS0_9null_typeEEEEEEET_RNS8_IT0_T1_EE = comdat any

$_ZN5boost6tuples6detail9get_classILi1EE3getIRP7UCTNodeiNS0_4consIS6_NS0_9null_typeEEEEET_RNS8_IT0_T1_EE = comdat any

$_ZN5boost6tuples6detail9get_classILi0EE3getIRP7UCTNodeS6_NS0_9null_typeEEET_RNS0_4consIT0_T1_EE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1

@_ZN7UCTNodeC1Eii = dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN7UCTNodeC2Eii
@_ZN7UCTNodeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7UCTNodeD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNodeC2Eii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !502 {
  store ptr null, ptr %0, align 8, !tbaa !503
  %4 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 2
  store i32 %2, ptr %4, align 8, !tbaa !512
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !513
  %6 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !514
  %7 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 7
  store i8 1, ptr %7, align 4, !tbaa !515
  %8 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 8
  store i32 15, ptr %8, align 8, !tbaa !516
  %9 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  tail call void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  %10 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  store i32 20, ptr %10, align 8, !tbaa !517
  %11 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 5
  store i32 10, ptr %11, align 4, !tbaa !518
  ret void
}

; Function Attrs: optsize
declare void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN7UCTNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !502 {
  %2 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  invoke void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
          to label %4 unwind label %13

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !503
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !519

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %class.UCTNode, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !520
  call void @_ZN7UCTNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #20
  call void @_ZdlPv(ptr noundef nonnull %8) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !prof !521, !llvm.loop !522

12:                                               ; preds = %7, %4
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull readnone align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !524 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  ret ptr %2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
declare void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !525 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !514
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN7UCTNode10link_childEPS_(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #9 align 2 !prof !526 {
  %3 = load ptr, ptr %0, align 8, !tbaa !503
  %4 = getelementptr inbounds %class.UCTNode, ptr %1, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !520
  store ptr %1, ptr %0, align 8, !tbaa !503
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN7UCTNode15create_childrenER9FastStateb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !527 {
  %4 = alloca %"class.SMP::Lock", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  %13 = call noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  br i1 %13, label %106, label %14, !prof !528

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  %15 = invoke noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #18
          to label %16 unwind label %26

16:                                               ; preds = %14
  %17 = icmp slt i32 %15, 2
  br i1 %17, label %18, label %54, !prof !529

18:                                               ; preds = %16
  %19 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !530
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25, !prof !542

22:                                               ; preds = %18
  %23 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 4
  %24 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 3
  br label %28

25:                                               ; preds = %46, %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 -1, ptr %7, align 4, !tbaa !543
  invoke void @_ZNSt6vectorIiSaIiEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %7) #18
          to label %51 unwind label %52

26:                                               ; preds = %14
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %104

28:                                               ; preds = %22, %46
  %29 = phi i64 [ 0, %22 ], [ %47, %46 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %30 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %1, i64 noundef %29) #18
  %31 = load i16, ptr %30, align 2, !tbaa !544
  %32 = zext i16 %31 to i32
  store i32 %32, ptr %6, align 4, !tbaa !543
  %33 = load i32, ptr %23, align 4, !tbaa !546
  %34 = icmp eq i32 %33, %32
  br i1 %34, label %46, label %35, !prof !553

35:                                               ; preds = %28
  %36 = invoke noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %32) #18
          to label %37 unwind label %44

37:                                               ; preds = %35
  br i1 %36, label %38, label %46, !prof !554

38:                                               ; preds = %37
  %39 = load i32, ptr %6, align 4, !tbaa !543
  %40 = load i32, ptr %24, align 8, !tbaa !555
  %41 = invoke noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %39, i32 noundef %40) #18
          to label %42 unwind label %44

42:                                               ; preds = %38
  br i1 %41, label %46, label %43, !prof !556

43:                                               ; preds = %42
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #18
          to label %46 unwind label %44

44:                                               ; preds = %43, %38, %35
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  br label %104

46:                                               ; preds = %42, %43, %37, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  %47 = add nuw nsw i64 %29, 1
  %48 = load i32, ptr %19, align 4, !tbaa !530
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %28, label %25, !prof !557, !llvm.loop !558

51:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  br label %54

52:                                               ; preds = %25
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  br label %104

54:                                               ; preds = %51, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %55 = call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  store ptr %55, ptr %10, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  %56 = load i64, ptr %9, align 8, !tbaa !559
  store i64 %56, ptr %8, align 8, !tbaa !559
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %57 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  store ptr %57, ptr %11, align 8
  %58 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br i1 %58, label %59, label %102, !prof !560

59:                                               ; preds = %54
  %60 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 3
  br label %61

61:                                               ; preds = %59, %95
  %62 = phi i32 [ 0, %59 ], [ %96, %95 ]
  %63 = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #23
          to label %64 unwind label %81

64:                                               ; preds = %61
  %65 = invoke noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #18
          to label %66 unwind label %83

66:                                               ; preds = %64
  %67 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %68 = load i32, ptr %67, align 4, !tbaa !543
  invoke void @_ZN7UCTNodeC2Eii(ptr noundef nonnull align 8 dereferenceable(56) %63, i32 poison, i32 noundef %68) #18
          to label %69 unwind label %83

69:                                               ; preds = %66
  %70 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %71 = load i32, ptr %70, align 4, !tbaa !543
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %95, label %73, !prof !561

73:                                               ; preds = %69
  %74 = load i32, ptr %60, align 8, !tbaa !555
  %75 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %76 = load i32, ptr %75, align 4, !tbaa !543
  %77 = invoke noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %74, i32 noundef %76) #18
          to label %78 unwind label %81

78:                                               ; preds = %73
  %79 = icmp slt i32 %77, 3
  br i1 %79, label %80, label %85, !prof !562

80:                                               ; preds = %78
  call void @_ZN7UCTNode10set_extendEi(ptr noundef nonnull align 8 dereferenceable(56) %63, i32 noundef 5) #18
  br label %85

81:                                               ; preds = %85, %73, %61
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %100

83:                                               ; preds = %66, %64
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %63) #21
  br label %100

85:                                               ; preds = %80, %78
  %86 = load i32, ptr %60, align 8, !tbaa !555
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %90 = load i32, ptr %89, align 4, !tbaa !543
  %91 = invoke noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %88, i32 noundef %90) #18
          to label %92 unwind label %81

92:                                               ; preds = %85
  %93 = icmp eq i32 %91, 1
  br i1 %93, label %94, label %95, !prof !563

94:                                               ; preds = %92
  call void @_ZN7UCTNode10set_extendEi(ptr noundef nonnull align 8 dereferenceable(56) %63, i32 noundef 5) #18
  br label %95

95:                                               ; preds = %92, %94, %69
  call void @_ZN7UCTNode10link_childEPS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %63) #18
  %96 = add nuw nsw i32 %62, 1
  %97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %98 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  store ptr %98, ptr %11, align 8
  %99 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br i1 %99, label %61, label %102, !prof !564, !llvm.loop !565

100:                                              ; preds = %83, %81
  %101 = phi { ptr, i32 } [ %82, %81 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %104

102:                                              ; preds = %95, %54
  %103 = phi i32 [ 0, %54 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %106

104:                                              ; preds = %100, %52, %44, %26
  %105 = phi { ptr, i32 } [ %45, %44 ], [ %101, %100 ], [ %53, %52 ], [ %27, %26 ]
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  resume { ptr, i32 } %105

106:                                              ; preds = %3, %102
  %107 = phi i32 [ %103, %102 ], [ 0, %3 ]
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i32 %107
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !566 {
  %2 = load ptr, ptr %0, align 8, !tbaa !503
  %3 = icmp ne ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !567 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !568 {
  %3 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !569 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !570
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !572

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %1) #20
  %9 = load ptr, ptr %3, align 8, !tbaa !570
  %10 = getelementptr inbounds i32, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !570
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !573 {
  %3 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !527 {
  store ptr null, ptr %0, align 8, !tbaa !574
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !576 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !527 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !559
  store ptr %4, ptr %0, align 8, !tbaa !574
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !577 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !559
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !559
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !578 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !579 {
  %2 = load ptr, ptr %0, align 8, !tbaa !574
  ret ptr %2
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7UCTNode10set_extendEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #12 align 2 !prof !580 {
  %3 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 8, !tbaa !516
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !581 {
  %2 = load ptr, ptr %0, align 8, !tbaa !574
  %3 = getelementptr inbounds i32, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !574
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !582 {
  %2 = load ptr, ptr %0, align 8, !tbaa !583
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !570
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode13kill_superkosER7KoState(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !584 {
  %3 = alloca %class.KoState, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !503
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6, !prof !585

6:                                                ; preds = %2, %28
  %7 = phi ptr [ %29, %28 ], [ %4, %2 ]
  %8 = call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #18
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %25, label %10, !prof !586

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %3) #19
  call void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %3, ptr noundef nonnull align 8 dereferenceable(8440) %1) #18
  invoke void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440) %3, i32 noundef %8) #18
          to label %11 unwind label %18

11:                                               ; preds = %10
  %12 = invoke noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440) %3) #18
          to label %13 unwind label %18

13:                                               ; preds = %11
  br i1 %12, label %14, label %22, !prof !587

14:                                               ; preds = %13
  %15 = getelementptr inbounds %class.UCTNode, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !520
  invoke void @_ZN7UCTNode12delete_childEPS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %7) #18
          to label %17 unwind label %20

17:                                               ; preds = %14
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %3) #20
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %3) #19
  br label %28

18:                                               ; preds = %11, %10
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %23

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %23

22:                                               ; preds = %13
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %3) #20
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %3) #19
  br label %25

23:                                               ; preds = %20, %18
  %24 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %3) #20
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %3) #19
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %6
  %26 = getelementptr inbounds %class.UCTNode, ptr %7, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !520
  br label %28

28:                                               ; preds = %17, %25
  %29 = phi ptr [ %27, %25 ], [ %16, %17 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6, !prof !588

31:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode8get_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !589 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !512
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #18
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
          to label %5 unwind label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #18
          to label %8 unwind label %11

8:                                                ; preds = %5
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #20
  resume { ptr, i32 } %14
}

; Function Attrs: optsize
declare void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode12delete_childEPS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !590 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !503
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %14
  %8 = phi ptr [ %10, %14 ], [ %5, %2 ]
  %9 = getelementptr inbounds %class.UCTNode, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !520
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %class.UCTNode, ptr %8, i64 0, i32 1
  br label %16

14:                                               ; preds = %7
  %15 = icmp eq ptr %10, null
  br i1 %15, label %20, label %7, !llvm.loop !591

16:                                               ; preds = %2, %12
  %17 = phi ptr [ %13, %12 ], [ %0, %2 ]
  %18 = getelementptr inbounds %class.UCTNode, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !520
  store ptr %19, ptr %17, align 8, !tbaa !559
  call void @_ZN7UCTNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %1) #20
  call void @_ZdlPv(ptr noundef nonnull %1) #21
  br label %20

20:                                               ; preds = %14, %16
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7UCTNode8set_moveEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #12 align 2 !prof !590 {
  %3 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !512
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode6updateER7Playouti(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !592 {
  %4 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %6 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !514
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !514
  %9 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !517
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !517
  %12 = invoke noundef float @_ZN7Playout9get_scoreEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #18
          to label %13 unwind label %19

13:                                               ; preds = %3
  %14 = fcmp ogt float %12, 0.000000e+00
  br i1 %14, label %15, label %21, !prof !593

15:                                               ; preds = %13
  %16 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !513
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !513
  br label %21

19:                                               ; preds = %3
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  resume { ptr, i32 } %20

21:                                               ; preds = %15, %13
  %22 = icmp eq i32 %2, 1
  br i1 %22, label %23, label %25, !prof !594

23:                                               ; preds = %21
  %24 = fcmp olt float %12, 0.000000e+00
  br i1 %24, label %28, label %32, !prof !595

25:                                               ; preds = %21
  %26 = icmp eq i32 %2, 0
  %27 = and i1 %26, %14
  br i1 %27, label %28, label %32, !prof !596

28:                                               ; preds = %25, %23
  %29 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !518
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !518
  br label %32

32:                                               ; preds = %28, %25, %23
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare noundef float @_ZN7Playout9get_scoreEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !597 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !513
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode10set_visitsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !598 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  store i32 %1, ptr %5, align 8, !tbaa !514
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode13set_blackwinsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !598 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !513
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #8 align 2 !prof !599 {
  %3 = tail call noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  %4 = mul nsw i32 %3, 1000
  %5 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  %6 = sdiv i32 %4, %5
  %7 = icmp eq i32 %1, 1
  %8 = sub nsw i32 1000, %6
  %9 = select i1 %7, i32 %8, i32 %6, !prof !600
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !601 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !514
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode12get_raverateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !602 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !518
  %4 = mul nsw i32 %3, 1000
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !517
  %7 = sdiv i32 %4, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode14get_ravevisitsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !602 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !517
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode9do_extendEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !603 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !516
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7UCTNode16uct_select_childEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #13 align 2 !prof !604 {
  %3 = load ptr, ptr %0, align 8, !tbaa !559
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5, !prof !605

5:                                                ; preds = %2, %8
  %6 = phi ptr [ %10, %8 ], [ %3, %2 ]
  %7 = tail call noundef zeroext i1 @_ZN7UCTNode5validEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #18
  br i1 %7, label %12, label %8, !prof !606

8:                                                ; preds = %5
  %9 = getelementptr inbounds %class.UCTNode, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !559
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %5, !prof !607, !llvm.loop !608

12:                                               ; preds = %5, %47
  %13 = phi ptr [ %39, %47 ], [ null, %5 ]
  %14 = phi i32 [ %38, %47 ], [ -10000, %5 ]
  %15 = phi ptr [ %43, %47 ], [ %6, %5 ]
  %16 = tail call noundef i32 @_ZNK7UCTNode14get_ravevisitsEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #18
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %35, !prof !609

18:                                               ; preds = %12
  %19 = tail call noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #18
  br i1 %19, label %22, label %20, !prof !610

20:                                               ; preds = %18
  %21 = tail call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %15, i32 noundef %1) #18
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi i32 [ %21, %20 ], [ 1100, %18 ]
  %24 = tail call noundef i32 @_ZNK7UCTNode12get_raverateEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #18
  %25 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #18
  %26 = sdiv i32 %25, 200
  %27 = add nsw i32 %26, 2
  %28 = sdiv i32 1000, %27
  %29 = add nsw i32 %28, 200
  %30 = mul nsw i32 %29, %24
  %31 = sub nsw i32 800, %28
  %32 = mul nsw i32 %31, %23
  %33 = add nsw i32 %30, %32
  %34 = sdiv i32 %33, 1000
  br label %35

35:                                               ; preds = %12, %22
  %36 = phi i32 [ %34, %22 ], [ 1100, %12 ]
  %37 = icmp sgt i32 %36, %14
  %38 = tail call i32 @llvm.smax.i32(i32 %36, i32 %14)
  %39 = select i1 %37, ptr %15, ptr %13, !prof !611
  br label %40

40:                                               ; preds = %45, %35
  %41 = phi ptr [ %15, %35 ], [ %43, %45 ]
  %42 = getelementptr inbounds %class.UCTNode, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !520
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45, !prof !612

45:                                               ; preds = %40
  %46 = tail call noundef zeroext i1 @_ZN7UCTNode5validEv(ptr noundef nonnull align 8 dereferenceable(56) %43) #18
  br i1 %46, label %47, label %40, !prof !613, !llvm.loop !614

47:                                               ; preds = %45
  br label %12, !llvm.loop !615

48:                                               ; preds = %8, %40, %2
  %49 = phi ptr [ null, %2 ], [ %39, %40 ], [ null, %8 ]
  ret ptr %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN7UCTNode5validEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !616 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !515, !range !617, !noundef !618
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !619 {
  %3 = alloca %"class.SMP::Lock", align 8
  %4 = alloca %"class.std::vector.14", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.boost::tuples::tuple", align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.boost::tuples::tuple", align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %class.NodeComp, align 4
  %14 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %15 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %16) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %17 = load ptr, ptr %0, align 8, !tbaa !503
  store ptr %17, ptr %5, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !543
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19, !prof !620

19:                                               ; preds = %2, %34
  %20 = phi ptr [ %39, %34 ], [ %17, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  %21 = call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %20) #18
  store i32 %21, ptr %7, align 4, !tbaa !543
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23, !prof !621

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  %24 = call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %20, i32 noundef %1) #18
  store i32 %24, ptr %9, align 4, !tbaa !543
  invoke void @_ZN5boost6tuples10make_tupleIiiP7UCTNodeEENS0_6detail17make_tuple_mapperIT_T0_T1_NS0_9null_typeES9_S9_S9_S9_S9_S9_E4typeERKS6_RKS7_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.boost::tuples::tuple") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
          to label %25 unwind label %27

25:                                               ; preds = %23
  invoke void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %8) #18
          to label %26 unwind label %27

26:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  br label %34

27:                                               ; preds = %25, %23
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  br label %41

29:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #19
  store i32 0, ptr %11, align 4, !tbaa !543
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #19
  store i32 0, ptr %12, align 4, !tbaa !543
  invoke void @_ZN5boost6tuples10make_tupleIiiP7UCTNodeEENS0_6detail17make_tuple_mapperIT_T0_T1_NS0_9null_typeES9_S9_S9_S9_S9_S9_E4typeERKS6_RKS7_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.boost::tuples::tuple") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
          to label %30 unwind label %32

30:                                               ; preds = %29
  invoke void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10) #18
          to label %31 unwind label %32

31:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19
  br label %34

32:                                               ; preds = %30, %29
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19
  br label %41

34:                                               ; preds = %31, %26
  %35 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) #18
  %36 = load i32, ptr %35, align 4, !tbaa !543
  store i32 %36, ptr %6, align 4, !tbaa !543
  %37 = load ptr, ptr %5, align 8, !tbaa !559
  %38 = getelementptr inbounds %class.UCTNode, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !520
  store ptr %39, ptr %5, align 8, !tbaa !559
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %19, !prof !622, !llvm.loop !623

41:                                               ; preds = %32, %27
  %42 = phi { ptr, i32 } [ %28, %27 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  br label %68

43:                                               ; preds = %34, %2
  %44 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %45 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %46 = load i32, ptr %6, align 4, !tbaa !543
  call void @_ZN8NodeCompC2Ei(ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef %46) #18
  %47 = load i32, ptr %13, align 4
  invoke void @_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEE8NodeCompEvT_SF_T0_(ptr %44, ptr %45, i32 %47) #18
          to label %48 unwind label %63

48:                                               ; preds = %43
  %49 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %50 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  invoke void @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_(ptr %49, ptr %50) #18
          to label %51 unwind label %63

51:                                               ; preds = %48
  store ptr null, ptr %0, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #20
  %52 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  store ptr %52, ptr %14, align 8, !tbaa.struct !624
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  %53 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  store ptr %53, ptr %15, align 8
  %54 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  br i1 %54, label %55, label %67, !prof !625

55:                                               ; preds = %51, %58
  %56 = call noundef ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #20
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi2EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE14non_const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %56) #18
          to label %58 unwind label %65

58:                                               ; preds = %55
  %59 = load ptr, ptr %57, align 8, !tbaa !559
  call void @_ZN7UCTNode10link_childEPS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %59) #18
  %60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  %61 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  store ptr %61, ptr %15, align 8
  %62 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  br i1 %62, label %55, label %67, !prof !626, !llvm.loop !627

63:                                               ; preds = %48, %43
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %68

65:                                               ; preds = %55
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  br label %68

67:                                               ; preds = %58, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void

68:                                               ; preds = %65, %63, %41
  %69 = phi { ptr, i32 } [ %42, %41 ], [ %66, %65 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  resume { ptr, i32 } %69
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !619 {
  tail call void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !628 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples10make_tupleIiiP7UCTNodeEENS0_6detail17make_tuple_mapperIT_T0_T1_NS0_9null_typeES9_S9_S9_S9_S9_S9_E4typeERKS6_RKS7_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.boost::tuples::tuple") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat !prof !628 {
  tail call void @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat !prof !628 {
  %3 = load i32, ptr %0, align 4, !tbaa !543
  %4 = load i32, ptr %1, align 4, !tbaa !543
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !629
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEE8NodeCompEvT_SF_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat !prof !619 {
  %4 = tail call i32 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI8NodeCompEENS0_15_Iter_comp_iterIT_EES4_(i32 %2) #18
  tail call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !630 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !631 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8NodeCompC2Ei(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !619 {
  store i32 %1, ptr %0, align 4, !tbaa !632
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !619 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %3, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag(ptr %0, ptr %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !619 {
  store ptr null, ptr %0, align 8, !tbaa !634
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !636 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !559
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !559
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !628 {
  %2 = load ptr, ptr %0, align 8, !tbaa !634
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi2EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE14non_const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !628 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples3getILi2EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE14non_const_typeERSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !637 {
  %2 = load ptr, ptr %0, align 8, !tbaa !634
  %3 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !634
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !619 {
  %2 = load ptr, ptr %0, align 8, !tbaa !638
  %3 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !640
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_EvT_S8_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #22
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN7UCTNode15get_first_childEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !641 {
  %2 = load ptr, ptr %0, align 8, !tbaa !503
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN7UCTNode11get_siblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !642 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !520
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #13 align 2 !prof !643 {
  %2 = load ptr, ptr %0, align 8, !tbaa !559
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !605

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !512
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %13, label %9, !prof !644

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !559
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !prof !645, !llvm.loop !646

13:                                               ; preds = %4, %9, %1
  %14 = phi ptr [ null, %1 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7UCTNode16get_nopass_childEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #13 align 2 !prof !647 {
  %2 = load ptr, ptr %0, align 8, !tbaa !559
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !605

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !512
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13, !prof !648

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !559
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !prof !649, !llvm.loop !650

13:                                               ; preds = %4, %9, %1
  %14 = phi ptr [ null, %1 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode10invalidateEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 !prof !651 {
  %2 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 7
  store i8 0, ptr %4, align 4, !tbaa !515
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode10updateRAVEER7Playouti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !604 {
  %4 = alloca %"class.SMP::Lock", align 8
  %5 = alloca %"class.SMP::Lock", align 8
  %6 = tail call noundef float @_ZN7Playout9get_scoreEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !559
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9, !prof !652

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  %11 = fcmp olt float %6, 0.000000e+00
  %12 = fcmp ogt float %6, 0.000000e+00
  br label %13

13:                                               ; preds = %9, %40
  %14 = phi ptr [ %7, %9 ], [ %42, %40 ]
  %15 = call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #18
  br i1 %10, label %16, label %28, !prof !653

16:                                               ; preds = %13
  %17 = call noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef 0, i32 noundef %15) #18
  br i1 %17, label %18, label %40, !prof !654

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %19) #18
  %20 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !517
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !517
  br i1 %12, label %23, label %27, !prof !655

23:                                               ; preds = %18
  %24 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !518
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !518
  br label %27

27:                                               ; preds = %23, %18
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %40

28:                                               ; preds = %13
  %29 = call noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef 1, i32 noundef %15) #18
  br i1 %29, label %30, label %40, !prof !656

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %31) #18
  %32 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !517
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !517
  br i1 %11, label %35, label %39, !prof !657

35:                                               ; preds = %30
  %36 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !518
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !518
  br label %39

39:                                               ; preds = %35, %30
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %40

40:                                               ; preds = %28, %39, %16, %27
  %41 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !559
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %13, !prof !658, !llvm.loop !659

44:                                               ; preds = %40, %3
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !567 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !567 {
  tail call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !660 {
  tail call void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !661 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !660 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #18
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %4, i64 316, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !662 {
  %3 = alloca %"class.std::allocator.10", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.10") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  invoke void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  %7 = call ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %8 = call ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %9 = load ptr, ptr %0, align 8, !tbaa !663
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !665
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !666 {
  %2 = load ptr, ptr %0, align 8, !tbaa !663
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !665
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #18
  %3 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !667
  store i32 %7, ptr %5, align 8, !tbaa !667
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !668 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  %7 = call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %8 = call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %9 = load ptr, ptr %0, align 8, !tbaa !583
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !570
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !669 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !570
  %4 = load ptr, ptr %0, align 8, !tbaa !583
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !668 {
  tail call void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !670 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !671 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !672 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !668 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !673 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !673 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !674 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !582 {
  %2 = load ptr, ptr %0, align 8, !tbaa !583
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !571
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !668 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !675 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !675 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !676 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !671 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !583
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !570
  %5 = getelementptr inbounds i32, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !571
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !677 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !678

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !679 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !679 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !680

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 4611686018427387903
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !681 {
  ret i64 2305843009213693951
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !668 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !668 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !668 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !668 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !559
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) local_unnamed_addr #2 comdat !prof !682 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !668 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !673 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !682 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !559
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !683 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !673 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !673 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !684

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !685 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !682 {
  %3 = load ptr, ptr %1, align 8, !tbaa !559
  store ptr %3, ptr %0, align 8, !tbaa !574
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !686 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !687

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !688 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !688 {
  tail call void @_ZdlPv(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !689 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !665
  %4 = load ptr, ptr %0, align 8, !tbaa !663
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.10") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !662 {
  tail call void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator.10") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !690 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !662 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  invoke void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !691 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !692 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !692 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !692 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !693 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !666 {
  %2 = load ptr, ptr %0, align 8, !tbaa !663
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !694
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.10") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !662 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !695 {
  tail call void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !695 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !696 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !662 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !663
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !665
  %5 = getelementptr inbounds i64, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !694
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !697 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !698 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !699

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !700 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !700 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !680

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !701 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !692 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !692 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !692 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !692 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !559
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) local_unnamed_addr #2 comdat !prof !702 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !692 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !692 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !702 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !559
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !703 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !692 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !692 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !704

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !705 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !702 {
  %3 = load ptr, ptr %1, align 8, !tbaa !559
  store ptr %3, ptr %0, align 8, !tbaa !706
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !708 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !709

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !700 {
  tail call void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !700 {
  tail call void @_ZdlPv(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !710 {
  tail call void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !710 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !710 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !619 {
  tail call void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !619 {
  tail call void @_ZNSaIN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  tail call void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !619 {
  tail call void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !619 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !619 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !711 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !711 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !711 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !569 {
  tail call void @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !712 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !583
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !570
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %12 = call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  %13 = getelementptr inbounds i32, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %2) #20
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !559
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %17 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #20
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %20 = load ptr, ptr %19, align 8, !tbaa !559
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %22 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #20
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !571
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 2
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #18
  store ptr %12, ptr %0, align 8, !tbaa !583
  store ptr %22, ptr %8, align 8, !tbaa !570
  %29 = getelementptr inbounds i32, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !571
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !569 {
  %4 = load i32, ptr %2, align 4, !tbaa !543
  store i32 %4, ptr %1, align 4, !tbaa !543
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !713 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !714
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %7 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !715

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #24
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store i64 %13, ptr %5, align 8, !tbaa !714
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !714
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %17 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !715

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !715

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !716 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !559
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !559
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 !prof !717 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !718 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !719 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %3 = tail call noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  ret i64 %3
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !720 {
  %3 = load i64, ptr %0, align 8, !tbaa !714
  %4 = load i64, ptr %1, align 8, !tbaa !714
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !721
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !722 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 2305843009213693951, ptr %2, align 8, !tbaa !714
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !714
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !714
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !722 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !723 {
  %3 = load i64, ptr %1, align 8, !tbaa !714
  %4 = load i64, ptr %0, align 8, !tbaa !714
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !724
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !722 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !717 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !717 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10, !prof !725

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !573 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !570
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !571
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !726

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %1) #20
  %9 = load ptr, ptr %3, align 8, !tbaa !570
  %10 = getelementptr inbounds i32, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !570
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !573 {
  tail call void @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !727 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !583
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !570
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %12 = call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  %13 = getelementptr inbounds i32, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %2) #20
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !559
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %17 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #20
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %20 = load ptr, ptr %19, align 8, !tbaa !559
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %22 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #20
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !571
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 2
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #18
  store ptr %12, ptr %0, align 8, !tbaa !583
  store ptr %22, ptr %8, align 8, !tbaa !570
  %29 = getelementptr inbounds i32, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !571
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !573 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #20
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !573 {
  %4 = load i32, ptr %2, align 4, !tbaa !543
  store i32 %4, ptr %1, align 4, !tbaa !543
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !573 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !728
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !559
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !573 {
  %2 = load ptr, ptr %0, align 8, !tbaa !728
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !730 {
  %3 = load ptr, ptr %1, align 8, !tbaa !559
  store ptr %3, ptr %0, align 8, !tbaa !728
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_EvT_S8_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !619 {
  tail call void @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !731 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !619 {
  %2 = load ptr, ptr %0, align 8, !tbaa !638
  %3 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !732
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  invoke void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !733 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEEEvT_SA_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEEEvT_SA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !733 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !734 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !735

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !619 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !736 {
  tail call void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE10deallocateEPS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE10deallocateEPS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !736 {
  tail call void @_ZdlPv(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 !prof !628 {
  %5 = alloca %"struct.boost::tuples::null_type", align 1
  %6 = alloca %"struct.boost::tuples::null_type", align 1
  %7 = alloca %"struct.boost::tuples::null_type", align 1
  %8 = alloca %"struct.boost::tuples::null_type", align 1
  %9 = alloca %"struct.boost::tuples::null_type", align 1
  %10 = alloca %"struct.boost::tuples::null_type", align 1
  %11 = alloca %"struct.boost::tuples::null_type", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples6detail5cnullEv() local_unnamed_addr #2 comdat !prof !737 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10) unnamed_addr #0 comdat align 2 !prof !628 {
  %12 = alloca %"struct.boost::tuples::null_type", align 1
  %13 = load i32, ptr %1, align 4, !tbaa !543
  store i32 %13, ptr %0, align 8, !tbaa !738
  %14 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10) unnamed_addr #0 comdat align 2 !prof !628 {
  %12 = alloca %"struct.boost::tuples::null_type", align 1
  %13 = load i32, ptr %1, align 4, !tbaa !543
  store i32 %13, ptr %0, align 8, !tbaa !742
  %14 = getelementptr inbounds %"struct.boost::tuples::cons.19", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEC2IKS3_EERT_RKS4_SB_SB_SB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEC2IKS3_EERT_RKS4_SB_SB_SB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10) unnamed_addr #2 comdat align 2 !prof !628 {
  %12 = load ptr, ptr %1, align 8, !tbaa !559
  store ptr %12, ptr %0, align 8, !tbaa !743
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !628 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !640
  %5 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !732
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !744

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %9 = load ptr, ptr %3, align 8, !tbaa !640
  %10 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !640
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 !prof !745 {
  tail call void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE9constructIS6_JS6_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !736 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !638
  %8 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = tail call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %12 = call noundef ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  %13 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !559
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %17 = call noundef ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #20
  %18 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %20 = load ptr, ptr %19, align 8, !tbaa !559
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %22 = call noundef ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #20
  %23 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !732
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 24
  call void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #18
  store ptr %12, ptr %0, align 8, !tbaa !638
  store ptr %22, ptr %8, align 8, !tbaa !640
  %29 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !732
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !628 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #20
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE9constructIS6_JS6_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 !prof !745 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !736 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !714
  %6 = tail call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %7 = tail call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !746

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #24
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store i64 %13, ptr %5, align 8, !tbaa !714
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !714
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %17 = call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !746

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !746

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !747 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !559
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !559
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  ret i64 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !736 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !746

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8allocateERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 !prof !748 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !749 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !748 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %3 = tail call noundef i64 @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !750 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !640
  %4 = load ptr, ptr %0, align 8, !tbaa !638
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !748 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 384307168202282325, ptr %2, align 8, !tbaa !714
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8max_sizeERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !714
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !714
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !748 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8max_sizeERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !748 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !748 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !751 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8allocateERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !736 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !736 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !680

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 768614336404564650
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 24
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !748 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !748 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6, !prof !752

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  %9 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %8, i64 1
  %10 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !prof !753, !llvm.loop !754

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !755 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat !prof !756 {
  tail call void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  tail call void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE7destroyIS6_EEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE7destroyIS6_EEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !756 {
  tail call void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE7destroyIS6_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE7destroyIS6_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !756 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !628 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !634
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !559
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !757 {
  %2 = load ptr, ptr %0, align 8, !tbaa !634
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !758 {
  %3 = load ptr, ptr %1, align 8, !tbaa !559
  store ptr %3, ptr %0, align 8, !tbaa !634
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !619 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %6 = alloca %"class.std::_Temporary_buffer", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %7, label %24, label %8, !prof !759

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %9 = load ptr, ptr %4, align 8, !tbaa.struct !624
  %10 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %11 = add nsw i64 %10, 1
  %12 = sdiv i64 %11, 2
  call void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %9, i64 noundef %12) #18
  %13 = call noundef ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %14 = icmp eq ptr %13, null
  %15 = load ptr, ptr %4, align 8
  %16 = load ptr, ptr %5, align 8
  br i1 %14, label %17, label %20, !prof !759

17:                                               ; preds = %8
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %15, ptr %16, i32 %2) #18
          to label %23 unwind label %18

18:                                               ; preds = %20, %17
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  resume { ptr, i32 } %19

20:                                               ; preds = %8
  %21 = call noundef ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %22 = call noundef i64 @_ZNKSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %15, ptr %16, ptr noundef %21, i64 noundef %22, i32 %2) #18
          to label %23 unwind label %18

23:                                               ; preds = %20, %17
  call void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  br label %24

24:                                               ; preds = %3, %23
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local i32 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI8NodeCompEENS0_15_Iter_comp_iterIT_EES4_(i32 %0) local_unnamed_addr #0 comdat !prof !619 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEC2ES2_(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 %0) #18
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !760 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !559
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !559
  %7 = icmp eq ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !619 {
  store i64 %2, ptr %0, align 8, !tbaa !761
  %4 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = tail call { ptr, i64 } @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl(i64 noundef %2) #20
  %7 = extractvalue { ptr, i64 } %6, 0
  %8 = extractvalue { ptr, i64 } %6, 1
  %9 = icmp eq ptr %7, null
  br i1 %9, label %20, label %10, !prof !759

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %7, i64 %8
  invoke void @_ZSt29__uninitialized_construct_bufIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr %1) #18
          to label %12 unwind label %13

12:                                               ; preds = %10
  store ptr %7, ptr %5, align 8, !tbaa !763
  store i64 %8, ptr %4, align 8, !tbaa !764
  br label %20

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #19
  tail call void @_ZNSt8__detail25__return_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EEEEvPT_m(ptr noundef nonnull %7, i64 noundef %8) #18
  invoke void @__cxa_rethrow() #25
          to label %24 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %19 unwind label %21

19:                                               ; preds = %17
  resume { ptr, i32 } %18

20:                                               ; preds = %12, %3
  ret void

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #22
  unreachable

24:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !733 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !763
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat !prof !590 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %8 = icmp slt i64 %7, 15
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 8, !tbaa.struct !624
  %11 = load ptr, ptr %5, align 8, !tbaa.struct !624
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %10, ptr %11, i32 %2) #18
  br label %22

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %13 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %14 = sdiv i64 %13, 2
  %15 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %14) #20
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8, !tbaa.struct !624
  call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %16, ptr %15, i32 %2) #18
  %17 = load ptr, ptr %5, align 8, !tbaa.struct !624
  call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %15, ptr %17, i32 %2) #18
  %18 = load ptr, ptr %4, align 8, !tbaa.struct !624
  %19 = load ptr, ptr %5, align 8, !tbaa.struct !624
  %20 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %21 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %18, ptr %15, ptr %19, i64 noundef %20, i64 noundef %21, i32 %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %22

22:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, i32 %4) local_unnamed_addr #0 comdat !prof !619 {
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  %9 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %10 = add nsw i64 %9, 1
  %11 = sdiv i64 %10, 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %12 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %11) #20
  store ptr %12, ptr %8, align 8
  %13 = icmp sgt i64 %11, %3
  %14 = load ptr, ptr %6, align 8
  br i1 %13, label %15, label %17, !prof !759

15:                                               ; preds = %5
  call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %14, ptr %12, ptr noundef %2, i64 noundef %3, i32 %4) #18
  %16 = load ptr, ptr %7, align 8, !tbaa.struct !624
  call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %12, ptr %16, ptr noundef %2, i64 noundef %3, i32 %4) #18
  br label %19

17:                                               ; preds = %5
  call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %14, ptr %12, ptr noundef %2, i32 %4) #18
  %18 = load ptr, ptr %7, align 8, !tbaa.struct !624
  call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %12, ptr %18, ptr noundef %2, i32 %4) #18
  br label %19

19:                                               ; preds = %17, %15
  %20 = load ptr, ptr %6, align 8, !tbaa.struct !624
  %21 = load ptr, ptr %7, align 8, !tbaa.struct !624
  %22 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %23 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %20, ptr %12, ptr %21, i64 noundef %22, i64 noundef %23, ptr noundef %2, i64 noundef %3, i32 %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !619 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !764
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !619 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !763
  %4 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !764
  %6 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %3, i64 %5
  invoke void @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_(ptr noundef %3, ptr noundef %6) #18
          to label %7 unwind label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !763
  %9 = load i64, ptr %4, align 8, !tbaa !764
  tail call void @_ZNSt8__detail25__return_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EEEEvPT_m(ptr noundef %8, i64 noundef %9) #18
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl(i64 noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !619 {
  %2 = alloca %"struct.std::pair.23", align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = icmp sgt i64 %0, 384307168202282325
  br i1 %7, label %10, label %8, !prof !759

8:                                                ; preds = %1
  %9 = icmp sgt i64 %0, 0
  br i1 %9, label %10, label %27, !prof !765

10:                                               ; preds = %1, %8
  %11 = phi i64 [ %0, %8 ], [ 384307168202282325, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %12 = mul i64 %11, 24
  %13 = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26
  store ptr %13, ptr %4, align 8, !tbaa !559
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %25, !prof !620

15:                                               ; preds = %21
  %16 = add nuw nsw i64 %22, 1
  %17 = lshr i64 %16, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %18 = mul i64 %17, 24
  %19 = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %18, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26
  store ptr %19, ptr %4, align 8, !tbaa !559
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25, !prof !766

21:                                               ; preds = %10, %15
  %22 = phi i64 [ %17, %15 ], [ %11, %10 ]
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %24, label %15

24:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %27

25:                                               ; preds = %15, %10
  %26 = phi i64 [ %11, %10 ], [ %17, %15 ]
  store i64 %26, ptr %3, align 8, !tbaa !714
  call void @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IRS7_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %28, !llvm.loop !767

27:                                               ; preds = %24, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !543
  call void @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IS7_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %28

28:                                               ; preds = %25, %27
  %29 = load ptr, ptr %2, align 8
  %30 = insertvalue { ptr, i64 } poison, ptr %29, 0
  %31 = getelementptr inbounds { ptr, i64 }, ptr %2, i64 0, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = insertvalue { ptr, i64 } %30, i64 %32, 1
  ret { ptr, i64 } %33
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt29__uninitialized_construct_bufIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !619 {
  tail call void @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef %1, ptr %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8__detail25__return_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EEEEvPT_m(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat !prof !619 {
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind optsize allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IRS7_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 !prof !619 {
  %4 = load ptr, ptr %1, align 8, !tbaa !559
  store ptr %4, ptr %0, align 8, !tbaa !768
  %5 = getelementptr inbounds %"struct.std::pair.23", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %2, align 8, !tbaa !714
  store i64 %6, ptr %5, align 8, !tbaa !770
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IS7_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 comdat align 2 !prof !590 {
  %4 = load ptr, ptr %1, align 8, !tbaa !559
  store ptr %4, ptr %0, align 8, !tbaa !768
  %5 = getelementptr inbounds %"struct.std::pair.23", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %2, align 4, !tbaa !543
  %7 = sext i32 %6 to i64
  store i64 %7, ptr %5, align 8, !tbaa !770
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !619 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %28, label %6, !prof !759

6:                                                ; preds = %3
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @_ZSt10_ConstructIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEJS6_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #18
  %8 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %0, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %21, label %10, !prof !620

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %6 ]
  %12 = phi ptr [ %13, %10 ], [ %0, %6 ]
  call void @_ZSt10_ConstructIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEJS6_EEvPT_DpOT0_(ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(24) %12) #18
  %13 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 1
  %14 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %11, i64 1
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %21, label %10, !prof !771, !llvm.loop !772

16:                                               ; preds = %21
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = call ptr @__cxa_begin_catch(ptr %18) #19
  invoke void @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_(ptr noundef %0, ptr noundef nonnull %1) #18
          to label %20 unwind label %25

20:                                               ; preds = %16
  invoke void @__cxa_rethrow() #25
          to label %32 unwind label %25

21:                                               ; preds = %10, %6
  %22 = phi ptr [ %0, %6 ], [ %13, %10 ]
  %23 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %24 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %22) #18
          to label %28 unwind label %16

25:                                               ; preds = %20, %16
  %26 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %27 unwind label %29

27:                                               ; preds = %25
  resume { ptr, i32 } %26

28:                                               ; preds = %21, %3
  ret void

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  call void @__clang_call_terminate(ptr %31) #22
  unreachable

32:                                               ; preds = %20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEJS6_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat !prof !773 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !774 {
  %3 = load i32, ptr %1, align 8, !tbaa !738
  store i32 %3, ptr %0, align 8, !tbaa !738
  %4 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !prof !774 {
  %3 = load i32, ptr %1, align 8, !tbaa !742
  store i32 %3, ptr %0, align 8, !tbaa !742
  %4 = getelementptr inbounds %"struct.boost::tuples::cons.19", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.boost::tuples::cons.19", ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !774 {
  %3 = load ptr, ptr %1, align 8, !tbaa !743
  store ptr %3, ptr %0, align 8, !tbaa !743
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat !prof !775 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %8 = alloca %"class.boost::tuples::tuple", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %9, label %33, label %10, !prof !776

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %11 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #20
  store ptr %11, ptr %7, align 8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %12, label %14, label %13, !prof !777

13:                                               ; preds = %30, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %33

14:                                               ; preds = %10, %30
  %15 = load ptr, ptr %7, align 8, !tbaa.struct !624
  %16 = load ptr, ptr %4, align 8, !tbaa.struct !624
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr %15, ptr %16) #18
  br i1 %17, label %18, label %26, !prof !778

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  %19 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false)
  %20 = load ptr, ptr %4, align 8, !tbaa.struct !624
  %21 = load ptr, ptr %7, align 8, !tbaa.struct !624
  %22 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 1) #20
  %23 = call ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %20, ptr %21, ptr %22) #18
  %24 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %25 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %8) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  br label %30

26:                                               ; preds = %14
  %27 = load ptr, ptr %7, align 8, !tbaa.struct !624
  %28 = load i32, ptr %6, align 4
  %29 = call i32 @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %28) #18
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_(ptr %27, i32 %29) #18
  br label %30

30:                                               ; preds = %18, %26
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  %32 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %32, label %14, label %13, !prof !779, !llvm.loop !780

33:                                               ; preds = %3, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !781 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !634
  %6 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !559
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, i32 %5) local_unnamed_addr #0 comdat !prof !590 {
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store i32 %5, ptr %7, align 4
  %10 = icmp eq i64 %3, 0
  %11 = icmp eq i64 %4, 0
  %12 = or i1 %10, %11
  br i1 %12, label %45, label %13

13:                                               ; preds = %6
  %14 = add nsw i64 %4, %3
  %15 = icmp eq i64 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr %1, ptr %0) #18
  br i1 %17, label %18, label %45

18:                                               ; preds = %16
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %0, ptr %1) #18
  br label %45

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  store ptr %0, ptr %8, align 8, !tbaa.struct !624
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  store ptr %1, ptr %9, align 8, !tbaa.struct !624
  %20 = icmp sgt i64 %3, %4
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = sdiv i64 %3, 2
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %22) #18
  %23 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %24 = call i32 @_ZN9__gnu_cxx5__ops15__iter_comp_valI8NodeCompEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %5) #18
  %25 = call ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i32 %24) #18
  store ptr %25, ptr %9, align 8, !tbaa.struct !624
  %26 = call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %1, ptr %25) #18
  %27 = load ptr, ptr %8, align 8, !tbaa.struct !624
  br label %35

28:                                               ; preds = %19
  %29 = sdiv i64 %4, 2
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %29) #18
  %30 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %31 = call i32 @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %5) #18
  %32 = call ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %30, i32 %31) #18
  store ptr %32, ptr %8, align 8, !tbaa.struct !624
  %33 = call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %0, ptr %32) #18
  %34 = load ptr, ptr %9, align 8, !tbaa.struct !624
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi ptr [ %25, %21 ], [ %34, %28 ]
  %37 = phi ptr [ %27, %21 ], [ %32, %28 ]
  %38 = phi i64 [ %26, %21 ], [ %29, %28 ]
  %39 = phi i64 [ %22, %21 ], [ %33, %28 ]
  %40 = call ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_(ptr %37, ptr %1, ptr %36) #18
  %41 = load ptr, ptr %8, align 8, !tbaa.struct !624
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %0, ptr %41, ptr %40, i64 noundef %39, i64 noundef %38, i32 %5) #18
  %42 = load ptr, ptr %9, align 8, !tbaa.struct !624
  %43 = sub nsw i64 %3, %39
  %44 = sub nsw i64 %4, %38
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %40, ptr %42, ptr %2, i64 noundef %43, i64 noundef %44, i32 %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %45

45:                                               ; preds = %16, %18, %6, %35
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !782 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %6 = alloca %"class.boost::tuples::tuple", align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %8 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %9 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %6, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %8) #18
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !783 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %1) #18
  %6 = tail call ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_(ptr %4, ptr %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_(ptr %0, i32 %1) local_unnamed_addr #0 comdat !prof !784 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 4
  %5 = alloca %"class.boost::tuples::tuple", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %8 = load i64, ptr %3, align 8, !tbaa !559
  store i64 %8, ptr %6, align 8, !tbaa !559
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !624
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %10) #18
  br i1 %11, label %12, label %20, !prof !785

12:                                               ; preds = %2, %12
  %13 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %14 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %15 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %13) #18
  %16 = load i64, ptr %6, align 8, !tbaa !559
  store i64 %16, ptr %3, align 8, !tbaa !559
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %18 = load ptr, ptr %6, align 8, !tbaa.struct !624
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %18) #18
  br i1 %19, label %12, label %20, !prof !786, !llvm.loop !787

20:                                               ; preds = %12, %2
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %22 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local i32 @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %0) local_unnamed_addr #0 comdat !prof !784 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 4
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store i32 %0, ptr %3, align 4
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  %4 = load i32, ptr %2, align 4
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef byval(%"class.boost::tuples::tuple") align 8 %1, ptr noundef byval(%"class.boost::tuples::tuple") align 8 %2) local_unnamed_addr #0 comdat align 2 !prof !788 {
  %4 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %5 = load i32, ptr %4, align 4, !tbaa !543
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11, !prof !789

7:                                                ; preds = %3
  %8 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %9 = load i32, ptr %8, align 4, !tbaa !543
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %71, !prof !790

11:                                               ; preds = %7, %3
  %12 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %13 = load i32, ptr %12, align 4, !tbaa !543
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19, !prof !791

15:                                               ; preds = %11
  %16 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %17 = load i32, ptr %16, align 4, !tbaa !543
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %71, !prof !792

19:                                               ; preds = %15, %11
  %20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %21 = load i32, ptr %20, align 4, !tbaa !543
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27, !prof !793

23:                                               ; preds = %19
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %25 = load i32, ptr %24, align 4, !tbaa !543
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %71, label %27, !prof !794

27:                                               ; preds = %23, %19
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %29 = load i32, ptr %28, align 4, !tbaa !543
  %30 = icmp sgt i32 %29, 15
  br i1 %30, label %31, label %65, !prof !795

31:                                               ; preds = %27
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %33 = load i32, ptr %32, align 4, !tbaa !543
  %34 = icmp sgt i32 %33, 15
  br i1 %34, label %35, label %65, !prof !796

35:                                               ; preds = %31
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %37 = load i32, ptr %36, align 4, !tbaa !543
  %38 = shl nsw i32 %37, 1
  %39 = load i32, ptr %0, align 4, !tbaa !632
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %65, !prof !797

41:                                               ; preds = %35
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %43 = load i32, ptr %42, align 4, !tbaa !543
  %44 = shl nsw i32 %43, 1
  %45 = load i32, ptr %0, align 4, !tbaa !632
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %65, !prof !798

47:                                               ; preds = %41
  %48 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %49 = load i32, ptr %48, align 4, !tbaa !543
  %50 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %51 = load i32, ptr %50, align 4, !tbaa !543
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %59, !prof !799

53:                                               ; preds = %47
  %54 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %55 = load i32, ptr %54, align 4, !tbaa !543
  %56 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %57 = load i32, ptr %56, align 4, !tbaa !543
  %58 = icmp sgt i32 %55, %57
  br label %71

59:                                               ; preds = %47
  %60 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %61 = load i32, ptr %60, align 4, !tbaa !543
  %62 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %63 = load i32, ptr %62, align 4, !tbaa !543
  %64 = icmp sgt i32 %61, %63
  br label %71

65:                                               ; preds = %41, %35, %31, %27
  %66 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %67 = load i32, ptr %66, align 4, !tbaa !543
  %68 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %69 = load i32, ptr %68, align 4, !tbaa !543
  %70 = icmp sgt i32 %67, %69
  br label %71

71:                                               ; preds = %65, %59, %53, %23, %15, %7
  %72 = phi i1 [ false, %7 ], [ true, %15 ], [ false, %23 ], [ %58, %53 ], [ %64, %59 ], [ %70, %65 ]
  ret i1 %72
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !800 {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples3getILi1EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !801 {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples3getILi0EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples3getILi1EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat !prof !800 {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !800 {
  %2 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIP7UCTNodeNS0_9null_typeEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIP7UCTNodeNS0_9null_typeEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !800 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples3getILi0EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat !prof !801 {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !801 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !783 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %0) #20
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %1) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %2) #20
  %7 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %0) local_unnamed_addr #2 comdat !prof !802 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !803 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %0) #20
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #20
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !804 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !805 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !559
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !804 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !804 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %19, !prof !806

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 24
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %17, %10 ], [ %9, %8 ]
  %12 = phi ptr [ %15, %10 ], [ %2, %8 ]
  %13 = phi ptr [ %14, %10 ], [ %1, %8 ]
  %14 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %13, i64 -1
  %15 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 -1
  %16 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14) #18
  %17 = add nsw i64 %11, -1
  %18 = icmp ugt i64 %11, 1
  br i1 %18, label %10, label %19, !prof !807, !llvm.loop !808

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %15, %10 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !809 {
  %2 = load ptr, ptr %0, align 8, !tbaa !634
  %3 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %2, i64 -1
  store ptr %3, ptr %0, align 8, !tbaa !634
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !810 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %5 = alloca %"class.boost::tuples::tuple", align 8
  store ptr %2, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %6 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %7 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %5, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %6) #18
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 comdat align 2 !prof !784 {
  %3 = load i32, ptr %1, align 4
  store i32 %3, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !811 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %6 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @_ZSt4swapIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #0 comdat !prof !590 {
  tail call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  tail call void @_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3) local_unnamed_addr #0 comdat !prof !590 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 4
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %5, align 8
  store i32 %3, ptr %6, align 4
  %8 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %0, ptr %1) #18
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4, %21
  %11 = phi i64 [ %22, %21 ], [ %8, %4 ]
  %12 = lshr i64 %11, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %13 = load i64, ptr %5, align 8, !tbaa !559
  store i64 %13, ptr %7, align 8, !tbaa !559
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %12) #18
  %14 = load ptr, ptr %7, align 8, !tbaa.struct !624
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr %14, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !559
  store i64 %17, ptr %5, align 8, !tbaa !559
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %19 = xor i64 %12, -1
  %20 = add nsw i64 %11, %19
  br label %21

21:                                               ; preds = %10, %16
  %22 = phi i64 [ %20, %16 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %10, label %24, !llvm.loop !812

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 8, !tbaa.struct !624
  br label %26

26:                                               ; preds = %24, %4
  %27 = phi ptr [ %25, %24 ], [ %0, %4 ]
  ret ptr %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local i32 @_ZN9__gnu_cxx5__ops15__iter_comp_valI8NodeCompEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %0) local_unnamed_addr #0 comdat !prof !590 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 4
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store i32 %0, ptr %3, align 4
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  %4 = load i32, ptr %2, align 4
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !590 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %3, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_St26random_access_iterator_tag(ptr %0, ptr %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3) local_unnamed_addr #0 comdat !prof !590 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 4
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %5, align 8
  store i32 %3, ptr %6, align 4
  %8 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %0, ptr %1) #18
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4, %21
  %11 = phi i64 [ %22, %21 ], [ %8, %4 ]
  %12 = lshr i64 %11, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %13 = load i64, ptr %5, align 8, !tbaa !559
  store i64 %13, ptr %7, align 8, !tbaa !559
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %12) #18
  %14 = load ptr, ptr %7, align 8, !tbaa.struct !624
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIKN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %14) #18
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !559
  store i64 %17, ptr %5, align 8, !tbaa !559
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %19 = xor i64 %12, -1
  %20 = add nsw i64 %11, %19
  br label %21

21:                                               ; preds = %10, %16
  %22 = phi i64 [ %20, %16 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %10, label %24, !llvm.loop !813

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 8, !tbaa.struct !624
  br label %26

26:                                               ; preds = %24, %4
  %27 = phi ptr [ %25, %24 ], [ %0, %4 ]
  ret ptr %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !590 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %4, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat !prof !811 {
  %3 = alloca %"class.boost::tuples::tuple", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %4 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat !prof !590 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !619 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !814 {
  %3 = load ptr, ptr %0, align 8, !tbaa !634
  %4 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %3, i64 %1
  store ptr %4, ptr %0, align 8, !tbaa !634
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !590 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %6 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %5, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %2) #18
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 comdat align 2 !prof !590 {
  %3 = load i32, ptr %1, align 4
  store i32 %3, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #2 comdat !prof !590 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  ret i64 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIKN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !590 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %5 = alloca %"class.boost::tuples::tuple", align 8
  store ptr %2, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %6 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %7 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %5, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %6) #18
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !590 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %12, label %95, label %13

13:                                               ; preds = %3
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr %4, align 8, !tbaa.struct !624
  br label %95

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %18 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  store i64 %18, ptr %7, align 8, !tbaa !714
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %19 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  store i64 %19, ptr %8, align 8, !tbaa !714
  %20 = sub nsw i64 %18, %19
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load ptr, ptr %4, align 8, !tbaa.struct !624
  %24 = load ptr, ptr %5, align 8
  %25 = call ptr @_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %23, ptr %24, ptr %24) #18
  %26 = load ptr, ptr %5, align 8, !tbaa.struct !624
  br label %93

27:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %28 = load i64, ptr %4, align 8, !tbaa !559
  store i64 %28, ptr %9, align 8, !tbaa !559
  %29 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %30 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %29) #20
  br label %31

31:                                               ; preds = %87, %27
  %32 = phi i64 [ %18, %27 ], [ %88, %87 ]
  %33 = phi i64 [ %19, %27 ], [ %89, %87 ]
  %34 = sub nsw i64 %32, %33
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %37 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %33) #20
  store ptr %37, ptr %10, align 8
  %38 = load i64, ptr %7, align 8, !tbaa !714
  %39 = load i64, ptr %8, align 8, !tbaa !714
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %46, %36
  %42 = phi i64 [ %38, %36 ], [ %53, %46 ]
  %43 = phi i64 [ %39, %36 ], [ %54, %46 ]
  %44 = srem i64 %42, %43
  store i64 %44, ptr %7, align 8, !tbaa !714
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %90, label %57

46:                                               ; preds = %36, %46
  %47 = phi i64 [ %52, %46 ], [ 0, %36 ]
  %48 = load ptr, ptr %9, align 8, !tbaa.struct !624
  %49 = load ptr, ptr %10, align 8, !tbaa.struct !624
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %48, ptr %49) #18
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  %52 = add nuw nsw i64 %47, 1
  %53 = load i64, ptr %7, align 8, !tbaa !714
  %54 = load i64, ptr %8, align 8, !tbaa !714
  %55 = sub nsw i64 %53, %54
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %46, label %41, !llvm.loop !815

57:                                               ; preds = %41
  call void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %58 = load i64, ptr %7, align 8, !tbaa !714
  %59 = load i64, ptr %8, align 8, !tbaa !714
  %60 = sub nsw i64 %58, %59
  store i64 %60, ptr %8, align 8, !tbaa !714
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %87

61:                                               ; preds = %31
  store i64 %34, ptr %8, align 8, !tbaa !714
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %62 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %32) #20
  store ptr %62, ptr %11, align 8
  %63 = load i64, ptr %8, align 8, !tbaa !714
  %64 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %63) #20
  store ptr %64, ptr %9, align 8, !tbaa.struct !624
  %65 = load i64, ptr %7, align 8, !tbaa !714
  %66 = load i64, ptr %8, align 8, !tbaa !714
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %73, %61
  %69 = phi i64 [ %65, %61 ], [ %80, %73 ]
  %70 = phi i64 [ %66, %61 ], [ %81, %73 ]
  %71 = srem i64 %69, %70
  store i64 %71, ptr %7, align 8, !tbaa !714
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %91, label %84

73:                                               ; preds = %61, %73
  %74 = phi i64 [ %79, %73 ], [ 0, %61 ]
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  %77 = load ptr, ptr %9, align 8, !tbaa.struct !624
  %78 = load ptr, ptr %11, align 8, !tbaa.struct !624
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %77, ptr %78) #18
  %79 = add nuw nsw i64 %74, 1
  %80 = load i64, ptr %7, align 8, !tbaa !714
  %81 = load i64, ptr %8, align 8, !tbaa !714
  %82 = sub nsw i64 %80, %81
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %73, label %68, !llvm.loop !816

84:                                               ; preds = %68
  call void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %85 = load i64, ptr %8, align 8, !tbaa !714
  %86 = load i64, ptr %7, align 8, !tbaa !714
  br label %87

87:                                               ; preds = %84, %57
  %88 = phi i64 [ %86, %84 ], [ %58, %57 ]
  %89 = phi i64 [ %85, %84 ], [ %60, %57 ]
  br label %31, !llvm.loop !817

90:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %92

91:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br label %92

92:                                               ; preds = %91, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %93

93:                                               ; preds = %92, %22
  %94 = phi ptr [ %26, %22 ], [ %30, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %95

95:                                               ; preds = %3, %93, %15
  %96 = phi ptr [ %16, %15 ], [ %94, %93 ], [ %2, %3 ]
  ret ptr %96
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !590 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %7, label %8, label %16

8:                                                ; preds = %3, %8
  %9 = load ptr, ptr %4, align 8, !tbaa.struct !624
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !624
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %9, ptr %10) #18
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %13, label %8, label %14, !llvm.loop !818

14:                                               ; preds = %8
  %15 = load ptr, ptr %6, align 8, !tbaa.struct !624
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi ptr [ %15, %14 ], [ %2, %3 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !590 {
  %3 = load i64, ptr %0, align 8, !tbaa !714
  %4 = load i64, ptr %1, align 8, !tbaa !714
  store i64 %4, ptr %0, align 8, !tbaa !714
  store i64 %3, ptr %1, align 8, !tbaa !714
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %0, ptr %1, ptr noundef %2, i32 %3) local_unnamed_addr #0 comdat !prof !733 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %8 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %2, i64 %7
  %9 = load ptr, ptr %5, align 8, !tbaa.struct !624
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !624
  call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %9, ptr %10, i64 noundef 7, i32 %3) #18
  %11 = icmp sgt i64 %7, 7
  br i1 %11, label %12, label %20, !prof !819

12:                                               ; preds = %4, %12
  %13 = phi i64 [ %18, %12 ], [ 7, %4 ]
  %14 = load ptr, ptr %5, align 8, !tbaa.struct !624
  %15 = load ptr, ptr %6, align 8, !tbaa.struct !624
  call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %14, ptr %15, ptr noundef %2, i64 noundef %13, i32 %3) #18
  %16 = shl nuw nsw i64 %13, 1
  %17 = load ptr, ptr %5, align 8, !tbaa.struct !624
  call void @_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr noundef %2, ptr noundef nonnull %8, ptr %17, i64 noundef %16, i32 %3) #18
  %18 = shl nsw i64 %13, 2
  %19 = icmp slt i64 %18, %7
  br i1 %19, label %12, label %20, !prof !820, !llvm.loop !821

20:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 %7) local_unnamed_addr #0 comdat !prof !619 {
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %11 = icmp sgt i64 %3, %4
  %12 = icmp sgt i64 %3, %6
  %13 = or i1 %11, %12
  br i1 %13, label %16, label %14, !prof !822

14:                                               ; preds = %8
  %15 = tail call noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %5) #18
  tail call void @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr noundef %5, ptr noundef %15, ptr %1, ptr %2, ptr %0, i32 %7) #18
  br label %45

16:                                               ; preds = %8
  %17 = icmp sgt i64 %4, %6
  br i1 %17, label %20, label %18, !prof !823

18:                                               ; preds = %16
  %19 = tail call noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %1, ptr %2, ptr noundef %5) #18
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %19, ptr %2, i32 %7) #18
  br label %45

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  store ptr %0, ptr %9, align 8, !tbaa.struct !624
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  store ptr %1, ptr %10, align 8, !tbaa.struct !624
  br i1 %11, label %21, label %28

21:                                               ; preds = %20
  %22 = sdiv i64 %3, 2
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %22) #18
  %23 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %24 = call i32 @_ZN9__gnu_cxx5__ops15__iter_comp_valI8NodeCompEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %7) #18
  %25 = call ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i32 %24) #18
  store ptr %25, ptr %10, align 8, !tbaa.struct !624
  %26 = call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %1, ptr %25) #18
  %27 = load ptr, ptr %9, align 8, !tbaa.struct !624
  br label %35

28:                                               ; preds = %20
  %29 = sdiv i64 %4, 2
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %29) #18
  %30 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  %31 = call i32 @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %7) #18
  %32 = call ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %30, i32 %31) #18
  store ptr %32, ptr %9, align 8, !tbaa.struct !624
  %33 = call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %0, ptr %32) #18
  %34 = load ptr, ptr %10, align 8, !tbaa.struct !624
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi ptr [ %25, %21 ], [ %34, %28 ]
  %37 = phi ptr [ %27, %21 ], [ %32, %28 ]
  %38 = phi i64 [ %26, %21 ], [ %29, %28 ]
  %39 = phi i64 [ %22, %21 ], [ %33, %28 ]
  %40 = sub nsw i64 %3, %39
  %41 = call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_(ptr %37, ptr %1, ptr %36, i64 noundef %40, i64 noundef %38, ptr noundef %5, i64 noundef %6) #18
  %42 = load ptr, ptr %9, align 8, !tbaa.struct !624
  call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %0, ptr %42, ptr %41, i64 noundef %39, i64 noundef %38, ptr noundef %5, i64 noundef %6, i32 %7) #18
  %43 = load ptr, ptr %10, align 8, !tbaa.struct !624
  %44 = sub nsw i64 %4, %38
  call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %41, ptr %43, ptr %2, i64 noundef %40, i64 noundef %44, ptr noundef %5, i64 noundef %6, i32 %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %45

45:                                               ; preds = %18, %35, %14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2, i32 %3) local_unnamed_addr #0 comdat !prof !733 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %8 = icmp slt i64 %7, %2
  br i1 %8, label %15, label %9, !prof !824

9:                                                ; preds = %4, %9
  %10 = load ptr, ptr %5, align 8, !tbaa.struct !624
  %11 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %2) #20
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %10, ptr %11, i32 %3) #18
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %2) #20
  %13 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %14 = icmp slt i64 %13, %2
  br i1 %14, label %15, label %9, !prof !825, !llvm.loop !826

15:                                               ; preds = %9, %4
  %16 = load ptr, ptr %5, align 8, !tbaa.struct !624
  %17 = load ptr, ptr %6, align 8, !tbaa.struct !624
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %16, ptr %17, i32 %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, i32 %4) local_unnamed_addr #0 comdat !prof !827 {
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %3, ptr %8, align 8, !tbaa !714
  %10 = shl nsw i64 %3, 1
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %12 = icmp slt i64 %11, %10
  br i1 %12, label %23, label %13, !prof !828

13:                                               ; preds = %5, %13
  %14 = phi ptr [ %19, %13 ], [ %2, %5 ]
  %15 = load ptr, ptr %6, align 8, !tbaa.struct !624
  %16 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %3) #20
  %17 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %3) #20
  %18 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %10) #20
  %19 = call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr %15, ptr %16, ptr %17, ptr %18, ptr noundef %14, i32 %4) #18
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %10) #20
  %21 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %22 = icmp slt i64 %21, %10
  br i1 %22, label %23, label %13, !prof !829, !llvm.loop !830

23:                                               ; preds = %13, %5
  %24 = phi ptr [ %2, %5 ], [ %19, %13 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %25 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  store i64 %25, ptr %9, align 8, !tbaa !714
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIlERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  %27 = load i64, ptr %26, align 8, !tbaa !714
  store i64 %27, ptr %8, align 8, !tbaa !714
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  %28 = load ptr, ptr %6, align 8, !tbaa.struct !624
  %29 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %27) #20
  %30 = load i64, ptr %8, align 8, !tbaa !714
  %31 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %30) #20
  %32 = load ptr, ptr %7, align 8, !tbaa.struct !624
  %33 = call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr %28, ptr %29, ptr %31, ptr %32, ptr noundef %24, i32 %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, i32 %4) local_unnamed_addr #0 comdat !prof !827 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %3, ptr %6, align 8, !tbaa !714
  %8 = shl nsw i64 %3, 1
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  %13 = icmp slt i64 %12, %8
  br i1 %13, label %24, label %14, !prof !831

14:                                               ; preds = %5, %14
  %15 = phi ptr [ %19, %14 ], [ %2, %5 ]
  %16 = phi ptr [ %18, %14 ], [ %0, %5 ]
  %17 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %16, i64 %3
  %18 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %16, i64 %8
  %19 = tail call ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr noundef %16, ptr noundef %17, ptr noundef %17, ptr noundef %18, ptr %15, i32 %4) #18
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %9, %20
  %22 = sdiv exact i64 %21, 24
  %23 = icmp slt i64 %22, %8
  br i1 %23, label %24, label %14, !prof !832, !llvm.loop !833

24:                                               ; preds = %14, %5
  %25 = phi ptr [ %0, %5 ], [ %18, %14 ]
  %26 = phi ptr [ %2, %5 ], [ %19, %14 ]
  %27 = phi i64 [ %12, %5 ], [ %22, %14 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store i64 %27, ptr %7, align 8, !tbaa !714
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIlERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %29 = load i64, ptr %28, align 8, !tbaa !714
  store i64 %29, ptr %6, align 8, !tbaa !714
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %30 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %25, i64 %29
  %31 = call ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr noundef %25, ptr noundef %30, ptr noundef %30, ptr noundef %1, ptr %26, i32 %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef %4, i32 %5) local_unnamed_addr #0 comdat !prof !834 {
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store i32 %5, ptr %11, align 4
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br i1 %12, label %13, label %30, !prof !835

13:                                               ; preds = %6, %16
  %14 = phi ptr [ %24, %16 ], [ %4, %6 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  br i1 %15, label %16, label %26, !prof !836

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 8, !tbaa.struct !624
  %18 = load ptr, ptr %7, align 8, !tbaa.struct !624
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr %17, ptr %18) #18
  %20 = select i1 %19, ptr %9, ptr %7, !prof !837
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #20
  %22 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %21) #18
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #20
  %24 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %14, i64 1
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br i1 %25, label %13, label %26, !prof !838, !llvm.loop !839

26:                                               ; preds = %16, %13
  %27 = phi ptr [ %14, %13 ], [ %24, %16 ]
  %28 = load ptr, ptr %9, align 8, !tbaa.struct !624
  %29 = load ptr, ptr %10, align 8, !tbaa.struct !624
  br label %30

30:                                               ; preds = %26, %6
  %31 = phi ptr [ %3, %6 ], [ %29, %26 ]
  %32 = phi ptr [ %2, %6 ], [ %28, %26 ]
  %33 = phi ptr [ %4, %6 ], [ %27, %26 ]
  %34 = load ptr, ptr %7, align 8, !tbaa.struct !624
  %35 = load ptr, ptr %8, align 8, !tbaa.struct !624
  %36 = call noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %34, ptr %35, ptr noundef %33) #18
  %37 = call noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %32, ptr %31, ptr noundef %36) #18
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIlERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !840 {
  %3 = load i64, ptr %1, align 8, !tbaa !714
  %4 = load i64, ptr %0, align 8, !tbaa !714
  %5 = icmp slt i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !841
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !842 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !842 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !559
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !842 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !843 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !843 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !843 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10, !prof !844

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 24
  br label %12

10:                                               ; preds = %12, %3
  %11 = phi ptr [ %2, %3 ], [ %18, %12 ]
  ret ptr %11

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %19, %12 ], [ %9, %8 ]
  %14 = phi ptr [ %18, %12 ], [ %2, %8 ]
  %15 = phi ptr [ %17, %12 ], [ %0, %8 ]
  %16 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15) #18
  %17 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %15, i64 1
  %18 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %14, i64 1
  %19 = add nsw i64 %13, -1
  %20 = icmp ugt i64 %13, 1
  br i1 %20, label %12, label %10, !prof !845, !llvm.loop !846
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat !prof !847 {
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store ptr %4, ptr %7, align 8
  store i32 %5, ptr %8, align 4
  %9 = icmp ne ptr %0, %1
  %10 = icmp ne ptr %2, %3
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %32, !prof !848

12:                                               ; preds = %6, %23
  %13 = phi ptr [ %25, %23 ], [ %0, %6 ]
  %14 = phi ptr [ %24, %23 ], [ %2, %6 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EESC_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef %14, ptr noundef %13) #18
  %16 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br i1 %15, label %17, label %20, !prof !849

17:                                               ; preds = %12
  %18 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %14) #18
  %19 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %14, i64 1
  br label %23

20:                                               ; preds = %12
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %13) #18
  %22 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %13, i64 1
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %19, %17 ], [ %14, %20 ]
  %25 = phi ptr [ %13, %17 ], [ %22, %20 ]
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  %27 = icmp ne ptr %25, %1
  %28 = icmp ne ptr %24, %3
  %29 = select i1 %27, i1 %28, i1 false, !prof !850
  br i1 %29, label %12, label %30, !prof !851, !llvm.loop !852

30:                                               ; preds = %23
  %31 = load ptr, ptr %7, align 8, !tbaa.struct !624
  br label %32

32:                                               ; preds = %30, %6
  %33 = phi ptr [ %4, %6 ], [ %31, %30 ]
  %34 = phi ptr [ %2, %6 ], [ %24, %30 ]
  %35 = phi ptr [ %0, %6 ], [ %25, %30 ]
  %36 = call ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %35, ptr noundef %1, ptr %33) #18
  %37 = call ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %34, ptr noundef %3, ptr %36) #18
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EESC_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !853 {
  %4 = tail call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %1, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %2) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !854 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %1) #18
  %6 = tail call ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_(ptr noundef %4, ptr noundef %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !854 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) #20
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %1) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %2) #20
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !855 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat !prof !856 {
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store ptr %4, ptr %9, align 8
  store i32 %5, ptr %10, align 4
  %11 = icmp eq ptr %0, %1
  br i1 %11, label %34, label %12, !prof !857

12:                                               ; preds = %6, %27
  %13 = phi ptr [ %28, %27 ], [ %0, %6 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br i1 %14, label %15, label %31, !prof !858

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 8, !tbaa.struct !624
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr %16, ptr noundef %13) #18
  br i1 %17, label %18, label %23, !prof !859

18:                                               ; preds = %15
  %19 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  %20 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %19) #18
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br label %27

23:                                               ; preds = %15
  %24 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %25 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %13) #18
  %26 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %13, i64 1
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi ptr [ %13, %18 ], [ %26, %23 ]
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %30 = icmp eq ptr %28, %1
  br i1 %30, label %34, label %12, !prof !860, !llvm.loop !861

31:                                               ; preds = %12
  %32 = load ptr, ptr %9, align 8, !tbaa.struct !624
  %33 = call ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %13, ptr noundef %1, ptr %32) #18
  br label %34

34:                                               ; preds = %27, %6, %31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat !prof !862 {
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %4, ptr %9, align 8
  store i32 %5, ptr %10, align 4
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br i1 %11, label %12, label %14, !prof !823

12:                                               ; preds = %6
  %13 = call ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %2, ptr noundef %3, ptr %4) #18
  br label %40

14:                                               ; preds = %6
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %40, label %16, !prof !863

16:                                               ; preds = %14
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %18

18:                                               ; preds = %35, %16
  %19 = phi ptr [ %3, %16 ], [ %20, %35 ]
  %20 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %19, i64 -1
  br label %21

21:                                               ; preds = %18, %33
  %22 = load ptr, ptr %8, align 8, !tbaa.struct !624
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull %20, ptr %22) #18
  br i1 %23, label %24, label %35, !prof !864

24:                                               ; preds = %21
  %25 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %27 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #20
  %28 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %25) #18
  %29 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br i1 %29, label %30, label %33, !prof !865

30:                                               ; preds = %24
  %31 = load ptr, ptr %9, align 8, !tbaa.struct !624
  %32 = call ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %2, ptr noundef nonnull %19, ptr %31) #18
  br label %40

33:                                               ; preds = %24
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %21, !llvm.loop !866

35:                                               ; preds = %21
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %37 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #20
  %38 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %20) #18
  %39 = icmp eq ptr %20, %2
  br i1 %39, label %40, label %18, !prof !867, !llvm.loop !866

40:                                               ; preds = %35, %14, %30, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat !prof !590 {
  %8 = icmp sle i64 %3, %4
  %9 = icmp sgt i64 %4, %6
  %10 = or i1 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = icmp eq i64 %4, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %11
  %14 = tail call noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %1, ptr %2, ptr noundef %5) #18
  %15 = tail call ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %0, ptr %1, ptr %2) #18
  %16 = tail call ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %5, ptr noundef %14, ptr %0) #18
  br label %27

17:                                               ; preds = %7
  %18 = icmp sgt i64 %3, %6
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = icmp eq i64 %3, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = tail call noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %5) #18
  %23 = tail call ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %1, ptr %2, ptr %0) #18
  %24 = tail call ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %5, ptr noundef %22, ptr %2) #18
  br label %27

25:                                               ; preds = %17
  %26 = tail call ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_(ptr %0, ptr %1, ptr %2) #18
  br label %27

27:                                               ; preds = %19, %11, %25, %21, %13
  %28 = phi ptr [ %16, %13 ], [ %24, %21 ], [ %26, %25 ], [ %0, %11 ], [ %2, %19 ]
  ret ptr %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !868 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %6 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %5, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %2) #18
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !869 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %1) #18
  %6 = tail call ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_(ptr noundef %4, ptr noundef %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !870 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %5 = alloca %"class.boost::tuples::tuple", align 8
  store ptr %2, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %6 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %7 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %5, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %6) #18
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !869 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) #20
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %1) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %2) #20
  %7 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !590 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %1) #18
  %6 = tail call ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_(ptr %4, ptr %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !590 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %0) #20
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %1) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %2) #20
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEC2ES2_(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 %1) unnamed_addr #2 comdat align 2 !prof !619 {
  store i32 %1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !619 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %5, label %15, label %6, !prof !759

6:                                                ; preds = %2
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %8, label %9, label %15, !prof !625

9:                                                ; preds = %6, %9
  %10 = load ptr, ptr %3, align 8, !tbaa.struct !624
  %11 = load ptr, ptr %4, align 8, !tbaa.struct !624
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %10, ptr %11) #18
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %14, label %9, label %15, !prof !871, !llvm.loop !872

15:                                               ; preds = %9, %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !873 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !559
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !559
  %7 = icmp ult ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples3getILi2EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE14non_const_typeERSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat !prof !628 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi2EE3getIRP7UCTNodeiNS0_4consIiNS8_IS6_NS0_9null_typeEEEEEEET_RNS8_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi2EE3getIRP7UCTNodeiNS0_4consIiNS8_IS6_NS0_9null_typeEEEEEEET_RNS8_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !628 {
  %2 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRP7UCTNodeiNS0_4consIS6_NS0_9null_typeEEEEET_RNS8_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRP7UCTNodeiNS0_4consIS6_NS0_9null_typeEEEEET_RNS8_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !628 {
  %2 = getelementptr inbounds %"struct.boost::tuples::cons.19", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRP7UCTNodeS6_NS0_9null_typeEEET_RNS0_4consIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRP7UCTNodeS6_NS0_9null_typeEEET_RNS0_4consIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !628 {
  ret ptr %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { builtin nounwind optsize }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin optsize allocsize(0) }
attributes #24 = { noreturn optsize }
attributes #25 = { noreturn }
attributes #26 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!501}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 747867958256}
!4 = !{!"MaxCount", i64 115183010216}
!5 = !{!"MaxInternalCount", i64 7835753190}
!6 = !{!"MaxFunctionCount", i64 115183010216}
!7 = !{!"NumCounts", i64 2640}
!8 = !{!"NumFunctions", i64 1541}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 115183010216, i32 1}
!14 = !{i32 100000, i64 115183010216, i32 1}
!15 = !{i32 200000, i64 99995171483, i32 2}
!16 = !{i32 300000, i64 88073131441, i32 3}
!17 = !{i32 400000, i64 88073131441, i32 3}
!18 = !{i32 500000, i64 32030604394, i32 5}
!19 = !{i32 600000, i64 11128423850, i32 9}
!20 = !{i32 700000, i64 5564211925, i32 21}
!21 = !{i32 800000, i64 3688044421, i32 36}
!22 = !{i32 900000, i64 1979964940, i32 64}
!23 = !{i32 950000, i64 877932300, i32 88}
!24 = !{i32 990000, i64 97283944, i32 151}
!25 = !{i32 999000, i64 10252442, i32 368}
!26 = !{i32 999900, i64 1381009, i32 513}
!27 = !{i32 999990, i64 126015, i32 686}
!28 = !{i32 999999, i64 12002, i32 815}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500}
!35 = !{ptr @_ZN7UCTNodeC2Eii, ptr @_ZN3SMP5MutexC1Ev, i64 12331874}
!36 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN7UCTNode9get_mutexEv, i64 12331874}
!37 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 12331874}
!38 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN7UCTNodeD2Ev, i64 12330892}
!39 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZdlPv, i64 12330892}
!40 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN3SMP4LockD1Ev, i64 12331862}
!41 = !{ptr @_ZN7UCTNodeD2Ev, ptr @__clang_call_terminate, i64 12}
!42 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN7UCTNode9get_mutexEv, i64 201906}
!43 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 201906}
!44 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNK7UCTNode12has_childrenEv, i64 201906}
!45 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEEC2Ev, i64 201905}
!46 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastState10get_passesEv, i64 201905}
!47 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEE9push_backEOi, i64 170374}
!48 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN5boost5arrayItLm441EEixEm, i64 12743387}
!49 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastBoard11no_eye_fillEi, i64 12739408}
!50 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastBoard10is_suicideEii, i64 12530877}
!51 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, i64 12157763}
!52 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2Ev, i64 201869}
!53 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 201869}
!54 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE, i64 201869}
!55 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 12526881}
!56 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE, i64 12526881}
!57 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_Znwm, i64 12325070}
!58 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastState11get_to_moveEv, i64 12325058}
!59 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv, i64 48959478}
!60 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN7UCTNodeC2Eii, i64 12325047}
!61 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastBoard18minimum_elib_countEii, i64 24309396}
!62 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN7UCTNode10set_extendEi, i64 1453076}
!63 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZdlPv, i64 24}
!64 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN7UCTNode10link_childEPS_, i64 12325012}
!65 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEppEv, i64 12325012}
!66 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEED2Ev, i64 201905}
!67 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN3SMP4LockD1Ev, i64 201906}
!68 = !{ptr @_ZNSt6vectorIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, i64 202367}
!69 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, i64 67024124}
!70 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 10239256}
!71 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, i64 10239256}
!72 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backEOi, ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, i64 170411}
!73 = !{ptr @_ZNSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 10455771}
!74 = !{ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 201906}
!75 = !{ptr @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 12532810}
!76 = !{ptr @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 12532810}
!77 = !{ptr @_ZNSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 22957086}
!78 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!79 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!80 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!81 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!82 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZNK7UCTNode8get_moveEv, i64 133785}
!83 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7KoStateC2ERKS_, i64 132816}
!84 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7KoState9play_moveEi, i64 132816}
!85 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7KoState7superkoEv, i64 132815}
!86 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7UCTNode12delete_childEPS_, i64 1}
!87 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7KoStateD2Ev, i64 132815}
!88 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN7UCTNode9get_mutexEv, i64 38472780}
!89 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 38472780}
!90 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN7Playout9get_scoreEv, i64 38472780}
!91 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN3SMP4LockD1Ev, i64 38472780}
!92 = !{ptr @_ZN7UCTNode10set_visitsEi, ptr @_ZN7UCTNode9get_mutexEv, i64 561583}
!93 = !{ptr @_ZN7UCTNode10set_visitsEi, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 561583}
!94 = !{ptr @_ZN7UCTNode10set_visitsEi, ptr @_ZN3SMP4LockD1Ev, i64 561583}
!95 = !{ptr @_ZN7UCTNode13set_blackwinsEi, ptr @_ZN7UCTNode9get_mutexEv, i64 561583}
!96 = !{ptr @_ZN7UCTNode13set_blackwinsEi, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 561583}
!97 = !{ptr @_ZN7UCTNode13set_blackwinsEi, ptr @_ZN3SMP4LockD1Ev, i64 561583}
!98 = !{ptr @_ZNK7UCTNode11get_winrateEi, ptr @_ZNK7UCTNode13get_blackwinsEv, i64 1634007751}
!99 = !{ptr @_ZNK7UCTNode11get_winrateEi, ptr @_ZNK7UCTNode10get_visitsEv, i64 1634007751}
!100 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZN7UCTNode5validEv, i64 1964496366}
!101 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZNK7UCTNode14get_ravevisitsEv, i64 1964476314}
!102 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZNK7UCTNode11first_visitEv, i64 1964476313}
!103 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZNK7UCTNode11get_winrateEi, i64 1618243312}
!104 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZNK7UCTNode12get_raverateEv, i64 1964476313}
!105 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZNK7UCTNode10get_visitsEv, i64 1964476313}
!106 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN7UCTNode9get_mutexEv, i64 47163}
!107 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 47163}
!108 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev, i64 47163}
!109 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNK7UCTNode10get_visitsEv, i64 4375509}
!110 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNK7UCTNode11get_winrateEi, i64 3007051}
!111 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN5boost6tuples10make_tupleIiiP7UCTNodeEENS0_6detail17make_tuple_mapperIT_T0_T1_NS0_9null_typeES9_S9_S9_S9_S9_S9_E4typeERKS6_RKS7_RKS8_, i64 4375509}
!112 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE9push_backEOS6_, i64 4375505}
!113 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZSt3maxIiERKT_S2_S2_, i64 4375501}
!114 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv, i64 141465}
!115 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv, i64 4516570}
!116 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN8NodeCompC2Ei, i64 47155}
!117 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEE8NodeCompEvT_SF_T0_, i64 47155}
!118 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_, i64 47155}
!119 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2Ev, i64 47155}
!120 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 4422260}
!121 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEptEv, i64 4375109}
!122 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi2EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE14non_const_typeEv, i64 4375109}
!123 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN7UCTNode10link_childEPS_, i64 4375105}
!124 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 4375105}
!125 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, i64 47163}
!126 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN3SMP4LockD1Ev, i64 47163}
!127 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev, i64 47163}
!128 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE9push_backEOS6_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_, i64 4376367}
!129 = !{ptr @_ZN5boost6tuples10make_tupleIiiP7UCTNodeEENS0_6detail17make_tuple_mapperIT_T0_T1_NS0_9null_typeES9_S9_S9_S9_S9_S9_E4typeERKS6_RKS7_RKS8_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_, i64 4376367}
!130 = !{ptr @_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEE8NodeCompEvT_SF_T0_, ptr @_ZN9__gnu_cxx5__ops16__iter_comp_iterI8NodeCompEENS0_15_Iter_comp_iterIT_EES4_, i64 47163}
!131 = !{ptr @_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEE8NodeCompEvT_SF_T0_, ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, i64 47163}
!132 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_, i64 484913}
!133 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_, i64 9237647}
!134 = !{ptr @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_, ptr @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_, i64 47163}
!135 = !{ptr @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_, ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, i64 47163}
!136 = !{ptr @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 43944900}
!137 = !{ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi2EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE14non_const_typeEv, ptr @_ZN5boost6tuples3getILi2EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE14non_const_typeERSC_, i64 4376367}
!138 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv, i64 47163}
!139 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, ptr @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_EvT_S8_RSaIT0_E, i64 47163}
!140 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, i64 47163}
!141 = !{ptr @_ZN7UCTNode10invalidateEv, ptr @_ZN7UCTNode9get_mutexEv, i64 402}
!142 = !{ptr @_ZN7UCTNode10invalidateEv, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 402}
!143 = !{ptr @_ZN7UCTNode10invalidateEv, ptr @_ZN3SMP4LockD1Ev, i64 402}
!144 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN7Playout9get_scoreEv, i64 32407242}
!145 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZNK7UCTNode8get_moveEv, i64 1979964906}
!146 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN7Playout11passthroughEii, i64 1979964907}
!147 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN7UCTNode9get_mutexEv, i64 337948423}
!148 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 337948423}
!149 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN3SMP4LockD1Ev, i64 337948423}
!150 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, i64 202367}
!151 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSaIiEC2Ev, i64 202367}
!152 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 202367}
!153 = !{ptr @_ZNSaIiEC2Ev, ptr @_ZNSt15__new_allocatorIiEC2Ev, i64 202374}
!154 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE4sizeEv, i64 15449970}
!155 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449970}
!156 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, i64 15449970}
!157 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, i64 15449970}
!158 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15449970}
!159 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE5beginEv, i64 15449955}
!160 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE3endEv, i64 15449955}
!161 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449955}
!162 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, i64 15449955}
!163 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 15}
!164 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 18212926}
!165 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 18212926}
!166 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 18212909}
!167 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!168 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 7788864}
!169 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788864}
!170 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, i64 7788864}
!171 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7788864}
!172 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7788864}
!173 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 7788857}
!174 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 7788857}
!175 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788857}
!176 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, i64 7788857}
!177 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 7}
!178 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, i64 7788864}
!179 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 7788871}
!180 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, i64 7788871}
!181 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!182 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!183 = !{ptr @_ZNKSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!184 = !{ptr @_ZNKSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!185 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!186 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!187 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!188 = !{ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788864}
!189 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!190 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!191 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!192 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 7788871}
!193 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, i64 10252449}
!194 = !{ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 10252449}
!195 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 10252449}
!196 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 2562}
!197 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 2562}
!198 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10247325}
!199 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, i64 7788864}
!200 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!201 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 15577728}
!202 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, i64 7788864}
!203 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 15577728}
!204 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 7788864}
!205 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 7788864}
!206 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_, i64 7788864}
!207 = !{ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, i64 7789311}
!208 = !{ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 15578622}
!209 = !{ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, i64 7789311}
!210 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!211 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!212 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!213 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, i64 15449970}
!214 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, i64 15449970}
!215 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, i64 15449970}
!216 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15}
!217 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!218 = !{ptr @_ZNKSt6vectorIySaIyEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!219 = !{ptr @_ZNKSt6vectorIySaIyEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!220 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 18212926}
!221 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 18212909}
!222 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!223 = !{ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449970}
!224 = !{ptr @_ZNSaIyEC2ERKS_, ptr @_ZNSt15__new_allocatorIyEC2ERKS0_, i64 33661998}
!225 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449990}
!226 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 15449990}
!227 = !{ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, i64 15449970}
!228 = !{ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, i64 27873635}
!229 = !{ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, i64 27873636}
!230 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv, i64 27873636}
!231 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 6965}
!232 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 6965}
!233 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_Znwm, i64 27859706}
!234 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, i64 15450864}
!235 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!236 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_, i64 30901728}
!237 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, i64 15450864}
!238 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 30901728}
!239 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPyET_S1_, i64 15450864}
!240 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!241 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_, i64 15450864}
!242 = !{ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!243 = !{ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv, i64 30901728}
!244 = !{ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_, i64 15450864}
!245 = !{ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, i64 27873635}
!246 = !{ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, i64 27873636}
!247 = !{ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, ptr @_ZdlPv, i64 27873636}
!248 = !{ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPyEvT_S1_, i64 18213858}
!249 = !{ptr @_ZSt8_DestroyIPyEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_, i64 18213858}
!250 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev, i64 47163}
!251 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev, ptr @_ZNSaIN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EEEC2Ev, i64 47163}
!252 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_Vector_impl_dataC2Ev, i64 47163}
!253 = !{ptr @_ZNSaIN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EEEC2Ev, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEC2Ev, i64 47163}
!254 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!255 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!256 = !{ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_, i64 77263380}
!257 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, i64 10239255}
!258 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 10239255}
!259 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 10239255}
!260 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 10239255}
!261 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, i64 10239255}
!262 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 20478510}
!263 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 20478510}
!264 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, i64 20478510}
!265 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 10239255}
!266 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, i64 20504884}
!267 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 41009765}
!268 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!269 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 10252441}
!270 = !{ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 20504882}
!271 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, i64 20504883}
!272 = !{ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 20504886}
!273 = !{ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, i64 20504886}
!274 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, i64 20504893}
!275 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 20504893}
!276 = !{ptr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, ptr @_ZNKSt15__new_allocatorIiE8max_sizeEv, i64 20504893}
!277 = !{ptr @_ZNKSt15__new_allocatorIiE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 20504893}
!278 = !{ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 61514649}
!279 = !{ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E, i64 20504883}
!280 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, i64 157224}
!281 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 13187}
!282 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, i64 13187}
!283 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE4backEv, i64 170411}
!284 = !{ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_, i64 170411}
!285 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, i64 13186}
!286 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 13186}
!287 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 13186}
!288 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 13186}
!289 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, i64 13186}
!290 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 26372}
!291 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 26372}
!292 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, i64 26372}
!293 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 13186}
!294 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 170411}
!295 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl, i64 170411}
!296 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, i64 170411}
!297 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 170411}
!298 = !{ptr @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_EvT_S8_RSaIT0_E, ptr @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_, i64 47163}
!299 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m, i64 47163}
!300 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEED2Ev, i64 47163}
!301 = !{ptr @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEEEvT_SA_, i64 94326}
!302 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE10deallocateERS7_PS6_m, i64 343423}
!303 = !{ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE10deallocateERS7_PS6_m, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE10deallocateEPS6_m, i64 343424}
!304 = !{ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE10deallocateEPS6_m, ptr @_ZdlPv, i64 343424}
!305 = !{ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_, ptr @_ZN5boost6tuples6detail5cnullEv, i64 30634569}
!306 = !{ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_, ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, i64 4376367}
!307 = !{ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, ptr @_ZN5boost6tuples6detail5cnullEv, i64 4376367}
!308 = !{ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, i64 4376367}
!309 = !{ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, ptr @_ZN5boost6tuples6detail5cnullEv, i64 4376367}
!310 = !{ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, ptr @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEC2IKS3_EERT_RKS4_SB_SB_SB_SB_SB_SB_SB_SB_, i64 4376367}
!311 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_, i64 4032942}
!312 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv, i64 343425}
!313 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, i64 343425}
!314 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv, i64 4376367}
!315 = !{ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE9constructIS6_JS6_EEEvPT_DpOT0_, i64 10521712}
!316 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc, i64 343424}
!317 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv, i64 343424}
!318 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 343424}
!319 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_M_allocateEm, i64 343424}
!320 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_, i64 343424}
!321 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 686848}
!322 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv, i64 686848}
!323 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_, i64 686848}
!324 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m, i64 343424}
!325 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv, i64 4376367}
!326 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl, i64 4376367}
!327 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 4376367}
!328 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv, i64 686848}
!329 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv, i64 1373693}
!330 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!331 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 343423}
!332 = !{ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 3782470}
!333 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8allocateERS7_m, i64 343423}
!334 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_, ptr @_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_, i64 686848}
!335 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv, i64 686848}
!336 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_, i64 686848}
!337 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8max_sizeERKS7_, i64 686848}
!338 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_, ptr @_ZSt3minImERKT_S2_S2_, i64 686848}
!339 = !{ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8max_sizeERKS7_, ptr @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8max_sizeEv, i64 686848}
!340 = !{ptr @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv, i64 686848}
!341 = !{ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8allocateERS7_m, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv, i64 343424}
!342 = !{ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv, i64 343424}
!343 = !{ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 86}
!344 = !{ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 86}
!345 = !{ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv, ptr @_Znwm, i64 343252}
!346 = !{ptr @_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 2060544}
!347 = !{ptr @_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_, ptr @_ZSt14__relocate_a_1IPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_, i64 686848}
!348 = !{ptr @_ZSt14__relocate_a_1IPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_, ptr @_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_, i64 6145337}
!349 = !{ptr @_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_, i64 6145345}
!350 = !{ptr @_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE7destroyIS6_EEvRS7_PT_, i64 6145345}
!351 = !{ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE7destroyIS6_EEvRS7_PT_, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE7destroyIS6_EEvPT_, i64 6145345}
!352 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_, i64 4376367}
!353 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 47163}
!354 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 47162}
!355 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l, i64 47162}
!356 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E5beginEv, i64 94323}
!357 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, i64 1}
!358 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNKSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E4sizeEv, i64 47161}
!359 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, i64 47161}
!360 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev, i64 47162}
!361 = !{ptr @_ZN9__gnu_cxx5__ops16__iter_comp_iterI8NodeCompEENS0_15_Iter_comp_iterIT_EES4_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEC2ES2_, i64 47163}
!362 = !{ptr @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 2543578}
!363 = !{ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l, ptr @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl, i64 47163}
!364 = !{ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l, ptr @_ZSt29__uninitialized_construct_bufIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_, i64 47162}
!365 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 141489}
!366 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, i64 47163}
!367 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, i64 2}
!368 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, i64 94324}
!369 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, i64 47163}
!370 = !{ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev, ptr @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_, i64 47163}
!371 = !{ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev, ptr @_ZNSt8__detail25__return_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EEEEvPT_m, i64 47163}
!372 = !{ptr @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl, ptr @_ZnwmRKSt9nothrow_t, i64 46796}
!373 = !{ptr @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl, ptr @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IRS7_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_, i64 46795}
!374 = !{ptr @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl, ptr @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IS7_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 368}
!375 = !{ptr @_ZSt29__uninitialized_construct_bufIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_, ptr @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_, i64 47163}
!376 = !{ptr @_ZNSt8__detail25__return_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EEEEvPT_m, ptr @_ZdlPv, i64 47163}
!377 = !{ptr @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 94324}
!378 = !{ptr @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_, ptr @_ZSt10_ConstructIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEJS6_EEvPT_DpOT0_, i64 2199807}
!379 = !{ptr @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 47162}
!380 = !{ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEaSERKS7_, ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEaSERKS6_, i64 32841243}
!381 = !{ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEaSERKS6_, ptr @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEaSERKS5_, i64 32841243}
!382 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 678637}
!383 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, i64 910117}
!384 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 4376356}
!385 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_, i64 3710598}
!386 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 488718}
!387 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_, i64 244359}
!388 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 244359}
!389 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE, i64 3466239}
!390 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_, i64 3466239}
!391 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 3710598}
!392 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_, i64 3521649}
!393 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 18835734}
!394 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_, ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, i64 9417867}
!395 = !{ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_, i64 488718}
!396 = !{ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_, ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_, i64 244359}
!397 = !{ptr @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 8276142}
!398 = !{ptr @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv, i64 4138071}
!399 = !{ptr @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_, ptr @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_, i64 4138071}
!400 = !{ptr @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 4138071}
!401 = !{ptr @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE, ptr @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE, i64 3466249}
!402 = !{ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv, i64 121584028}
!403 = !{ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv, i64 137946}
!404 = !{ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv, ptr @_ZN5boost6tuples3getILi1EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_, i64 121584030}
!405 = !{ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv, ptr @_ZN5boost6tuples3getILi0EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_, i64 137948}
!406 = !{ptr @_ZN5boost6tuples3getILi1EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_, ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE, i64 121584030}
!407 = !{ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE, ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIP7UCTNodeNS0_9null_typeEEEEET_RKNS7_IT0_T1_EE, i64 121584030}
!408 = !{ptr @_ZN5boost6tuples3getILi0EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_, ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE, i64 137948}
!409 = !{ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, i64 733077}
!410 = !{ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_, ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 244359}
!411 = !{ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_, i64 244359}
!412 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, i64 769217}
!413 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, i64 769217}
!414 = !{ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, ptr @_ZSt23__copy_move_backward_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 247912}
!415 = !{ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 3918514}
!416 = !{ptr @_ZSt23__copy_move_backward_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_, i64 247912}
!417 = !{ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 702972}
!418 = !{ptr @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 4138070}
!419 = !{ptr @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_, ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, i64 4138070}
!420 = !{ptr @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 4352938}
!421 = !{ptr @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_, ptr @_ZSt4swapIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_, i64 2176469}
!422 = !{ptr @_ZSt4swapIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 4352938}
!423 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 94326}
!424 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, i64 94326}
!425 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, i64 136937}
!426 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, i64 136937}
!427 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_, i64 47162}
!428 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, i64 23733}
!429 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, i64 23429}
!430 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_, i64 1}
!431 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, i64 2}
!432 = !{ptr @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 678632}
!433 = !{ptr @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, i64 584306}
!434 = !{ptr @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, i64 678632}
!435 = !{ptr @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl, i64 584306}
!436 = !{ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 586195}
!437 = !{ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, i64 1210837}
!438 = !{ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, i64 449258}
!439 = !{ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl, i64 312321}
!440 = !{ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt3minIlERKT_S2_S2_, i64 136937}
!441 = !{ptr @_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, i64 260362}
!442 = !{ptr @_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt3minIlERKT_S2_S2_, i64 136937}
!443 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 6889944}
!444 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_, i64 3098394}
!445 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 3098394}
!446 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 3098394}
!447 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 3098394}
!448 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_, i64 898518}
!449 = !{ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_, i64 1891362}
!450 = !{ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_, ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_, i64 945681}
!451 = !{ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, i64 1891362}
!452 = !{ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 945681}
!453 = !{ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_, ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 945681}
!454 = !{ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_, ptr @_ZSt12__niter_wrapIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_RKS8_S8_, i64 945681}
!455 = !{ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, ptr @_ZSt14__copy_move_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 1466986}
!456 = !{ptr @_ZSt14__copy_move_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_, i64 1466986}
!457 = !{ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 10381718}
!458 = !{ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EESC_EEbT_T0_, i64 4442154}
!459 = !{ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 4442154}
!460 = !{ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 4442154}
!461 = !{ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 4442154}
!462 = !{ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, i64 520724}
!463 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EESC_EEbT_T0_, ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, i64 4442170}
!464 = !{ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 1042610}
!465 = !{ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, i64 521305}
!466 = !{ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 1042610}
!467 = !{ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, i64 521305}
!468 = !{ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 521305}
!469 = !{ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_, i64 521305}
!470 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 640626}
!471 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_, i64 628610}
!472 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 719653}
!473 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 628610}
!474 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 719653}
!475 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, i64 12017}
!476 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 498746}
!477 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, i64 3554}
!478 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv, i64 2077880}
!479 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_, i64 1582695}
!480 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 2058012}
!481 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 1582695}
!482 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 1241624}
!483 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_, ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, i64 1241624}
!484 = !{ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 7106}
!485 = !{ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, i64 3553}
!486 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 1582962}
!487 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_, ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, i64 1582962}
!488 = !{ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 7106}
!489 = !{ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, i64 3553}
!490 = !{ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 3553}
!491 = !{ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_, i64 3553}
!492 = !{ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 47163}
!493 = !{ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv, i64 2223540}
!494 = !{ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 2223540}
!495 = !{ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, ptr @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_, i64 2176378}
!496 = !{ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 2176378}
!497 = !{ptr @_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 4447264}
!498 = !{ptr @_ZN5boost6tuples3getILi2EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE14non_const_typeERSC_, ptr @_ZN5boost6tuples6detail9get_classILi2EE3getIRP7UCTNodeiNS0_4consIiNS8_IS6_NS0_9null_typeEEEEEEET_RNS8_IT0_T1_EE, i64 4376367}
!499 = !{ptr @_ZN5boost6tuples6detail9get_classILi2EE3getIRP7UCTNodeiNS0_4consIiNS8_IS6_NS0_9null_typeEEEEEEET_RNS8_IT0_T1_EE, ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRP7UCTNodeiNS0_4consIS6_NS0_9null_typeEEEEET_RNS8_IT0_T1_EE, i64 4376367}
!500 = !{ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRP7UCTNodeiNS0_4consIS6_NS0_9null_typeEEEEET_RNS8_IT0_T1_EE, ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRP7UCTNodeS6_NS0_9null_typeEEET_RNS0_4consIT0_T1_EE, i64 4376367}
!501 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!502 = !{!"function_entry_count", i64 12331874}
!503 = !{!504, !505, i64 0}
!504 = !{!"_ZTS7UCTNode", !505, i64 0, !505, i64 8, !508, i64 16, !508, i64 20, !508, i64 24, !508, i64 28, !508, i64 32, !509, i64 36, !508, i64 40, !510, i64 48}
!505 = !{!"any pointer", !506, i64 0}
!506 = !{!"omnipotent char", !507, i64 0}
!507 = !{!"Simple C++ TBAA"}
!508 = !{!"int", !506, i64 0}
!509 = !{!"bool", !506, i64 0}
!510 = !{!"_ZTSN3SMP5MutexE", !511, i64 0}
!511 = !{!"long", !506, i64 0}
!512 = !{!504, !508, i64 16}
!513 = !{!504, !508, i64 20}
!514 = !{!504, !508, i64 24}
!515 = !{!504, !509, i64 36}
!516 = !{!504, !508, i64 40}
!517 = !{!504, !508, i64 32}
!518 = !{!504, !508, i64 28}
!519 = !{!"branch_weights", i32 970, i32 12330905}
!520 = !{!504, !505, i64 8}
!521 = !{!"branch_weights", i32 12330905, i32 0}
!522 = distinct !{!522, !523}
!523 = !{!"llvm.loop.mustprogress"}
!524 = !{!"function_entry_count", i64 390125718}
!525 = !{!"function_entry_count", i64 1979946341}
!526 = !{!"function_entry_count", i64 16707271}
!527 = !{!"function_entry_count", i64 201906}
!528 = !{!"branch_weights", i32 1, i32 201907}
!529 = !{!"branch_weights", i32 170412, i32 31496}
!530 = !{!531, !508, i64 1764}
!531 = !{!"_ZTS9FastBoard", !532, i64 0, !532, i64 882, !508, i64 1764, !508, i64 1768, !508, i64 1772, !533, i64 1776, !534, i64 3540, !534, i64 4424, !534, i64 5308, !534, i64 6192, !532, i64 7076, !535, i64 7960, !536, i64 7976, !537, i64 8008, !537, i64 8016, !538, i64 8024, !508, i64 8048}
!532 = !{!"_ZTSN5boost5arrayItLm441EEE", !506, i64 0}
!533 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !506, i64 0}
!534 = !{!"_ZTSN5boost5arrayItLm442EEE", !506, i64 0}
!535 = !{!"_ZTSN5boost5arrayIiLm4EEE", !506, i64 0}
!536 = !{!"_ZTSN5boost5arrayIiLm8EEE", !506, i64 0}
!537 = !{!"_ZTSN5boost5arrayIiLm2EEE", !506, i64 0}
!538 = !{!"_ZTSSt6vectorIiSaIiEE", !539, i64 0}
!539 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !540, i64 0}
!540 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !541, i64 0}
!541 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !505, i64 0, !505, i64 8, !505, i64 16}
!542 = !{!"branch_weights", i32 170411, i32 1}
!543 = !{!508, !508, i64 0}
!544 = !{!545, !545, i64 0}
!545 = !{!"short", !506, i64 0}
!546 = !{!547, !508, i64 8084}
!547 = !{!"_ZTS9FastState", !548, i64 0, !550, i64 8072, !508, i64 8076, !508, i64 8080, !508, i64 8084, !508, i64 8088, !508, i64 8092, !508, i64 8096, !551, i64 8100, !552, i64 8196}
!548 = !{!"_ZTS9FullBoard", !531, i64 0, !549, i64 8056, !549, i64 8064}
!549 = !{!"long long", !506, i64 0}
!550 = !{!"float", !506, i64 0}
!551 = !{!"_ZTSN5boost5arrayIiLm24EEE", !506, i64 0}
!552 = !{!"_ZTSN5boost5arrayISt4pairIiiELm24EEE", !506, i64 0}
!553 = !{!"branch_weights", i32 3980, i32 12742244}
!554 = !{!"branch_weights", i32 12533679, i32 208566}
!555 = !{!531, !508, i64 1768}
!556 = !{!"branch_weights", i32 373186, i32 12160494}
!557 = !{!"branch_weights", i32 12575812, i32 170411}
!558 = distinct !{!558, !523}
!559 = !{!505, !505, i64 0}
!560 = !{!"branch_weights", i32 201906, i32 1}
!561 = !{!"branch_weights", i32 170412, i32 12160494}
!562 = !{!"branch_weights", i32 1187348, i32 10973147}
!563 = !{!"branch_weights", i32 266422, i32 11894073}
!564 = !{!"branch_weights", i32 12128999, i32 201906}
!565 = distinct !{!565, !523}
!566 = !{!"function_entry_count", i64 71160989}
!567 = !{!"function_entry_count", i64 202367}
!568 = !{!"function_entry_count", i64 32030604394}
!569 = !{!"function_entry_count", i64 77263380}
!570 = !{!541, !505, i64 8}
!571 = !{!541, !505, i64 16}
!572 = !{!"branch_weights", i32 10239256, i32 67024126}
!573 = !{!"function_entry_count", i64 170411}
!574 = !{!575, !505, i64 0}
!575 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !505, i64 0}
!576 = !{!"function_entry_count", i64 10455771}
!577 = !{!"function_entry_count", i64 12532810}
!578 = !{!"function_entry_count", i64 22957086}
!579 = !{!"function_entry_count", i64 48982794}
!580 = !{!"function_entry_count", i64 1453768}
!581 = !{!"function_entry_count", i64 12330904}
!582 = !{!"function_entry_count", i64 9372256}
!583 = !{!541, !505, i64 0}
!584 = !{!"function_entry_count", i64 970}
!585 = !{!"branch_weights", i32 1, i32 970}
!586 = !{!"branch_weights", i32 971, i32 132988}
!587 = !{!"branch_weights", i32 1, i32 132988}
!588 = !{!"branch_weights", i32 970, i32 132988}
!589 = !{!"function_entry_count", i64 2012554315}
!590 = !{!"function_entry_count", i64 0}
!591 = distinct !{!591, !523}
!592 = !{!"function_entry_count", i64 38472780}
!593 = !{!"branch_weights", i32 18020218, i32 20452564}
!594 = !{!"branch_weights", i32 19262152, i32 19210630}
!595 = !{!"branch_weights", i32 10198156, i32 9063997}
!596 = !{!"branch_weights", i32 -1663391220, i32 -1295312547}
!597 = !{!"function_entry_count", i64 1672480531}
!598 = !{!"function_entry_count", i64 561583}
!599 = !{!"function_entry_count", i64 1634007751}
!600 = !{!"branch_weights", i32 808407792, i32 825599961}
!601 = !{!"function_entry_count", i64 3705103029}
!602 = !{!"function_entry_count", i64 1979950213}
!603 = !{!"function_entry_count", i64 6234979}
!604 = !{!"function_entry_count", i64 32407242}
!605 = !{!"branch_weights", i32 1, i32 127}
!606 = !{!"branch_weights", i32 32407243, i32 1}
!607 = !{!"branch_weights", i32 127, i32 -146840319}
!608 = distinct !{!608, !523}
!609 = !{!"branch_weights", i32 1979944396, i32 1}
!610 = !{!"branch_weights", i32 348959204, i32 1630985193}
!611 = !{!"branch_weights", i32 97427717, i32 1882516680}
!612 = !{!"branch_weights", i32 32407243, i32 1947557699}
!613 = !{!"branch_weights", i32 1979944396, i32 20546}
!614 = distinct !{!614, !523}
!615 = distinct !{!615, !523}
!616 = !{!"function_entry_count", i64 1979964940}
!617 = !{i8 0, i8 2}
!618 = !{}
!619 = !{!"function_entry_count", i64 47163}
!620 = !{!"branch_weights", i32 1, i32 47163}
!621 = !{!"branch_weights", i32 1368727, i32 3007642}
!622 = !{!"branch_weights", i32 47163, i32 4329205}
!623 = distinct !{!623, !523}
!624 = !{i64 0, i64 8, !559}
!625 = !{!"branch_weights", i32 47163, i32 1}
!626 = !{!"branch_weights", i32 4329205, i32 47163}
!627 = distinct !{!627, !523}
!628 = !{!"function_entry_count", i64 4376367}
!629 = !{!"branch_weights", i32 92633, i32 4283736}
!630 = !{!"function_entry_count", i64 484913}
!631 = !{!"function_entry_count", i64 9237647}
!632 = !{!633, !508, i64 0}
!633 = !{!"_ZTS8NodeComp", !508, i64 0}
!634 = !{!635, !505, i64 0}
!635 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEE", !505, i64 0}
!636 = !{!"function_entry_count", i64 21972450}
!637 = !{!"function_entry_count", i64 21834324}
!638 = !{!639, !505, i64 0}
!639 = !{!"_ZTSNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_Vector_impl_dataE", !505, i64 0, !505, i64 8, !505, i64 16}
!640 = !{!639, !505, i64 8}
!641 = !{!"function_entry_count", i64 51043}
!642 = !{!"function_entry_count", i64 5818}
!643 = !{!"function_entry_count", i64 2}
!644 = !{!"branch_weights", i32 3, i32 9}
!645 = !{!"branch_weights", i32 127, i32 1281}
!646 = distinct !{!646, !523}
!647 = !{!"function_entry_count", i64 6}
!648 = !{!"branch_weights", i32 7, i32 7}
!649 = !{!"branch_weights", i32 127, i32 1537}
!650 = distinct !{!650, !523}
!651 = !{!"function_entry_count", i64 402}
!652 = !{!"branch_weights", i32 1, i32 32407242}
!653 = !{!"branch_weights", i32 989825197, i32 990139745}
!654 = !{!"branch_weights", i32 169118414, i32 820706784}
!655 = !{!"branch_weights", i32 73820376, i32 95298039}
!656 = !{!"branch_weights", i32 168830015, i32 821309731}
!657 = !{!"branch_weights", i32 93301143, i32 75528873}
!658 = !{!"branch_weights", i32 32407242, i32 1947557699}
!659 = distinct !{!659, !523}
!660 = !{!"function_entry_count", i64 202374}
!661 = !{!"function_entry_count", i64 7991268}
!662 = !{!"function_entry_count", i64 15449970}
!663 = !{!664, !505, i64 0}
!664 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !505, i64 0, !505, i64 8, !505, i64 16}
!665 = !{!664, !505, i64 8}
!666 = !{!"function_entry_count", i64 18212926}
!667 = !{!531, !508, i64 8048}
!668 = !{!"function_entry_count", i64 7788864}
!669 = !{!"function_entry_count", i64 899000483}
!670 = !{!"function_entry_count", i64 28293760}
!671 = !{!"function_entry_count", i64 7788871}
!672 = !{!"function_entry_count", i64 17161144}
!673 = !{!"function_entry_count", i64 7789311}
!674 = !{!"function_entry_count", i64 97749716}
!675 = !{!"function_entry_count", i64 16958771}
!676 = !{!"function_entry_count", i64 7788881}
!677 = !{!"function_entry_count", i64 18041313}
!678 = !{!"branch_weights", i32 7788865, i32 10252450}
!679 = !{!"function_entry_count", i64 10252449}
!680 = !{!"branch_weights", i32 1, i32 2000}
!681 = !{!"function_entry_count", i64 30757342}
!682 = !{!"function_entry_count", i64 15578622}
!683 = !{!"function_entry_count", i64 69303513}
!684 = !{!"branch_weights", i32 7789312, i32 1}
!685 = !{!"function_entry_count", i64 28111432}
!686 = !{!"function_entry_count", i64 19624698}
!687 = !{!"branch_weights", i32 9372251, i32 10252449}
!688 = !{!"function_entry_count", i64 10252448}
!689 = !{!"function_entry_count", i64 65148944}
!690 = !{!"function_entry_count", i64 40299030}
!691 = !{!"function_entry_count", i64 33662916}
!692 = !{!"function_entry_count", i64 15450864}
!693 = !{!"function_entry_count", i64 58513802}
!694 = !{!664, !505, i64 16}
!695 = !{!"function_entry_count", i64 33661998}
!696 = !{!"function_entry_count", i64 15449990}
!697 = !{!"function_entry_count", i64 15450948}
!698 = !{!"function_entry_count", i64 27875384}
!699 = !{!"branch_weights", i32 1749, i32 27873637}
!700 = !{!"function_entry_count", i64 27873636}
!701 = !{!"function_entry_count", i64 52722676}
!702 = !{!"function_entry_count", i64 30901728}
!703 = !{!"function_entry_count", i64 89997984}
!704 = !{!"branch_weights", i32 1749, i32 15449117}
!705 = !{!"function_entry_count", i64 216494610}
!706 = !{!707, !505, i64 0}
!707 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEE", !505, i64 0}
!708 = !{!"function_entry_count", i64 30638340}
!709 = !{!"branch_weights", i32 2764705, i32 27873637}
!710 = !{!"function_entry_count", i64 18213858}
!711 = !{!"function_entry_count", i64 69455494}
!712 = !{!"function_entry_count", i64 10239255}
!713 = !{!"function_entry_count", i64 10252442}
!714 = !{!511, !511, i64 0}
!715 = !{!"branch_weights", i32 1, i32 10252443}
!716 = !{!"function_entry_count", i64 10252441}
!717 = !{!"function_entry_count", i64 20504883}
!718 = !{!"function_entry_count", i64 53747328}
!719 = !{!"function_entry_count", i64 20504886}
!720 = !{!"function_entry_count", i64 23031751}
!721 = !{!"branch_weights", i32 6217633, i32 16814120}
!722 = !{!"function_entry_count", i64 20504893}
!723 = !{!"function_entry_count", i64 46063954}
!724 = !{!"branch_weights", i32 1, i32 46063955}
!725 = !{!"branch_weights", i32 4082007, i32 16422878}
!726 = !{!"branch_weights", i32 13187, i32 157226}
!727 = !{!"function_entry_count", i64 13186}
!728 = !{!729, !505, i64 0}
!729 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE", !505, i64 0}
!730 = !{!"function_entry_count", i64 33583715}
!731 = !{!"function_entry_count", i64 734011}
!732 = !{!639, !505, i64 16}
!733 = !{!"function_entry_count", i64 94326}
!734 = !{!"function_entry_count", i64 390587}
!735 = !{!"branch_weights", i32 47164, i32 343425}
!736 = !{!"function_entry_count", i64 343424}
!737 = !{!"function_entry_count", i64 39387303}
!738 = !{!739, !508, i64 0}
!739 = !{!"_ZTSN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEE", !508, i64 0, !740, i64 8}
!740 = !{!"_ZTSN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEE", !508, i64 0, !741, i64 8}
!741 = !{!"_ZTSN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEE", !505, i64 0}
!742 = !{!740, !508, i64 0}
!743 = !{!741, !505, i64 0}
!744 = !{!"branch_weights", i32 343425, i32 4032944}
!745 = !{!"function_entry_count", i64 10521712}
!746 = !{!"branch_weights", i32 1, i32 343425}
!747 = !{!"function_entry_count", i64 1891235}
!748 = !{!"function_entry_count", i64 686848}
!749 = !{!"function_entry_count", i64 59323574}
!750 = !{!"function_entry_count", i64 1373696}
!751 = !{!"function_entry_count", i64 1030272}
!752 = !{!"branch_weights", i32 1, i32 686848}
!753 = !{!"branch_weights", i32 686848, i32 5458498}
!754 = distinct !{!754, !523}
!755 = !{!"function_entry_count", i64 4055941}
!756 = !{!"function_entry_count", i64 6145345}
!757 = !{!"function_entry_count", i64 57016118}
!758 = !{!"function_entry_count", i64 17620576}
!759 = !{!"branch_weights", i32 1, i32 47164}
!760 = !{!"function_entry_count", i64 1271789}
!761 = !{!762, !511, i64 0}
!762 = !{!"_ZTSSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E", !511, i64 0, !511, i64 8, !505, i64 16}
!763 = !{!762, !505, i64 16}
!764 = !{!762, !511, i64 8}
!765 = !{!"branch_weights", i32 2130706077, i32 16777571}
!766 = !{!"branch_weights", i32 0, i32 1}
!767 = distinct !{!767, !523}
!768 = !{!769, !505, i64 0}
!769 = !{!"_ZTSSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElE", !505, i64 0, !511, i64 8}
!770 = !{!769, !511, i64 8}
!771 = !{!"branch_weights", i32 47163, i32 2105573}
!772 = distinct !{!772, !523}
!773 = !{!"function_entry_count", i64 2199898}
!774 = !{!"function_entry_count", i64 32841243}
!775 = !{!"function_entry_count", i64 678637}
!776 = !{!"branch_weights", i32 12879, i32 665760}
!777 = !{!"branch_weights", i32 665759, i32 1}
!778 = !{!"branch_weights", i32 244360, i32 3466250}
!779 = !{!"branch_weights", i32 3044850, i32 665759}
!780 = distinct !{!780, !523}
!781 = !{!"function_entry_count", i64 3521649}
!782 = !{!"function_entry_count", i64 9417867}
!783 = !{!"function_entry_count", i64 244359}
!784 = !{!"function_entry_count", i64 3466249}
!785 = !{!"branch_weights", i32 671822, i32 2794428}
!786 = !{!"branch_weights", i32 0, i32 671822}
!787 = distinct !{!787, !523}
!788 = !{!"function_entry_count", i64 20822693}
!789 = !{!"branch_weights", i32 6152059, i32 14670636}
!790 = !{!"branch_weights", i32 5540592, i32 611468}
!791 = !{!"branch_weights", i32 6525599, i32 13685629}
!792 = !{!"branch_weights", i32 5540592, i32 985008}
!793 = !{!"branch_weights", i32 5540592, i32 13685629}
!794 = !{!"branch_weights", i32 5540592, i32 1}
!795 = !{!"branch_weights", i32 1100713, i32 12584917}
!796 = !{!"branch_weights", i32 963179, i32 137535}
!797 = !{!"branch_weights", i32 52850, i32 910330}
!798 = !{!"branch_weights", i32 34986, i32 17865}
!799 = !{!"branch_weights", i32 997, i32 33990}
!800 = !{!"function_entry_count", i64 121584030}
!801 = !{!"function_entry_count", i64 137948}
!802 = !{!"function_entry_count", i64 2380080}
!803 = !{!"function_entry_count", i64 769217}
!804 = !{!"function_entry_count", i64 247912}
!805 = !{!"function_entry_count", i64 3918514}
!806 = !{!"branch_weights", i32 247912, i32 1}
!807 = !{!"branch_weights", i32 455063, i32 247912}
!808 = distinct !{!808, !523}
!809 = !{!"function_entry_count", i64 8439931}
!810 = !{!"function_entry_count", i64 4138070}
!811 = !{!"function_entry_count", i64 2176469}
!812 = distinct !{!812, !523}
!813 = distinct !{!813, !523}
!814 = !{!"function_entry_count", i64 896633}
!815 = distinct !{!815, !523}
!816 = distinct !{!816, !523}
!817 = distinct !{!817, !523}
!818 = distinct !{!818, !523}
!819 = !{!"branch_weights", i32 94326, i32 1}
!820 = !{!"branch_weights", i32 42612, i32 94326}
!821 = distinct !{!821, !523}
!822 = !{!"branch_weights", i32 556158215, i32 563350225}
!823 = !{!"branch_weights", i32 1, i32 23430}
!824 = !{!"branch_weights", i32 1, i32 94326}
!825 = !{!"branch_weights", i32 94326, i32 489986}
!826 = distinct !{!826, !523}
!827 = !{!"function_entry_count", i64 136937}
!828 = !{!"branch_weights", i32 1, i32 136937}
!829 = !{!"branch_weights", i32 136937, i32 175386}
!830 = distinct !{!830, !523}
!831 = !{!"branch_weights", i32 13512, i32 123426}
!832 = !{!"branch_weights", i32 123426, i32 0}
!833 = distinct !{!833, !523}
!834 = !{!"function_entry_count", i64 449259}
!835 = !{!"branch_weights", i32 382688, i32 1}
!836 = !{!"branch_weights", i32 5707260, i32 449260}
!837 = !{!"branch_weights", i32 597739, i32 5109522}
!838 = !{!"branch_weights", i32 5391143, i32 382688}
!839 = distinct !{!839, !523}
!840 = !{!"function_entry_count", i64 273874}
!841 = !{!"branch_weights", i32 135693, i32 138183}
!842 = !{!"function_entry_count", i64 945681}
!843 = !{!"function_entry_count", i64 1466986}
!844 = !{!"branch_weights", i32 1466986, i32 1}
!845 = !{!"branch_weights", i32 8914739, i32 1466986}
!846 = distinct !{!846, !523}
!847 = !{!"function_entry_count", i64 260362}
!848 = !{!"branch_weights", i32 260362, i32 1}
!849 = !{!"branch_weights", i32 522518, i32 3919654}
!850 = !{!"branch_weights", i32 4517354, i32 185180}
!851 = !{!"branch_weights", i32 4181809, i32 260362}
!852 = distinct !{!852, !523}
!853 = !{!"function_entry_count", i64 4442170}
!854 = !{!"function_entry_count", i64 521305}
!855 = !{!"function_entry_count", i64 1049716}
!856 = !{!"function_entry_count", i64 23734}
!857 = !{!"branch_weights", i32 1, i32 23153}
!858 = !{!"branch_weights", i32 1241625, i32 23735}
!859 = !{!"branch_weights", i32 179828, i32 1061798}
!860 = !{!"branch_weights", i32 23153, i32 1219053}
!861 = distinct !{!861, !523}
!862 = !{!"function_entry_count", i64 23429}
!863 = !{!"branch_weights", i32 7, i32 23424}
!864 = !{!"branch_weights", i32 475398, i32 1107566}
!865 = !{!"branch_weights", i32 3554, i32 471845}
!866 = distinct !{!866, !523}
!867 = !{!"branch_weights", i32 19871, i32 1087696}
!868 = !{!"function_entry_count", i64 1241624}
!869 = !{!"function_entry_count", i64 3553}
!870 = !{!"function_entry_count", i64 1582962}
!871 = !{!"branch_weights", i32 2129307, i32 47163}
!872 = distinct !{!872, !523}
!873 = !{!"function_entry_count", i64 2223632}
