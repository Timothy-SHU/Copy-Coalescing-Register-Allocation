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
%"class.std::allocator.10" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.13" = type { ptr }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl" }
%"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::tuples::tuple" = type { %"struct.boost::tuples::cons" }
%"struct.boost::tuples::cons" = type { i32, %"struct.boost::tuples::cons.20" }
%"struct.boost::tuples::cons.20" = type { i32, %"struct.boost::tuples::cons.21" }
%"struct.boost::tuples::cons.21" = type { ptr }
%class.NodeComp = type { i32 }
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

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIiEC2Ev = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIiE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIiE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_ = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE4backEv = comdat any

$_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZN7KoStateC2ERKS_ = comdat any

$_ZN7KoStateD2Ev = comdat any

$_ZN9FastStateC2ERKS_ = comdat any

$_ZNSt6vectorIySaIyEEC2ERKS1_ = comdat any

$_ZNSt6vectorIySaIyEED2Ev = comdat any

$_ZN9FastStateD2Ev = comdat any

$_ZN9FullBoardC2ERKS_ = comdat any

$_ZN9FastBoardC2ERKS_ = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIiED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNKSt6vectorIiSaIiEE3endEv = comdat any

$_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIiEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPiET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ = comdat any

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

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEC2Ev = comdat any

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

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m = comdat any

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

$_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE10deallocateERS7_PS6_m = comdat any

$_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE10deallocateEPS6_m = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_ = comdat any

$_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_ = comdat any

$_ZN5boost6tuples6detail5cnullEv = comdat any

$_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_ = comdat any

$_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_ = comdat any

$_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEC2IKS3_EERT_RKS4_SB_SB_SB_SB_SB_SB_SB_SB_ = comdat any

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

$_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_ = comdat any

$_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEaSERKS7_ = comdat any

$_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEaSERKS6_ = comdat any

$_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEaSERKS5_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEEEvT_SA_ = comdat any

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

$_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_EvT_S8_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev = comdat any

$_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEED2Ev = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1

@_ZN7UCTNodeC1Eii = dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN7UCTNodeC2Eii
@_ZN7UCTNodeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7UCTNodeD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNodeC2Eii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !503 {
  store ptr null, ptr %0, align 8, !tbaa !504
  %4 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 2
  store i32 %2, ptr %4, align 8, !tbaa !513
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !514
  %6 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !515
  %7 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 7
  store i8 1, ptr %7, align 4, !tbaa !516
  %8 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 8
  store i32 15, ptr %8, align 8, !tbaa !517
  %9 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 9
  tail call void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  %10 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  store i32 20, ptr %10, align 8, !tbaa !518
  %11 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 5
  store i32 10, ptr %11, align 4, !tbaa !519
  ret void
}

; Function Attrs: optsize
declare void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN7UCTNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !503 {
  %2 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  invoke void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
          to label %4 unwind label %13

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !504
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !520

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %class.UCTNode, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !521
  call void @_ZN7UCTNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #20
  call void @_ZdlPv(ptr noundef nonnull %8) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !prof !522, !llvm.loop !523

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
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull readnone align 8 dereferenceable(56) %0) local_unnamed_addr #4 align 2 !prof !525 {
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
define dso_local noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !526 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !515
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN7UCTNode10link_childEPS_(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #9 align 2 !prof !527 {
  %3 = load ptr, ptr %0, align 8, !tbaa !504
  %4 = getelementptr inbounds %class.UCTNode, ptr %1, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !521
  store ptr %1, ptr %0, align 8, !tbaa !504
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN7UCTNode15create_childrenER9FastStateb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !528 {
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
  br i1 %13, label %106, label %14, !prof !529

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  %15 = invoke noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %1) #18
          to label %16 unwind label %26

16:                                               ; preds = %14
  %17 = icmp slt i32 %15, 2
  br i1 %17, label %18, label %54, !prof !530

18:                                               ; preds = %16
  %19 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !531
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25, !prof !543

22:                                               ; preds = %18
  %23 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 4
  %24 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 3
  br label %28

25:                                               ; preds = %46, %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 -1, ptr %7, align 4, !tbaa !544
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
  %31 = load i16, ptr %30, align 2, !tbaa !545
  %32 = zext i16 %31 to i32
  store i32 %32, ptr %6, align 4, !tbaa !544
  %33 = load i32, ptr %23, align 4, !tbaa !547
  %34 = icmp eq i32 %33, %32
  br i1 %34, label %46, label %35, !prof !554

35:                                               ; preds = %28
  %36 = invoke noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %32) #18
          to label %37 unwind label %44

37:                                               ; preds = %35
  br i1 %36, label %38, label %46, !prof !555

38:                                               ; preds = %37
  %39 = load i32, ptr %6, align 4, !tbaa !544
  %40 = load i32, ptr %24, align 8, !tbaa !556
  %41 = invoke noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %39, i32 noundef %40) #18
          to label %42 unwind label %44

42:                                               ; preds = %38
  br i1 %41, label %46, label %43, !prof !557

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
  %48 = load i32, ptr %19, align 4, !tbaa !531
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %28, label %25, !prof !558, !llvm.loop !559

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
  %56 = load i64, ptr %9, align 8, !tbaa !560
  store i64 %56, ptr %8, align 8, !tbaa !560
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %57 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  store ptr %57, ptr %11, align 8
  %58 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br i1 %58, label %59, label %102, !prof !561

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
  %68 = load i32, ptr %67, align 4, !tbaa !544
  invoke void @_ZN7UCTNodeC2Eii(ptr noundef nonnull align 8 dereferenceable(56) %63, i32 poison, i32 noundef %68) #18
          to label %69 unwind label %83

69:                                               ; preds = %66
  %70 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %71 = load i32, ptr %70, align 4, !tbaa !544
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %95, label %73, !prof !562

73:                                               ; preds = %69
  %74 = load i32, ptr %60, align 8, !tbaa !556
  %75 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %76 = load i32, ptr %75, align 4, !tbaa !544
  %77 = invoke noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %74, i32 noundef %76) #18
          to label %78 unwind label %81

78:                                               ; preds = %73
  %79 = icmp slt i32 %77, 3
  br i1 %79, label %80, label %85, !prof !563

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
  %86 = load i32, ptr %60, align 8, !tbaa !556
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %90 = load i32, ptr %89, align 4, !tbaa !544
  %91 = invoke noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %88, i32 noundef %90) #18
          to label %92 unwind label %81

