; ModuleID = 'GameState.cpp'
source_filename = "GameState.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.17", %"class.boost::array.18" }
%"class.boost::array.4" = type { [2 x i32] }
%"class.boost::array.17" = type { [2 x i8] }
%"class.boost::array.18" = type { [2 x %class.Time] }
%class.Time = type { i32 }
%class.GameState = type <{ %class.KoState, %"class.std::vector.12", %class.TimeControl, [4 x i8] }>
%class.KoState = type { %class.FastState.base, %"class.std::vector.7", %"class.std::vector.7" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6" }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32 }>
%"class.boost::array.0" = type { [441 x i32] }
%"class.boost::array.1" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.2" = type { [4 x i32] }
%"class.boost::array.3" = type { [8 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::array.5" = type { [24 x i32] }
%"class.boost::array.6" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6", [4 x i8] }>
%"class.std::allocator.9" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.19" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.20" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.21" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.22" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::auto_ptr" = type { ptr }
%class.UCTSearch = type <{ ptr, %class.UCTNode, i32, i32, float, i8, i8, [2 x i8], ptr, i8, i8, [6 x i8] }>
%class.UCTNode = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i32, %"class.SMP::Mutex" }
%"class.SMP::Mutex" = type { i64 }

$_ZNSt6vectorI7KoStateSaIS0_EE5clearEv = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE15_M_erase_at_endEPS0_ = comdat any

$_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIP7KoStateEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_ = comdat any

$_ZSt8_DestroyI7KoStateEvPT_ = comdat any

$_ZN7KoStateD2Ev = comdat any

$_ZNSt6vectorIySaIyEED2Ev = comdat any

$_ZN9FastStateD2Ev = comdat any

$_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIySaIyEED2Ev = comdat any

$_ZSt8_DestroyIPyEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym = comdat any

$_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym = comdat any

$_ZNSt15__new_allocatorIyE10deallocateEPym = comdat any

$_ZN9FastBoardD2Ev = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE3endEv = comdat any

$_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_ = comdat any

$_ZN7KoStateC2ERKS_ = comdat any

$_ZN9FastStateC2ERKS_ = comdat any

$_ZNSt6vectorIySaIyEEC2ERKS1_ = comdat any

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

$_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIiEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev = comdat any

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

$_ZNKSt6vectorIySaIyEE4sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIyED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIySaIyEE5beginEv = comdat any

$_ZNKSt6vectorIySaIyEE3endEv = comdat any

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

$_ZNKSt6vectorI7KoStateSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIP7KoStateSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE5beginEv = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE7destroyIS0_EEvRS1_PT_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNKSt6vectorI7KoStateSaIS0_EE8max_sizeEv = comdat any

$_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE8max_sizeERKS1_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorI7KoStateE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorI7KoStateE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE8allocateERS1_m = comdat any

$_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt14__relocate_a_1IP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt12__niter_baseIP7KoStateET_S2_ = comdat any

$_ZSt19__relocate_object_aI7KoStateS0_SaIS0_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorI7KoStateE9constructIS0_JS0_EEEvPT_DpOT0_ = comdat any

$_ZN7KoStateC2EOS_ = comdat any

$_ZN9FastStateC2EOS_ = comdat any

$_ZNSt6vectorIySaIyEEC2EOS1_ = comdat any

$_ZN9FullBoardC2EOS_ = comdat any

$_ZN9FastBoardC2EOS_ = comdat any

$_ZNSt6vectorIiSaIiEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_ = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2EOS2_ = comdat any

$_ZNSt15__new_allocatorI7KoStateE7destroyIS0_EEvPT_ = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m = comdat any

$_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EEixEm = comdat any

$_ZN7KoStateaSERKS_ = comdat any

$_ZN9FastStateaSERKS_ = comdat any

$_ZNSt6vectorIySaIyEEaSERKS1_ = comdat any

$_ZN9FullBoardaSERKS_ = comdat any

$_ZN5boost5arrayISt4pairIiiELm24EEaSERKS3_ = comdat any

$_ZN9FastBoardaSERKS_ = comdat any

$_ZNSt6vectorIiSaIiEEaSERKS1_ = comdat any

$_ZNKSt6vectorIiSaIiEE8capacityEv = comdat any

$_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_ = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZSt4copyIPiS0_ET0_T_S2_S1_ = comdat any

$_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_ = comdat any

$_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiET_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_ = comdat any

$_ZNSt4pairIiiEaSERKS0_ = comdat any

$_ZNKSt6vectorIySaIyEE8capacityEv = comdat any

$_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_ = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEyEvT_S7_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET0_T_SB_SA_ = comdat any

$_ZNSt6vectorIySaIyEE5beginEv = comdat any

$_ZNSt6vectorIySaIyEE3endEv = comdat any

$_ZSt4copyIPyS0_ET0_T_S2_S1_ = comdat any

$_ZSt22__uninitialized_copy_aIPyS0_yET0_T_S2_S1_RSaIT1_E = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEEvT_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET1_T0_SB_SA_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEES2_ET_S7_T0_ = comdat any

$_ZSt12__niter_baseIPySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEplEl = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv = comdat any

$_ZSt13__copy_move_aILb0EPyS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPyET_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPyS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPyS0_ET1_T0_S2_S1_ = comdat any

$_ZSt18uninitialized_copyIPyS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPyS2_EET0_T_S4_S3_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE6resizeEm = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE17_M_default_appendEm = comdat any

$_ZSt27__uninitialized_default_n_aIP7KoStatemS0_ET_S2_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIP7KoStatemET_S2_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7KoStatemEET_S4_T0_ = comdat any

$_ZSt10_ConstructI7KoStateJEEvPT_DpOT0_ = comdat any

$_ZN7KoStateC2Ev = comdat any

$_ZN9FastStateC2Ev = comdat any

$_ZNSt6vectorIySaIyEEC2Ev = comdat any

$_ZN9FullBoardC2Ev = comdat any

$_ZN5boost5arrayISt4pairIiiELm24EEC2Ev = comdat any

$_ZN9FastBoardC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt15__new_allocatorIiEC2Ev = comdat any

$_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2Ev = comdat any

$_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev = comdat any

$_ZNSaIyEC2Ev = comdat any

$_ZNSt15__new_allocatorIyEC2Ev = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZNSt8auto_ptrI9UCTSearchEC2EPS0_ = comdat any

$_ZNKSt8auto_ptrI9UCTSearchEptEv = comdat any

$_ZNSt8auto_ptrI9UCTSearchED2Ev = comdat any

$_ZN9UCTSearchD2Ev = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"black\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 align 2 !prof !268 {
  %4 = alloca %class.TimeControl, align 4
  tail call void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1, float noundef %2) #15
  %5 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8440) %0) #15
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #17
  call void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %4, i32 noundef %1, i32 noundef 30000, i32 noundef 0, i32 noundef 25) #15
  %6 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr noundef nonnull align 4 dereferenceable(44) %4, i64 44, i1 false), !tbaa.struct !269
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !275 {
  %2 = load ptr, ptr %0, align 8, !tbaa !276
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #0 comdat align 2 !prof !279 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !281
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !282

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8440) %1) #15
  %9 = load ptr, ptr %3, align 8, !tbaa !280
  %10 = getelementptr inbounds %class.KoState, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !280
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorI7KoStateSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(8440) %1) #15
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !275 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6, !prof !283

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #15
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !280
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !284 {
  tail call void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !285 {
  ret ptr %0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !284 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !284 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !286

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyI7KoStateEvPT_(ptr noundef %5) #15
  %6 = getelementptr inbounds %class.KoState, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !287, !llvm.loop !288

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7KoStateEvPT_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !290 {
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !291 {
  %2 = load ptr, ptr %0, align 8, !tbaa !292
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !294
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !295 {
  tail call void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !296 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !291 {
  %2 = load ptr, ptr %0, align 8, !tbaa !292
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !297
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !295 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !295 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !298 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !299

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !300 {
  tail call void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !300 {
  tail call void @_ZdlPv(ptr noundef %1) #19
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !304
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !305 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !306 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !307
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !305 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !305 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !308 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !309

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !310 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !310 {
  tail call void @_ZdlPv(ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) local_unnamed_addr #0 comdat align 2 !prof !279 {
  tail call void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !311 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str) #15
  %7 = load ptr, ptr %0, align 8, !tbaa !276
  %8 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %10 = tail call ptr @_ZNSt6vectorI7KoStateSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIP7KoStateSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %12 = call noundef ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #15
  %13 = getelementptr inbounds %class.KoState, ptr %12, i64 %11
  invoke void @_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8440) %2) #15
          to label %14 unwind label %31

14:                                               ; preds = %3
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !312
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = call noundef ptr @_ZNSt6vectorI7KoStateSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %7, ptr noundef %16, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %17) #16
  %19 = getelementptr inbounds %class.KoState, ptr %18, i64 1
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %21 = load ptr, ptr %20, align 8, !tbaa !312
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = call noundef ptr @_ZNSt6vectorI7KoStateSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %21, ptr noundef %9, ptr noundef nonnull %19, ptr noundef nonnull align 1 dereferenceable(1) %22) #16
  %24 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !281
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %7 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8440
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %29) #15
  store ptr %12, ptr %0, align 8, !tbaa !276
  store ptr %23, ptr %8, align 8, !tbaa !280
  %30 = getelementptr inbounds %class.KoState, ptr %12, i64 %6
  store ptr %30, ptr %24, align 8, !tbaa !281
  ret void

31:                                               ; preds = %3
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = call ptr @__cxa_begin_catch(ptr %33) #17
  %35 = icmp eq ptr %12, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @_ZNSt16allocator_traitsISaI7KoStateEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13) #16
  br label %41

37:                                               ; preds = %31
  %38 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %38) #15
          to label %41 unwind label %39

39:                                               ; preds = %42, %41, %37
  %40 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %43 unwind label %44

41:                                               ; preds = %37, %36
  invoke void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12, i64 noundef %6) #15
          to label %42 unwind label %39