92:                                               ; preds = %85
  %93 = icmp eq i32 %91, 1
  br i1 %93, label %94, label %95, !prof !564

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
  br i1 %99, label %61, label %102, !prof !565, !llvm.loop !566

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
define dso_local noundef zeroext i1 @_ZNK7UCTNode12has_childrenEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !567 {
  %2 = load ptr, ptr %0, align 8, !tbaa !504
  %3 = icmp ne ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !568 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !569 {
  %3 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !570 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !571
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !572
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !573

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %1) #20
  %9 = load ptr, ptr %3, align 8, !tbaa !571
  %10 = getelementptr inbounds i32, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !571
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !574 {
  %3 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !528 {
  store ptr null, ptr %0, align 8, !tbaa !575
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !577 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !528 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !560
  store ptr %4, ptr %0, align 8, !tbaa !575
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !578 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !560
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !560
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !579 {
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
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !580 {
  %2 = load ptr, ptr %0, align 8, !tbaa !575
  ret ptr %2
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7UCTNode10set_extendEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #12 align 2 !prof !581 {
  %3 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 8, !tbaa !517
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !582 {
  %2 = load ptr, ptr %0, align 8, !tbaa !575
  %3 = getelementptr inbounds i32, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !575
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !583 {
  %2 = load ptr, ptr %0, align 8, !tbaa !584
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !571
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !568 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !568 {
  tail call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !585 {
  tail call void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !586 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !585 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !570 {
  tail call void @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !587 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !584
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %12 = call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  %13 = getelementptr inbounds i32, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %2) #20
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !560
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %17 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #20
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %20 = load ptr, ptr %19, align 8, !tbaa !560
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %22 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #20
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !572
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 2
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #18
  store ptr %12, ptr %0, align 8, !tbaa !584
  store ptr %22, ptr %8, align 8, !tbaa !571
  %29 = getelementptr inbounds i32, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !572
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !570 {
  %4 = load i32, ptr %2, align 4, !tbaa !544
  store i32 %4, ptr %1, align 4, !tbaa !544
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !588 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !589
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %7 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !590

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #24
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store i64 %13, ptr %5, align 8, !tbaa !589
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !589
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %17 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !590

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !590

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !591 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !560
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !560
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  ret i64 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !592 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !593

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 !prof !594 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !595 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !596 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !597 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !598

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !599 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %3 = tail call noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !600 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !571
  %4 = load ptr, ptr %0, align 8, !tbaa !584
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !601 {
  %3 = load i64, ptr %0, align 8, !tbaa !589
  %4 = load i64, ptr %1, align 8, !tbaa !589
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !602
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !603 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 2305843009213693951, ptr %2, align 8, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !589
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !589
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !604 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !603 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !605 {
  %3 = load i64, ptr %1, align 8, !tbaa !589
  %4 = load i64, ptr %0, align 8, !tbaa !589
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !606
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !603 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !607 {
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !608 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !608 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !609

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

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !594 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !594 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10, !prof !610

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !611 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !612 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !612 {
  tail call void @_ZdlPv(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !574 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !571
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !572
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !613

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %1) #20
  %9 = load ptr, ptr %3, align 8, !tbaa !571
  %10 = getelementptr inbounds i32, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !571
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
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !574 {
  tail call void @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !614 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !584
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %12 = call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  %13 = getelementptr inbounds i32, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %2) #20
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !560
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %17 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #20
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %20 = load ptr, ptr %19, align 8, !tbaa !560
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %22 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #20
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !572
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 2
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #18
  store ptr %12, ptr %0, align 8, !tbaa !584
  store ptr %22, ptr %8, align 8, !tbaa !571
  %29 = getelementptr inbounds i32, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !572
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !574 {
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
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !574 {
  %4 = load i32, ptr %2, align 4, !tbaa !544
  store i32 %4, ptr %1, align 4, !tbaa !544
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !574 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.7", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !615
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !560
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !574 {
  %2 = load ptr, ptr %0, align 8, !tbaa !615
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !617 {
  %3 = load ptr, ptr %1, align 8, !tbaa !560
  store ptr %3, ptr %0, align 8, !tbaa !615
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !618 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !619 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !583 {
  %2 = load ptr, ptr %0, align 8, !tbaa !584
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !572
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !619 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !619 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode13kill_superkosER7KoState(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !620 {
  %3 = alloca %class.KoState, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !504
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6, !prof !621

6:                                                ; preds = %2, %28
  %7 = phi ptr [ %29, %28 ], [ %4, %2 ]
  %8 = call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #18
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %25, label %10, !prof !622

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %3) #19
  call void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %3, ptr noundef nonnull align 8 dereferenceable(8440) %1) #18
  invoke void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440) %3, i32 noundef %8) #18
          to label %11 unwind label %18

11:                                               ; preds = %10
  %12 = invoke noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440) %3) #18
          to label %13 unwind label %18

13:                                               ; preds = %11
  br i1 %12, label %14, label %22, !prof !623

14:                                               ; preds = %13
  %15 = getelementptr inbounds %class.UCTNode, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !521
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
  %27 = load ptr, ptr %26, align 8, !tbaa !521
  br label %28

28:                                               ; preds = %17, %25
  %29 = phi ptr [ %27, %25 ], [ %16, %17 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6, !prof !624

31:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode8get_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !625 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !513
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
define dso_local void @_ZN7UCTNode12delete_childEPS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !626 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !504
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %14
  %8 = phi ptr [ %10, %14 ], [ %5, %2 ]
  %9 = getelementptr inbounds %class.UCTNode, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !521
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %class.UCTNode, ptr %8, i64 0, i32 1
  br label %16

14:                                               ; preds = %7
  %15 = icmp eq ptr %10, null
  br i1 %15, label %20, label %7, !llvm.loop !627

16:                                               ; preds = %2, %12
  %17 = phi ptr [ %13, %12 ], [ %0, %2 ]
  %18 = getelementptr inbounds %class.UCTNode, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !521
  store ptr %19, ptr %17, align 8, !tbaa !560
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #18
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %4, i64 316, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !628 {
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
  %9 = load ptr, ptr %0, align 8, !tbaa !629
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !631
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
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !632 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !631
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
  %7 = load i32, ptr %6, align 8, !tbaa !633
  store i32 %7, ptr %5, align 8, !tbaa !633
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !634 {
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
  %9 = load ptr, ptr %0, align 8, !tbaa !584
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !571
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !634 {
  tail call void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !635 {
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
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !636 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !634 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !637 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !637 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !634 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !638 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !638 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !639 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !635 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !584
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !571
  %5 = getelementptr inbounds i32, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !572
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !634 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !634 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !634 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !634 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !560
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) local_unnamed_addr #2 comdat !prof !640 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !634 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !637 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !640 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !560
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !637 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !637 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !641

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !640 {
  %3 = load ptr, ptr %1, align 8, !tbaa !560
  store ptr %3, ptr %0, align 8, !tbaa !575
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !642 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !631
  %4 = load ptr, ptr %0, align 8, !tbaa !629
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.10") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !628 {
  tail call void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator.10") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !643 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !628 {
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
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !644 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !645 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !645 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !645 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !646 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !632 {
  %2 = load ptr, ptr %0, align 8, !tbaa !629
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !647
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
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.10") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !628 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !648 {
  tail call void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !648 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !649 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !628 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #18
  store ptr %3, ptr %0, align 8, !tbaa !629
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !631
  %5 = getelementptr inbounds i64, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !647
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !650 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !651 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !652

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !653 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !653 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !609

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
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !654 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !645 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !645 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !645 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !645 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !560
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) local_unnamed_addr #2 comdat !prof !655 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !645 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !645 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !655 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !560
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !656 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !645 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !645 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !657

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !658 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !655 {
  %3 = load ptr, ptr %1, align 8, !tbaa !560
  store ptr %3, ptr %0, align 8, !tbaa !659
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !661 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !662

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !653 {
  tail call void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !653 {
  tail call void @_ZdlPv(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !663 {
  tail call void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !663 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !663 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7UCTNode8set_moveEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #12 align 2 !prof !626 {
  %3 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !513
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode6updateER7Playouti(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !664 {
  %4 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %6 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !515
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !515
  %9 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !518
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !518
  %12 = invoke noundef float @_ZN7Playout9get_scoreEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #18
          to label %13 unwind label %19

13:                                               ; preds = %3
  %14 = fcmp ogt float %12, 0.000000e+00
  br i1 %14, label %15, label %21, !prof !665

15:                                               ; preds = %13
  %16 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !514
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !514
  br label %21

19:                                               ; preds = %3
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  resume { ptr, i32 } %20

21:                                               ; preds = %15, %13
  %22 = icmp eq i32 %2, 1
  br i1 %22, label %23, label %25, !prof !666

23:                                               ; preds = %21
  %24 = fcmp olt float %12, 0.000000e+00
  br i1 %24, label %28, label %32, !prof !667

25:                                               ; preds = %21
  %26 = icmp eq i32 %2, 0
  %27 = and i1 %26, %14
  br i1 %27, label %28, label %32, !prof !668

28:                                               ; preds = %25, %23
  %29 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !519
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !519
  br label %32

32:                                               ; preds = %28, %25, %23
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare noundef float @_ZN7Playout9get_scoreEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !669 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !514
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode10set_visitsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !670 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  store i32 %1, ptr %5, align 8, !tbaa !515
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode13set_blackwinsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !670 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !514
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #8 align 2 !prof !671 {
  %3 = tail call noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  %4 = mul nsw i32 %3, 1000
  %5 = tail call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  %6 = sdiv i32 %4, %5
  %7 = icmp eq i32 %1, 1
  %8 = sub nsw i32 1000, %6
  %9 = select i1 %7, i32 %8, i32 %6, !prof !672
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !673 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !515
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode12get_raverateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !674 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !519
  %4 = mul nsw i32 %3, 1000
  %5 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !518
  %7 = sdiv i32 %4, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode14get_ravevisitsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !674 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !518
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK7UCTNode9do_extendEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !675 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !517
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7UCTNode16uct_select_childEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #14 align 2 !prof !676 {
  %3 = load ptr, ptr %0, align 8, !tbaa !560
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5, !prof !677

5:                                                ; preds = %2, %8
  %6 = phi ptr [ %10, %8 ], [ %3, %2 ]
  %7 = tail call noundef zeroext i1 @_ZN7UCTNode5validEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #18
  br i1 %7, label %12, label %8, !prof !678

8:                                                ; preds = %5
  %9 = getelementptr inbounds %class.UCTNode, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !560
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %5, !prof !679, !llvm.loop !680

12:                                               ; preds = %5, %47
  %13 = phi ptr [ %39, %47 ], [ null, %5 ]
  %14 = phi i32 [ %38, %47 ], [ -10000, %5 ]
  %15 = phi ptr [ %43, %47 ], [ %6, %5 ]
  %16 = tail call noundef i32 @_ZNK7UCTNode14get_ravevisitsEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #18
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %35, !prof !681

18:                                               ; preds = %12
  %19 = tail call noundef zeroext i1 @_ZNK7UCTNode11first_visitEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #18
  br i1 %19, label %22, label %20, !prof !682

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
  %39 = select i1 %37, ptr %15, ptr %13, !prof !683
  br label %40

40:                                               ; preds = %45, %35
  %41 = phi ptr [ %15, %35 ], [ %43, %45 ]
  %42 = getelementptr inbounds %class.UCTNode, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !521
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45, !prof !684

45:                                               ; preds = %40
  %46 = tail call noundef zeroext i1 @_ZN7UCTNode5validEv(ptr noundef nonnull align 8 dereferenceable(56) %43) #18
  br i1 %46, label %47, label %40, !prof !685, !llvm.loop !686

47:                                               ; preds = %45
  br label %12, !llvm.loop !687

48:                                               ; preds = %8, %40, %2
  %49 = phi ptr [ null, %2 ], [ %39, %40 ], [ null, %8 ]
  ret ptr %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN7UCTNode5validEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !688 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !516, !range !689, !noundef !690
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode13sort_childrenEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !691 {
  %3 = alloca %"class.SMP::Lock", align 8
  %4 = alloca %"class.std::vector.15", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %"class.boost::tuples::tuple", align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.boost::tuples::tuple", align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %class.NodeComp, align 4
  %14 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %15 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %16) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %17 = load ptr, ptr %0, align 8, !tbaa !504
  store ptr %17, ptr %5, align 8, !tbaa !560
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !544
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19, !prof !692

19:                                               ; preds = %2, %34
  %20 = phi ptr [ %39, %34 ], [ %17, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  %21 = call noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %20) #18
  store i32 %21, ptr %7, align 4, !tbaa !544
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23, !prof !693

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  %24 = call noundef i32 @_ZNK7UCTNode11get_winrateEi(ptr noundef nonnull align 8 dereferenceable(56) %20, i32 noundef %1) #18
  store i32 %24, ptr %9, align 4, !tbaa !544
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
  store i32 0, ptr %11, align 4, !tbaa !544
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #19
  store i32 0, ptr %12, align 4, !tbaa !544
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
  %36 = load i32, ptr %35, align 4, !tbaa !544
  store i32 %36, ptr %6, align 4, !tbaa !544
  %37 = load ptr, ptr %5, align 8, !tbaa !560
  %38 = getelementptr inbounds %class.UCTNode, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !521
  store ptr %39, ptr %5, align 8, !tbaa !560
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %19, !prof !694, !llvm.loop !695

41:                                               ; preds = %32, %27
  %42 = phi { ptr, i32 } [ %28, %27 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  br label %68

43:                                               ; preds = %34, %2
  %44 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %45 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %46 = load i32, ptr %6, align 4, !tbaa !544
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
  store ptr null, ptr %0, align 8, !tbaa !504
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #19
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #20
  %52 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  store ptr %52, ptr %14, align 8, !tbaa.struct !696
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  %53 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  store ptr %53, ptr %15, align 8
  %54 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  br i1 %54, label %55, label %67, !prof !697

55:                                               ; preds = %51, %58
  %56 = call noundef ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #20
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi2EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE14non_const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %56) #18
          to label %58 unwind label %65

58:                                               ; preds = %55
  %59 = load ptr, ptr %57, align 8, !tbaa !560
  call void @_ZN7UCTNode10link_childEPS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %59) #18
  %60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #19
  %61 = call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  store ptr %61, ptr %15, align 8
  %62 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #19
  br i1 %62, label %55, label %67, !prof !698, !llvm.loop !699

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
define linkonce_odr dso_local void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !691 {
  tail call void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !700 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples10make_tupleIiiP7UCTNodeEENS0_6detail17make_tuple_mapperIT_T0_T1_NS0_9null_typeES9_S9_S9_S9_S9_S9_E4typeERKS6_RKS7_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.boost::tuples::tuple") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat !prof !700 {
  tail call void @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat !prof !700 {
  %3 = load i32, ptr %0, align 4, !tbaa !544
  %4 = load i32, ptr %1, align 4, !tbaa !544
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !701
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEE8NodeCompEvT_SF_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat !prof !691 {
  %4 = tail call i32 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI8NodeCompEENS0_15_Iter_comp_iterIT_EES4_(i32 %2) #18
  tail call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !702 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !703 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8NodeCompC2Ei(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !691 {
  store i32 %1, ptr %0, align 4, !tbaa !704
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !691 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %3, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag(ptr %0, ptr %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !691 {
  store ptr null, ptr %0, align 8, !tbaa !706
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !708 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !560
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !560
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !700 {
  %2 = load ptr, ptr %0, align 8, !tbaa !706
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi2EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE14non_const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !700 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples3getILi2EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE14non_const_typeERSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !709 {
  %2 = load ptr, ptr %0, align 8, !tbaa !706
  %3 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !706
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !691 {
  %2 = load ptr, ptr %0, align 8, !tbaa !710
  %3 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !712
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !691 {
  tail call void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !691 {
  tail call void @_ZNSaIN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  tail call void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !691 {
  tail call void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !691 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !691 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !700 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !712
  %5 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !713
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !714

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %9 = load ptr, ptr %3, align 8, !tbaa !712
  %10 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !712
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
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 !prof !715 {
  tail call void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE9constructIS6_JS6_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !716 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !710
  %8 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !712
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = tail call ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %12 = call noundef ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  %13 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !560
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %17 = call noundef ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #20
  %18 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %20 = load ptr, ptr %19, align 8, !tbaa !560
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %22 = call noundef ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #20
  %23 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !713
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 24
  call void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #18
  store ptr %12, ptr %0, align 8, !tbaa !710
  store ptr %22, ptr %8, align 8, !tbaa !712
  %29 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !713
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !700 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
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
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE9constructIS6_JS6_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 !prof !715 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !716 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !589
  %6 = tail call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %7 = tail call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !717

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #24
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store i64 %13, ptr %5, align 8, !tbaa !589
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !589
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %17 = call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !717

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !717

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !718 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !560
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !560
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  ret i64 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !716 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !717

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8allocateERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 !prof !719 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !720 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !721 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !722 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !723

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !719 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %3 = tail call noundef i64 @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !724 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !712
  %4 = load ptr, ptr %0, align 8, !tbaa !710
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 24
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !719 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 384307168202282325, ptr %2, align 8, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8max_sizeERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !589
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !589
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !719 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8max_sizeERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !719 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !719 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !725 {
  ret i64 384307168202282325
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8allocateERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !716 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !716 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !609

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
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !719 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !719 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6, !prof !726

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  %9 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %8, i64 1
  %10 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !prof !727, !llvm.loop !728

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !729 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat !prof !730 {
  tail call void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  tail call void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE7destroyIS6_EEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE7destroyIS6_EEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !730 {
  tail call void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE7destroyIS6_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE7destroyIS6_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !730 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !716 {
  tail call void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE10deallocateEPS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE10deallocateEPS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !716 {
  tail call void @_ZdlPv(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !700 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !706
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !560
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !731 {
  %2 = load ptr, ptr %0, align 8, !tbaa !706
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !732 {
  %3 = load ptr, ptr %1, align 8, !tbaa !560
  store ptr %3, ptr %0, align 8, !tbaa !706
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 !prof !700 {
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
define linkonce_odr dso_local void @_ZN5boost6tuples6detail5cnullEv() local_unnamed_addr #2 comdat !prof !733 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10) unnamed_addr #0 comdat align 2 !prof !700 {
  %12 = alloca %"struct.boost::tuples::null_type", align 1
  %13 = load i32, ptr %1, align 4, !tbaa !544
  store i32 %13, ptr %0, align 8, !tbaa !734
  %14 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10) unnamed_addr #0 comdat align 2 !prof !700 {
  %12 = alloca %"struct.boost::tuples::null_type", align 1
  %13 = load i32, ptr %1, align 4, !tbaa !544
  store i32 %13, ptr %0, align 8, !tbaa !738
  %14 = getelementptr inbounds %"struct.boost::tuples::cons.20", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #19
  tail call void @_ZN5boost6tuples6detail5cnullEv() #18
  call void @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEC2IKS3_EERT_RKS4_SB_SB_SB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEC2IKS3_EERT_RKS4_SB_SB_SB_SB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10) unnamed_addr #2 comdat align 2 !prof !700 {
  %12 = load ptr, ptr %1, align 8, !tbaa !560
  store ptr %12, ptr %0, align 8, !tbaa !739
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !691 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %6 = alloca %"class.std::_Temporary_buffer", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %7, label %24, label %8, !prof !740

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %9 = load ptr, ptr %4, align 8, !tbaa.struct !696
  %10 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %11 = add nsw i64 %10, 1
  %12 = sdiv i64 %11, 2
  call void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %9, i64 noundef %12) #18
  %13 = call noundef ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %14 = icmp eq ptr %13, null
  %15 = load ptr, ptr %4, align 8
  %16 = load ptr, ptr %5, align 8
  br i1 %14, label %17, label %20, !prof !740

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
define linkonce_odr dso_local i32 @_ZN9__gnu_cxx5__ops16__iter_comp_iterI8NodeCompEENS0_15_Iter_comp_iterIT_EES4_(i32 %0) local_unnamed_addr #0 comdat !prof !691 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEC2ES2_(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 %0) #18
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !741 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !560
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !560
  %7 = icmp eq ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !691 {
  store i64 %2, ptr %0, align 8, !tbaa !742
  %4 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = tail call { ptr, i64 } @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl(i64 noundef %2) #20
  %7 = extractvalue { ptr, i64 } %6, 0
  %8 = extractvalue { ptr, i64 } %6, 1
  %9 = icmp eq ptr %7, null
  br i1 %9, label %20, label %10, !prof !740

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %7, i64 %8
  invoke void @_ZSt29__uninitialized_construct_bufIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr %1) #18
          to label %12 unwind label %13

12:                                               ; preds = %10
  store ptr %7, ptr %5, align 8, !tbaa !744
  store i64 %8, ptr %4, align 8, !tbaa !745
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
define linkonce_odr dso_local noundef ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !746 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !744
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat !prof !626 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %8 = icmp slt i64 %7, 15
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 8, !tbaa.struct !696
  %11 = load ptr, ptr %5, align 8, !tbaa.struct !696
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %10, ptr %11, i32 %2) #18
  br label %22

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %13 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %14 = sdiv i64 %13, 2
  %15 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %14) #20
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8, !tbaa.struct !696
  call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %16, ptr %15, i32 %2) #18
  %17 = load ptr, ptr %5, align 8, !tbaa.struct !696
  call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %15, ptr %17, i32 %2) #18
  %18 = load ptr, ptr %4, align 8, !tbaa.struct !696
  %19 = load ptr, ptr %5, align 8, !tbaa.struct !696
  %20 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %21 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %18, ptr %15, ptr %19, i64 noundef %20, i64 noundef %21, i32 %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %22

22:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, i32 %4) local_unnamed_addr #0 comdat !prof !691 {
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
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
  br i1 %13, label %15, label %17, !prof !740

15:                                               ; preds = %5
  call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %14, ptr %12, ptr noundef %2, i64 noundef %3, i32 %4) #18
  %16 = load ptr, ptr %7, align 8, !tbaa.struct !696
  call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %12, ptr %16, ptr noundef %2, i64 noundef %3, i32 %4) #18
  br label %19

17:                                               ; preds = %5
  call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %14, ptr %12, ptr noundef %2, i32 %4) #18
  %18 = load ptr, ptr %7, align 8, !tbaa.struct !696
  call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %12, ptr %18, ptr noundef %2, i32 %4) #18
  br label %19

19:                                               ; preds = %17, %15
  %20 = load ptr, ptr %6, align 8, !tbaa.struct !696
  %21 = load ptr, ptr %7, align 8, !tbaa.struct !696
  %22 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %23 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %20, ptr %12, ptr %21, i64 noundef %22, i64 noundef %23, ptr noundef %2, i64 noundef %3, i32 %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !691 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !745
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !691 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !744
  %4 = getelementptr inbounds %"class.std::_Temporary_buffer", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !745
  %6 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %3, i64 %5
  invoke void @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_(ptr noundef %3, ptr noundef %6) #18
          to label %7 unwind label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !744
  %9 = load i64, ptr %4, align 8, !tbaa !745
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
define linkonce_odr dso_local { ptr, i64 } @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl(i64 noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !691 {
  %2 = alloca %"struct.std::pair.23", align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = icmp sgt i64 %0, 384307168202282325
  br i1 %7, label %10, label %8, !prof !740

8:                                                ; preds = %1
  %9 = icmp sgt i64 %0, 0
  br i1 %9, label %10, label %27, !prof !747

10:                                               ; preds = %1, %8
  %11 = phi i64 [ %0, %8 ], [ 384307168202282325, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %12 = mul i64 %11, 24
  %13 = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26
  store ptr %13, ptr %4, align 8, !tbaa !560
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %25, !prof !692

15:                                               ; preds = %21
  %16 = add nuw nsw i64 %22, 1
  %17 = lshr i64 %16, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %18 = mul i64 %17, 24
  %19 = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %18, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26
  store ptr %19, ptr %4, align 8, !tbaa !560
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25, !prof !748

21:                                               ; preds = %10, %15
  %22 = phi i64 [ %17, %15 ], [ %11, %10 ]
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %24, label %15

24:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %27

25:                                               ; preds = %15, %10
  %26 = phi i64 [ %11, %10 ], [ %17, %15 ]
  store i64 %26, ptr %3, align 8, !tbaa !589
  call void @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IRS7_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %28, !llvm.loop !749

27:                                               ; preds = %24, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !560
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !544
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
define linkonce_odr dso_local void @_ZSt29__uninitialized_construct_bufIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !691 {
  tail call void @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef %1, ptr %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8__detail25__return_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EEEEvPT_m(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 comdat !prof !691 {
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind optsize allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IRS7_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 !prof !691 {
  %4 = load ptr, ptr %1, align 8, !tbaa !560
  store ptr %4, ptr %0, align 8, !tbaa !750
  %5 = getelementptr inbounds %"struct.std::pair.23", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %2, align 8, !tbaa !589
  store i64 %6, ptr %5, align 8, !tbaa !752
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IS7_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 comdat align 2 !prof !626 {
  %4 = load ptr, ptr %1, align 8, !tbaa !560
  store ptr %4, ptr %0, align 8, !tbaa !750
  %5 = getelementptr inbounds %"struct.std::pair.23", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %2, align 4, !tbaa !544
  %7 = sext i32 %6 to i64
  store i64 %7, ptr %5, align 8, !tbaa !752
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !691 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %28, label %6, !prof !740

6:                                                ; preds = %3
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @_ZSt10_ConstructIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEJS6_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #18
  %8 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %0, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %21, label %10, !prof !692

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %6 ]
  %12 = phi ptr [ %13, %10 ], [ %0, %6 ]
  call void @_ZSt10_ConstructIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEJS6_EEvPT_DpOT0_(ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(24) %12) #18
  %13 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %12, i64 1
  %14 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %11, i64 1
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %21, label %10, !prof !753, !llvm.loop !754

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
define linkonce_odr dso_local void @_ZSt10_ConstructIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEJS6_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat !prof !755 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !746 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEEEvT_SA_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !756 {
  %3 = load i32, ptr %1, align 8, !tbaa !734
  store i32 %3, ptr %0, align 8, !tbaa !734
  %4 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !prof !756 {
  %3 = load i32, ptr %1, align 8, !tbaa !738
  store i32 %3, ptr %0, align 8, !tbaa !738
  %4 = getelementptr inbounds %"struct.boost::tuples::cons.20", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.boost::tuples::cons.20", ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !756 {
  %3 = load ptr, ptr %1, align 8, !tbaa !739
  store ptr %3, ptr %0, align 8, !tbaa !739
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEEEvT_SA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !746 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat !prof !757 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %8 = alloca %"class.boost::tuples::tuple", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %9, label %33, label %10, !prof !758

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %11 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #20
  store ptr %11, ptr %7, align 8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %12, label %14, label %13, !prof !759

13:                                               ; preds = %30, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %33

14:                                               ; preds = %10, %30
  %15 = load ptr, ptr %7, align 8, !tbaa.struct !696
  %16 = load ptr, ptr %4, align 8, !tbaa.struct !696
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr %15, ptr %16) #18
  br i1 %17, label %18, label %26, !prof !760

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #19
  %19 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false)
  %20 = load ptr, ptr %4, align 8, !tbaa.struct !696
  %21 = load ptr, ptr %7, align 8, !tbaa.struct !696
  %22 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 1) #20
  %23 = call ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %20, ptr %21, ptr %22) #18
  %24 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %25 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %8) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #19
  br label %30

26:                                               ; preds = %14
  %27 = load ptr, ptr %7, align 8, !tbaa.struct !696
  %28 = load i32, ptr %6, align 4
  %29 = call i32 @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %28) #18
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_(ptr %27, i32 %29) #18
  br label %30

30:                                               ; preds = %18, %26
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  %32 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %32, label %14, label %13, !prof !761, !llvm.loop !762

33:                                               ; preds = %3, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !763 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !706
  %6 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !560
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, i32 %5) local_unnamed_addr #0 comdat !prof !626 {
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
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
  store ptr %0, ptr %8, align 8, !tbaa.struct !696
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  store ptr %1, ptr %9, align 8, !tbaa.struct !696
  %20 = icmp sgt i64 %3, %4
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = sdiv i64 %3, 2
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %22) #18
  %23 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %24 = call i32 @_ZN9__gnu_cxx5__ops15__iter_comp_valI8NodeCompEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %5) #18
  %25 = call ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i32 %24) #18
  store ptr %25, ptr %9, align 8, !tbaa.struct !696
  %26 = call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %1, ptr %25) #18
  %27 = load ptr, ptr %8, align 8, !tbaa.struct !696
  br label %35

28:                                               ; preds = %19
  %29 = sdiv i64 %4, 2
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %29) #18
  %30 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %31 = call i32 @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %5) #18
  %32 = call ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %30, i32 %31) #18
  store ptr %32, ptr %8, align 8, !tbaa.struct !696
  %33 = call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %0, ptr %32) #18
  %34 = load ptr, ptr %9, align 8, !tbaa.struct !696
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi ptr [ %25, %21 ], [ %34, %28 ]
  %37 = phi ptr [ %27, %21 ], [ %32, %28 ]
  %38 = phi i64 [ %26, %21 ], [ %29, %28 ]
  %39 = phi i64 [ %22, %21 ], [ %33, %28 ]
  %40 = call ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_(ptr %37, ptr %1, ptr %36) #18
  %41 = load ptr, ptr %8, align 8, !tbaa.struct !696
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_(ptr %0, ptr %41, ptr %40, i64 noundef %39, i64 noundef %38, i32 %5) #18
  %42 = load ptr, ptr %9, align 8, !tbaa.struct !696
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
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !764 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
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
define linkonce_odr dso_local ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !765 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %1) #18
  %6 = tail call ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_(ptr %4, ptr %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_(ptr %0, i32 %1) local_unnamed_addr #0 comdat !prof !766 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %4 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 4
  %5 = alloca %"class.boost::tuples::tuple", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %8 = load i64, ptr %3, align 8, !tbaa !560
  store i64 %8, ptr %6, align 8, !tbaa !560
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !696
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %10) #18
  br i1 %11, label %12, label %20, !prof !767

12:                                               ; preds = %2, %12
  %13 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %14 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %15 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %13) #18
  %16 = load i64, ptr %6, align 8, !tbaa !560
  store i64 %16, ptr %3, align 8, !tbaa !560
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %18 = load ptr, ptr %6, align 8, !tbaa.struct !696
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %18) #18
  br i1 %19, label %12, label %20, !prof !768, !llvm.loop !769

20:                                               ; preds = %12, %2
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %22 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local i32 @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %0) local_unnamed_addr #0 comdat !prof !766 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 4
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store i32 %0, ptr %3, align 4
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  %4 = load i32, ptr %2, align 4
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef byval(%"class.boost::tuples::tuple") align 8 %1, ptr noundef byval(%"class.boost::tuples::tuple") align 8 %2) local_unnamed_addr #0 comdat align 2 !prof !770 {
  %4 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %5 = load i32, ptr %4, align 4, !tbaa !544
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11, !prof !771

7:                                                ; preds = %3
  %8 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %9 = load i32, ptr %8, align 4, !tbaa !544
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %71, !prof !772

11:                                               ; preds = %7, %3
  %12 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %13 = load i32, ptr %12, align 4, !tbaa !544
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19, !prof !773

15:                                               ; preds = %11
  %16 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %17 = load i32, ptr %16, align 4, !tbaa !544
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %71, !prof !774

19:                                               ; preds = %15, %11
  %20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %21 = load i32, ptr %20, align 4, !tbaa !544
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27, !prof !775

23:                                               ; preds = %19
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %25 = load i32, ptr %24, align 4, !tbaa !544
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %71, label %27, !prof !776

27:                                               ; preds = %23, %19
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %29 = load i32, ptr %28, align 4, !tbaa !544
  %30 = icmp sgt i32 %29, 15
  br i1 %30, label %31, label %65, !prof !777

31:                                               ; preds = %27
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %33 = load i32, ptr %32, align 4, !tbaa !544
  %34 = icmp sgt i32 %33, 15
  br i1 %34, label %35, label %65, !prof !778

35:                                               ; preds = %31
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %37 = load i32, ptr %36, align 4, !tbaa !544
  %38 = shl nsw i32 %37, 1
  %39 = load i32, ptr %0, align 4, !tbaa !704
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %65, !prof !779

41:                                               ; preds = %35
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %43 = load i32, ptr %42, align 4, !tbaa !544
  %44 = shl nsw i32 %43, 1
  %45 = load i32, ptr %0, align 4, !tbaa !704
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %65, !prof !780

47:                                               ; preds = %41
  %48 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %49 = load i32, ptr %48, align 4, !tbaa !544
  %50 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %51 = load i32, ptr %50, align 4, !tbaa !544
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %59, !prof !781

53:                                               ; preds = %47
  %54 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %55 = load i32, ptr %54, align 4, !tbaa !544
  %56 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %57 = load i32, ptr %56, align 4, !tbaa !544
  %58 = icmp sgt i32 %55, %57
  br label %71

59:                                               ; preds = %47
  %60 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %61 = load i32, ptr %60, align 4, !tbaa !544
  %62 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %63 = load i32, ptr %62, align 4, !tbaa !544
  %64 = icmp sgt i32 %61, %63
  br label %71

65:                                               ; preds = %41, %35, %31, %27
  %66 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %67 = load i32, ptr %66, align 4, !tbaa !544
  %68 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %69 = load i32, ptr %68, align 4, !tbaa !544
  %70 = icmp sgt i32 %67, %69
  br label %71

71:                                               ; preds = %65, %59, %53, %23, %15, %7
  %72 = phi i1 [ false, %7 ], [ true, %15 ], [ false, %23 ], [ %58, %53 ], [ %64, %59 ], [ %70, %65 ]
  ret i1 %72
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !782 {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples3getILi1EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !783 {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples3getILi0EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples3getILi1EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat !prof !782 {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !782 {
  %2 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIP7UCTNodeNS0_9null_typeEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIP7UCTNodeNS0_9null_typeEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !782 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples3getILi0EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat !prof !783 {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !783 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !765 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %0) #20
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %1) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %2) #20
  %7 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %0) local_unnamed_addr #2 comdat !prof !784 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !785 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
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
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !786 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !787 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !560
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !786 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !786 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %19, !prof !788

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
  br i1 %18, label %10, label %19, !prof !789, !llvm.loop !790

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %15, %10 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !791 {
  %2 = load ptr, ptr %0, align 8, !tbaa !706
  %3 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %2, i64 -1
  store ptr %3, ptr %0, align 8, !tbaa !706
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !792 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %5 = alloca %"class.boost::tuples::tuple", align 8
  store ptr %2, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %6 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %7 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %5, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %6) #18
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 comdat align 2 !prof !766 {
  %3 = load i32, ptr %1, align 4
  store i32 %3, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !793 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %6 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @_ZSt4swapIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #0 comdat !prof !626 {
  tail call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  tail call void @_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3) local_unnamed_addr #0 comdat !prof !626 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 4
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %5, align 8
  store i32 %3, ptr %6, align 4
  %8 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %0, ptr %1) #18
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4, %21
  %11 = phi i64 [ %22, %21 ], [ %8, %4 ]
  %12 = lshr i64 %11, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %13 = load i64, ptr %5, align 8, !tbaa !560
  store i64 %13, ptr %7, align 8, !tbaa !560
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %12) #18
  %14 = load ptr, ptr %7, align 8, !tbaa.struct !696
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr %14, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !560
  store i64 %17, ptr %5, align 8, !tbaa !560
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %19 = xor i64 %12, -1
  %20 = add nsw i64 %11, %19
  br label %21

21:                                               ; preds = %10, %16
  %22 = phi i64 [ %20, %16 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %10, label %24, !llvm.loop !794

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 8, !tbaa.struct !696
  br label %26

26:                                               ; preds = %24, %4
  %27 = phi ptr [ %25, %24 ], [ %0, %4 ]
  ret ptr %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local i32 @_ZN9__gnu_cxx5__ops15__iter_comp_valI8NodeCompEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %0) local_unnamed_addr #0 comdat !prof !626 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 4
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store i32 %0, ptr %3, align 4
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  %4 = load i32, ptr %2, align 4
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !626 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %3, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_St26random_access_iterator_tag(ptr %0, ptr %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 %3) local_unnamed_addr #0 comdat !prof !626 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 4
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %5, align 8
  store i32 %3, ptr %6, align 4
  %8 = tail call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %0, ptr %1) #18
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4, %21
  %11 = phi i64 [ %22, %21 ], [ %8, %4 ]
  %12 = lshr i64 %11, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %13 = load i64, ptr %5, align 8, !tbaa !560
  store i64 %13, ptr %7, align 8, !tbaa !560
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %12) #18
  %14 = load ptr, ptr %7, align 8, !tbaa.struct !696
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIKN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %14) #18
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load i64, ptr %7, align 8, !tbaa !560
  store i64 %17, ptr %5, align 8, !tbaa !560
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %19 = xor i64 %12, -1
  %20 = add nsw i64 %11, %19
  br label %21

21:                                               ; preds = %10, %16
  %22 = phi i64 [ %20, %16 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %10, label %24, !llvm.loop !795

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 8, !tbaa.struct !696
  br label %26

26:                                               ; preds = %24, %4
  %27 = phi ptr [ %25, %24 ], [ %0, %4 ]
  ret ptr %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !626 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %4, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat !prof !793 {
  %3 = alloca %"class.boost::tuples::tuple", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %4 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat !prof !626 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !691 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !796 {
  %3 = load ptr, ptr %0, align 8, !tbaa !706
  %4 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %3, i64 %1
  store ptr %4, ptr %0, align 8, !tbaa !706
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEEKSC_EEbT_RT0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 !prof !626 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %6 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %5, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %2) #18
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 comdat align 2 !prof !626 {
  %3 = load i32, ptr %1, align 4
  store i32 %3, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #2 comdat !prof !626 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  ret i64 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIKN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !626 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %5 = alloca %"class.boost::tuples::tuple", align 8
  store ptr %2, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %6 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %7 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %5, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %6) #18
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !626 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %12, label %95, label %13

13:                                               ; preds = %3
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr %4, align 8, !tbaa.struct !696
  br label %95

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %18 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  store i64 %18, ptr %7, align 8, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %19 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  store i64 %19, ptr %8, align 8, !tbaa !589
  %20 = sub nsw i64 %18, %19
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load ptr, ptr %4, align 8, !tbaa.struct !696
  %24 = load ptr, ptr %5, align 8
  %25 = call ptr @_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %23, ptr %24, ptr %24) #18
  %26 = load ptr, ptr %5, align 8, !tbaa.struct !696
  br label %93

27:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %28 = load i64, ptr %4, align 8, !tbaa !560
  store i64 %28, ptr %9, align 8, !tbaa !560
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
  %38 = load i64, ptr %7, align 8, !tbaa !589
  %39 = load i64, ptr %8, align 8, !tbaa !589
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %46, %36
  %42 = phi i64 [ %38, %36 ], [ %53, %46 ]
  %43 = phi i64 [ %39, %36 ], [ %54, %46 ]
  %44 = srem i64 %42, %43
  store i64 %44, ptr %7, align 8, !tbaa !589
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %90, label %57

46:                                               ; preds = %36, %46
  %47 = phi i64 [ %52, %46 ], [ 0, %36 ]
  %48 = load ptr, ptr %9, align 8, !tbaa.struct !696
  %49 = load ptr, ptr %10, align 8, !tbaa.struct !696
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %48, ptr %49) #18
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  %52 = add nuw nsw i64 %47, 1
  %53 = load i64, ptr %7, align 8, !tbaa !589
  %54 = load i64, ptr %8, align 8, !tbaa !589
  %55 = sub nsw i64 %53, %54
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %46, label %41, !llvm.loop !797

57:                                               ; preds = %41
  call void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %58 = load i64, ptr %7, align 8, !tbaa !589
  %59 = load i64, ptr %8, align 8, !tbaa !589
  %60 = sub nsw i64 %58, %59
  store i64 %60, ptr %8, align 8, !tbaa !589
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %87

61:                                               ; preds = %31
  store i64 %34, ptr %8, align 8, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %62 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %32) #20
  store ptr %62, ptr %11, align 8
  %63 = load i64, ptr %8, align 8, !tbaa !589
  %64 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %63) #20
  store ptr %64, ptr %9, align 8, !tbaa.struct !696
  %65 = load i64, ptr %7, align 8, !tbaa !589
  %66 = load i64, ptr %8, align 8, !tbaa !589
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %73, %61
  %69 = phi i64 [ %65, %61 ], [ %80, %73 ]
  %70 = phi i64 [ %66, %61 ], [ %81, %73 ]
  %71 = srem i64 %69, %70
  store i64 %71, ptr %7, align 8, !tbaa !589
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %91, label %84

73:                                               ; preds = %61, %73
  %74 = phi i64 [ %79, %73 ], [ 0, %61 ]
  %75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  %77 = load ptr, ptr %9, align 8, !tbaa.struct !696
  %78 = load ptr, ptr %11, align 8, !tbaa.struct !696
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %77, ptr %78) #18
  %79 = add nuw nsw i64 %74, 1
  %80 = load i64, ptr %7, align 8, !tbaa !589
  %81 = load i64, ptr %8, align 8, !tbaa !589
  %82 = sub nsw i64 %80, %81
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %73, label %68, !llvm.loop !798

84:                                               ; preds = %68
  call void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  %85 = load i64, ptr %8, align 8, !tbaa !589
  %86 = load i64, ptr %7, align 8, !tbaa !589
  br label %87

87:                                               ; preds = %84, %57
  %88 = phi i64 [ %86, %84 ], [ %58, %57 ]
  %89 = phi i64 [ %85, %84 ], [ %60, %57 ]
  br label %31, !llvm.loop !799

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
define linkonce_odr dso_local ptr @_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !626 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %7, label %8, label %16

8:                                                ; preds = %3, %8
  %9 = load ptr, ptr %4, align 8, !tbaa.struct !696
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !696
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %9, ptr %10) #18
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %13, label %8, label %14, !llvm.loop !800

14:                                               ; preds = %8
  %15 = load ptr, ptr %6, align 8, !tbaa.struct !696
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi ptr [ %15, %14 ], [ %2, %3 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !626 {
  %3 = load i64, ptr %0, align 8, !tbaa !589
  %4 = load i64, ptr %1, align 8, !tbaa !589
  store i64 %4, ptr %0, align 8, !tbaa !589
  store i64 %3, ptr %1, align 8, !tbaa !589
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %0, ptr %1, ptr noundef %2, i32 %3) local_unnamed_addr #0 comdat !prof !746 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %8 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %2, i64 %7
  %9 = load ptr, ptr %5, align 8, !tbaa.struct !696
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !696
  call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %9, ptr %10, i64 noundef 7, i32 %3) #18
  %11 = icmp sgt i64 %7, 7
  br i1 %11, label %12, label %20, !prof !801

12:                                               ; preds = %4, %12
  %13 = phi i64 [ %18, %12 ], [ 7, %4 ]
  %14 = load ptr, ptr %5, align 8, !tbaa.struct !696
  %15 = load ptr, ptr %6, align 8, !tbaa.struct !696
  call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %14, ptr %15, ptr noundef %2, i64 noundef %13, i32 %3) #18
  %16 = shl nuw nsw i64 %13, 1
  %17 = load ptr, ptr %5, align 8, !tbaa.struct !696
  call void @_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr noundef %2, ptr noundef nonnull %8, ptr %17, i64 noundef %16, i32 %3) #18
  %18 = shl nsw i64 %13, 2
  %19 = icmp slt i64 %18, %7
  br i1 %19, label %12, label %20, !prof !802, !llvm.loop !803

20:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 %7) local_unnamed_addr #0 comdat !prof !691 {
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %11 = icmp sgt i64 %3, %4
  %12 = icmp sgt i64 %3, %6
  %13 = or i1 %11, %12
  br i1 %13, label %16, label %14, !prof !804

14:                                               ; preds = %8
  %15 = tail call noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %5) #18
  tail call void @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr noundef %5, ptr noundef %15, ptr %1, ptr %2, ptr %0, i32 %7) #18
  br label %45

16:                                               ; preds = %8
  %17 = icmp sgt i64 %4, %6
  br i1 %17, label %20, label %18, !prof !805

18:                                               ; preds = %16
  %19 = tail call noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %1, ptr %2, ptr noundef %5) #18
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %19, ptr %2, i32 %7) #18
  br label %45

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  store ptr %0, ptr %9, align 8, !tbaa.struct !696
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  store ptr %1, ptr %10, align 8, !tbaa.struct !696
  br i1 %11, label %21, label %28

21:                                               ; preds = %20
  %22 = sdiv i64 %3, 2
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %22) #18
  %23 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %24 = call i32 @_ZN9__gnu_cxx5__ops15__iter_comp_valI8NodeCompEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %7) #18
  %25 = call ptr @_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i32 %24) #18
  store ptr %25, ptr %10, align 8, !tbaa.struct !696
  %26 = call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %1, ptr %25) #18
  %27 = load ptr, ptr %9, align 8, !tbaa.struct !696
  br label %35

28:                                               ; preds = %20
  %29 = sdiv i64 %4, 2
  call void @_ZSt7advanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %29) #18
  %30 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  %31 = call i32 @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE(i32 %7) #18
  %32 = call ptr @_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterI8NodeCompEEET_SI_SI_RKT0_T1_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %30, i32 %31) #18
  store ptr %32, ptr %9, align 8, !tbaa.struct !696
  %33 = call noundef i64 @_ZSt8distanceIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E15difference_typeESF_SF_(ptr %0, ptr %32) #18
  %34 = load ptr, ptr %10, align 8, !tbaa.struct !696
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi ptr [ %25, %21 ], [ %34, %28 ]
  %37 = phi ptr [ %27, %21 ], [ %32, %28 ]
  %38 = phi i64 [ %26, %21 ], [ %29, %28 ]
  %39 = phi i64 [ %22, %21 ], [ %33, %28 ]
  %40 = sub nsw i64 %3, %39
  %41 = call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_(ptr %37, ptr %1, ptr %36, i64 noundef %40, i64 noundef %38, ptr noundef %5, i64 noundef %6) #18
  %42 = load ptr, ptr %9, align 8, !tbaa.struct !696
  call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %0, ptr %42, ptr %41, i64 noundef %39, i64 noundef %38, ptr noundef %5, i64 noundef %6, i32 %7) #18
  %43 = load ptr, ptr %10, align 8, !tbaa.struct !696
  %44 = sub nsw i64 %4, %38
  call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %41, ptr %43, ptr %2, i64 noundef %40, i64 noundef %44, ptr noundef %5, i64 noundef %6, i32 %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %45

45:                                               ; preds = %18, %35, %14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2, i32 %3) local_unnamed_addr #0 comdat !prof !746 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %7 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %8 = icmp slt i64 %7, %2
  br i1 %8, label %15, label %9, !prof !806

9:                                                ; preds = %4, %9
  %10 = load ptr, ptr %5, align 8, !tbaa.struct !696
  %11 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %2) #20
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %10, ptr %11, i32 %3) #18
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %2) #20
  %13 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %14 = icmp slt i64 %13, %2
  br i1 %14, label %15, label %9, !prof !807, !llvm.loop !808