42:                                               ; preds = %41
  invoke void @__cxa_rethrow() #20
          to label %47 unwind label %39

43:                                               ; preds = %39
  resume { ptr, i32 } %40

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #18
  unreachable

47:                                               ; preds = %42
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorI7KoStateSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !311 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) local_unnamed_addr #0 comdat align 2 !prof !279 {
  tail call void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #15
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
          to label %5 unwind label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #15
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
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #16
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #15
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %4, i64 316, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %3 = alloca %"class.std::allocator.9", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.9") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  invoke void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  %7 = call ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %8 = call ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %9 = load ptr, ptr %0, align 8, !tbaa !292
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #15
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !294
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #15
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
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !314
  store i32 %7, ptr %5, align 8, !tbaa !314
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !325 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  %7 = call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %8 = call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %9 = load ptr, ptr %0, align 8, !tbaa !302
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #15
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !304
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !326 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !304
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !325 {
  tail call void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !327 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !328 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !329 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !325 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !330 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !330 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !325 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !331 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !331 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !332 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !328 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
  store ptr %3, ptr %0, align 8, !tbaa !302
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !304
  %5 = getelementptr inbounds i32, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !307
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !333 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !334 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !335

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !336 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !336 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !337

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 4611686018427387903
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !338 {
  ret i64 2305843009213693951
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !325 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !325 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !325 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #15
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !325 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !312
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) local_unnamed_addr #2 comdat !prof !339 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !325 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !330 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !339 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !312
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !340 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !330 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !330 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !341

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !342 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !339 {
  %3 = load ptr, ptr %1, align 8, !tbaa !312
  store ptr %3, ptr %0, align 8, !tbaa !343
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !345 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !294
  %4 = load ptr, ptr %0, align 8, !tbaa !292
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !313 {
  tail call void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !346 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !347 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !348 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !348 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.20", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !348 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.20", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !313 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !349 {
  tail call void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !349 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !350 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
  store ptr %3, ptr %0, align 8, !tbaa !292
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !294
  %5 = getelementptr inbounds i64, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !351 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !352 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !353

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !300 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !300 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !337

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
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !354 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !348 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !348 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !348 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) #15
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !348 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !312
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) local_unnamed_addr #2 comdat !prof !355 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !348 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !348 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !355 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.20", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !312
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !356 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !348 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !348 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !357

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !358 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !355 {
  %3 = load ptr, ptr %1, align 8, !tbaa !312
  store ptr %3, ptr %0, align 8, !tbaa !359
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !311 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !361
  %6 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !363

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #21
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %13 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !361
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %15 = load i64, ptr %14, align 8, !tbaa !361
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %17 = call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !363

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !363

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIP7KoStateSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !311 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !312
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !312
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8440
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorI7KoStateSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !311 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !364 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !365

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaI7KoStateEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI7KoStateSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 !prof !366 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !367 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7KoStateEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !368 {
  tail call void @_ZNSt15__new_allocatorI7KoStateE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !369 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !370

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !366 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorI7KoStateSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !371 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  %4 = load ptr, ptr %0, align 8, !tbaa !276
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8440
  ret i64 %8
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !372 {
  %3 = load i64, ptr %0, align 8, !tbaa !361
  %4 = load i64, ptr %1, align 8, !tbaa !361
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !373
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorI7KoStateSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !366 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store i64 1092816592044404, ptr %2, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaI7KoStateEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !361
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %6 = load i64, ptr %5, align 8, !tbaa !361
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !374 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI7KoStateEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !366 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorI7KoStateE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !375 {
  %3 = load i64, ptr %1, align 8, !tbaa !361
  %4 = load i64, ptr %0, align 8, !tbaa !361
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !376
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorI7KoStateE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !366 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorI7KoStateE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorI7KoStateE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !377 {
  ret i64 1092816592044404
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !366 {
  %3 = load ptr, ptr %1, align 8, !tbaa !312
  store ptr %3, ptr %0, align 8, !tbaa !378
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaI7KoStateEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !364 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !364 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorI7KoStateE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !337

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2185633184088809
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 8440
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !366 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIP7KoStateET_S2_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIP7KoStateET_S2_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIP7KoStateET_S2_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !366 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6, !prof !380

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aI7KoStateS0_SaIS0_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %9 = getelementptr inbounds %class.KoState, ptr %8, i64 1
  %10 = getelementptr inbounds %class.KoState, ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !prof !381, !llvm.loop !382

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIP7KoStateET_S2_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !383 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aI7KoStateS0_SaIS0_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat !prof !368 {
  tail call void @_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) #16
  tail call void @_ZNSt16allocator_traitsISaI7KoStateEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) local_unnamed_addr #2 comdat align 2 !prof !368 {
  tail call void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) local_unnamed_addr #2 comdat align 2 !prof !368 {
  tail call void @_ZN7KoStateC2EOS_(ptr noundef nonnull align 8 dereferenceable(8440) %1, ptr noundef nonnull align 8 dereferenceable(8440) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateC2EOS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN9FastStateC2EOS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #16
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %5 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2EOS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN9FullBoardC2EOS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #16
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %4, i64 316, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !384 {
  tail call void @_ZNSt12_Vector_baseIySaIyEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2EOS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN9FastBoardC2EOS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #16
  %3 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2EOS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !314
  store i32 %7, ptr %5, align 8, !tbaa !314
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !368 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !368 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !368 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !368 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !312
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !312
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !307
  store ptr %6, ptr %4, align 8, !tbaa !307
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !384 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !384 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !384 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !312
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !312
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !297
  store ptr %6, ptr %4, align 8, !tbaa !297
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !368 {
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !364 {
  tail call void @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !364 {
  tail call void @_ZdlPv(ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !268 {
  %2 = alloca %class.TimeControl, align 4
  tail call void @_ZN7KoState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8440) %0) #15
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8440) %0) #15
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #17
  %4 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #15
  call void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %2, i32 noundef %4, i32 noundef 30000, i32 noundef 0, i32 noundef 25) #15
  %5 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %5, ptr noundef nonnull align 4 dereferenceable(44) %2, i64 44, i1 false), !tbaa.struct !269
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN7KoState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9GameState12forward_moveEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !268 {
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %3 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !385
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = icmp ugt i64 %3, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  store i32 %6, ptr %4, align 8, !tbaa !385
  %10 = sext i32 %6 to i64
  %11 = tail call noundef nonnull align 8 dereferenceable(8440) ptr @_ZNSt6vectorI7KoStateSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #16
  %12 = tail call noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %11) #15
  br label %13

13:                                               ; preds = %1, %9
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8440) ptr @_ZNSt6vectorI7KoStateSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !268 {
  %3 = load ptr, ptr %0, align 8, !tbaa !276
  %4 = getelementptr inbounds %class.KoState, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8388) ptr @_ZN9FastStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #15
  %4 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  %7 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #15
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8388) ptr @_ZN9FastStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8072) ptr @_ZN9FullBoardaSERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #15
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 dereferenceable(124) %5, i64 124, i1 false)
  %6 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 9
  %8 = tail call noundef nonnull align 4 dereferenceable(192) ptr @_ZN5boost5arrayISt4pairIiiELm24EEaSERKS3_(ptr noundef nonnull align 4 dereferenceable(192) %6, ptr noundef nonnull align 4 dereferenceable(192) %7) #15
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !392 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4, !prof !393

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %6 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24, !prof !394

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %10 = tail call ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %11 = tail call noundef ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !292
  %13 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !294
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #15
  %16 = load ptr, ptr %0, align 8, !tbaa !292
  %17 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !297
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  tail call void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #15
  store ptr %11, ptr %0, align 8, !tbaa !292
  %23 = getelementptr inbounds i64, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !297
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %29 = tail call ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %30 = tail call ptr @_ZNSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET0_T_SB_SA_(ptr %28, ptr %29, ptr %30) #15
  %32 = tail call ptr @_ZNSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEyEvT_S7_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #15
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !292
  %36 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %37 = getelementptr inbounds i64, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !292
  %39 = tail call noundef ptr @_ZSt4copyIPyS0_ET0_T_S2_S1_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #15
  %40 = load ptr, ptr %1, align 8, !tbaa !292
  %41 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %42 = getelementptr inbounds i64, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !294
  %45 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !294
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPyS0_yET0_T_S2_S1_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #15
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !292
  %51 = getelementptr inbounds i64, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !294
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8072) ptr @_ZN9FullBoardaSERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8052) ptr @_ZN9FastBoardaSERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #15
  %4 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(192) ptr @_ZN5boost5arrayISt4pairIiiELm24EEaSERKS3_(ptr noundef nonnull align 4 dereferenceable(192) %0, ptr noundef nonnull align 4 dereferenceable(192) %1) local_unnamed_addr #0 comdat align 2 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %0, i64 0, i64 %5
  %7 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %1, i64 0, i64 %5
  %8 = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSERKS0_(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7) #15
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 24
  br i1 %10, label %3, label %4, !llvm.loop !395
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8052) ptr @_ZN9FastBoardaSERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #0 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %5 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !314
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %7, ptr %8, align 8, !tbaa !314
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !396 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4, !prof !397

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24, !prof !397

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %10 = tail call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %11 = tail call noundef ptr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !302
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !304
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #15
  %16 = load ptr, ptr %0, align 8, !tbaa !302
  %17 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !307
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  tail call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #15
  store ptr %11, ptr %0, align 8, !tbaa !302
  %23 = getelementptr inbounds i32, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !307
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27, !prof !397

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %29 = tail call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %30 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_(ptr %28, ptr %29, ptr %30) #15
  %32 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #15
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !302
  %36 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %37 = getelementptr inbounds i32, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !302
  %39 = tail call noundef ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #15
  %40 = load ptr, ptr %1, align 8, !tbaa !302
  %41 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %42 = getelementptr inbounds i32, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !304
  %45 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !304
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #15
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !302
  %51 = getelementptr inbounds i32, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !304
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !396 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !307
  %4 = load ptr, ptr %0, align 8, !tbaa !302
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !268 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #17
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #15
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #20
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
  tail call void @__clang_call_terminate(ptr %19) #18
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !396 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(ptr %0, ptr %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !396 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #15
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #15
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_(ptr %4, ptr %5, ptr %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !398 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !399 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !268 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !396 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_(ptr %0, ptr %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #2 comdat align 2 !prof !396 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !396 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #16
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #16
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #15
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #15
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !396 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #16
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !392 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !312
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !396 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.21", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %0, align 8, !tbaa !400
  %6 = getelementptr inbounds i32, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !312
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !402 {
  %3 = load ptr, ptr %1, align 8, !tbaa !312
  store ptr %3, ptr %0, align 8, !tbaa !400
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !403 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !312
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !268 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !268 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !268 {
  %4 = tail call noundef ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSERKS0_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !404 {
  %3 = load <2 x i32>, ptr %1, align 4, !tbaa !270
  store <2 x i32> %3, ptr %0, align 4, !tbaa !270
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIySaIyEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !392 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !297
  %4 = load ptr, ptr %0, align 8, !tbaa !292
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !392 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #17
  invoke void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #15
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #20
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
  tail call void @__clang_call_terminate(ptr %19) #18
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEyEvT_S7_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !268 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEvT_S7_(ptr %0, ptr %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET0_T_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) #15
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %1) #15
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET1_T0_SB_SA_(ptr %4, ptr %5, ptr %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !405 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !406 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPyS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPyET_S1_(ptr noundef %0) #15
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPyET_S1_(ptr noundef %1) #15
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPyS0_yET0_T_S2_S1_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !268 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPyS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #0 comdat !prof !268 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEEvT_S9_(ptr %0, ptr %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #2 comdat align 2 !prof !268 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET1_T0_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #16
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #16
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #15
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #15
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEES2_ET_S7_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !268 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #16
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !268 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !312
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !268 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.22", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %0, align 8, !tbaa !407
  %6 = getelementptr inbounds i64, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !312
  call void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !409 {
  %3 = load ptr, ptr %1, align 8, !tbaa !312
  store ptr %3, ptr %0, align 8, !tbaa !407
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !410 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !312
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
  %9 = call noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPyET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !268 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !268 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPyS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPyS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPyS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !268 {
  %4 = tail call noundef ptr @_ZSt4copyIPyS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9GameState9undo_moveEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !268 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !385
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = add nsw i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !385
  %7 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %8 = zext nneg i32 %6 to i64
  %9 = tail call noundef nonnull align 8 dereferenceable(8440) ptr @_ZNSt6vectorI7KoStateSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %8) #16
  %10 = tail call noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %9) #15
  br label %11

11:                                               ; preds = %1, %5
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState6rewindEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !268 {
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8440) ptr @_ZNSt6vectorI7KoStateSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #16
  %4 = tail call noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !411 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !412
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %4, i32 noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !411 {
  %4 = icmp ult i32 %2, -2
  br i1 %4, label %5, label %6, !prof !413

5:                                                ; preds = %3
  tail call void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1, i32 noundef %2) #15
  br label %10

6:                                                ; preds = %3
  tail call void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440) %0) #15
  %7 = icmp eq i32 %2, -2
  br i1 %7, label %8, label %10, !prof !414

8:                                                ; preds = %6
  %9 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  store i32 -2, ptr %9, align 4, !tbaa !415
  br label %10

10:                                               ; preds = %6, %8, %5
  %11 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !385
  %14 = sext i32 %13 to i64
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %14) #15
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(8440) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !268 {
  %2 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #15
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %2, i32 noundef -1) #15
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !411 {
  %3 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %4, label %6, label %8, !prof !416

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #15
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13, !prof !416

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !276
  %12 = getelementptr inbounds %class.KoState, ptr %11, i64 %1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !268 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !281
  %8 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !280
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 8440
  %14 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !280
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIP7KoStatemS0_ET_S2_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #15
  store ptr %23, ptr %8, align 8, !tbaa !280
  br label %50

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !276
  %26 = load ptr, ptr %8, align 8, !tbaa !280
  %27 = tail call noundef i64 @_ZNKSt6vectorI7KoStateSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.1) #15
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #15
  %29 = getelementptr inbounds %class.KoState, ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIP7KoStatemS0_ET_S2_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #15
          to label %40 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #17
  invoke void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #15
          to label %36 unwind label %37

36:                                               ; preds = %32
  invoke void @__cxa_rethrow() #20
          to label %54 unwind label %37

37:                                               ; preds = %36, %32
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %39 unwind label %51

39:                                               ; preds = %37
  resume { ptr, i32 } %38

40:                                               ; preds = %24
  %41 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %42 = tail call noundef ptr @_ZNSt6vectorI7KoStateSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %41) #16
  %43 = load ptr, ptr %6, align 8, !tbaa !281
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %25 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 8440
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %47) #15
  store ptr %28, ptr %0, align 8, !tbaa !276
  %48 = getelementptr inbounds %class.KoState, ptr %29, i64 %1
  store ptr %48, ptr %8, align 8, !tbaa !280
  %49 = getelementptr inbounds %class.KoState, ptr %28, i64 %27
  store ptr %49, ptr %6, align 8, !tbaa !281
  br label %50

50:                                               ; preds = %20, %40, %2
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #18
  unreachable

54:                                               ; preds = %36
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIP7KoStatemS0_ET_S2_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !268 {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIP7KoStatemET_S2_T0_(ptr noundef %0, i64 noundef %1) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIP7KoStatemET_S2_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat !prof !268 {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7KoStatemEET_S4_T0_(ptr noundef %0, i64 noundef %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7KoStatemEET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !268 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructI7KoStateJEEvPT_DpOT0_(ptr noundef %5) #15
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %class.KoState, ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !llvm.loop !417

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #17
  invoke void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %5) #15
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #20
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
  tail call void @__clang_call_terminate(ptr %23) #18
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI7KoStateJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !268 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8440) %0, i8 0, i64 8440, i1 false)
  tail call void @_ZN7KoStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FastStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #15
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN9FullBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #16
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  invoke void @_ZN5boost5arrayISt4pairIiiELm24EEC2Ev(ptr noundef nonnull align 4 dereferenceable(192) %2) #15
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #16
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !418 {
  tail call void @_ZNSt12_Vector_baseIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN9FastBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost5arrayISt4pairIiiELm24EEC2Ev(ptr noundef nonnull align 4 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv(ptr noundef nonnull align 4 dereferenceable(8) %4) #15
  %5 = add nuw nsw i64 %3, 8
  %6 = icmp eq i64 %5, 192
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !419 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !419 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !419 {
  tail call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !420 {
  tail call void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !420 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !421 {
  store i32 0, ptr %0, align 4, !tbaa !422
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !424
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !418 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !418 {
  tail call void @_ZNSaIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !418 {
  tail call void @_ZNSt15__new_allocatorIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !418 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9GameState13play_textmoveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !268 {
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %7 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #15
  %8 = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2) #15
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3) #15
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4) #15
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5) #15
  br i1 %14, label %15, label %72

15:                                               ; preds = %11, %13, %3, %9
  %16 = phi i32 [ 1, %9 ], [ 1, %3 ], [ 0, %13 ], [ 0, %11 ]
  %17 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %18 = icmp ult i64 %17, 2
  br i1 %18, label %72, label %19

19:                                               ; preds = %15
  %20 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #15
  %21 = load i8, ptr %20, align 1, !tbaa !274
  %22 = sext i8 %21 to i32
  %23 = tail call i32 @isalpha(i32 noundef %22) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %72, label %25

25:                                               ; preds = %19
  %26 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1) #15
  %27 = load i8, ptr %26, align 1, !tbaa !274
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %28, -48
  %30 = icmp ult i32 %29, 10
  br i1 %30, label %31, label %72

31:                                               ; preds = %25
  %32 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #15
  %33 = load i8, ptr %32, align 1, !tbaa !274
  %34 = icmp eq i8 %33, 105
  br i1 %34, label %72, label %35

35:                                               ; preds = %31
  %36 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #15
  %37 = load i8, ptr %36, align 1, !tbaa !274
  %38 = icmp slt i8 %37, 105
  %39 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #15
  %40 = load i8, ptr %39, align 1, !tbaa !274
  %41 = sext i8 %40 to i32
  %42 = select i1 %38, i32 -97, i32 -98
  %43 = add nsw i32 %42, %41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %44 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 1) #15
          to label %45 unwind label %54

45:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #17
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 8) #15
          to label %46 unwind label %56

46:                                               ; preds = %45
  %47 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %4) #15
          to label %48 unwind label %58

48:                                               ; preds = %46
  %49 = load i32, ptr %4, align 4, !tbaa !270
  %50 = add nsw i32 %49, -1
  store i32 %50, ptr %4, align 4, !tbaa !270
  %51 = icmp sle i32 %49, %7
  %52 = icmp slt i32 %43, %7
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %60, label %65

54:                                               ; preds = %35
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %70

56:                                               ; preds = %45
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %68

58:                                               ; preds = %46
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %66

60:                                               ; preds = %48
  %61 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %43, i32 noundef %50) #15
          to label %62 unwind label %63

62:                                               ; preds = %60
  invoke void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %16, i32 noundef %61) #15
          to label %65 unwind label %63

63:                                               ; preds = %62, %60
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %66

65:                                               ; preds = %62, %48
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #16
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %72

66:                                               ; preds = %63, %58
  %67 = phi { ptr, i32 } [ %64, %63 ], [ %59, %58 ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #16
  br label %68

68:                                               ; preds = %66, %56
  %69 = phi { ptr, i32 } [ %67, %66 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #17
  br label %70

70:                                               ; preds = %68, %54
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %55, %54 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  resume { ptr, i32 } %71

72:                                               ; preds = %31, %25, %19, %15, %13, %65
  %73 = phi i1 [ %53, %65 ], [ false, %13 ], [ false, %15 ], [ false, %19 ], [ false, %25 ], [ false, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i1 %73
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !425 {
  %3 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #16
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2 align 2

; Function Attrs: nounwind optsize
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState10stop_clockEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !426 {
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  tail call void @_ZN11TimeControl4stopEi(ptr noundef nonnull align 4 dereferenceable(44) %3, i32 noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11TimeControl4stopEi(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState11start_clockEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !426 {
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  tail call void @_ZN11TimeControl5startEi(ptr noundef nonnull align 4 dereferenceable(44) %3, i32 noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11TimeControl5startEi(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !426 {
  tail call void @_ZN9FastState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #15
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  tail call void @_ZN11TimeControl13display_timesEv(ptr noundef nonnull align 4 dereferenceable(44) %2) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FastState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11TimeControl13display_timesEv(ptr noundef nonnull align 4 dereferenceable(44)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN9GameState15get_timecontrolEv(ptr noundef nonnull readnone align 8 dereferenceable(8508) %0) local_unnamed_addr #12 align 2 !prof !426 {
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState15set_timecontrolEiii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !268 {
  %5 = alloca %class.TimeControl, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #17
  %6 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #15
  call void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %5, i32 noundef %6, i32 noundef %1, i32 noundef %2, i32 noundef %3) #15
  %7 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %7, ptr noundef nonnull align 4 dereferenceable(44) %5, i64 44, i1 false), !tbaa.struct !269
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9GameState15set_timecontrolE11TimeControl(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8508) %0, ptr nocapture noundef readonly byval(%class.TimeControl) align 8 %1) local_unnamed_addr #13 align 2 !prof !268 {
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 8 dereferenceable(44) %1, i64 44, i1 false), !tbaa.struct !269
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState11adjust_timeEiii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !268 {
  %5 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  tail call void @_ZN11TimeControl11adjust_timeEiii(ptr noundef nonnull align 4 dereferenceable(44) %5, i32 noundef %1, i32 noundef %2, i32 noundef %3) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11TimeControl11adjust_timeEiii(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState19anchor_game_historyEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) local_unnamed_addr #0 align 2 !prof !275 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  store i32 0, ptr %2, align 8, !tbaa !385
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8440) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9GameState18set_fixed_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !268 {
  %3 = tail call noundef zeroext i1 @_ZN9GameState14valid_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) #15
  br i1 %3, label %4, label %36

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #15
  %6 = icmp sgt i32 %5, 12
  %7 = select i1 %6, i32 3, i32 2
  %8 = sdiv i32 %5, 2
  %9 = xor i32 %7, -1
  %10 = add i32 %5, %9
  %11 = icmp sgt i32 %1, 1
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %10, i32 noundef %10) #15
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %13) #15
  %14 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %7, i32 noundef %7) #15
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %14) #15
  %15 = icmp eq i32 %1, 2
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %7, i32 noundef %10) #15
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %17) #15
  %18 = icmp ugt i32 %1, 3
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %10, i32 noundef %7) #15
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %20) #15
  %21 = and i32 %1, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %8, i32 noundef %8) #15
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %24) #15
  br label %25