15:                                               ; preds = %9, %4
  %16 = load ptr, ptr %5, align 8, !tbaa.struct !696
  %17 = load ptr, ptr %6, align 8, !tbaa.struct !696
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_(ptr %16, ptr %17, i32 %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, i32 %4) local_unnamed_addr #0 comdat !prof !809 {
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %3, ptr %8, align 8, !tbaa !589
  %10 = shl nsw i64 %3, 1
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %12 = icmp slt i64 %11, %10
  br i1 %12, label %23, label %13, !prof !810

13:                                               ; preds = %5, %13
  %14 = phi ptr [ %19, %13 ], [ %2, %5 ]
  %15 = load ptr, ptr %6, align 8, !tbaa.struct !696
  %16 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %3) #20
  %17 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %3) #20
  %18 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %10) #20
  %19 = call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr %15, ptr %16, ptr %17, ptr %18, ptr noundef %14, i32 %4) #18
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %10) #20
  %21 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %22 = icmp slt i64 %21, %10
  br i1 %22, label %23, label %13, !prof !811, !llvm.loop !812

23:                                               ; preds = %13, %5
  %24 = phi ptr [ %2, %5 ], [ %19, %13 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %25 = call noundef i64 @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  store i64 %25, ptr %9, align 8, !tbaa !589
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIlERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  %27 = load i64, ptr %26, align 8, !tbaa !589
  store i64 %27, ptr %8, align 8, !tbaa !589
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  %28 = load ptr, ptr %6, align 8, !tbaa.struct !696
  %29 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %27) #20
  %30 = load i64, ptr %8, align 8, !tbaa !589
  %31 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %30) #20
  %32 = load ptr, ptr %7, align 8, !tbaa.struct !696
  %33 = call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr %28, ptr %29, ptr %31, ptr %32, ptr noundef %24, i32 %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, i32 %4) local_unnamed_addr #0 comdat !prof !809 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %3, ptr %6, align 8, !tbaa !589
  %8 = shl nsw i64 %3, 1
  %9 = ptrtoint ptr %1 to i64
  %10 = ptrtoint ptr %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 24
  %13 = icmp slt i64 %12, %8
  br i1 %13, label %24, label %14, !prof !813

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
  br i1 %23, label %24, label %14, !prof !814, !llvm.loop !815