25:                                               ; preds = %23, %19
  %26 = icmp ugt i32 %1, 5
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %10, i32 noundef %8) #15
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %28) #15
  %29 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %7, i32 noundef %8) #15
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %29) #15
  %30 = icmp ugt i32 %1, 7
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %8, i32 noundef %10) #15
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %32) #15
  %33 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %8, i32 noundef %7) #15
  tail call void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %33) #15
  br label %34

34:                                               ; preds = %16, %12, %4, %25, %31, %27
  %35 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  store i32 1, ptr %35, align 8, !tbaa !412
  tail call void @_ZN9GameState19anchor_game_historyEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) #15
  tail call void @_ZN9FastState12set_handicapEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1) #15
  br label %36

36:                                               ; preds = %2, %34
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9GameState14valid_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !268 {
  %3 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #15
  %4 = add i32 %1, -10
  %5 = icmp ult i32 %4, -8
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = and i32 %3, 1
  %8 = icmp eq i32 %7, 0
  %9 = icmp ugt i32 %1, 4
  %10 = icmp eq i32 %3, 7
  %11 = or i1 %10, %8
  %12 = and i1 %9, %11
  %13 = icmp sgt i32 %3, 6
  %14 = xor i1 %12, true
  %15 = and i1 %13, %14
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i1 [ false, %2 ], [ %15, %6 ]
  ret i1 %17
}

; Function Attrs: optsize
declare void @_ZN9FastState12set_handicapEi(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9GameState19place_free_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !268 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::auto_ptr", align 8
  store i32 %1, ptr %3, align 4, !tbaa !270
  %6 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #15
  %7 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #15
  %8 = mul nsw i32 %7, %6
  %9 = sdiv i32 %8, 2
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 %9, ptr %3, align 4, !tbaa !270
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi i32 [ %9, %11 ], [ %1, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 9, ptr %4, align 4, !tbaa !270
  %14 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #15
  %15 = load i32, ptr %14, align 4, !tbaa !270
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  %16 = call noundef zeroext i1 @_ZN9GameState18set_fixed_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %15) #15
  %17 = load i32, ptr %3, align 4, !tbaa !270
  %18 = sub nsw i32 %17, %15
  store i32 %18, ptr %3, align 4, !tbaa !270
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %29, %12
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  store i32 1, ptr %21, align 8, !tbaa !412
  call void @_ZN9GameState19anchor_game_historyEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) #15
  call void @_ZN9FastState12set_handicapEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %13) #15
  ret void

22:                                               ; preds = %12, %29
  %23 = phi i32 [ %30, %29 ], [ 0, %12 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %24 = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %24, ptr noundef nonnull align 8 dereferenceable(8508) %0) #15
          to label %25 unwind label %33

25:                                               ; preds = %22
  call void @_ZNSt8auto_ptrI9UCTSearchEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %24) #16
  %26 = call noundef ptr @_ZNKSt8auto_ptrI9UCTSearchEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %27 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %26, i32 noundef 0, i32 noundef 1) #15
          to label %28 unwind label %35

28:                                               ; preds = %25
  invoke void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef 0, i32 noundef %27) #15
          to label %29 unwind label %35

29:                                               ; preds = %28
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %30 = add nuw nsw i32 %23, 1
  %31 = load i32, ptr %3, align 4, !tbaa !270
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %22, label %20, !llvm.loop !427

33:                                               ; preds = %22
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %24) #19
  br label %37

35:                                               ; preds = %28, %25
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  resume { ptr, i32 } %38
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat !prof !428 {
  %3 = load i32, ptr %1, align 4, !tbaa !270
  %4 = load i32, ptr %0, align 4, !tbaa !270
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !429
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90), ptr noundef nonnull align 8 dereferenceable(8508)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI9UCTSearchEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !426 {
  store ptr %1, ptr %0, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8auto_ptrI9UCTSearchEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !426 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  ret ptr %2
}