24:                                               ; preds = %14, %5
  %25 = phi ptr [ %0, %5 ], [ %18, %14 ]
  %26 = phi ptr [ %2, %5 ], [ %19, %14 ]
  %27 = phi i64 [ %12, %5 ], [ %22, %14 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store i64 %27, ptr %7, align 8, !tbaa !589
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIlERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %29 = load i64, ptr %28, align 8, !tbaa !589
  store i64 %29, ptr %6, align 8, !tbaa !589
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %30 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %25, i64 %29
  %31 = call ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr noundef %25, ptr noundef %30, ptr noundef %30, ptr noundef %1, ptr %26, i32 %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef %4, i32 %5) local_unnamed_addr #0 comdat !prof !816 {
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store i32 %5, ptr %11, align 4
  %12 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br i1 %12, label %13, label %30, !prof !817

13:                                               ; preds = %6, %16
  %14 = phi ptr [ %24, %16 ], [ %4, %6 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  br i1 %15, label %16, label %26, !prof !818

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 8, !tbaa.struct !696
  %18 = load ptr, ptr %7, align 8, !tbaa.struct !696
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr %17, ptr %18) #18
  %20 = select i1 %19, ptr %9, ptr %7, !prof !819
  %21 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #20
  %22 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %21) #18
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #20
  %24 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %14, i64 1
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br i1 %25, label %13, label %26, !prof !820, !llvm.loop !821

26:                                               ; preds = %16, %13
  %27 = phi ptr [ %14, %13 ], [ %24, %16 ]
  %28 = load ptr, ptr %9, align 8, !tbaa.struct !696
  %29 = load ptr, ptr %10, align 8, !tbaa.struct !696
  br label %30

30:                                               ; preds = %26, %6
  %31 = phi ptr [ %3, %6 ], [ %29, %26 ]
  %32 = phi ptr [ %2, %6 ], [ %28, %26 ]
  %33 = phi ptr [ %4, %6 ], [ %27, %26 ]
  %34 = load ptr, ptr %7, align 8, !tbaa.struct !696
  %35 = load ptr, ptr %8, align 8, !tbaa.struct !696
  %36 = call noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %34, ptr %35, ptr noundef %33) #18
  %37 = call noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %32, ptr %31, ptr noundef %36) #18
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIlERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !822 {
  %3 = load i64, ptr %1, align 8, !tbaa !589
  %4 = load i64, ptr %0, align 8, !tbaa !589
  %5 = icmp slt i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !823
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !824 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_(ptr %4, ptr %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !824 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !560
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !824 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !825 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !825 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !825 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10, !prof !826

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
  br i1 %20, label %12, label %10, !prof !827, !llvm.loop !828
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat !prof !829 {
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store ptr %4, ptr %7, align 8
  store i32 %5, ptr %8, align 4
  %9 = icmp ne ptr %0, %1
  %10 = icmp ne ptr %2, %3
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %32, !prof !830

12:                                               ; preds = %6, %23
  %13 = phi ptr [ %25, %23 ], [ %0, %6 ]
  %14 = phi ptr [ %24, %23 ], [ %2, %6 ]
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EESC_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef %14, ptr noundef %13) #18
  %16 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br i1 %15, label %17, label %20, !prof !831

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
  %29 = select i1 %27, i1 %28, i1 false, !prof !832
  br i1 %29, label %12, label %30, !prof !833, !llvm.loop !834

30:                                               ; preds = %23
  %31 = load ptr, ptr %7, align 8, !tbaa.struct !696
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
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EESC_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !835 {
  %4 = tail call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %1, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %2) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !836 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %1) #18
  %6 = tail call ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_(ptr noundef %4, ptr noundef %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !836 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) #20
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %1) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %2) #20
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !837 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat !prof !838 {
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store ptr %4, ptr %9, align 8
  store i32 %5, ptr %10, align 4
  %11 = icmp eq ptr %0, %1
  br i1 %11, label %34, label %12, !prof !839

12:                                               ; preds = %6, %27
  %13 = phi ptr [ %28, %27 ], [ %0, %6 ]
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br i1 %14, label %15, label %31, !prof !840

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 8, !tbaa.struct !696
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr %16, ptr noundef %13) #18
  br i1 %17, label %18, label %23, !prof !841

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
  br i1 %30, label %34, label %12, !prof !842, !llvm.loop !843

31:                                               ; preds = %12
  %32 = load ptr, ptr %9, align 8, !tbaa.struct !696
  %33 = call ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %13, ptr noundef %1, ptr %32) #18
  br label %34

34:                                               ; preds = %27, %6, %31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat !prof !844 {
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %4, ptr %9, align 8
  store i32 %5, ptr %10, align 4
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br i1 %11, label %12, label %14, !prof !805

12:                                               ; preds = %6
  %13 = call ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %2, ptr noundef %3, ptr %4) #18
  br label %40

14:                                               ; preds = %6
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %40, label %16, !prof !845

16:                                               ; preds = %14
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %18

18:                                               ; preds = %35, %16
  %19 = phi ptr [ %3, %16 ], [ %20, %35 ]
  %20 = getelementptr inbounds %"class.boost::tuples::tuple", ptr %19, i64 -1
  br label %21

21:                                               ; preds = %18, %33
  %22 = load ptr, ptr %8, align 8, !tbaa.struct !696
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull %20, ptr %22) #18
  br i1 %23, label %24, label %35, !prof !846

24:                                               ; preds = %21
  %25 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %27 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #20
  %28 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %25) #18
  %29 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br i1 %29, label %30, label %33, !prof !847

30:                                               ; preds = %24
  %31 = load ptr, ptr %9, align 8, !tbaa.struct !696
  %32 = call ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %2, ptr noundef nonnull %19, ptr %31) #18
  br label %40

33:                                               ; preds = %24
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %21, !llvm.loop !848

35:                                               ; preds = %21
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %37 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #20
  %38 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %20) #18
  %39 = icmp eq ptr %20, %2
  br i1 %39, label %40, label %18, !prof !849, !llvm.loop !848

40:                                               ; preds = %35, %14, %30, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat !prof !626 {
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
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !850 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %6 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %5, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %2) #18
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !851 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %1) #18
  %6 = tail call ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_(ptr noundef %4, ptr noundef %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !852 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %5 = alloca %"class.boost::tuples::tuple", align 8
  store ptr %2, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %6 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %7 = call noundef zeroext i1 @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %5, ptr noundef nonnull byval(%"class.boost::tuples::tuple") align 8 %6) #18
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !851 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %0) #20
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_(ptr noundef %1) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %2) #20
  %7 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !626 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_(ptr %1) #18
  %6 = tail call ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_(ptr %4, ptr %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !626 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %0) #20
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %1) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE(ptr %2) #20
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEC2ES2_(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 %1) unnamed_addr #2 comdat align 2 !prof !691 {
  store i32 %1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !691 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %5, label %15, label %6, !prof !740

6:                                                ; preds = %2
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %8, label %9, label %15, !prof !697

9:                                                ; preds = %6, %9
  %10 = load ptr, ptr %3, align 8, !tbaa.struct !696
  %11 = load ptr, ptr %4, align 8, !tbaa.struct !696
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_(ptr %10, ptr %11) #18
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %14, label %9, label %15, !prof !853, !llvm.loop !854