; Function Attrs: optsize
declare noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !426 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZN9UCTSearchD2Ev(ptr noundef nonnull align 8 dereferenceable(90) %2) #16
  tail call void @_ZdlPv(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9UCTSearchD2Ev(ptr noundef nonnull align 8 dereferenceable(90) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  tail call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #16
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind optsize }
attributes #20 = { noreturn }
attributes #21 = { noreturn optsize }
attributes #22 = { builtin optsize allocsize(0) }
attributes #23 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!267}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!36 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE5clearEv, ptr @_ZNSt6vectorI7KoStateSaIS0_EE15_M_erase_at_endEPS0_, i64 10}
!37 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_, ptr @_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, i64 29497}
!38 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_, ptr @_ZNSt6vectorI7KoStateSaIS0_EE3endEv, i64 11362}
!39 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_, ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, i64 11362}
!40 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE15_M_erase_at_endEPS0_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 1}
!41 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE15_M_erase_at_endEPS0_, ptr @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E, i64 1}
!42 = !{ptr @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E, ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, i64 12023}
!43 = !{ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, i64 12023}
!44 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, ptr @_ZSt8_DestroyI7KoStateEvPT_, i64 1513057}
!45 = !{ptr @_ZSt8_DestroyI7KoStateEvPT_, ptr @_ZN7KoStateD2Ev, i64 1513182}
!46 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 18212926}
!47 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 18212926}
!48 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 18212909}
!49 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!50 = !{ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPyEvT_S1_, i64 18213858}
!51 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 18212926}
!52 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 18212909}
!53 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!54 = !{ptr @_ZSt8_DestroyIPyEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_, i64 18213858}
!55 = !{ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, i64 27873635}
!56 = !{ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, i64 27873636}
!57 = !{ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, ptr @_ZdlPv, i64 27873636}
!58 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!59 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!60 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!61 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!62 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!63 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!64 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!65 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!66 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!67 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!68 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!69 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!70 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, ptr @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_, i64 40859}
!71 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZNKSt6vectorI7KoStateSaIS0_EE12_M_check_lenEmPKc, i64 11362}
!72 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZNSt6vectorI7KoStateSaIS0_EE5beginEv, i64 11362}
!73 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZN9__gnu_cxxmiIP7KoStateSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, i64 11362}
!74 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm, i64 11362}
!75 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, i64 11362}
!76 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEE4baseEv, i64 22724}
!77 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 22724}
!78 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZNSt6vectorI7KoStateSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, i64 22724}
!79 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m, i64 11362}
!80 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS2_, i64 11362}
!81 = !{ptr @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JRKS0_EEEvPT_DpOT0_, ptr @_ZN7KoStateC2ERKS_, i64 40859}
!82 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE4sizeEv, i64 15449970}
!83 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449970}
!84 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, i64 15449970}
!85 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, i64 15449970}
!86 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15449970}
!87 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE5beginEv, i64 15449955}
!88 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE3endEv, i64 15449955}
!89 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449955}
!90 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, i64 15449955}
!91 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 15}
!92 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 7788864}
!93 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788864}
!94 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, i64 7788864}
!95 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7788864}
!96 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7788864}
!97 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 7788857}
!98 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 7788857}
!99 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788857}
!100 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, i64 7788857}
!101 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 7}
!102 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, i64 7788864}
!103 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 7788871}
!104 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, i64 7788871}
!105 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!106 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!107 = !{ptr @_ZNKSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!108 = !{ptr @_ZNKSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!109 = !{ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788864}
!110 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!111 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!112 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!113 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 7788871}
!114 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, i64 10252449}
!115 = !{ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 10252449}
!116 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 10252449}
!117 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 2562}
!118 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 2562}
!119 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10247325}
!120 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, i64 7788864}
!121 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!122 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 15577728}
!123 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, i64 7788864}
!124 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 15577728}
!125 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 7788864}
!126 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 7788864}
!127 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_, i64 7788864}
!128 = !{ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, i64 7789311}
!129 = !{ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 15578622}
!130 = !{ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, i64 7789311}
!131 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, i64 15449970}
!132 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, i64 15449970}
!133 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, i64 15449970}
!134 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15}
!135 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!136 = !{ptr @_ZNKSt6vectorIySaIyEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!137 = !{ptr @_ZNKSt6vectorIySaIyEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!138 = !{ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449970}
!139 = !{ptr @_ZNSaIyEC2ERKS_, ptr @_ZNSt15__new_allocatorIyEC2ERKS0_, i64 33661998}
!140 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449990}
!141 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 15449990}
!142 = !{ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, i64 15449970}
!143 = !{ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, i64 27873635}
!144 = !{ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, i64 27873636}
!145 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv, i64 27873636}
!146 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 6965}
!147 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 6965}
!148 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_Znwm, i64 27859706}
!149 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, i64 15450864}
!150 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!151 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_, i64 30901728}
!152 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, i64 15450864}
!153 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 30901728}
!154 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPyET_S1_, i64 15450864}
!155 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!156 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_, i64 15450864}
!157 = !{ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!158 = !{ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv, i64 30901728}
!159 = !{ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_, i64 15450864}
!160 = !{ptr @_ZNKSt6vectorI7KoStateSaIS0_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorI7KoStateSaIS0_EE8max_sizeEv, i64 22724}
!161 = !{ptr @_ZNKSt6vectorI7KoStateSaIS0_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv, i64 45445}
!162 = !{ptr @_ZNKSt6vectorI7KoStateSaIS0_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!163 = !{ptr @_ZNKSt6vectorI7KoStateSaIS0_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 11361}
!164 = !{ptr @_ZN9__gnu_cxxmiIP7KoStateSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEE4baseEv, i64 22724}
!165 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEEC2ERKS2_, i64 11362}
!166 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaI7KoStateEE8allocateERS1_m, i64 23363}
!167 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, ptr @_ZSt12__relocate_aIP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_, i64 22724}
!168 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE7destroyIS0_EEvRS1_PT_, ptr @_ZNSt15__new_allocatorI7KoStateE7destroyIS0_EEvPT_, i64 1381009}
!169 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m, ptr @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m, i64 23363}
!170 = !{ptr @_ZNKSt6vectorI7KoStateSaIS0_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 22724}
!171 = !{ptr @_ZNKSt6vectorI7KoStateSaIS0_EE8max_sizeEv, ptr @_ZNSt6vectorI7KoStateSaIS0_EE11_S_max_sizeERKS1_, i64 22724}
!172 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE11_S_max_sizeERKS1_, ptr @_ZNSt16allocator_traitsISaI7KoStateEE8max_sizeERKS1_, i64 22724}
!173 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE11_S_max_sizeERKS1_, ptr @_ZSt3minImERKT_S2_S2_, i64 22724}
!174 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE8max_sizeERKS1_, ptr @_ZNKSt15__new_allocatorI7KoStateE8max_sizeEv, i64 22724}
!175 = !{ptr @_ZNKSt15__new_allocatorI7KoStateE8max_sizeEv, ptr @_ZNKSt15__new_allocatorI7KoStateE11_M_max_sizeEv, i64 22724}
!176 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE8allocateERS1_m, ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, i64 23364}
!177 = !{ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorI7KoStateE11_M_max_sizeEv, i64 23364}
!178 = !{ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 6}
!179 = !{ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 6}
!180 = !{ptr @_ZNSt15__new_allocatorI7KoStateE8allocateEmPKv, ptr @_Znwm, i64 23352}
!181 = !{ptr @_ZSt12__relocate_aIP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt12__niter_baseIP7KoStateET_S2_, i64 68172}
!182 = !{ptr @_ZSt12__relocate_aIP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt14__relocate_a_1IP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_, i64 22724}
!183 = !{ptr @_ZSt14__relocate_a_1IP7KoStateS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt19__relocate_object_aI7KoStateS0_SaIS0_EEvPT_PT0_RT1_, i64 1380949}
!184 = !{ptr @_ZSt19__relocate_object_aI7KoStateS0_SaIS0_EEvPT_PT0_RT1_, ptr @_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, i64 1381009}
!185 = !{ptr @_ZSt19__relocate_object_aI7KoStateS0_SaIS0_EEvPT_PT0_RT1_, ptr @_ZNSt16allocator_traitsISaI7KoStateEE7destroyIS0_EEvRS1_PT_, i64 1381009}
!186 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_, ptr @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JS0_EEEvPT_DpOT0_, i64 1381009}
!187 = !{ptr @_ZNSt15__new_allocatorI7KoStateE9constructIS0_JS0_EEEvPT_DpOT0_, ptr @_ZN7KoStateC2EOS_, i64 1381009}
!188 = !{ptr @_ZNSt6vectorIySaIyEEC2EOS1_, ptr @_ZNSt12_Vector_baseIySaIyEEC2EOS1_, i64 2762018}
!189 = !{ptr @_ZNSt6vectorIiSaIiEEC2EOS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_, i64 1381009}
!190 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, i64 1381009}
!191 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, ptr @_ZNSaIiEC2ERKS_, i64 1381009}
!192 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_, i64 1381009}
!193 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EOS1_, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_, i64 2762018}
!194 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_, ptr @_ZNSaIyEC2ERKS_, i64 2762018}
!195 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2EOS2_, i64 2762018}
!196 = !{ptr @_ZNSt15__new_allocatorI7KoStateE7destroyIS0_EEvPT_, ptr @_ZN7KoStateD2Ev, i64 1381009}
!197 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m, ptr @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m, i64 23364}
!198 = !{ptr @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m, ptr @_ZdlPv, i64 23364}
!199 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNKSt6vectorIySaIyEE4sizeEv, i64 894}
!200 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNKSt6vectorIySaIyEE8capacityEv, i64 893}
!201 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNKSt6vectorIySaIyEE5beginEv, i64 892}
!202 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNKSt6vectorIySaIyEE3endEv, i64 892}
!203 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_, i64 892}
!204 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 892}
!205 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 892}
!206 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 892}
!207 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 893}
!208 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE8capacityEv, i64 446}
!209 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 445}
!210 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 445}
!211 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_, i64 1}
!212 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 446}
!213 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 1}
!214 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 1}
!215 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 444}
!216 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, i64 444}
!217 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 444}
!218 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E, i64 444}
!219 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_, i64 1}
!220 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E, i64 1}
!221 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_, i64 447}
!222 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 894}
!223 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, i64 447}
!224 = !{ptr @_ZNSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 10455771}
!225 = !{ptr @_ZNSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 22957086}
!226 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_, i64 447}
!227 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 894}
!228 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 447}
!229 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 447}
!230 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, i64 447}
!231 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 447}
!232 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl, i64 447}
!233 = !{ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 894}
!234 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 447}
!235 = !{ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_, ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, i64 894}
!236 = !{ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 894}
!237 = !{ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, i64 894}
!238 = !{ptr @_ZNSt6vectorIySaIyEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_, i64 43356801}
!239 = !{ptr @_ZNSt6vectorIySaIyEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_, i64 43356859}
!240 = !{ptr @_ZN9GameState9play_moveEi, ptr @_ZN9GameState9play_moveEii, i64 40849}
!241 = !{ptr @_ZN9GameState9play_moveEii, ptr @_ZN7KoState9play_moveEii, i64 38894}
!242 = !{ptr @_ZN9GameState9play_moveEii, ptr @_ZN7KoState9play_passEv, i64 1955}
!243 = !{ptr @_ZN9GameState9play_moveEii, ptr @_ZNSt6vectorI7KoStateSaIS0_EE6resizeEm, i64 40849}
!244 = !{ptr @_ZN9GameState9play_moveEii, ptr @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_, i64 40849}
!245 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE6resizeEm, ptr @_ZNKSt6vectorI7KoStateSaIS0_EE4sizeEv, i64 81698}
!246 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE6resizeEm, ptr @_ZNSt6vectorI7KoStateSaIS0_EE17_M_default_appendEm, i64 1}
!247 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE6resizeEm, ptr @_ZNSt6vectorI7KoStateSaIS0_EE15_M_erase_at_endEPS0_, i64 1}
!248 = !{ptr @_ZNSt6vectorIySaIyEEC2Ev, ptr @_ZNSt12_Vector_baseIySaIyEEC2Ev, i64 918}
!249 = !{ptr @_ZNSt6vectorIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, i64 202367}
!250 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, i64 202367}
!251 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSaIiEC2Ev, i64 202367}
!252 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 202367}
!253 = !{ptr @_ZNSaIiEC2Ev, ptr @_ZNSt15__new_allocatorIiEC2Ev, i64 202374}
!254 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev, i64 918}
!255 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev, ptr @_ZNSaIyEC2Ev, i64 918}
!256 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 918}
!257 = !{ptr @_ZNSaIyEC2Ev, ptr @_ZNSt15__new_allocatorIyEC2Ev, i64 918}
!258 = !{ptr @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc, i64 875}
!259 = !{ptr @_ZN9GameState10stop_clockEi, ptr @_ZN11TimeControl4stopEi, i64 970}
!260 = !{ptr @_ZN9GameState11start_clockEi, ptr @_ZN11TimeControl5startEi, i64 970}
!261 = !{ptr @_ZN9GameState13display_stateEv, ptr @_ZN9FastState13display_stateEv, i64 970}
!262 = !{ptr @_ZN9GameState13display_stateEv, ptr @_ZN11TimeControl13display_timesEv, i64 970}
!263 = !{ptr @_ZN9GameState19anchor_game_historyEv, ptr @_ZNSt6vectorI7KoStateSaIS0_EE5clearEv, i64 10}
!264 = !{ptr @_ZN9GameState19anchor_game_historyEv, ptr @_ZNSt6vectorI7KoStateSaIS0_EE9push_backERKS0_, i64 10}
!265 = !{ptr @_ZNSt8auto_ptrI9UCTSearchED2Ev, ptr @_ZN9UCTSearchD2Ev, i64 606}
!266 = !{ptr @_ZNSt8auto_ptrI9UCTSearchED2Ev, ptr @_ZdlPv, i64 606}
!267 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!268 = !{!"function_entry_count", i64 0}
!269 = !{i64 0, i64 4, !270, i64 4, i64 4, !270, i64 8, i64 4, !270, i64 12, i64 4, !270, i64 16, i64 8, !274, i64 24, i64 8, !274, i64 32, i64 2, !274, i64 36, i64 8, !274}
!270 = !{!271, !271, i64 0}
!271 = !{!"int", !272, i64 0}
!272 = !{!"omnipotent char", !273, i64 0}
!273 = !{!"Simple C++ TBAA"}
!274 = !{!272, !272, i64 0}
!275 = !{!"function_entry_count", i64 10}
!276 = !{!277, !278, i64 0}
!277 = !{!"_ZTSNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataE", !278, i64 0, !278, i64 8, !278, i64 16}
!278 = !{!"any pointer", !272, i64 0}
!279 = !{!"function_entry_count", i64 40859}
!280 = !{!277, !278, i64 8}
!281 = !{!277, !278, i64 16}
!282 = !{!"branch_weights", i32 11363, i32 29498}
!283 = !{!"branch_weights", i32 11, i32 1}
!284 = !{!"function_entry_count", i64 12023}
!285 = !{!"function_entry_count", i64 46769}
!286 = !{!"branch_weights", i32 1, i32 12023}
!287 = !{!"branch_weights", i32 12023, i32 1501160}
!288 = distinct !{!288, !289}
!289 = !{!"llvm.loop.mustprogress"}
!290 = !{!"function_entry_count", i64 1513182}
!291 = !{!"function_entry_count", i64 18212926}
!292 = !{!293, !278, i64 0}
!293 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !278, i64 0, !278, i64 8, !278, i64 16}
!294 = !{!293, !278, i64 8}
!295 = !{!"function_entry_count", i64 18213858}
!296 = !{!"function_entry_count", i64 58513802}
!297 = !{!293, !278, i64 16}
!298 = !{!"function_entry_count", i64 30638340}
!299 = !{!"branch_weights", i32 2764705, i32 27873637}
!300 = !{!"function_entry_count", i64 27873636}
!301 = !{!"function_entry_count", i64 9372256}
!302 = !{!303, !278, i64 0}
!303 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !278, i64 0, !278, i64 8, !278, i64 16}
!304 = !{!303, !278, i64 8}
!305 = !{!"function_entry_count", i64 69455494}
!306 = !{!"function_entry_count", i64 97749716}
!307 = !{!303, !278, i64 16}
!308 = !{!"function_entry_count", i64 19624698}
!309 = !{!"branch_weights", i32 9372251, i32 10252449}
!310 = !{!"function_entry_count", i64 10252448}
!311 = !{!"function_entry_count", i64 11362}
!312 = !{!278, !278, i64 0}
!313 = !{!"function_entry_count", i64 15449970}
!314 = !{!315, !271, i64 8048}
!315 = !{!"_ZTS9FastBoard", !316, i64 0, !316, i64 882, !271, i64 1764, !271, i64 1768, !271, i64 1772, !317, i64 1776, !318, i64 3540, !318, i64 4424, !318, i64 5308, !318, i64 6192, !316, i64 7076, !319, i64 7960, !320, i64 7976, !321, i64 8008, !321, i64 8016, !322, i64 8024, !271, i64 8048}
!316 = !{!"_ZTSN5boost5arrayItLm441EEE", !272, i64 0}
!317 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !272, i64 0}
!318 = !{!"_ZTSN5boost5arrayItLm442EEE", !272, i64 0}
!319 = !{!"_ZTSN5boost5arrayIiLm4EEE", !272, i64 0}
!320 = !{!"_ZTSN5boost5arrayIiLm8EEE", !272, i64 0}
!321 = !{!"_ZTSN5boost5arrayIiLm2EEE", !272, i64 0}
!322 = !{!"_ZTSSt6vectorIiSaIiEE", !323, i64 0}
!323 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !324, i64 0}
!324 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !303, i64 0}
!325 = !{!"function_entry_count", i64 7788864}
!326 = !{!"function_entry_count", i64 899000483}
!327 = !{!"function_entry_count", i64 28293760}
!328 = !{!"function_entry_count", i64 7788871}
!329 = !{!"function_entry_count", i64 17161144}
!330 = !{!"function_entry_count", i64 7789311}
!331 = !{!"function_entry_count", i64 16958771}
!332 = !{!"function_entry_count", i64 7788881}
!333 = !{!"function_entry_count", i64 7991268}
!334 = !{!"function_entry_count", i64 18041313}
!335 = !{!"branch_weights", i32 7788865, i32 10252450}
!336 = !{!"function_entry_count", i64 10252449}
!337 = !{!"branch_weights", i32 1, i32 2000}
!338 = !{!"function_entry_count", i64 30757342}
!339 = !{!"function_entry_count", i64 15578622}
!340 = !{!"function_entry_count", i64 69303513}
!341 = !{!"branch_weights", i32 7789312, i32 1}
!342 = !{!"function_entry_count", i64 28111432}
!343 = !{!344, !278, i64 0}
!344 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !278, i64 0}
!345 = !{!"function_entry_count", i64 65148944}
!346 = !{!"function_entry_count", i64 40299030}
!347 = !{!"function_entry_count", i64 33662916}
!348 = !{!"function_entry_count", i64 15450864}
!349 = !{!"function_entry_count", i64 33661998}
!350 = !{!"function_entry_count", i64 15449990}
!351 = !{!"function_entry_count", i64 15450948}
!352 = !{!"function_entry_count", i64 27875384}
!353 = !{!"branch_weights", i32 1749, i32 27873637}
!354 = !{!"function_entry_count", i64 52722676}
!355 = !{!"function_entry_count", i64 30901728}
!356 = !{!"function_entry_count", i64 89997984}
!357 = !{!"branch_weights", i32 1749, i32 15449117}
!358 = !{!"function_entry_count", i64 216494610}
!359 = !{!360, !278, i64 0}
!360 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEE", !278, i64 0}
!361 = !{!362, !362, i64 0}
!362 = !{!"long", !272, i64 0}
!363 = !{!"branch_weights", i32 1, i32 11363}
!364 = !{!"function_entry_count", i64 23364}
!365 = !{!"branch_weights", i32 1, i32 23365}
!366 = !{!"function_entry_count", i64 22724}
!367 = !{!"function_entry_count", i64 45448}
!368 = !{!"function_entry_count", i64 1381009}
!369 = !{!"function_entry_count", i64 23385}
!370 = !{!"branch_weights", i32 22, i32 23365}
!371 = !{!"function_entry_count", i64 139148}
!372 = !{!"function_entry_count", i64 23031751}
!373 = !{!"branch_weights", i32 6217633, i32 16814120}
!374 = !{!"function_entry_count", i64 34736}
!375 = !{!"function_entry_count", i64 46063954}
!376 = !{!"branch_weights", i32 1, i32 46063955}
!377 = !{!"function_entry_count", i64 46088}
!378 = !{!379, !278, i64 0}
!379 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIP7KoStateSt6vectorIS1_SaIS1_EEEE", !278, i64 0}
!380 = !{!"branch_weights", i32 1, i32 22724}
!381 = !{!"branch_weights", i32 22724, i32 1358286}
!382 = distinct !{!382, !289}
!383 = !{!"function_entry_count", i64 68172}
!384 = !{!"function_entry_count", i64 2762018}
!385 = !{!386, !271, i64 8088}
!386 = !{!"_ZTS9FastState", !387, i64 0, !389, i64 8072, !271, i64 8076, !271, i64 8080, !271, i64 8084, !271, i64 8088, !271, i64 8092, !271, i64 8096, !390, i64 8100, !391, i64 8196}
!387 = !{!"_ZTS9FullBoard", !315, i64 0, !388, i64 8056, !388, i64 8064}
!388 = !{!"long long", !272, i64 0}
!389 = !{!"float", !272, i64 0}
!390 = !{!"_ZTSN5boost5arrayIiLm24EEE", !272, i64 0}
!391 = !{!"_ZTSN5boost5arrayISt4pairIiiELm24EEE", !272, i64 0}
!392 = !{!"function_entry_count", i64 894}
!393 = !{!"branch_weights", i32 1, i32 895}
!394 = !{!"branch_weights", i32 895, i32 1}
!395 = distinct !{!395, !289}
!396 = !{!"function_entry_count", i64 447}
!397 = !{!"branch_weights", i32 1, i32 448}
!398 = !{!"function_entry_count", i64 10455771}
!399 = !{!"function_entry_count", i64 22957086}
!400 = !{!401, !278, i64 0}
!401 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE", !278, i64 0}
!402 = !{!"function_entry_count", i64 33583715}
!403 = !{!"function_entry_count", i64 53747328}
!404 = !{!"function_entry_count", i64 10728}
!405 = !{!"function_entry_count", i64 43356801}
!406 = !{!"function_entry_count", i64 43356859}
!407 = !{!408, !278, i64 0}
!408 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE", !278, i64 0}
!409 = !{!"function_entry_count", i64 86713718}
!410 = !{!"function_entry_count", i64 111562642}
!411 = !{!"function_entry_count", i64 40849}
!412 = !{!315, !271, i64 1768}
!413 = !{!"branch_weights", i32 1513365579, i32 76065129}
!414 = !{!"branch_weights", i32 11, i32 1944}
!415 = !{!386, !271, i64 8092}
!416 = !{!"branch_weights", i32 1, i32 40850}
!417 = distinct !{!417, !289}
!418 = !{!"function_entry_count", i64 918}
!419 = !{!"function_entry_count", i64 202367}
!420 = !{!"function_entry_count", i64 202374}
!421 = !{!"function_entry_count", i64 11016}
!422 = !{!423, !271, i64 0}
!423 = !{!"_ZTSSt4pairIiiE", !271, i64 0, !271, i64 4}
!424 = !{!423, !271, i64 4}
!425 = !{!"function_entry_count", i64 875}
!426 = !{!"function_entry_count", i64 970}
!427 = distinct !{!427, !289}
!428 = !{!"function_entry_count", i64 14680064}
!429 = !{!"branch_weights", i32 7313697, i32 7366369}
!430 = !{!431, !278, i64 0}
!431 = !{!"_ZTSSt8auto_ptrI9UCTSearchE", !278, i64 0}