15:                                               ; preds = %9, %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !855 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !560
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !560
  %7 = icmp ult ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples3getILi2EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE14non_const_typeERSC_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat !prof !700 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi2EE3getIRP7UCTNodeiNS0_4consIiNS8_IS6_NS0_9null_typeEEEEEEET_RNS8_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi2EE3getIRP7UCTNodeiNS0_4consIiNS8_IS6_NS0_9null_typeEEEEEEET_RNS8_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !700 {
  %2 = getelementptr inbounds %"struct.boost::tuples::cons", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRP7UCTNodeiNS0_4consIS6_NS0_9null_typeEEEEET_RNS8_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRP7UCTNodeiNS0_4consIS6_NS0_9null_typeEEEEET_RNS8_IT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !700 {
  %2 = getelementptr inbounds %"struct.boost::tuples::cons.20", ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRP7UCTNodeS6_NS0_9null_typeEEET_RNS0_4consIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRP7UCTNodeS6_NS0_9null_typeEEET_RNS0_4consIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !700 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_EvT_S8_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !691 {
  tail call void @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !691 {
  %2 = load ptr, ptr %0, align 8, !tbaa !710
  %3 = getelementptr inbounds %"struct.std::_Vector_base<boost::tuples::tuple<int, int, UCTNode *>, std::allocator<boost::tuples::tuple<int, int, UCTNode *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !713
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !691 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN7UCTNode15get_first_childEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !856 {
  %2 = load ptr, ptr %0, align 8, !tbaa !504
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN7UCTNode11get_siblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #8 align 2 !prof !857 {
  %2 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !521
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7UCTNode14get_pass_childEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #14 align 2 !prof !858 {
  %2 = load ptr, ptr %0, align 8, !tbaa !560
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !677

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !513
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %13, label %9, !prof !859

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !560
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !prof !860, !llvm.loop !861

13:                                               ; preds = %4, %9, %1
  %14 = phi ptr [ null, %1 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7UCTNode16get_nopass_childEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #14 align 2 !prof !862 {
  %2 = load ptr, ptr %0, align 8, !tbaa !560
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !677

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !513
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13, !prof !863

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.UCTNode, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !560
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !prof !864, !llvm.loop !865

13:                                               ; preds = %4, %9, %1
  %14 = phi ptr [ null, %1 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode10invalidateEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 !prof !866 {
  %2 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = getelementptr inbounds %class.UCTNode, ptr %0, i64 0, i32 7
  store i8 0, ptr %4, align 4, !tbaa !516
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7UCTNode10updateRAVEER7Playouti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !676 {
  %4 = alloca %"class.SMP::Lock", align 8
  %5 = alloca %"class.SMP::Lock", align 8
  %6 = tail call noundef float @_ZN7Playout9get_scoreEv(ptr noundef nonnull align 8 dereferenceable(120) %1) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !560
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9, !prof !867

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  %11 = fcmp olt float %6, 0.000000e+00
  %12 = fcmp ogt float %6, 0.000000e+00
  br label %13

13:                                               ; preds = %9, %40
  %14 = phi ptr [ %7, %9 ], [ %42, %40 ]
  %15 = call noundef i32 @_ZNK7UCTNode8get_moveEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #18
  br i1 %10, label %16, label %28, !prof !868

16:                                               ; preds = %13
  %17 = call noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef 0, i32 noundef %15) #18
  br i1 %17, label %18, label %40, !prof !869

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %19) #18
  %20 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !518
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !518
  br i1 %12, label %23, label %27, !prof !870

23:                                               ; preds = %18
  %24 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !519
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !519
  br label %27

27:                                               ; preds = %23, %18
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %40

28:                                               ; preds = %13
  %29 = call noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr noundef nonnull align 8 dereferenceable(120) %1, i32 noundef 1, i32 noundef %15) #18
  br i1 %29, label %30, label %40, !prof !871

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7UCTNode9get_mutexEv(ptr noundef nonnull align 8 dereferenceable(56) %14) #18
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %31) #18
  %32 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !518
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !518
  br i1 %11, label %35, label %39, !prof !872

35:                                               ; preds = %30
  %36 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !519
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !519
  br label %39

39:                                               ; preds = %35, %30
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %40

40:                                               ; preds = %28, %39, %16, %27
  %41 = getelementptr inbounds %class.UCTNode, ptr %14, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !560
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %13, !prof !873, !llvm.loop !874

44:                                               ; preds = %40, %3
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN7Playout11passthroughEii(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) local_unnamed_addr #1

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
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!502}

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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501}
!36 = !{ptr @_ZN7UCTNodeC2Eii, ptr @_ZN3SMP5MutexC1Ev, i64 12331874}
!37 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN7UCTNode9get_mutexEv, i64 12331874}
!38 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 12331874}
!39 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN7UCTNodeD2Ev, i64 12330892}
!40 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZdlPv, i64 12330892}
!41 = !{ptr @_ZN7UCTNodeD2Ev, ptr @_ZN3SMP4LockD1Ev, i64 12331862}
!42 = !{ptr @_ZN7UCTNodeD2Ev, ptr @__clang_call_terminate, i64 12}
!43 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN7UCTNode9get_mutexEv, i64 201906}
!44 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 201906}
!45 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNK7UCTNode12has_childrenEv, i64 201906}
!46 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEEC2Ev, i64 201905}
!47 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastState10get_passesEv, i64 201905}
!48 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEE9push_backEOi, i64 170374}
!49 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN5boost5arrayItLm441EEixEm, i64 12743387}
!50 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastBoard11no_eye_fillEi, i64 12739408}
!51 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastBoard10is_suicideEii, i64 12530877}
!52 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, i64 12157763}
!53 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2Ev, i64 201869}
!54 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 201869}
!55 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE, i64 201869}
!56 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 12526881}
!57 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE, i64 12526881}
!58 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_Znwm, i64 12325070}
!59 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastState11get_to_moveEv, i64 12325058}
!60 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEdeEv, i64 48959478}
!61 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN7UCTNodeC2Eii, i64 12325047}
!62 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9FastBoard18minimum_elib_countEii, i64 24309396}
!63 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN7UCTNode10set_extendEi, i64 1453076}
!64 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZdlPv, i64 24}
!65 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN7UCTNode10link_childEPS_, i64 12325012}
!66 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEppEv, i64 12325012}
!67 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZNSt6vectorIiSaIiEED2Ev, i64 201905}
!68 = !{ptr @_ZN7UCTNode15create_childrenER9FastStateb, ptr @_ZN3SMP4LockD1Ev, i64 201906}
!69 = !{ptr @_ZNSt6vectorIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, i64 202367}
!70 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, i64 67024124}
!71 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 10239256}
!72 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, i64 10239256}
!73 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backEOi, ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, i64 170411}
!74 = !{ptr @_ZNSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 10455771}
!75 = !{ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 201906}
!76 = !{ptr @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 12532810}
!77 = !{ptr @_ZN9__gnu_cxxneIPKiPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS7_IT0_S9_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 12532810}
!78 = !{ptr @_ZNSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 22957086}
!79 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!80 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!81 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!82 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!83 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, i64 202367}
!84 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSaIiEC2Ev, i64 202367}
!85 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 202367}
!86 = !{ptr @_ZNSaIiEC2Ev, ptr @_ZNSt15__new_allocatorIiEC2Ev, i64 202374}
!87 = !{ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_, i64 77263380}
!88 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, i64 10239255}
!89 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 10239255}
!90 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 10239255}
!91 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 10239255}
!92 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, i64 10239255}
!93 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 20478510}
!94 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 20478510}
!95 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, i64 20478510}
!96 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 10239255}
!97 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, i64 20504884}
!98 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 41009765}
!99 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!100 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 10252441}
!101 = !{ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 20504882}
!102 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, i64 10252449}
!103 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, i64 20504883}
!104 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!105 = !{ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 20504886}
!106 = !{ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, i64 20504886}
!107 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, i64 20504893}
!108 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 20504893}
!109 = !{ptr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, ptr @_ZNKSt15__new_allocatorIiE8max_sizeEv, i64 20504893}
!110 = !{ptr @_ZNKSt15__new_allocatorIiE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 20504893}
!111 = !{ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 10252449}
!112 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 10252449}
!113 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 2562}
!114 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 2562}
!115 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10247325}
!116 = !{ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 61514649}
!117 = !{ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E, i64 20504883}
!118 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!119 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!120 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, i64 157224}
!121 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 13187}
!122 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, i64 13187}
!123 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE4backEv, i64 170411}
!124 = !{ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_, i64 170411}
!125 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, i64 13186}
!126 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 13186}
!127 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 13186}
!128 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 13186}
!129 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, i64 13186}
!130 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 26372}
!131 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 26372}
!132 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, i64 26372}
!133 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 13186}
!134 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 170411}
!135 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl, i64 170411}
!136 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, i64 170411}
!137 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 170411}
!138 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!139 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!140 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!141 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!142 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!143 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZNK7UCTNode8get_moveEv, i64 133785}
!144 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7KoStateC2ERKS_, i64 132816}
!145 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7KoState9play_moveEi, i64 132816}
!146 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7KoState7superkoEv, i64 132815}
!147 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7UCTNode12delete_childEPS_, i64 1}
!148 = !{ptr @_ZN7UCTNode13kill_superkosER7KoState, ptr @_ZN7KoStateD2Ev, i64 132815}
!149 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE4sizeEv, i64 15449970}
!150 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449970}
!151 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, i64 15449970}
!152 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, i64 15449970}
!153 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15449970}
!154 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE5beginEv, i64 15449955}
!155 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE3endEv, i64 15449955}
!156 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449955}
!157 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, i64 15449955}
!158 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 15}
!159 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 18212926}
!160 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 18212926}
!161 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 18212909}
!162 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!163 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 7788864}
!164 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788864}
!165 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, i64 7788864}
!166 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7788864}
!167 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7788864}
!168 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 7788857}
!169 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 7788857}
!170 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788857}
!171 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, i64 7788857}
!172 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 7}
!173 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, i64 7788864}
!174 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 7788871}
!175 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, i64 7788871}
!176 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!177 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!178 = !{ptr @_ZNKSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!179 = !{ptr @_ZNKSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!180 = !{ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788864}
!181 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!182 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!183 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!184 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 7788871}
!185 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, i64 7788864}
!186 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!187 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 15577728}
!188 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, i64 7788864}
!189 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 15577728}
!190 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 7788864}
!191 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 7788864}
!192 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_, i64 7788864}
!193 = !{ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, i64 7789311}
!194 = !{ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 15578622}
!195 = !{ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, i64 7789311}
!196 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, i64 15449970}
!197 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, i64 15449970}
!198 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, i64 15449970}
!199 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15}
!200 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!201 = !{ptr @_ZNKSt6vectorIySaIyEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!202 = !{ptr @_ZNKSt6vectorIySaIyEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!203 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 18212926}
!204 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 18212909}
!205 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!206 = !{ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449970}
!207 = !{ptr @_ZNSaIyEC2ERKS_, ptr @_ZNSt15__new_allocatorIyEC2ERKS0_, i64 33661998}
!208 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449990}
!209 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 15449990}
!210 = !{ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, i64 15449970}
!211 = !{ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, i64 27873635}
!212 = !{ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, i64 27873636}
!213 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv, i64 27873636}
!214 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 6965}
!215 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 6965}
!216 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_Znwm, i64 27859706}
!217 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, i64 15450864}
!218 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!219 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_, i64 30901728}
!220 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, i64 15450864}
!221 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 30901728}
!222 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPyET_S1_, i64 15450864}
!223 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!224 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_, i64 15450864}
!225 = !{ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!226 = !{ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv, i64 30901728}
!227 = !{ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_, i64 15450864}
!228 = !{ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, i64 27873635}
!229 = !{ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, i64 27873636}
!230 = !{ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, ptr @_ZdlPv, i64 27873636}
!231 = !{ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPyEvT_S1_, i64 18213858}
!232 = !{ptr @_ZSt8_DestroyIPyEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_, i64 18213858}
!233 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN7UCTNode9get_mutexEv, i64 38472780}
!234 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 38472780}
!235 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN7Playout9get_scoreEv, i64 38472780}
!236 = !{ptr @_ZN7UCTNode6updateER7Playouti, ptr @_ZN3SMP4LockD1Ev, i64 38472780}
!237 = !{ptr @_ZN7UCTNode10set_visitsEi, ptr @_ZN7UCTNode9get_mutexEv, i64 561583}
!238 = !{ptr @_ZN7UCTNode10set_visitsEi, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 561583}
!239 = !{ptr @_ZN7UCTNode10set_visitsEi, ptr @_ZN3SMP4LockD1Ev, i64 561583}
!240 = !{ptr @_ZN7UCTNode13set_blackwinsEi, ptr @_ZN7UCTNode9get_mutexEv, i64 561583}
!241 = !{ptr @_ZN7UCTNode13set_blackwinsEi, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 561583}
!242 = !{ptr @_ZN7UCTNode13set_blackwinsEi, ptr @_ZN3SMP4LockD1Ev, i64 561583}
!243 = !{ptr @_ZNK7UCTNode11get_winrateEi, ptr @_ZNK7UCTNode13get_blackwinsEv, i64 1634007751}
!244 = !{ptr @_ZNK7UCTNode11get_winrateEi, ptr @_ZNK7UCTNode10get_visitsEv, i64 1634007751}
!245 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZN7UCTNode5validEv, i64 1964496366}
!246 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZNK7UCTNode14get_ravevisitsEv, i64 1964476314}
!247 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZNK7UCTNode11first_visitEv, i64 1964476313}
!248 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZNK7UCTNode11get_winrateEi, i64 1618243312}
!249 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZNK7UCTNode12get_raverateEv, i64 1964476313}
!250 = !{ptr @_ZN7UCTNode16uct_select_childEi, ptr @_ZNK7UCTNode10get_visitsEv, i64 1964476313}
!251 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN7UCTNode9get_mutexEv, i64 47163}
!252 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 47163}
!253 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev, i64 47163}
!254 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNK7UCTNode10get_visitsEv, i64 4375509}
!255 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNK7UCTNode11get_winrateEi, i64 3007051}
!256 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN5boost6tuples10make_tupleIiiP7UCTNodeEENS0_6detail17make_tuple_mapperIT_T0_T1_NS0_9null_typeES9_S9_S9_S9_S9_S9_E4typeERKS6_RKS7_RKS8_, i64 4375509}
!257 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE9push_backEOS6_, i64 4375505}
!258 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZSt3maxIiERKT_S2_S2_, i64 4375501}
!259 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv, i64 141465}
!260 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv, i64 4516570}
!261 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN8NodeCompC2Ei, i64 47155}
!262 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEE8NodeCompEvT_SF_T0_, i64 47155}
!263 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_, i64 47155}
!264 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2Ev, i64 47155}
!265 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 4422260}
!266 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEptEv, i64 4375109}
!267 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi2EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE14non_const_typeEv, i64 4375109}
!268 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN7UCTNode10link_childEPS_, i64 4375105}
!269 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 4375105}
!270 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, i64 47163}
!271 = !{ptr @_ZN7UCTNode13sort_childrenEi, ptr @_ZN3SMP4LockD1Ev, i64 47163}
!272 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev, i64 47163}
!273 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE9push_backEOS6_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_, i64 4376367}
!274 = !{ptr @_ZN5boost6tuples10make_tupleIiiP7UCTNodeEENS0_6detail17make_tuple_mapperIT_T0_T1_NS0_9null_typeES9_S9_S9_S9_S9_S9_E4typeERKS6_RKS7_RKS8_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_, i64 4376367}
!275 = !{ptr @_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEE8NodeCompEvT_SF_T0_, ptr @_ZN9__gnu_cxx5__ops16__iter_comp_iterI8NodeCompEENS0_15_Iter_comp_iterIT_EES4_, i64 47163}
!276 = !{ptr @_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEE8NodeCompEvT_SF_T0_, ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, i64 47163}
!277 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_, i64 484913}
!278 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_, i64 9237647}
!279 = !{ptr @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_, ptr @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEENSt15iterator_traitsIT_E17iterator_categoryERKSF_, i64 47163}
!280 = !{ptr @_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_, ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, i64 47163}
!281 = !{ptr @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 43944900}
!282 = !{ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi2EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE14non_const_typeEv, ptr @_ZN5boost6tuples3getILi2EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE14non_const_typeERSC_, i64 4376367}
!283 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv, i64 47163}
!284 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, ptr @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_EvT_S8_RSaIT0_E, i64 47163}
!285 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, i64 47163}
!286 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EEC2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev, i64 47163}
!287 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev, ptr @_ZNSaIN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EEEC2Ev, i64 47163}
!288 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_Vector_impl_dataC2Ev, i64 47163}
!289 = !{ptr @_ZNSaIN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EEEC2Ev, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEC2Ev, i64 47163}
!290 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_, i64 4032942}
!291 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv, i64 343425}
!292 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, i64 343425}
!293 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv, i64 4376367}
!294 = !{ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE9constructIS6_JS6_EEEvPT_DpOT0_, i64 10521712}
!295 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc, i64 343424}
!296 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE5beginEv, i64 343424}
!297 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 343424}
!298 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_M_allocateEm, i64 343424}
!299 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_, i64 343424}
!300 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 686848}
!301 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv, i64 686848}
!302 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_, i64 686848}
!303 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m, i64 343424}
!304 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE3endEv, i64 4376367}
!305 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl, i64 4376367}
!306 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 4376367}
!307 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv, i64 686848}
!308 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE4sizeEv, i64 1373693}
!309 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!310 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 343423}
!311 = !{ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 3782470}
!312 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8allocateERS7_m, i64 343423}
!313 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_, ptr @_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_, i64 686848}
!314 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE10deallocateERS7_PS6_m, i64 343423}
!315 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE19_M_get_Tp_allocatorEv, i64 686848}
!316 = !{ptr @_ZNKSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE8max_sizeEv, ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_, i64 686848}
!317 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8max_sizeERKS7_, i64 686848}
!318 = !{ptr @_ZNSt6vectorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE11_S_max_sizeERKS7_, ptr @_ZSt3minImERKT_S2_S2_, i64 686848}
!319 = !{ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8max_sizeERKS7_, ptr @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8max_sizeEv, i64 686848}
!320 = !{ptr @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv, i64 686848}
!321 = !{ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE8allocateERS7_m, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv, i64 343424}
!322 = !{ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE11_M_max_sizeEv, i64 343424}
!323 = !{ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 86}
!324 = !{ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 86}
!325 = !{ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE8allocateEmPKv, ptr @_Znwm, i64 343252}
!326 = !{ptr @_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 2060544}
!327 = !{ptr @_ZSt12__relocate_aIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_, ptr @_ZSt14__relocate_a_1IPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_, i64 686848}
!328 = !{ptr @_ZSt14__relocate_a_1IPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_SaIS6_EET0_T_SA_S9_RT1_, ptr @_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_, i64 6145337}
!329 = !{ptr @_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_, i64 6145345}
!330 = !{ptr @_ZSt19__relocate_object_aIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_SaIS6_EEvPT_PT0_RT1_, ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE7destroyIS6_EEvRS7_PT_, i64 6145345}
!331 = !{ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE7destroyIS6_EEvRS7_PT_, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE7destroyIS6_EEvPT_, i64 6145345}
!332 = !{ptr @_ZNSt16allocator_traitsISaIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEE10deallocateERS7_PS6_m, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE10deallocateEPS6_m, i64 343424}
!333 = !{ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEE10deallocateEPS6_m, ptr @_ZdlPv, i64 343424}
!334 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmiEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_, i64 4376367}
!335 = !{ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_, ptr @_ZN5boost6tuples6detail5cnullEv, i64 30634569}
!336 = !{ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EC2ERKiS7_RKS3_, ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, i64 4376367}
!337 = !{ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, ptr @_ZN5boost6tuples6detail5cnullEv, i64 4376367}
!338 = !{ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEC2IKiS9_KS3_KS4_SB_SB_SB_SB_SB_SB_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, i64 4376367}
!339 = !{ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, ptr @_ZN5boost6tuples6detail5cnullEv, i64 4376367}
!340 = !{ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEC2IKiKS3_KS4_SA_SA_SA_SA_SA_SA_SA_EERT_RT0_RT1_RT2_RT3_RT4_RT5_RT6_RT7_RT8_, ptr @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEC2IKS3_EERT_RKS4_SB_SB_SB_SB_SB_SB_SB_SB_, i64 4376367}
!341 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 47163}
!342 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 47162}
!343 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l, i64 47162}
!344 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E5beginEv, i64 94323}
!345 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, i64 1}
!346 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNKSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E4sizeEv, i64 47161}
!347 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, i64 47161}
!348 = !{ptr @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev, i64 47162}
!349 = !{ptr @_ZN9__gnu_cxx5__ops16__iter_comp_iterI8NodeCompEENS0_15_Iter_comp_iterIT_EES4_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEC2ES2_, i64 47163}
!350 = !{ptr @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 2543578}
!351 = !{ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l, ptr @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl, i64 47163}
!352 = !{ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l, ptr @_ZSt29__uninitialized_construct_bufIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_, i64 47162}
!353 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 141489}
!354 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, i64 47163}
!355 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, i64 2}
!356 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, i64 94324}
!357 = !{ptr @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, i64 47163}
!358 = !{ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev, ptr @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_, i64 47163}
!359 = !{ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev, ptr @_ZNSt8__detail25__return_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EEEEvPT_m, i64 47163}
!360 = !{ptr @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl, ptr @_ZnwmRKSt9nothrow_t, i64 46796}
!361 = !{ptr @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl, ptr @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IRS7_RlTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_, i64 46795}
!362 = !{ptr @_ZSt20get_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEESt4pairIPT_lEl, ptr @_ZNSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElEC2IS7_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 368}
!363 = !{ptr @_ZSt29__uninitialized_construct_bufIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_, ptr @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_, i64 47163}
!364 = !{ptr @_ZNSt8__detail25__return_temporary_bufferIN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EEEEvPT_m, ptr @_ZdlPv, i64 47163}
!365 = !{ptr @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 94324}
!366 = !{ptr @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_, ptr @_ZSt10_ConstructIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEJS6_EEvPT_DpOT0_, i64 2199807}
!367 = !{ptr @_ZNSt38__uninitialized_construct_buf_dispatchILb0EE5__ucrIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEN9__gnu_cxx17__normal_iteratorIS9_St6vectorIS8_SaIS8_EEEEEEvT_SG_T0_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 47162}
!368 = !{ptr @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EEEEvT_SA_, i64 94326}
!369 = !{ptr @_ZN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEaSERKS7_, ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEaSERKS6_, i64 32841243}
!370 = !{ptr @_ZN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEaSERKS6_, ptr @_ZN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEaSERKS5_, i64 32841243}
!371 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 678637}
!372 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, i64 910117}
!373 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 4376356}
!374 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_, i64 3710598}
!375 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 488718}
!376 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_, i64 244359}
!377 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 244359}
!378 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE, i64 3466239}
!379 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_, i64 3466239}
!380 = !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 3710598}
!381 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEC2ERKS8_, i64 3521649}
!382 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 18835734}
!383 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_, ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, i64 9417867}
!384 = !{ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_, i64 488718}
!385 = !{ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_, ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_, i64 244359}
!386 = !{ptr @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 8276142}
!387 = !{ptr @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv, i64 4138071}
!388 = !{ptr @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_, ptr @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_, i64 4138071}
!389 = !{ptr @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterI8NodeCompEEEvT_T0_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 4138071}
!390 = !{ptr @_ZN9__gnu_cxx5__ops15__val_comp_iterI8NodeCompEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS4_EE, ptr @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEC2EONS0_15_Iter_comp_iterIS2_EE, i64 3466249}
!391 = !{ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv, i64 121584028}
!392 = !{ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv, i64 137946}
!393 = !{ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi1EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv, ptr @_ZN5boost6tuples3getILi1EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_, i64 121584030}
!394 = !{ptr @_ZNK5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEE3getILi0EEENS0_13access_traitsINS0_7elementIXT_ES7_E4typeEE10const_typeEv, ptr @_ZN5boost6tuples3getILi0EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_, i64 137948}
!395 = !{ptr @_ZN5boost6tuples3getILi1EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_, ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE, i64 121584030}
!396 = !{ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE, ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIP7UCTNodeNS0_9null_typeEEEEET_RKNS7_IT0_T1_EE, i64 121584030}
!397 = !{ptr @_ZN5boost6tuples3getILi0EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE10const_typeERKSC_, ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRKiiNS0_4consIiNS7_IP7UCTNodeNS0_9null_typeEEEEEEET_RKNS7_IT0_T1_EE, i64 137948}
!398 = !{ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, i64 733077}
!399 = !{ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_, ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 244359}
!400 = !{ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_ET1_T0_SF_SE_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_, i64 244359}
!401 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, i64 769217}
!402 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, i64 769217}
!403 = !{ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, ptr @_ZSt23__copy_move_backward_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 247912}
!404 = !{ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 3918514}
!405 = !{ptr @_ZSt23__copy_move_backward_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_, i64 247912}
!406 = !{ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 702972}
!407 = !{ptr @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 4138070}
!408 = !{ptr @_ZN9__gnu_cxx5__ops14_Val_comp_iterI8NodeCompEclIN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_, ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, i64 4138070}
!409 = !{ptr @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 4352938}
!410 = !{ptr @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_, ptr @_ZSt4swapIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_, i64 2176469}
!411 = !{ptr @_ZSt4swapIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 4352938}
!412 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 94326}
!413 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, i64 94326}
!414 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, i64 136937}
!415 = !{ptr @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, i64 136937}
!416 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_, i64 47162}
!417 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, i64 23733}
!418 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, i64 23429}
!419 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_, i64 1}
!420 = !{ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, ptr @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_SI_T0_SJ_T1_SJ_T2_, i64 2}
!421 = !{ptr @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 678632}
!422 = !{ptr @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, i64 584306}
!423 = !{ptr @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_, i64 678632}
!424 = !{ptr @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl, i64 584306}
!425 = !{ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZN9__gnu_cxxmiIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_, i64 586195}
!426 = !{ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEplEl, i64 1210837}
!427 = !{ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, i64 449258}
!428 = !{ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEpLEl, i64 312321}
!429 = !{ptr @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt3minIlERKT_S2_S2_, i64 136937}
!430 = !{ptr @_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, i64 260362}
!431 = !{ptr @_ZSt17__merge_sort_loopIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_T1_T2_, ptr @_ZSt3minIlERKT_S2_S2_, i64 136937}
!432 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 6889944}
!433 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_, i64 3098394}
!434 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 3098394}
!435 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 3098394}
!436 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 3098394}
!437 = !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_, i64 898518}
!438 = !{ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEET_SE_, i64 1891362}
!439 = !{ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_, ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_, i64 945681}
!440 = !{ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, i64 1891362}
!441 = !{ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 945681}
!442 = !{ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_, ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 945681}
!443 = !{ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET1_T0_SF_SE_, ptr @_ZSt12__niter_wrapIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_RKS8_S8_, i64 945681}
!444 = !{ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, ptr @_ZSt14__copy_move_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 1466986}
!445 = !{ptr @_ZSt14__copy_move_a2ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_, i64 1466986}
!446 = !{ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPN5boost6tuples5tupleIiiP7UCTNodeNS4_9null_typeES8_S8_S8_S8_S8_S8_EESA_EET0_T_SC_SB_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 10381718}
!447 = !{ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EESC_EEbT_T0_, i64 4442154}
!448 = !{ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 4442154}
!449 = !{ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 4442154}
!450 = !{ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 4442154}
!451 = !{ptr @_ZSt12__move_mergeIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterI8NodeCompEEET0_T_SJ_SJ_SJ_SI_T1_, ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, i64 520724}
!452 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EESC_EEbT_T0_, ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, i64 4442170}
!453 = !{ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 1042610}
!454 = !{ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, i64 521305}
!455 = !{ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 1042610}
!456 = !{ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, i64 521305}
!457 = !{ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt14__copy_move_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 521305}
!458 = !{ptr @_ZSt13__copy_move_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_, i64 521305}
!459 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxxneIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 640626}
!460 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_, i64 628610}
!461 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 719653}
!462 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 628610}
!463 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 719653}
!464 = !{ptr @_ZSt21__move_merge_adaptiveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZSt4moveIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, i64 12017}
!465 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 498746}
!466 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, i64 3554}
!467 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv, i64 2077880}
!468 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_, i64 1582695}
!469 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 2058012}
!470 = !{ptr @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterI8NodeCompEEEvT_SI_T0_SJ_T1_T2_, ptr @_ZN5boost6tuples5tupleIiiP7UCTNodeNS0_9null_typeES4_S4_S4_S4_S4_S4_EaSEOS5_, i64 1582695}
!471 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 1241624}
!472 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclINS_17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS7_9null_typeESB_SB_SB_SB_SB_SB_EESt6vectorISC_SaISC_EEEESD_EEbT_T0_, ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, i64 1241624}
!473 = !{ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, ptr @_ZSt12__miter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 7106}
!474 = !{ptr @_ZSt13move_backwardIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_, ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, i64 3553}
!475 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEdeEv, i64 1582962}
!476 = !{ptr @_ZN9__gnu_cxx5__ops15_Iter_comp_iterI8NodeCompEclIPN5boost6tuples5tupleIiiP7UCTNodeNS6_9null_typeESA_SA_SA_SA_SA_SA_EENS_17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEEbT_T0_, ptr @_ZN8NodeCompclEN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_, i64 1582962}
!477 = !{ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEET_S8_, i64 7106}
!478 = !{ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_baseIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESt6vectorIS6_SaIS6_EEET_N9__gnu_cxx17__normal_iteratorISB_T0_EE, i64 3553}
!479 = !{ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt23__copy_move_backward_a1ILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES7_ET1_T0_S9_S8_, i64 3553}
!480 = !{ptr @_ZSt22__copy_move_backward_aILb1EPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET1_T0_SF_SE_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES9_ET_SE_T0_, i64 3553}
!481 = !{ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxxeqIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 47163}
!482 = !{ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEmmEv, i64 2223540}
!483 = !{ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, i64 2223540}
!484 = !{ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, ptr @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEESD_EvT_T0_, i64 2176378}
!485 = !{ptr @_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEppEv, i64 2176378}
!486 = !{ptr @_ZN9__gnu_cxxltIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEEbRKNS_17__normal_iteratorIT_T0_EESH_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEE4baseEv, i64 4447264}
!487 = !{ptr @_ZN5boost6tuples3getILi2EiNS0_4consIiNS2_IP7UCTNodeNS0_9null_typeEEEEEEENS0_13access_traitsINS0_7elementIXT_ENS2_IT0_T1_EEE4typeEE14non_const_typeERSC_, ptr @_ZN5boost6tuples6detail9get_classILi2EE3getIRP7UCTNodeiNS0_4consIiNS8_IS6_NS0_9null_typeEEEEEEET_RNS8_IT0_T1_EE, i64 4376367}
!488 = !{ptr @_ZN5boost6tuples6detail9get_classILi2EE3getIRP7UCTNodeiNS0_4consIiNS8_IS6_NS0_9null_typeEEEEEEET_RNS8_IT0_T1_EE, ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRP7UCTNodeiNS0_4consIS6_NS0_9null_typeEEEEET_RNS8_IT0_T1_EE, i64 4376367}
!489 = !{ptr @_ZN5boost6tuples6detail9get_classILi1EE3getIRP7UCTNodeiNS0_4consIS6_NS0_9null_typeEEEEET_RNS8_IT0_T1_EE, ptr @_ZN5boost6tuples6detail9get_classILi0EE3getIRP7UCTNodeS6_NS0_9null_typeEEET_RNS0_4consIT0_T1_EE, i64 4376367}
!490 = !{ptr @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EES6_EvT_S8_RSaIT0_E, ptr @_ZSt8_DestroyIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEEvT_S8_, i64 47163}
!491 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE13_M_deallocateEPS6_m, i64 47163}
!492 = !{ptr @_ZNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EED2Ev, ptr @_ZNSt15__new_allocatorIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EEED2Ev, i64 47163}
!493 = !{ptr @_ZN7UCTNode10invalidateEv, ptr @_ZN7UCTNode9get_mutexEv, i64 402}
!494 = !{ptr @_ZN7UCTNode10invalidateEv, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 402}
!495 = !{ptr @_ZN7UCTNode10invalidateEv, ptr @_ZN3SMP4LockD1Ev, i64 402}
!496 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN7Playout9get_scoreEv, i64 32407242}
!497 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZNK7UCTNode8get_moveEv, i64 1979964906}
!498 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN7Playout11passthroughEii, i64 1979964907}
!499 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN7UCTNode9get_mutexEv, i64 337948423}
!500 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 337948423}
!501 = !{ptr @_ZN7UCTNode10updateRAVEER7Playouti, ptr @_ZN3SMP4LockD1Ev, i64 337948423}
!502 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!503 = !{!"function_entry_count", i64 12331874}
!504 = !{!505, !506, i64 0}
!505 = !{!"_ZTS7UCTNode", !506, i64 0, !506, i64 8, !509, i64 16, !509, i64 20, !509, i64 24, !509, i64 28, !509, i64 32, !510, i64 36, !509, i64 40, !511, i64 48}
!506 = !{!"any pointer", !507, i64 0}
!507 = !{!"omnipotent char", !508, i64 0}
!508 = !{!"Simple C++ TBAA"}
!509 = !{!"int", !507, i64 0}
!510 = !{!"bool", !507, i64 0}
!511 = !{!"_ZTSN3SMP5MutexE", !512, i64 0}
!512 = !{!"long", !507, i64 0}
!513 = !{!505, !509, i64 16}
!514 = !{!505, !509, i64 20}
!515 = !{!505, !509, i64 24}
!516 = !{!505, !510, i64 36}
!517 = !{!505, !509, i64 40}
!518 = !{!505, !509, i64 32}
!519 = !{!505, !509, i64 28}
!520 = !{!"branch_weights", i32 970, i32 12330905}
!521 = !{!505, !506, i64 8}
!522 = !{!"branch_weights", i32 12330905, i32 0}
!523 = distinct !{!523, !524}
!524 = !{!"llvm.loop.mustprogress"}
!525 = !{!"function_entry_count", i64 390125718}
!526 = !{!"function_entry_count", i64 1979946341}
!527 = !{!"function_entry_count", i64 16707271}
!528 = !{!"function_entry_count", i64 201906}
!529 = !{!"branch_weights", i32 1, i32 201907}
!530 = !{!"branch_weights", i32 170412, i32 31496}
!531 = !{!532, !509, i64 1764}
!532 = !{!"_ZTS9FastBoard", !533, i64 0, !533, i64 882, !509, i64 1764, !509, i64 1768, !509, i64 1772, !534, i64 1776, !535, i64 3540, !535, i64 4424, !535, i64 5308, !535, i64 6192, !533, i64 7076, !536, i64 7960, !537, i64 7976, !538, i64 8008, !538, i64 8016, !539, i64 8024, !509, i64 8048}
!533 = !{!"_ZTSN5boost5arrayItLm441EEE", !507, i64 0}
!534 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !507, i64 0}
!535 = !{!"_ZTSN5boost5arrayItLm442EEE", !507, i64 0}
!536 = !{!"_ZTSN5boost5arrayIiLm4EEE", !507, i64 0}
!537 = !{!"_ZTSN5boost5arrayIiLm8EEE", !507, i64 0}
!538 = !{!"_ZTSN5boost5arrayIiLm2EEE", !507, i64 0}
!539 = !{!"_ZTSSt6vectorIiSaIiEE", !540, i64 0}
!540 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !541, i64 0}
!541 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !542, i64 0}
!542 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !506, i64 0, !506, i64 8, !506, i64 16}
!543 = !{!"branch_weights", i32 170411, i32 1}
!544 = !{!509, !509, i64 0}
!545 = !{!546, !546, i64 0}
!546 = !{!"short", !507, i64 0}
!547 = !{!548, !509, i64 8084}
!548 = !{!"_ZTS9FastState", !549, i64 0, !551, i64 8072, !509, i64 8076, !509, i64 8080, !509, i64 8084, !509, i64 8088, !509, i64 8092, !509, i64 8096, !552, i64 8100, !553, i64 8196}
!549 = !{!"_ZTS9FullBoard", !532, i64 0, !550, i64 8056, !550, i64 8064}
!550 = !{!"long long", !507, i64 0}
!551 = !{!"float", !507, i64 0}
!552 = !{!"_ZTSN5boost5arrayIiLm24EEE", !507, i64 0}
!553 = !{!"_ZTSN5boost5arrayISt4pairIiiELm24EEE", !507, i64 0}
!554 = !{!"branch_weights", i32 3980, i32 12742244}
!555 = !{!"branch_weights", i32 12533679, i32 208566}
!556 = !{!532, !509, i64 1768}
!557 = !{!"branch_weights", i32 373186, i32 12160494}
!558 = !{!"branch_weights", i32 12575812, i32 170411}
!559 = distinct !{!559, !524}
!560 = !{!506, !506, i64 0}
!561 = !{!"branch_weights", i32 201906, i32 1}
!562 = !{!"branch_weights", i32 170412, i32 12160494}
!563 = !{!"branch_weights", i32 1187348, i32 10973147}
!564 = !{!"branch_weights", i32 266422, i32 11894073}
!565 = !{!"branch_weights", i32 12128999, i32 201906}
!566 = distinct !{!566, !524}
!567 = !{!"function_entry_count", i64 71160989}
!568 = !{!"function_entry_count", i64 202367}
!569 = !{!"function_entry_count", i64 32030604394}
!570 = !{!"function_entry_count", i64 77263380}
!571 = !{!542, !506, i64 8}
!572 = !{!542, !506, i64 16}
!573 = !{!"branch_weights", i32 10239256, i32 67024126}
!574 = !{!"function_entry_count", i64 170411}
!575 = !{!576, !506, i64 0}
!576 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !506, i64 0}
!577 = !{!"function_entry_count", i64 10455771}
!578 = !{!"function_entry_count", i64 12532810}
!579 = !{!"function_entry_count", i64 22957086}
!580 = !{!"function_entry_count", i64 48982794}
!581 = !{!"function_entry_count", i64 1453768}
!582 = !{!"function_entry_count", i64 12330904}
!583 = !{!"function_entry_count", i64 9372256}
!584 = !{!542, !506, i64 0}
!585 = !{!"function_entry_count", i64 202374}
!586 = !{!"function_entry_count", i64 7991268}
!587 = !{!"function_entry_count", i64 10239255}
!588 = !{!"function_entry_count", i64 10252442}
!589 = !{!512, !512, i64 0}
!590 = !{!"branch_weights", i32 1, i32 10252443}
!591 = !{!"function_entry_count", i64 10252441}
!592 = !{!"function_entry_count", i64 18041313}
!593 = !{!"branch_weights", i32 7788865, i32 10252450}
!594 = !{!"function_entry_count", i64 20504883}
!595 = !{!"function_entry_count", i64 53747328}
!596 = !{!"function_entry_count", i64 97749716}
!597 = !{!"function_entry_count", i64 19624698}
!598 = !{!"branch_weights", i32 9372251, i32 10252449}
!599 = !{!"function_entry_count", i64 20504886}
!600 = !{!"function_entry_count", i64 899000483}
!601 = !{!"function_entry_count", i64 23031751}
!602 = !{!"branch_weights", i32 6217633, i32 16814120}
!603 = !{!"function_entry_count", i64 20504893}
!604 = !{!"function_entry_count", i64 28293760}
!605 = !{!"function_entry_count", i64 46063954}
!606 = !{!"branch_weights", i32 1, i32 46063955}
!607 = !{!"function_entry_count", i64 30757342}
!608 = !{!"function_entry_count", i64 10252449}
!609 = !{!"branch_weights", i32 1, i32 2000}
!610 = !{!"branch_weights", i32 4082007, i32 16422878}
!611 = !{!"function_entry_count", i64 69303513}
!612 = !{!"function_entry_count", i64 10252448}
!613 = !{!"branch_weights", i32 13187, i32 157226}
!614 = !{!"function_entry_count", i64 13186}
!615 = !{!616, !506, i64 0}
!616 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE", !506, i64 0}
!617 = !{!"function_entry_count", i64 33583715}
!618 = !{!"function_entry_count", i64 28111432}
!619 = !{!"function_entry_count", i64 69455494}
!620 = !{!"function_entry_count", i64 970}
!621 = !{!"branch_weights", i32 1, i32 970}
!622 = !{!"branch_weights", i32 971, i32 132988}
!623 = !{!"branch_weights", i32 1, i32 132988}
!624 = !{!"branch_weights", i32 970, i32 132988}
!625 = !{!"function_entry_count", i64 2012554315}
!626 = !{!"function_entry_count", i64 0}
!627 = distinct !{!627, !524}
!628 = !{!"function_entry_count", i64 15449970}
!629 = !{!630, !506, i64 0}
!630 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !506, i64 0, !506, i64 8, !506, i64 16}
!631 = !{!630, !506, i64 8}
!632 = !{!"function_entry_count", i64 18212926}
!633 = !{!532, !509, i64 8048}
!634 = !{!"function_entry_count", i64 7788864}
!635 = !{!"function_entry_count", i64 7788871}
!636 = !{!"function_entry_count", i64 17161144}
!637 = !{!"function_entry_count", i64 7789311}
!638 = !{!"function_entry_count", i64 16958771}
!639 = !{!"function_entry_count", i64 7788881}
!640 = !{!"function_entry_count", i64 15578622}
!641 = !{!"branch_weights", i32 7789312, i32 1}
!642 = !{!"function_entry_count", i64 65148944}
!643 = !{!"function_entry_count", i64 40299030}
!644 = !{!"function_entry_count", i64 33662916}
!645 = !{!"function_entry_count", i64 15450864}
!646 = !{!"function_entry_count", i64 58513802}
!647 = !{!630, !506, i64 16}
!648 = !{!"function_entry_count", i64 33661998}
!649 = !{!"function_entry_count", i64 15449990}
!650 = !{!"function_entry_count", i64 15450948}
!651 = !{!"function_entry_count", i64 27875384}
!652 = !{!"branch_weights", i32 1749, i32 27873637}
!653 = !{!"function_entry_count", i64 27873636}
!654 = !{!"function_entry_count", i64 52722676}
!655 = !{!"function_entry_count", i64 30901728}
!656 = !{!"function_entry_count", i64 89997984}
!657 = !{!"branch_weights", i32 1749, i32 15449117}
!658 = !{!"function_entry_count", i64 216494610}
!659 = !{!660, !506, i64 0}
!660 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEE", !506, i64 0}
!661 = !{!"function_entry_count", i64 30638340}
!662 = !{!"branch_weights", i32 2764705, i32 27873637}
!663 = !{!"function_entry_count", i64 18213858}
!664 = !{!"function_entry_count", i64 38472780}
!665 = !{!"branch_weights", i32 18020218, i32 20452564}
!666 = !{!"branch_weights", i32 19262152, i32 19210630}
!667 = !{!"branch_weights", i32 10198156, i32 9063997}
!668 = !{!"branch_weights", i32 -1663391220, i32 -1295312547}
!669 = !{!"function_entry_count", i64 1672480531}
!670 = !{!"function_entry_count", i64 561583}
!671 = !{!"function_entry_count", i64 1634007751}
!672 = !{!"branch_weights", i32 808407792, i32 825599961}
!673 = !{!"function_entry_count", i64 3705103029}
!674 = !{!"function_entry_count", i64 1979950213}
!675 = !{!"function_entry_count", i64 6234979}
!676 = !{!"function_entry_count", i64 32407242}
!677 = !{!"branch_weights", i32 1, i32 127}
!678 = !{!"branch_weights", i32 32407243, i32 1}
!679 = !{!"branch_weights", i32 127, i32 -146840319}
!680 = distinct !{!680, !524}
!681 = !{!"branch_weights", i32 1979944396, i32 1}
!682 = !{!"branch_weights", i32 348959204, i32 1630985193}
!683 = !{!"branch_weights", i32 97427717, i32 1882516680}
!684 = !{!"branch_weights", i32 32407243, i32 1947557699}
!685 = !{!"branch_weights", i32 1979944396, i32 20546}
!686 = distinct !{!686, !524}
!687 = distinct !{!687, !524}
!688 = !{!"function_entry_count", i64 1979964940}
!689 = !{i8 0, i8 2}
!690 = !{}
!691 = !{!"function_entry_count", i64 47163}
!692 = !{!"branch_weights", i32 1, i32 47163}
!693 = !{!"branch_weights", i32 1368727, i32 3007642}
!694 = !{!"branch_weights", i32 47163, i32 4329205}
!695 = distinct !{!695, !524}
!696 = !{i64 0, i64 8, !560}
!697 = !{!"branch_weights", i32 47163, i32 1}
!698 = !{!"branch_weights", i32 4329205, i32 47163}
!699 = distinct !{!699, !524}
!700 = !{!"function_entry_count", i64 4376367}
!701 = !{!"branch_weights", i32 92633, i32 4283736}
!702 = !{!"function_entry_count", i64 484913}
!703 = !{!"function_entry_count", i64 9237647}
!704 = !{!705, !509, i64 0}
!705 = !{!"_ZTS8NodeComp", !509, i64 0}
!706 = !{!707, !506, i64 0}
!707 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS2_9null_typeES6_S6_S6_S6_S6_S6_EESt6vectorIS7_SaIS7_EEEE", !506, i64 0}
!708 = !{!"function_entry_count", i64 21972450}
!709 = !{!"function_entry_count", i64 21834324}
!710 = !{!711, !506, i64 0}
!711 = !{!"_ZTSNSt12_Vector_baseIN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EESaIS6_EE17_Vector_impl_dataE", !506, i64 0, !506, i64 8, !506, i64 16}
!712 = !{!711, !506, i64 8}
!713 = !{!711, !506, i64 16}
!714 = !{!"branch_weights", i32 343425, i32 4032944}
!715 = !{!"function_entry_count", i64 10521712}
!716 = !{!"function_entry_count", i64 343424}
!717 = !{!"branch_weights", i32 1, i32 343425}
!718 = !{!"function_entry_count", i64 1891235}
!719 = !{!"function_entry_count", i64 686848}
!720 = !{!"function_entry_count", i64 59323574}
!721 = !{!"function_entry_count", i64 734011}
!722 = !{!"function_entry_count", i64 390587}
!723 = !{!"branch_weights", i32 47164, i32 343425}
!724 = !{!"function_entry_count", i64 1373696}
!725 = !{!"function_entry_count", i64 1030272}
!726 = !{!"branch_weights", i32 1, i32 686848}
!727 = !{!"branch_weights", i32 686848, i32 5458498}
!728 = distinct !{!728, !524}
!729 = !{!"function_entry_count", i64 4055941}
!730 = !{!"function_entry_count", i64 6145345}
!731 = !{!"function_entry_count", i64 57016118}
!732 = !{!"function_entry_count", i64 17620576}
!733 = !{!"function_entry_count", i64 39387303}
!734 = !{!735, !509, i64 0}
!735 = !{!"_ZTSN5boost6tuples4consIiNS1_IiNS1_IP7UCTNodeNS0_9null_typeEEEEEEE", !509, i64 0, !736, i64 8}
!736 = !{!"_ZTSN5boost6tuples4consIiNS1_IP7UCTNodeNS0_9null_typeEEEEE", !509, i64 0, !737, i64 8}
!737 = !{!"_ZTSN5boost6tuples4consIP7UCTNodeNS0_9null_typeEEE", !506, i64 0}
!738 = !{!736, !509, i64 0}
!739 = !{!737, !506, i64 0}
!740 = !{!"branch_weights", i32 1, i32 47164}
!741 = !{!"function_entry_count", i64 1271789}
!742 = !{!743, !512, i64 0}
!743 = !{!"_ZTSSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN5boost6tuples5tupleIiiP7UCTNodeNS3_9null_typeES7_S7_S7_S7_S7_S7_EESt6vectorIS8_SaIS8_EEEES8_E", !512, i64 0, !512, i64 8, !506, i64 16}
!744 = !{!743, !506, i64 16}
!745 = !{!743, !512, i64 8}
!746 = !{!"function_entry_count", i64 94326}
!747 = !{!"branch_weights", i32 2130706077, i32 16777571}
!748 = !{!"branch_weights", i32 0, i32 1}
!749 = distinct !{!749, !524}
!750 = !{!751, !506, i64 0}
!751 = !{!"_ZTSSt4pairIPN5boost6tuples5tupleIiiP7UCTNodeNS1_9null_typeES5_S5_S5_S5_S5_S5_EElE", !506, i64 0, !512, i64 8}
!752 = !{!751, !512, i64 8}
!753 = !{!"branch_weights", i32 47163, i32 2105573}
!754 = distinct !{!754, !524}
!755 = !{!"function_entry_count", i64 2199898}
!756 = !{!"function_entry_count", i64 32841243}
!757 = !{!"function_entry_count", i64 678637}
!758 = !{!"branch_weights", i32 12879, i32 665760}
!759 = !{!"branch_weights", i32 665759, i32 1}
!760 = !{!"branch_weights", i32 244360, i32 3466250}
!761 = !{!"branch_weights", i32 3044850, i32 665759}
!762 = distinct !{!762, !524}
!763 = !{!"function_entry_count", i64 3521649}
!764 = !{!"function_entry_count", i64 9417867}
!765 = !{!"function_entry_count", i64 244359}
!766 = !{!"function_entry_count", i64 3466249}
!767 = !{!"branch_weights", i32 671822, i32 2794428}
!768 = !{!"branch_weights", i32 0, i32 671822}
!769 = distinct !{!769, !524}
!770 = !{!"function_entry_count", i64 20822693}
!771 = !{!"branch_weights", i32 6152059, i32 14670636}
!772 = !{!"branch_weights", i32 5540592, i32 611468}
!773 = !{!"branch_weights", i32 6525599, i32 13685629}
!774 = !{!"branch_weights", i32 5540592, i32 985008}
!775 = !{!"branch_weights", i32 5540592, i32 13685629}
!776 = !{!"branch_weights", i32 5540592, i32 1}
!777 = !{!"branch_weights", i32 1100713, i32 12584917}
!778 = !{!"branch_weights", i32 963179, i32 137535}
!779 = !{!"branch_weights", i32 52850, i32 910330}
!780 = !{!"branch_weights", i32 34986, i32 17865}
!781 = !{!"branch_weights", i32 997, i32 33990}
!782 = !{!"function_entry_count", i64 121584030}
!783 = !{!"function_entry_count", i64 137948}
!784 = !{!"function_entry_count", i64 2380080}
!785 = !{!"function_entry_count", i64 769217}
!786 = !{!"function_entry_count", i64 247912}
!787 = !{!"function_entry_count", i64 3918514}
!788 = !{!"branch_weights", i32 247912, i32 1}
!789 = !{!"branch_weights", i32 455063, i32 247912}
!790 = distinct !{!790, !524}
!791 = !{!"function_entry_count", i64 8439931}
!792 = !{!"function_entry_count", i64 4138070}
!793 = !{!"function_entry_count", i64 2176469}
!794 = distinct !{!794, !524}
!795 = distinct !{!795, !524}
!796 = !{!"function_entry_count", i64 896633}
!797 = distinct !{!797, !524}
!798 = distinct !{!798, !524}
!799 = distinct !{!799, !524}
!800 = distinct !{!800, !524}
!801 = !{!"branch_weights", i32 94326, i32 1}
!802 = !{!"branch_weights", i32 42612, i32 94326}
!803 = distinct !{!803, !524}
!804 = !{!"branch_weights", i32 556158215, i32 563350225}
!805 = !{!"branch_weights", i32 1, i32 23430}
!806 = !{!"branch_weights", i32 1, i32 94326}
!807 = !{!"branch_weights", i32 94326, i32 489986}
!808 = distinct !{!808, !524}
!809 = !{!"function_entry_count", i64 136937}
!810 = !{!"branch_weights", i32 1, i32 136937}
!811 = !{!"branch_weights", i32 136937, i32 175386}
!812 = distinct !{!812, !524}
!813 = !{!"branch_weights", i32 13512, i32 123426}
!814 = !{!"branch_weights", i32 123426, i32 0}
!815 = distinct !{!815, !524}
!816 = !{!"function_entry_count", i64 449259}
!817 = !{!"branch_weights", i32 382688, i32 1}
!818 = !{!"branch_weights", i32 5707260, i32 449260}
!819 = !{!"branch_weights", i32 597739, i32 5109522}
!820 = !{!"branch_weights", i32 5391143, i32 382688}
!821 = distinct !{!821, !524}
!822 = !{!"function_entry_count", i64 273874}
!823 = !{!"branch_weights", i32 135693, i32 138183}
!824 = !{!"function_entry_count", i64 945681}
!825 = !{!"function_entry_count", i64 1466986}
!826 = !{!"branch_weights", i32 1466986, i32 1}
!827 = !{!"branch_weights", i32 8914739, i32 1466986}
!828 = distinct !{!828, !524}
!829 = !{!"function_entry_count", i64 260362}
!830 = !{!"branch_weights", i32 260362, i32 1}
!831 = !{!"branch_weights", i32 522518, i32 3919654}
!832 = !{!"branch_weights", i32 4517354, i32 185180}
!833 = !{!"branch_weights", i32 4181809, i32 260362}
!834 = distinct !{!834, !524}
!835 = !{!"function_entry_count", i64 4442170}
!836 = !{!"function_entry_count", i64 521305}
!837 = !{!"function_entry_count", i64 1049716}
!838 = !{!"function_entry_count", i64 23734}
!839 = !{!"branch_weights", i32 1, i32 23153}
!840 = !{!"branch_weights", i32 1241625, i32 23735}
!841 = !{!"branch_weights", i32 179828, i32 1061798}
!842 = !{!"branch_weights", i32 23153, i32 1219053}
!843 = distinct !{!843, !524}
!844 = !{!"function_entry_count", i64 23429}
!845 = !{!"branch_weights", i32 7, i32 23424}
!846 = !{!"branch_weights", i32 475398, i32 1107566}
!847 = !{!"branch_weights", i32 3554, i32 471845}
!848 = distinct !{!848, !524}
!849 = !{!"branch_weights", i32 19871, i32 1087696}
!850 = !{!"function_entry_count", i64 1241624}
!851 = !{!"function_entry_count", i64 3553}
!852 = !{!"function_entry_count", i64 1582962}
!853 = !{!"branch_weights", i32 2129307, i32 47163}
!854 = distinct !{!854, !524}
!855 = !{!"function_entry_count", i64 2223632}
!856 = !{!"function_entry_count", i64 51043}
!857 = !{!"function_entry_count", i64 5818}
!858 = !{!"function_entry_count", i64 2}
!859 = !{!"branch_weights", i32 3, i32 9}
!860 = !{!"branch_weights", i32 127, i32 1281}
!861 = distinct !{!861, !524}
!862 = !{!"function_entry_count", i64 6}
!863 = !{!"branch_weights", i32 7, i32 7}
!864 = !{!"branch_weights", i32 127, i32 1537}
!865 = distinct !{!865, !524}
!866 = !{!"function_entry_count", i64 402}
!867 = !{!"branch_weights", i32 1, i32 32407242}
!868 = !{!"branch_weights", i32 989825197, i32 990139745}
!869 = !{!"branch_weights", i32 169118414, i32 820706784}
!870 = !{!"branch_weights", i32 73820376, i32 95298039}
!871 = !{!"branch_weights", i32 168830015, i32 821309731}
!872 = !{!"branch_weights", i32 93301143, i32 75528873}
!873 = !{!"branch_weights", i32 32407242, i32 1947557699}
!874 = distinct !{!874, !524}
